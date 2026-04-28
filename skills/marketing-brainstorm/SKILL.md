---
name: marketing-brainstorm
description: "Use when users ask for marketing content ideas, blog/article angles, social posts, captions, hooks, rewrites, campaign copy, or any writing task that needs clarification, audience intent, angle selection, or a brief before drafting."
version: 0.4.0
author: Hermes Agent
license: MIT
metadata:
  hermes:
    tags: [Marketing, Brainstorm, Brief, Content, Ideation]
---

# Marketing Brainstorm

## When to Use

Use this skill before marketing/content drafting when the request needs any of these:

- Clarifying a vague content request.
- Turning a rough idea into a usable brief.
- Generating blog, article, social post, caption, hook, campaign, or content angles.
- Checking audience, intent, promise, CTA, or reference needs before writing.
- Preparing a compact handoff for `marketing-research`, `marketing-blog-article`, `marketing-slack`, or another writing skill.

Skip or use lightly when the user gives a complete brief and clearly wants the final draft immediately. Do not slow down clear requests.

Important: for substantial content creation or substantial rewriting, brainstorm must hand off to `marketing-research` before any writing skill. Do not suggest a writing skill as the immediate next step for articles, blogs, product posts, campaign copy, or substantial social content.

## Default Behavior

Bias for speed. Ask only when missing information would clearly make the output wrong, generic, or risky.

Decision rules:

1. If the user asks for ideas, angles, hooks, positioning, or brainstorm → use **Angle Development**.
2. If the user asks to write but the topic/offer is missing → use **Clarification**.
3. If the user asks for product-led or brand-led content and no reusable product/brand context is known → use **Product/Brand Clarification** before drafting. Do not offer a draft based on assumed product details.
4. If the user asks to write and topic + format/channel are clear or safely inferable → use **Brief Completion** and proceed to `marketing-research`, not directly to writing.
5. If another skill needs a clean input → use **Brief Handoff**.
6. For substantial content creation or substantial rewriting, set `Research needed: Yes` and `Suggested next skill: marketing-research` even when the topic looks familiar.
7. If the topic requires facts, trends, benchmarks, statistics, legal/medical/financial claims, hiring claims, or competitor claims → mark `Research needed: Yes` and do not invent claims.

## Procedure

1. Identify the mode from the decision rules.
2. Check only the fields needed for that mode:
   - Critical: topic/offer, audience, channel/format, objective, language.
   - Strategic: intent, pain point, promise, angle, CTA.
   - Execution: length, tone, keywords, sources, brand rules, examples.
   - Product/brand-led content: brand/app/product description, feature/offer description, target customer, main benefit, differentiator, proof/source, constraints, channel, and CTA.
3. Always confirm the requested writing language during brainstorm before drafting or handing off to research/writing. Do not assume the output language from the user's chat language.
4. Infer safe defaults when obvious:
   - Format/channel from words like blog, LinkedIn, Slack, caption, hook, article.
   - Default tone: clear, useful, concrete, low-hype.
5. Never infer or fabricate:
   - Brand/product details not provided.
   - Statistics, trends, ROI, benchmarks, case studies, customer stories, or expert claims.
   - Specific audience when multiple plausible audiences exist and the choice changes the content.
   - Strong sales CTA when user intent is unclear.
6. Return the smallest useful output. Do not expose the full framework unless it helps the user decide.

## Modes

### Clarification

Use when a critical field is missing and unsafe to infer.

Ask focused questions until the brief has enough information to avoid a wrong, generic, or risky output. Prefer quick-choice questions and batch related questions together. Do not stop at an arbitrary question count if essential information is still missing.

Prioritize:

1. Topic/offer: what is this about?
2. Audience: who should read it?
3. Channel/objective: where will it be used and what should it achieve?
4. Language: what language should the final content be written in?

Avoid broad questions like “Bạn có yêu cầu gì không?” or optional questions about tone, length, and style unless they are truly needed.

### Product/Brand Clarification

Use when the request is about a product, feature, brand, app, service, offer, campaign, or selling point and reliable product/brand context is not already available in memory or the current conversation.

Ask for the product/brand description before drafting. Keep the question direct and require enough substance to write accurately:

```md
Mình cần mô tả ngắn về sản phẩm/tính năng trước khi viết để tránh bài bị chung chung hoặc sai thông tin.

Bạn gửi giúp mình:
1. [Brand/app/product] là gì? Mô tả ngắn về thương hiệu/sản phẩm chính.
2. [Feature/offer] là gì và hoạt động như thế nào?
3. Ai là người dùng/khách hàng chính?
4. Lợi ích chính hoặc điểm khác biệt là gì?
5. Có thông tin/claim nào bắt buộc phải đúng không? Ví dụ: mức giá, %, điều kiện, đối tác, thời gian, nguồn chứng minh.
6. Bài này dùng ở đâu, CTA mong muốn là gì, và muốn viết bằng ngôn ngữ nào?

Sau khi bạn gửi, mình sẽ lưu phần mô tả reusable này vào Memory để lần sau không cần nhập lại.
```

Do not add “I can draft with assumptions” for product/brand-led content unless the user explicitly asks for a rough placeholder draft.

### Brief Completion

Use when the request is clear enough to continue without slowing the user down.

Return a compact brief check:

```md
## Brief Check

Confirmed brief:
Language:
Assumptions:
Research needed: Yes
Research question:
Intended content use:
Reference Materials:
Suggested next skill: marketing-research
```

For substantial content creation or substantial rewriting, `Research needed` must be `Yes` and `Suggested next skill` must be `marketing-research`.

Do not ask optional questions. State assumptions and move forward.

### Angle Development

Use when the user asks for brainstorm, content ideas, hooks, angles, direction, or sharper positioning.

Generate 3-7 distinct angles. Angles must differ by audience, insight, promise, hook, format, or tension — not just headline wording.

Each angle should include:

- Name
- Concept
- Reader pain/tension
- Promise
- Hook direction
- Best format/channel
- Risk or weakness

Pick the strongest recommendation and explain why in one short paragraph.

After standalone angle brainstorming, ask: “Bạn có muốn bổ sung tài liệu tham khảo trước khi mình refine/chốt brief không?”

If the user already asked to proceed to writing, do not block the flow. Use `Reference Materials: None provided` and continue if the brief is otherwise sufficient.

### Brief Handoff

Use when the brief is ready for research or writing.

Return:

```md
## Working Brief

Objective:
Audience:
Language:
Channel/Format:
Topic/Offer:
Intent:
Pain Point:
Promise:
Recommended Angle:
CTA:
Reference Materials:
Assumptions:
Open Questions:

## Handoff Notes

Research needed:
Research question:
Intended content use:
Suggested next skill:
How to use references:
Safe claims:
Claims to avoid:
```

Keep handoffs compact. Include only useful details.

For substantial content creation or substantial rewriting, the handoff must include:

- `Research needed: Yes`
- A specific `Research question` focused on what evidence/context the writer needs.
- `Intended content use` describing the target deliverable and channel.
- `Suggested next skill: marketing-research`

Do not set a writing skill as the next skill until research has returned a usable summary.

## Quality Rules

### Product and Brand Context

For product-led or brand-led content, do not draft from the product name alone unless reliable product context is already available in memory or the current conversation.

If product/brand context is missing, ask for the minimum useful description before drafting:

- What the brand/app/product is.
- What the specific feature/offer does and how it works.
- Target customer or user.
- Main benefit or use case.
- Key differentiator.
- Proof, source, or claim that can be safely used.
- Constraints, claims to avoid, target channel, or required CTA.

When the user provides new reusable product/brand information, save compact memory entries for both levels when available: (1) brand/app/product overview and (2) specific feature/offer details. Include name, description, audience, benefits, differentiators, proof points, constraints, and claims to avoid. In future requests, reuse that memory instead of asking again unless the request needs missing or updated details.

### Audience and Intent

Before producing a brief or angle, identify only what matters:

- Who is the reader?
- What are they trying to do?
- What pain, doubt, or friction do they have?
- What useful outcome should the content promise?

Do not over-analyze. Use this to sharpen the angle and CTA.

### Angle Quality

A strong angle should pass most of these checks:

- Specific audience.
- Real tension, pain, misconception, risk, or desire.
- Clear reader promise.
- Different from generic content on the topic.
- Fit for the channel.
- Low risk of unsupported claims.

If angles feel similar, rewrite them until they differ meaningfully.

### Intent Mapping

- Blog/SEO: informational, practical, comparison, transactional.
- Social/personal post: useful, relatable, opinionated, entertaining, save/share, comment/respond.
- Internal/Slack: inform, align, request action, celebrate, escalate, clarify decision.

Do not force social or internal content into an SEO framework.

## Pitfalls

- Asking questions when safe assumptions would be faster.
- Stopping clarification too early when the brief is still weak.
- Drafting from a weak brief when critical information is missing.
- Writing product-led content from a product/brand name alone.
- Forgetting to save reusable product/brand context to memory when the user provides it.
- Producing generic angles that only change the title wording.
- Missing the reader pain point or content promise.
- Confusing SEO intent with social/internal intent.
- Inventing brands, product details, statistics, trends, case studies, benchmarks, or claims.
- Sending the task to research when the real issue is missing brief clarity.
- Asking for reference materials before brainstorming.

## Verification

Before returning, confirm:

- Clear requests were not slowed down.
- Vague requests got enough focused questions to make the brief usable, without asking optional questions.
- The requested writing language was explicitly confirmed during brainstorm; it was not inferred from the user's chat language.
- Product-led requests have product/brand context from memory or the current conversation before drafting.
- New reusable product/brand context is saved to memory.
- Angles are meaningfully distinct and include a strongest recommendation.
- Blog briefs include intent and promise.
- Social briefs use social reader intent, not SEO intent.
- Research-heavy topics are flagged instead of invented.
- Handoffs include assumptions, reference status, research question, intended content use, safe claims, and claims to avoid.
- Substantial content creation handoffs point to `marketing-research`, not directly to a writing skill.
