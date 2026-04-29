#!/usr/bin/env bash
set -euo pipefail

REPO_OWNER="tannk4w"
REPO_NAME="agent-marketing-skills"
BRANCH="main"
DEFAULT_PROFILE="${PROFILE:-marketing}"
HERMES_HOME="${HERMES_HOME:-$HOME/.hermes}"
REPO_ARCHIVE_URL="https://github.com/${REPO_OWNER}/${REPO_NAME}/archive/refs/heads/${BRANCH}.tar.gz"
TMP_DIR=""

log() { printf '\033[1;32m[agent-marketing]\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m[agent-marketing]\033[0m %s\n' "$*"; }
err() { printf '\033[1;31m[agent-marketing]\033[0m %s\n' "$*" >&2; }

cleanup() {
  if [ -n "${TMP_DIR:-}" ] && [ -d "$TMP_DIR" ]; then
    rm -rf "$TMP_DIR"
  fi
}
trap cleanup EXIT

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    err "Missing required command: $1"
    exit 1
  }
}

prompt() {
  if { exec 3<>/dev/tty; } 2>/dev/null; then
    printf '%s' "$1" >&3
    IFS= read -r "$2" <&3 || printf -v "$2" ''
    exec 3>&-
  else
    printf -v "$2" ''
  fi
}

usage() {
  cat <<'EOF'
Install agent-marketing skills into a Hermes profile.

Usage:
  curl -fsSL https://raw.githubusercontent.com/tannk4w/agent-marketing-skills/main/install.sh | bash

The installer will ask for:
  PROFILE                Hermes profile name to install into. Default: marketing
  EXA_API_KEY            Optional. Press Enter to skip writing it to the profile .env

Options via environment variables:
  PROFILE=marketing      Default profile name shown in the prompt
  EXA_API_KEY=...        Default EXA_API_KEY shown in the prompt
  HERMES_HOME=~/.hermes  Optional. Override Hermes home directory

Examples:
  curl -fsSL https://raw.githubusercontent.com/tannk4w/agent-marketing-skills/main/install.sh | bash
EOF
}

if [ "${1:-}" = "--help" ] || [ "${1:-}" = "-h" ]; then
  usage
  exit 0
fi

need_cmd curl
need_cmd tar

prompt "Hermes profile name [$DEFAULT_PROFILE]: " PROFILE_INPUT
PROFILE="${PROFILE_INPUT:-$DEFAULT_PROFILE}"
PROFILE_DIR="$HERMES_HOME/profiles/$PROFILE"

log "Installing into Hermes profile: $PROFILE"

if command -v hermes >/dev/null 2>&1; then
  if hermes profile show "$PROFILE" >/dev/null 2>&1; then
    log "Profile '$PROFILE' already exists."
  else
    log "Creating Hermes profile '$PROFILE'..."
    hermes profile create "$PROFILE"
  fi
else
  warn "Hermes CLI not found in PATH. Creating profile folder directly."
  warn "Install Hermes first if you want to run setup/doctor commands."
fi

mkdir -p "$PROFILE_DIR"
mkdir -p "$PROFILE_DIR/skills"
mkdir -p "$PROFILE_DIR/memories"

TMP_DIR="$(mktemp -d)"
log "Downloading ${REPO_OWNER}/${REPO_NAME}@${BRANCH}..."
curl -fsSL "$REPO_ARCHIVE_URL" | tar -xz -C "$TMP_DIR"
SRC_DIR="$TMP_DIR/${REPO_NAME}-${BRANCH}"

if [ ! -d "$SRC_DIR" ]; then
  err "Downloaded archive did not contain expected directory: $SRC_DIR"
  exit 1
fi

log "Copying SOUL.md and AGENTS.md..."
cp "$SRC_DIR/SOUL.md" "$PROFILE_DIR/SOUL.md"
cp "$SRC_DIR/AGENTS.md" "$PROFILE_DIR/AGENTS.md"

log "Copying memory files..."
cp "$SRC_DIR/memory/MEMORY.md" "$PROFILE_DIR/memories/MEMORY.md"
cp "$SRC_DIR/memory/USER.md" "$PROFILE_DIR/memories/USER.md"

log "Copying marketing skills..."
for skill in marketing-orchestration marketing-brainstorm marketing-research marketing-blog-article marketing-slack; do
  rm -rf "$PROFILE_DIR/skills/$skill"
  cp -a "$SRC_DIR/skills/$skill" "$PROFILE_DIR/skills/$skill"
done

prompt "EXA_API_KEY (optional, press Enter to skip): " EXA_API_KEY_INPUT
EXA_API_KEY="${EXA_API_KEY_INPUT:-${EXA_API_KEY:-}}"

if [ -n "${EXA_API_KEY:-}" ]; then
  ENV_FILE="$PROFILE_DIR/.env"
  touch "$ENV_FILE"
  if grep -q '^EXA_API_KEY=' "$ENV_FILE" 2>/dev/null; then
    python3 - "$ENV_FILE" "$EXA_API_KEY" <<'PY'
import pathlib, sys
path = pathlib.Path(sys.argv[1])
key = sys.argv[2]
lines = path.read_text().splitlines()
new = []
updated = False
for line in lines:
    if line.startswith('EXA_API_KEY='):
        new.append(f'EXA_API_KEY={key}')
        updated = True
    else:
        new.append(line)
if not updated:
    new.append(f'EXA_API_KEY={key}')
path.write_text('\n'.join(new).rstrip() + '\n')
PY
  else
    printf '\nEXA_API_KEY=%s\n' "$EXA_API_KEY" >> "$ENV_FILE"
  fi
  log "EXA_API_KEY written to $ENV_FILE"
else
  warn "EXA_API_KEY not provided. Add it later to: $PROFILE_DIR/.env"
fi

if command -v hermes >/dev/null 2>&1; then
  log "Enabling web toolset for profile '$PROFILE'..."
  hermes --profile "$PROFILE" tools enable web >/dev/null 2>&1 || warn "Could not enable web toolset automatically. Run: hermes --profile $PROFILE tools enable web"

  log "Running basic config check..."
  hermes --profile "$PROFILE" config check >/dev/null 2>&1 || warn "Config check reported issues. Run: hermes --profile $PROFILE setup"
fi

log "Install complete."
printf '\nNext steps:\n'
printf '  1. If not set yet, add EXA_API_KEY to: %s/.env\n' "$PROFILE_DIR"
printf '  2. Run setup/checks if needed:\n'
printf '     hermes --profile %s setup\n' "$PROFILE"
printf '     hermes --profile %s doctor\n' "$PROFILE"
printf '  3. Start Hermes with the marketing workflow:\n'
printf '     hermes --profile %s -s marketing-orchestration\n' "$PROFILE"
