# Agent Marketing Workflow

## 1. Giới thiệu

`agent-marketing` là bộ workflow skill dành cho Hermes Agent để xử lý các tác vụ marketing/content một cách có kiểm soát hơn thay vì trả lời trực tiếp theo kiểu generic.

Bộ skill này phù hợp cho:

- brainstorm ý tưởng marketing/content
- viết bài blog, bài giới thiệu sản phẩm, landing page copy, website copy
- viết social post, caption, hook, nội dung cá nhân/thương hiệu
- rewrite, polish, humanize, review nội dung
- research thị trường/đối thủ/ngữ cảnh trước khi viết
- viết thông báo Slack/internal update ngắn gọn

Workflow chính:

```text
marketing-orchestration
  → marketing-brainstorm
  → marketing-research
  → marketing-blog-article hoặc specialist phù hợp
  → self-review
```

Trong đó:

- `marketing-orchestration`: entrypoint chính, điều phối toàn bộ workflow.
- `marketing-brainstorm`: làm rõ brief, audience, mục tiêu, channel, angle, CTA và ngôn ngữ viết bài.
- `marketing-research`: research bối cảnh, nguồn, claim an toàn, claim cần tránh.
- `marketing-blog-article`: viết nội dung cuối cùng cho blog, article, website, social, landing copy, product-led copy, v.v.
- `marketing-slack`: hỗ trợ viết thông báo Slack/internal update.

Nguyên tắc quan trọng:

- Không direct-answer các yêu cầu marketing/content khi workflow áp dụng.
- Luôn brainstorm trước khi viết.
- Luôn research trước khi tạo final content, trừ khi request là research-only.
- Luôn xác nhận ngôn ngữ viết bài trong bước brainstorm; không mặc định theo ngôn ngữ user chat.
- Không bịa claim, số liệu, nguồn, case study, testimonial, partnership hoặc URL.
- Với product-led content, phải có product/brand context đủ rõ trước khi viết.

## 2. Cấu trúc thư mục

```text
agent-marketing/
├── AGENTS.md
├── SOUL.md
├── README.md
├── memory/
│   ├── MEMORY.md
│   └── USER.md
└── skills/
    ├── marketing-orchestration/
    │   └── SKILL.md
    ├── marketing-brainstorm/
    │   └── SKILL.md
    ├── marketing-research/
    │   └── SKILL.md
    ├── marketing-blog-article/
    │   └── SKILL.md
    └── marketing-slack/
        └── SKILL.md
```

## 3. Cài nhanh bằng install.sh

Có thể cài nhanh toàn bộ package vào một Hermes profile bằng lệnh:

```bash
curl -fsSL https://raw.githubusercontent.com/tannk4w/agent-marketing-skills/main/install.sh | bash
```

Installer sẽ hỏi trực tiếp trong terminal:

```text
Hermes profile name [marketing]:
EXA_API_KEY (optional, press Enter to skip):
```

- Với `Hermes profile name`, bấm Enter để dùng mặc định `marketing`, hoặc nhập profile khác như `content`.
- Nếu profile chưa tồn tại và Hermes CLI khả dụng, script sẽ tạo profile mới rồi import package vào như thường.
- Với `EXA_API_KEY`, bấm Enter để bỏ qua. Bạn có thể thêm key sau vào file `.env` của profile.

Ví dụ cài vào profile `content` và bỏ qua Exa API key:

```text
$ curl -fsSL https://raw.githubusercontent.com/tannk4w/agent-marketing-skills/main/install.sh | bash
Hermes profile name [marketing]: content
EXA_API_KEY (optional, press Enter to skip):
```

Vẫn có thể dùng biến môi trường nếu muốn đặt giá trị mặc định cho prompt:

```bash
PROFILE=content EXA_API_KEY=your_exa_api_key_here \
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/tannk4w/agent-marketing-skills/main/install.sh)"
```

Sau khi cài, mở Hermes bằng profile đã chọn, ví dụ:

```bash
hermes --profile marketing -s marketing-orchestration
```

Script sẽ tự động:

- hỏi tên profile và `EXA_API_KEY` trong terminal
- tạo profile nếu chưa có
- copy `SOUL.md` và `AGENTS.md`
- copy `memory/MEMORY.md` và `memory/USER.md`
- copy toàn bộ marketing skills
- bật toolset `web` nếu Hermes CLI khả dụng
- ghi `EXA_API_KEY` vào profile `.env` nếu bạn nhập key hoặc truyền biến môi trường này

## 4. Hướng dẫn cài thủ công

### Bước 1: Tạo profile mới và setup cơ bản

Tạo một Hermes profile mới, ví dụ `marketing`:

```bash
hermes profile create marketing
```

Chuyển sang profile đó:

```bash
hermes profile use marketing
```

Chạy setup cơ bản cho profile:

```bash
hermes --profile marketing setup
```

Hoặc setup từng phần nếu cần:

```bash
hermes --profile marketing setup model
hermes --profile marketing setup tools
hermes --profile marketing setup agent
```

Kiểm tra profile:

```bash
hermes --profile marketing doctor
hermes --profile marketing config check
```

### Bước 2: Import AGENTS.md, SOUL.md và memory files vào đúng vị trí

Giả sử repo này nằm ở:

```bash
/home/tannk/agent-marketing
```

Hermes profile đích là:

```bash
/home/tannk/.hermes/profiles/marketing
```

Copy `SOUL.md` vào root của profile:

```bash
cp /home/tannk/agent-marketing/SOUL.md \
  /home/tannk/.hermes/profiles/marketing/SOUL.md
```

Copy `AGENTS.md` vào root của profile:

```bash
cp /home/tannk/agent-marketing/AGENTS.md \
  /home/tannk/.hermes/profiles/marketing/AGENTS.md
```

Tạo thư mục memory nếu chưa có:

```bash
mkdir -p /home/tannk/.hermes/profiles/marketing/memories
```

Copy memory files:

```bash
cp /home/tannk/agent-marketing/memory/MEMORY.md \
  /home/tannk/.hermes/profiles/marketing/memories/MEMORY.md

cp /home/tannk/agent-marketing/memory/USER.md \
  /home/tannk/.hermes/profiles/marketing/memories/USER.md
```

Lưu ý:

- `MEMORY.md` chỉ nên chứa workflow facts/conventions có thể tái sử dụng.
- `USER.md` chỉ nên chứa preference/convention của user hoặc team.
- Không đưa brand-specific memory vào package reusable nếu không muốn profile bị lệch theo một brand cụ thể.

### Bước 3: Setup tool `web_search` bằng Exa + API key

Bật toolset web cho profile:

```bash
hermes --profile marketing tools enable web
```

Mở file `.env` của profile:

```bash
hermes --profile marketing config env-path
```

Thêm API key Exa vào file `.env` của profile:

```bash
EXA_API_KEY=your_exa_api_key_here
```

Ví dụ nếu env path là `/home/tannk/.hermes/profiles/marketing/.env`, có thể mở bằng editor:

```bash
nano /home/tannk/.hermes/profiles/marketing/.env
```

Sau khi thêm key, kiểm tra lại:

```bash
hermes --profile marketing doctor
hermes --profile marketing tools list
```

Nếu đang ở trong một session Hermes cũ, hãy restart hoặc bắt đầu session mới để tool/config mới có hiệu lực.

### Bước 4: Tải và import các skill vào profile

Tạo thư mục skills trong profile nếu chưa có:

```bash
mkdir -p /home/tannk/.hermes/profiles/marketing/skills
```

Copy toàn bộ marketing skills từ project sang profile:

```bash
cp -a /home/tannk/agent-marketing/skills/marketing-orchestration \
  /home/tannk/.hermes/profiles/marketing/skills/

cp -a /home/tannk/agent-marketing/skills/marketing-brainstorm \
  /home/tannk/.hermes/profiles/marketing/skills/

cp -a /home/tannk/agent-marketing/skills/marketing-research \
  /home/tannk/.hermes/profiles/marketing/skills/

cp -a /home/tannk/agent-marketing/skills/marketing-blog-article \
  /home/tannk/.hermes/profiles/marketing/skills/

cp -a /home/tannk/agent-marketing/skills/marketing-slack \
  /home/tannk/.hermes/profiles/marketing/skills/
```

Kiểm tra skill đã được nhận:

```bash
hermes --profile marketing skills list
```

Khi dùng, nên preload entrypoint skill:

```bash
hermes --profile marketing -s marketing-orchestration
```

Hoặc trong session Hermes:

```text
/skill marketing-orchestration
```

Ví dụ prompt sử dụng:

```text
Viết giúp tôi một bài giới thiệu sản phẩm mới. Hãy dùng marketing workflow.
```

Hoặc cụ thể hơn:

```text
Dùng marketing-orchestration để viết landing page copy cho sản phẩm này. Trước khi viết hãy hỏi đủ brief, bao gồm ngôn ngữ bài viết.
```

## 5. Kiểm tra sau khi import

Chạy kiểm tra cấu trúc skill:

```bash
python3 - <<'PY'
import pathlib, re, yaml
base = pathlib.Path('/home/tannk/.hermes/profiles/marketing/skills')
for p in base.glob('marketing-*/SKILL.md'):
    content = p.read_text()
    assert content.startswith('---'), p
    m = re.search(r'\n---\s*\n', content[3:])
    assert m, p
    fm = yaml.safe_load(content[3:m.start()+3])
    assert fm.get('name') and fm.get('description'), p
    assert len(fm['description']) <= 1024, p
print('validated marketing skills')
PY
```

Test nhanh workflow:

```bash
hermes --profile marketing -s marketing-orchestration chat -q \
  "Tôi muốn viết bài giới thiệu một sản phẩm mới. Hãy bắt đầu bằng brainstorm và hỏi tôi ngôn ngữ bài viết."
```

Kỳ vọng đúng:

- Agent không viết ngay nếu thiếu product/brand context.
- Agent hỏi hoặc xác nhận ngôn ngữ viết bài.
- Agent không tự mặc định tiếng Việt chỉ vì prompt viết bằng tiếng Việt.
- Agent route qua brainstorm → research → writing → self-review khi tạo final content.

## 6. Cách cập nhật skill sau này

Quy ước project-first:

1. Sửa skill trong project:

```text
/home/tannk/agent-marketing/skills/<skill-name>/SKILL.md
```

2. Validate skill.

3. Copy/sync sang runtime profile khi cần dùng ngay:

```bash
cp -a /home/tannk/agent-marketing/skills/<skill-name> \
  /home/tannk/.hermes/profiles/marketing/skills/
```

Không cần làm source-of-truth comparison hoặc drift check trừ khi bạn muốn kiểm tra riêng.

## 7. Ghi chú bảo mật và chất lượng

- Không commit API key thật vào repo.
- Không đưa brand/product private memory vào `memory/MEMORY.md` nếu đây là package reusable.
- Không đưa customer-specific hoặc campaign-specific facts vào `SOUL.md`, `AGENTS.md`, hoặc reusable memory.
- Các claim factual trong bài marketing nên có research/source hoặc được viết mềm dưới dạng assumption.
