---
name: marketing-blog-article
description: "Draft, rewrite, and improve marketing blog posts, long-form SEO articles, social posts, captions, hooks, landing page copy, website posts, platform ad-style posts, and product-led copy with clear structure, useful substance, and source-safe claims."
version: 0.2.4
author: Hermes Agent
license: MIT
metadata:
  hermes:
    tags: [Marketing, Blog, Article, SEO, Writing]
---

# Marketing Blog Article

Use this skill as the mandatory production skill for all marketing/content/creative writing outputs after the orchestration workflow has completed brief and research steps. This includes blog posts, long-form marketing articles, social posts, captions, hooks, landing page copy, website posts, platform ad-style posts, scripts, briefs, creative concepts, prompt drafts, product-led posts, rewrites, polish, adaptations, and other text-first marketing or creative copy.

This is a writer skill, not an independent SEO audit skill. It may include a light self-check before returning the draft, but its main job is to produce useful, publishable text-first marketing content in the requested format. For short social formats, do not force long-form article structure; preserve the requested platform shape while applying the same source-safety and quality standards.

## Source Note

The SEO writing framework in this skill is adapted from the community skill `seo-content-writer` in:

- Repository: `sickn33/antigravity-awesome-skills`
- Source URL: https://github.com/sickn33/antigravity-awesome-skills/blob/main/skills/seo-content-writer/SKILL.md
- Source metadata from copied skill: `source: community`, `date_added: 2026-02-27`, `risk: unknown`

Adaptation notes:

- The original framework was useful for SEO content writing, but has been tightened for this marketing workflow.
- Keyword density is treated as a soft diagnostic, not a rigid target.
- E-E-A-T elements must be grounded in user-provided context or research; never invent firsthand experience, expert quotes, cases, statistics, or citations.
- Research/source notes remain required for factual or market claims when the article depends on evidence.

## Inputs

Before drafting, prefer a brief with:

- Request type and target deliverable.
- Goal.
- Audience.
- Channel/platform and format.
- Primary keyword or topic.
- Secondary keywords or semantic terms, if available.
- Search intent: informational, commercial, transactional, navigational, or mixed.
- Reader problem or question.
- Desired article angle and reader benefit.
- Tone.
- CTA.
- Product, brand, or offer context.
- Required sources, reference URLs, research summary, or claims that must be supported.
- Whether reference URLs should appear inside the article body, at the end as a references list, or only in notes.
- Internal pages/products to link to, if available.
- Length and formatting constraints.
- Platform-specific formatting preferences, including whether light emoji/icons are appropriate.

If key inputs are missing, make a reasonable assumption only when the task is low-risk and the content can still be useful. Otherwise ask one focused clarification question.

Do not reject a task because it is not literally a blog or article. If the output is text-first marketing or creative work, adapt this skill's structure to the requested platform and produce the best usable draft for that format.

## Workflow

1. Confirm the article angle, reader benefit, and search intent.
2. Identify the primary keyword/topic and related semantic coverage needed.
3. Create a clear structure with scannable H2/H3 headings.
4. Write an introduction of roughly 50-100 words when suitable:
   - Hook the reader immediately.
   - Name the reader problem or desired outcome.
   - State the value proposition or promise of the article.
   - Include the primary keyword naturally if it fits.
5. Develop concrete, useful body sections:
   - Cover the topic comprehensively enough for the intended reader.
   - Use logical progression, not a list of disconnected tips.
   - Include examples, steps, comparisons, or practical details where helpful.
   - Use semantic keyword variations naturally.
   - Avoid generic filler and unsupported claims.
6. Add SEO publishing elements when relevant.
7. For social-style posts or Facebook-ready adaptations, add light emoji/icons when they improve scannability and match the brand tone.
8. Add a CTA aligned with the user's goal.
9. Review factual claims against provided research, user context, or source notes.
10. If the article is for a blog/website and uses reference links, include a "References"/"Tài liệu tham khảo" section with the source URLs, unless the user asks to keep sources only in notes.
11. Return a clean draft plus concise notes that make assumptions and next steps clear.

## Platform-Specific Text Copy

When writing multi-platform product copy, match the format to the channel instead of forcing every deliverable into a blog article shape:

- Facebook/social posts: start with a reader-relevant hook, keep paragraphs short, use light emojis/icons only when useful, and end with a clear CTA.
- Website posts: use a clear title, intro, scannable sections, concrete benefits, and a closing CTA. Include SEO elements when relevant.
- Landing page copy: write modular sections such as hero, problem, solution, how it works, benefits, audience/use cases, proof/source-safe notes if available, and final CTA.
- Scripts/briefs/concepts/prompts: make the idea usable, concrete, and execution-ready; include the hook, audience intent, key message, structure, and CTA or next action when relevant.
- Platform ad-style posts: keep claims tight, benefit-led, and source-safe; avoid unsupported superlatives.

For multi-format requests, produce separate finished drafts for each requested platform and make sure each one has its own structure, hook, and CTA.

## SEO Article Structure

When writing SEO-focused long-form content, prefer:

### Introduction

- 50-100 words as a default, unless the platform or article style needs otherwise.
- Strong hook.
- Clear reader problem.
- Clear promise or value proposition.
- Natural use of the primary keyword.
- Sets expectations for what the reader will learn or be able to do.

### Body Content

- Logical H2/H3 progression.
- Comprehensive topic coverage without bloating the article.
- Short paragraphs, usually 2-3 sentences when possible.
- Bullets, numbered steps, tables, or examples where they improve scanning.
- Supporting data, citations, reference URLs, or examples only when available from research or user context.
- Natural keyword placement and semantic variations.
- Practical, actionable advice instead of vague best-practice language.

### Conclusion

- Briefly summarize the key point or decision.
- Reinforce the value delivered.
- Include a clear CTA when appropriate.

## SEO Content Package

When the user asks for a publish-ready SEO article, include as relevant:

- Full article.
- SEO title or H1.
- 3-5 title variations when useful.
- Meta description, ideally around 150-160 characters when no platform constraint is given.
- Key takeaways or summary bullets for long articles.
- Suggested slug if useful.
- Internal linking suggestions when site/product context is known.
- FAQ section when it matches search intent.
- CTA.
- References/Tài liệu tham khảo section with source URLs when the article is intended for a blog/website and relies on reference links.

Do not force every item into every output. Match the package to the user's request and publishing context.

## Basic SEO Checklist

Include when relevant:

- One clear H1 or SEO title.
- Primary keyword used naturally in title/H1, intro, and body where appropriate.
- Related/semantic terms where helpful.
- Logical H2/H3 heading structure.
- Meta description that is specific, not generic.
- Clear reader benefit.
- Internal link suggestions.
- FAQ section for question-led or informational intent.
- CTA aligned with business goal and reader stage.

## E-E-A-T and Trust Signals

Use E-E-A-T signals only when they are supported. Helpful signals include:

- Firsthand or company-specific experience provided by the user.
- Specific examples, workflows, screenshots, data, or cases from supplied context.
- Credible research citations for factual, market, or statistical claims.
- Expert perspective when an expert/source is actually provided.
- Practical advice that shows real operational understanding.

Never fabricate:

- Firsthand experience.
- Customer stories.
- Expert quotes.
- Statistics.
- Case studies.
- Citations.
- Awards, rankings, credentials, or partnerships.

## SEO Quality Guardrails

- Match search intent before optimizing for keywords.
- Write for humans first; optimize for search second.
- Treat keyword density as a soft diagnostic only. Do not force a 0.5-1.5% density if it hurts clarity or readability.
- Avoid keyword stuffing, repetitive phrasing, and robotic SEO language.
- Prefer concrete examples over broad claims.
- Keep paragraphs short and scannable.
- Use bullets/tables only when they make the article easier to use.
- For blog/website articles based on reference links, include checked source URLs in a References/Tài liệu tham khảo section or clearly state why they are only in notes.
- Do not cite sources that were not checked.
- Do not overclaim from weak, vendor-biased, outdated, or indirect evidence.

## Platform Formatting and Icons

When the output is suitable for social platforms such as Facebook, LinkedIn, community posts, or short promotional post adaptations:

- Use light emoji/icons to make the post more lively and scannable when it fits the brand tone and audience.
- Prefer purposeful icons for structure: hooks, bullets, warnings, benefits, steps, or CTA.
- Do not overuse emojis; clarity and credibility come first.
- Avoid emojis/icons for formal, technical, legal, medical, finance, crisis, or executive communication unless the user asks for a warmer style.
- For blog/website articles, keep emojis minimal by default; use them only if the requested tone is casual or the platform style supports it.
- If the user provides a no-emoji/no-icon preference, follow it.

## Reference URL Handling

For blog/website drafts that rely on reference links:

- Include a `References` / `Tài liệu tham khảo` section in the final output unless the user explicitly asks not to show sources.
- For publish-ready blog/website drafts, put source URLs in the `References` / `Tài liệu tham khảo` section. For outlines, short rewrites, or internal notes, source URLs may stay in `Notes` if that is more appropriate.
- Prefer this format: `[Source title or name](URL) — supports: [claim/topic]`.
- Do not include unchecked, inaccessible, or unverified URLs as supporting sources. If a user-provided URL could not be checked or extracted, mention it in `Notes` instead.
- Do not create a references section when no source URLs were provided or checked.
- Do not create fake bibliographies or generic source lists.

## Output Format

Prefer this when drafting a full article:

```markdown
## Final Draft

[content]

## SEO Elements

- SEO title/H1: [title]
- Meta description: [description]
- Suggested slug: [slug, if useful]
- Title variations: [3-5 options, if useful]
- Internal link suggestions: [if context is known]
- FAQ: [if useful]

## References

- [Source title or name](URL) — supports: [claim/topic]. Include when the draft is for blog/website publishing and uses checked reference links.

## Notes

- Assumptions: [brief list]
- Research basis: [brief list or "User-provided context only"]
- Reference URLs used: [brief list or "None"]
- Source-sensitive claims: [brief list or "None"]
- Suggested next step: [one concrete action]
```

For shorter rewrites or improvements, return only the useful parts. Do not bloat the answer with unnecessary SEO sections.

## Hard Rules

- Do not invent unsupported claims, statistics, quotes, citations, URLs, or firsthand experience.
- Do not over-optimize keywords at the expense of readability.
- Do not treat this skill as a substitute for a dedicated SEO audit when the user asks to evaluate an existing page.
- Do not refuse or route away a text-first creative/writing output just because it is not a blog/article; adapt the workflow and write for the requested format.
- If a blog/website draft is based on reference links, include the reference URLs in the output unless the user explicitly asks not to.
- Do not create a References/Tài liệu tham khảo section when no source URLs were provided or checked.
- Do not default to Vietnamese from the user's chat language. Write in the language explicitly confirmed in the brief.
