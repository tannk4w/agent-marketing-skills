# Text & Layout Module

> Hệ thống Text Styles + Layout Variants + Decorative Elements.
> Tra cứu khi cần chọn kiểu text, bố cục, và hiệu ứng cho prompt ảnh marketing.

---

## Text Styles — Phân Loại Kiểu Chữ

> Chọn Text Style **TRƯỚC** khi viết phần Text trong prompt.
> Mỗi style có tone riêng — phải match với loại ảnh và niche.

### Style 1 — Bold Impact

> Mạnh mẽ, nổi bật, tối ưu CTR. Dùng cho **Thumbnail, Banner**.

```
font-weight 900 condensed sans-serif,
hard drop shadow 4px bottom-right charcoal,
[stroke color] stroke 2-3px,
very large, uppercase
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 900 white condensed uppercase sans-serif,
3px [accent] stroke, hard drop shadow 4px charcoal,
placed on [vị trí] negative space
```

| Kết hợp | Stroke | Shadow | Dùng khi |
|---------|--------|--------|----------|
| Trắng + stroke màu | 2-3px bright accent | hard charcoal 4px | Nền phức tạp |
| Vàng/cam trên tối | không cần stroke | soft black 3px | Warning, urgency |
| Trắng trên dark gradient | 1px dark outline | subtle 2px | Clean impact |

---

### Style 2 — Editorial Serif

> Sang trọng, đáng tin cậy, tạp chí. Dùng cho **Blog Cover, Social Post (LinkedIn)**.

```
font-weight 700-800 serif font (Playfair Display / Georgia style),
subtle text shadow 2px,
mixed with sans-serif subtitle,
elegant letter-spacing
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 800 white serif font (Playfair Display style),
elegant letter-spacing, subtle charcoal shadow 2px,
placed on [vị trí] with dark semi-transparent overlay panel behind
```

---

### Style 3 — Clean Modern

> Tối giản, chuyên nghiệp, hiện đại. Dùng cho **Blog Cover, Infographic, Social Post**.

```
font-weight 600-700 modern sans-serif (Inter / Outfit style),
clean with no stroke,
subtle shadow or no shadow,
paired with thin divider lines and badges
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 700 dark charcoal modern sans-serif,
clean no stroke, minimal shadow,
placed on light/white background area;
"[SUBTITLE]" in font-weight 400 muted gray, smaller, below
```

---

### Style 4 — Gradient Pop

> Năng động, hiện đại, social media. Dùng cho **Social Post, Banner, Story Cover**.

```
font-weight 800-900 sans-serif,
gradient text fill (color A → color B),
OR text on gradient banner/badge,
optional soft glow behind text
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 900 bold sans-serif
with gradient fill from [color A] to [color B],
soft ambient glow behind text,
placed on [vị trí]
```

| Gradient combo | Mood |
|---------------|------|
| Electric blue → purple | Tech, innovation |
| Hot pink → orange | Energy, trending |
| Teal → emerald | Growth, wellness |
| Gold → warm amber | Premium, luxury |
| Coral → magenta | Creative, bold |

---

### Style 5 — Neon Glow

> Dramatic, tech, nightlife, gaming. Dùng cho **Thumbnail (tech), Story, Social Post**.

```
font-weight 800-900 sans-serif,
neon glow effect (outer glow 8-12px [neon color]),
text color matching glow or white,
dark background mandatory
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 900 white sans-serif,
bright [neon color] neon glow effect 10px radius,
placed on dark background area
```

| Neon color | Vibe |
|-----------|------|
| Electric cyan | Futuristic, AI |
| Neon green | Matrix, hacker |
| Hot pink | Nightlife, creative |
| Neon orange | Warning, energy |
| Purple glow | Mystic, premium |

---

### Style 6 — Elegant Typography

> Tinh tế, truyền cảm hứng. Dùng cho **Quote Card, Blog Cover (lifestyle)**.

```
font-weight 300-500 elegant serif OR script font,
large generous letter-spacing,
minimal effects — rely on typography beauty,
paired with thin decorative lines or ornaments
```

**Keyword mẫu:**
```
"[QUOTE]" in font-weight 400 cream elegant serif,
generous letter-spacing, centered,
thin gold decorative line above and below,
on deep dark [color] textured background
```

---

### Style 7 — Handwritten / Script

> Cá nhân, chân thực, gần gũi. Dùng cho **Quote Card, Social Post (lifestyle)**.

```
handwritten script font style,
natural ink texture,
slightly irregular baseline,
warm personal feeling
```

**Keyword mẫu:**
```
"[TEXT]" in handwritten script font, warm cream color,
natural slightly irregular baseline,
on watercolor-washed [color] soft background
```

---

### Style 8 — Bold CTA (Call-to-Action)

> Quảng cáo, bán hàng, urgency. Dùng cho **Banner / Ad, Social Post (promo)**.

```
font-weight 900 condensed uppercase sans-serif,
inside solid color button/banner shape,
contrasting CTA badge below,
optional countdown/urgency element
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 900 white condensed uppercase
on solid [brand color] rectangular banner, full-width;
"[CTA]" in font-weight 800 [contrast color] inside rounded pill button,
with small arrow "→" beside text
```

---

### Style 9 — Big Number Anchor

> Data-driven, thống kê. Dùng cho **Infographic Header, Thumbnail (data), Social Post**.

```
oversized number in font-weight 900 [accent color],
approximately 3× taller than headline,
headline stacked beside or below,
thin divider line separating sections
```

**Keyword mẫu:**
```
"[SỐ]" in oversized font-weight 900 [accent color],
approximately 3× taller than headline, left-anchored;
"[HEADLINE]" in font-weight 700 white condensed, beside number;
thin 2px [color] divider line between sections
```

---

### Style 10 — Glass / Frosted

> Premium, hiện đại, Apple-style. Dùng cho **Social Post, Blog Cover (tech), Banner**.

```
text on frosted glass panel (glassmorphism),
semi-transparent white/dark panel with blur,
clean sans-serif text,
subtle border glow
```

**Keyword mẫu:**
```
"[HEADLINE]" in font-weight 700 white clean sans-serif,
placed on frosted semi-transparent white glass panel
with subtle blur and thin white border glow,
floating over [background description]
```

---

## Text Style × Image Type — Ma trận chọn nhanh

| Loại ảnh | Style ưu tiên | Style thay thế |
|----------|--------------|---------------|
| **Thumbnail** | Bold Impact, Neon Glow | Big Number, Gradient Pop |
| **Blog Cover** | Editorial Serif, Clean Modern | Elegant Typography, Glass |
| **Social Post** | Gradient Pop, Clean Modern | Bold CTA, Glass, Handwritten |
| **Banner / Ad** | Bold CTA, Bold Impact | Gradient Pop, Big Number |
| **Quote Card** | Elegant Typography, Handwritten | Clean Modern, Glass |
| **Infographic Header** | Big Number, Clean Modern | Bold Impact |
| **Story / Reels Cover** | Neon Glow, Gradient Pop | Bold Impact, Glass |

---

## Text Layout Variants

Chọn variant phù hợp với **mục đích nội dung** — không cố định 1 form.

| # | Variant | Khi nào dùng |
|---|---------|-------------|
| 1 | **Multi-Zone (A+B+C)** | Giáo dục, phỏng vấn, listicle — nhiều thông tin |
| 2 | **Minimal Impact** | Dramatic, warning, lifestyle — ấn tượng mạnh |
| 3 | **Big Number Anchor** | Tech, data, thống kê, "top X", "bao nhiêu %" |
| 4 | **Question Hook** | Educational, curiosity-gap, "tại sao", "làm sao" |
| 5 | **Stacked Headlines** | So sánh, before/after, 2 ý tương phản |
| 6 | **Checklist Card** | Tips, hướng dẫn, "X điều cần biết" |
| 7 | **Center Stage** | Quote Card, announcement, hero statement |
| 8 | **Split Layout** | Before/after, comparison, dual message |
| 9 | **Vertical Stack** | Story/Reels, vertical content, step-by-step |

> Có thể mix variant — ví dụ Stacked Headlines ở Zone A + CTA Bar ở bottom.

---

### Variant 1 — Multi-Zone (A+B+C)

```
Text:
  [Zone A - Title Block]
  "[LABEL]" in font-weight 700 white uppercase on solid [màu] banner, [vị trí];
  "[HEADLINE]" in font-weight 900 [màu] condensed, large, below banner;
  "[LABEL TÙY CHỌN]" (Tuỳ chọn) in font-weight 900 [màu] inside rounded pill badge, below headline;
  "[PHỤ ĐỀ]" in font-weight 600 [màu] italic, beside label badge;

  [Zone B - Feature Row]
  three feature items in horizontal row below title, each containing:
    small circular [màu] badge with white pictogram + label below;
  item 1: [icon] + "[FEATURE 1]" font-weight 600 [màu] small;
  item 2: [icon] + "[FEATURE 2]" font-weight 600 [màu] small;
  item 3: [icon] + "[FEATURE 3]" font-weight 600 [màu] small;

  [Zone C - CTA Bar]
  full-width semi-transparent [màu] frosted bar at bottom,
  [icon] + "[TAGLINE]" font-weight 600 [màu] small,
  "[KEYWORD]" in italic [màu accent];

  render exact text only.
```

---

### Variant 2 — Minimal Impact

```
Text:
  "[HEADLINE]" in font-weight 900 [màu] condensed sans-serif,
  [stroke], hard drop shadow, very large, placed on [vị trí] negative space;

  "[SUBTITLE]" in font-weight 600 [màu nhạt hơn], smaller, below headline;

  render exact text only.
```

---

### Variant 3 — Big Number Anchor

```
Text:
  "[SỐ]" in oversized font-weight 900 [màu accent],
  approximately 3× taller than headline, left-anchored;

  "[HEADLINE]" in font-weight 900 [màu] condensed, [stroke],
  stacked beside or below the large number;

  "[SUBTITLE]" in font-weight 600 [màu nhạt], smaller,
  with thin [màu] divider line above, below headline;

  render exact text only.
```

---

### Variant 4 — Question Hook

```
Text:
  "[CÂU HỎI]?" in font-weight 900 [màu] condensed, large,
  placed on [vị trí] negative space;

  "[GỢI MỞ / CONTEXT]" in font-weight 600 [màu nhạt] italic,
  smaller, below question;

  render exact text only.
```

---

### Variant 5 — Stacked Headlines

```
Text:
  "[DÒNG 1]" in font-weight 900 [màu 1] condensed, large,
  placed on [vị trí];

  "[DÒNG 2]" in font-weight 900 [màu 2 — khác màu 1] condensed,
  large, stacked directly below, creating visual contrast;

  "[DETAIL NHỎ]" in font-weight 600 [màu] smaller, below;

  render exact text only.
```

---

### Variant 6 — Checklist Card

```
Text:
  "[HEADLINE]" in font-weight 900 [màu] condensed, large,
  placed on [vị trí];

  "[LABEL]" (Tuỳ chọn) in font-weight 900 [màu accent]
  inside rounded pill badge, below headline;

  three checkmark lines:
  "✓ [item 1]" / "✓ [item 2]" / "✓ [item 3]"
  in font-weight 600 [màu] small, below badge;

  render exact text only.
```

---

### Variant 7 — Center Stage

> Dùng cho **Quote Card, Announcement, Hero Statement**.

```
Text:
  "[MAIN TEXT]" in [Text Style — Elegant Typography hoặc Clean Modern],
  centered horizontally and vertically,
  generous line-height and letter-spacing;

  "[AUTHOR / SOURCE]" in font-weight 500 [màu accent] smaller,
  centered below, with thin decorative line separator above;

  render exact text only.
```

---

### Variant 8 — Split Layout

> Dùng cho **Before/After, Comparison, Dual Message**.

```
Text:
  Left half: "[TEXT A]" in font-weight 900 [màu 1], large;
  Right half: "[TEXT B]" in font-weight 900 [màu 2], large;
  
  Thin vertical divider line or "VS" badge between halves;
  
  "[CONTEXT]" in font-weight 600 [màu] small, top or bottom;

  render exact text only.
```

---

### Variant 9 — Vertical Stack

> Dùng cho **Story / Reels Cover** — vertical layout.

```
Text:
  "[TOP TEXT]" in font-weight 800 [màu], placed in top safe zone (10-25% from top);
  
  [Subject / visual content in center 50%]
  
  "[BOTTOM TEXT]" in font-weight 900 [màu accent], large,
  placed in bottom safe zone (70-85% from top);
  
  "[CTA / DETAIL]" in font-weight 600 [màu] small, below bottom text;

  render exact text only.
```

---

## Hệ thống 3 Tầng Phân Cấp (Text Hierarchy)

> Áp dụng cho MỌI style và variant. Không để tất cả chữ cùng kích thước, cùng màu.

```
[Tầng 1 — Label / Badge]       Nhỏ, nền màu khối, gây chú ý trước
        ↓
[Tầng 2 — Headline]            To nhất, font-weight 900, màu nổi nhất
        ↓
[Tầng 3 — Supporting / Detail] Nhỏ hơn, màu nhạt hơn, bổ sung thông tin
```

---

## Text Effects Dictionary

> Chọn effects phù hợp với Text Style đã chọn. KHÔNG mix quá nhiều — tối đa 2-3 effects.

| Effect | Keyword | Dùng với Style |
|--------|---------|---------------|
| **Hard Drop Shadow** | `hard drop shadow 4px bottom-right [color]` | Bold Impact, Stacked |
| **Soft Shadow** | `subtle soft shadow 2px [color]` | Editorial, Clean Modern |
| **Stroke / Outline** | `[color] stroke 2-3px` | Bold Impact, Neon |
| **Neon Glow** | `bright [color] neon glow effect 8-12px radius` | Neon Glow |
| **Ambient Glow** | `soft [color] ambient glow behind text` | Gradient Pop, Neon |
| **Gradient Fill** | `gradient fill from [A] to [B]` | Gradient Pop |
| **Frosted Panel** | `on frosted semi-transparent [color] glass panel` | Glass / Frosted |
| **Overlay Panel** | `on semi-transparent dark [color] overlay panel, 70% opacity` | Editorial, Clean |
| **3D Extrude** | `3D extruded text with [color] depth, slight angle` | Bold Impact (variant) |
| **Metallic** | `metallic gold/silver sheen on text surface` | Premium, Luxury |
| **Emboss** | `subtle embossed effect, raised from surface` | Elegant, Clean |
| **Underline Bar** | `thick 4px [color] underline beneath "[TỪ]"` | Clean Modern |
| **Letter Spacing** | `generous letter-spacing` hoặc `tight letter-spacing` | Elegant, Editorial |

---

## Text Background Shapes

| Shape | Keyword | Dùng khi nào |
|-------|---------|-------------|
| **Solid Banner** | `solid [màu] rectangular banner behind text, full-width` | Label tầng 1, tiêu đề phụ |
| **Pill Badge** | `rounded pill-shaped [màu] badge behind text, padding 8px` | Tag, label nhỏ |
| **Diagonal Slash** | `angled diagonal [màu] banner slash across left side` | Accent mạnh, cảnh báo |
| **Highlight Bar** | `thick [màu] horizontal highlight underline bar beneath headline` | Gạch chân tiêu đề |
| **Semi-transparent** | `[màu] semi-transparent frosted overlay panel, 70% opacity` | Nền phức tạp, text cần nổi |
| **Drop Shadow Panel** | `dark navy drop-shadow box behind text group, offset 6px` | Corporate, giáo dục |
| **Rounded Card** | `white rounded rectangle card with subtle shadow, text inside` | Clean, social media |
| **Gradient Banner** | `gradient banner from [A] to [B] behind text` | Modern, premium |
| **Circle Badge** | `circular [màu] badge, number/icon inside` | Data, stats, step number |

---

## Accent Text Elements

| Element | Keyword | Hiệu ứng |
|---------|---------|----------|
| **Số lớn** | `"50+" in oversized font-weight 900 [màu], ~2× taller than headline` | Neo thị giác |
| **Label/Year Badge** | `"[LABEL]" in font-weight 900 [màu] inside rounded pill badge` | Signaling cập nhật |
| **Checklist mini** | `"✓ [text]" / "✓ [text]" / "✓ [text]" in font-weight 600 small` | Liệt kê lợi ích |
| **Highlight Word** | `one word "[TỪ]" in bright [accent] to contrast rest in white` | Nhấn từ khóa |
| **Divider Line** | `thin 2px [màu] horizontal rule between label and headline` | Tách tầng |
| **Arrow** | `small right-pointing arrow "→" in [màu] before key word` | Urgency, CTA |
| **Price Tag** | `"[GIÁ]" in font-weight 900 [accent] with strikethrough "[GIÁ CŨ]" in gray` | Sale, promotion |
| **Star Rating** | `five stars ★★★★★ in [gold], small, below headline` | Review, trust |
| **Countdown** | `"Chỉ còn [N] ngày" in font-weight 700 [red] inside pill badge` | Urgency, FOMO |

---

## Icon-Text Feature Row (Zone B)

**Icon Badge styles:**

| Kiểu | Keyword |
|------|--------|
| Tròn đặc | `small circular [màu] badge with white [icon] pictogram inside` |
| Vuông bo | `small rounded-square [màu] badge with white [icon] symbol` |
| Tròn viền | `small circle with [màu] outline, [icon] pictogram inside` |

**Icon Dictionary:**

| Niche | Icons |
|-------|-------|
| Phỏng vấn / HR | clipboard-list, speech-bubble, handshake, star, user-check |
| IT / Data | code-bracket, database, bar-chart, gear, terminal |
| Tài chính | coin-stack, trending-up-arrow, calculator, shield-check |
| Giáo dục | book-open, lightbulb, graduation-cap, pencil |
| Y tế | heart-pulse, stethoscope, shield-check, pill-capsule |
| Marketing | megaphone, target-bullseye, trending-up, globe |
| E-commerce | shopping-cart, tag, gift-box, truck |
| Lifestyle | camera, coffee-cup, plant, sun |

---

## CTA / Tagline Bar (Zone C)

| Kiểu | Keyword | Dùng khi |
|------|---------|---------| 
| **Frosted** | `full-width semi-transparent frosted [màu] bar at bottom` | Nền phức tạp |
| **Solid** | `solid [màu] horizontal bar full width at bottom` | Accent mạnh |
| **Gradient** | `gradient bar from [màu] to transparent at bottom` | Premium |
| **Accent Line** | `thin 3px [màu] accent line above bottom text` | Tối giản |
| **Button CTA** | `rounded [màu] button with "[CTA TEXT]" in white, centered` | Banner / Ad |

---

## Decorative Elements

> Thêm 1-2 element để nâng cấp từ "tạm được" → "chuyên nghiệp".

| Element | Keyword |
|---------|--------|
| **Accent Dots** | `three small [màu] dots vertically beside headline` |
| **Corner Lines** | `thin [màu] geometric lines at corner, 2 parallel 45°` |
| **Glow Halo** | `soft [màu] ambient glow behind headline` |
| **Thick Underline** | `thick 4px [màu] underline beneath "[TỪ]"` |
| **Divider Dots** | `dot separator "•" between tagline phrases` |
| **Icon Scatter** | `tiny scattered [icon] at 8% opacity in text background` |
| **Bokeh Circles** | `soft blurred [màu] bokeh circles in background` |
| **Geometric Shapes** | `subtle [màu] geometric triangles/hexagons at 10% opacity` |
| **Sparkle / Star** | `small sparkle ✦ elements near headline in [màu]` |
| **Quotation Marks** | `large decorative "„ " quotation marks in [màu], 30% opacity` |
| **Ribbon** | `small [màu] ribbon banner at corner with "[LABEL]"` |

---

## Layout & Composition Quick Ref

| Yêu cầu | Keyword |
|---------|--------|
| Text bên trái | `subject on the right, wide empty negative space on the left` |
| Text bên phải | `subject on the left, clean negative space on the right` |
| Text giữa | `center-framed subject, clean background at top/bottom for text` |
| Text overlay on image | `semi-transparent dark gradient overlay on [vị trí] for text readability` |
| Nền mờ nổi text | `shallow depth of field f/1.8, blurred background` |
| Full bleed text | `text as primary element, minimal/no subject, typography-focused` |
| Vertical safe zones | `text in top 10-25% and bottom 70-85%, center clear for subject` |

---

## Variant 10 — Premium Recruitment Editorial (Whitespace + Restrained Type)

> Dùng cho **ảnh tuyển dụng, bộ câu hỏi phỏng vấn, blog cover premium, fintech/tech/corporate campaign**.
> Mục tiêu: ảnh trông như quảng cáo editorial cao cấp, không giống Canva template hoặc thumbnail chữ quá lớn.

### Layout Principles
```
Composition: High-end editorial recruitment advertisement layout with strong
asymmetric balance. Subject/workspace positioned on the right third or right
55-60% of frame. Left 40-45% remains clean negative space reserved for typography.
Use intentional whitespace as a premium design element. Avoid centered layout,
avoid cramped text, avoid heavy template-like blocks.
```

### Typography Scale Rule
```
IMPORTANT TYPOGRAPHY SCALE:
Typography must appear noticeably smaller and more premium.
Text group should occupy only around 28-32% of total image width.
Maintain large breathing room around all text blocks.
Headline should feel elegant and restrained, not aggressive.
Do not let typography dominate the composition.
Spacing between headline lines should be generous.
Supporting icons and labels must remain visually secondary and lightweight.
```

### Text Template
```
Text:
  "[LABEL]" in medium-sized white uppercase sans-serif inside a rounded
  dark [primary color] banner with generous padding, upper-left;

  "[HEADLINE]" in font-weight 800-900 condensed [primary/accent color]
  sans-serif typography with moderate scale, elegant spacing, restrained
  editorial hierarchy, placed below label with generous line spacing;

  "[YEAR]" in balanced warm [accent] typography, smaller and less dominant,
  placed near headline as a supporting anchor, not as the largest element;

  "[DETAIL]" inside a smaller rounded dark [primary color] capsule,
  secondary scale, below headline;

  three minimalist thin-line icons with smaller labels below headline,
  lightweight and secondary;

  bottom banner: "[TAGLINE]" in font-weight 500-600 small,
  clean and understated;

  render exact text only.
```

### Transition Rule
```
Transition: Subtle natural separation between text area and workspace scene;
use clean negative space or a very soft gradient only. Avoid strong white blur
overlay, heavy dark panels, or artificial fog that makes the design look cheap.
```

### Premium Constraints
```
Avoid oversized typography; avoid cramped layout; avoid thick heavy text blocks;
avoid Canva-template appearance; no fake dashboards; no random unreadable text;
no stock-photo appearance; maintain clean editorial whitespace and premium
commercial balance.
```
