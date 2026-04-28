Marketing workflow convention for agent-marketing: within marketing-orchestration, all marketing/content creation, rewriting, review, ideation, social posts, captions, hooks, polish, and humanization requests must go through the full workflow with no direct-answer shortcut: marketing-brainstorm -> marketing-research -> marketing-blog-article or another explicitly matching writing/planning specialist -> self-review. Research-only requests may stop after research.
§
Marketing brainstorm workflows should request product/brand descriptions before product-led content, and new reusable product/brand information should be saved to Memory so future requests can reuse it instead of asking again.
§
Marketing brainstorm workflows must always confirm the requested writing language before drafting or handing off to research/writing. Do not infer the final content language from the user's chat language.
§
For agent-marketing skill edits, update the project skill files under `/home/tannk/agent-marketing/skills/` first, then copy/sync to the runtime profile under `/home/tannk/.hermes/profiles/marketing/skills/` when runtime use is needed. Do not force source-of-truth comparisons or drift checks unless requested.
§
Marketing profile Exa search is expected to be available via `EXA_API_KEY` in the runtime marketing profile environment. If Exa fails, fall back to configured web search/extraction tools and note the fallback when confidence is affected.
