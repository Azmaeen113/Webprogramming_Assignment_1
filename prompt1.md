I have this website for a freelancing club called "freelanceHUB-KUET" built in HTML, CSS, and JavaScript. 
It currently looks flat and monochromatic. I want you to redesign it section by section to be visually 
rich, colorful, and modern — while keeping a clean, professional tone appropriate for a university 
club. Do NOT make it look cartoonish, playful, or meme-inspired. Think: professional, fresh, 
vibrant, editorial.

Here is the section-by-section redesign plan I want you to follow:

---

GLOBAL TOKENS (apply these consistently before touching any section):

- Define a CSS custom property palette at :root. Use the following named color roles:
  --color-hero-bg: a deep forest green (#0D3B2E)
  --color-hero-text: off-white (#F5F0E8)
  --color-accent-primary: a warm golden yellow (#F5C842)
  --color-accent-secondary: a bright teal (#00C9A7)
  --color-section-alt: a very light sage (#EEF4F0)
  --color-dark-card: #1A1A2E (deep navy, used for dark card backgrounds)
  --color-body-text: #2C2C2C
  --color-muted: #6B7280

- Typography:
  Import 'Plus Jakarta Sans' from Google Fonts for headings and 'Inter' for body text.
  Set heading weights to 700–800. Body at 400–500.
  Increase base font size slightly for readability.

- Spacing: Add generous section padding (min 80px top/bottom). Use consistent 
  container max-width of 1100px centered.

- Border radius: use 12px for cards, 8px for buttons, 6px for tags/badges.

- Subtle shadows: use box-shadow: 0 4px 20px rgba(0,0,0,0.08) on cards.

---

SECTION 1 — HERO / NAVBAR:

- Make the navbar background --color-hero-bg (dark green) with white links.
- The "Join" button should use --color-accent-primary (golden yellow) with dark text.
- In the hero section, use a two-column layout: left side has the headline and CTA on 
  a dark green background, right side contains the KUET campus image with a subtle 
  rounded border.
- The headline "Build skills. Earn income. Lead your future." should be large 
  (clamp 2.5rem to 4rem), bold, in off-white (#F5F0E8).
- The stat numbers (120 Members, 35 Workshops, 500+ Earned) should be displayed 
  in bold golden yellow.
- "Join the Club" button: dark green bg, golden yellow text, hover inverts to 
  yellow bg / dark text.
- "Learn More" should be a ghost/outline button in white.

---

SECTION 2 — WHO WE ARE (About Us):

- Background: --color-section-alt (light sage).
- Use a two-column layout: left has the bullet list of features, right has the 
  pull quote card.
- Make the pull quote card use --color-dark-card background with 
  --color-accent-secondary (teal) left border (4px), white text inside.
- Each feature bullet should have a colored dot or icon (use a teal circle or 
  checkmark icon) instead of a plain bullet.
- Section heading "Who We Are" should have a small colored eyebrow label 
  "ABOUT US" in teal uppercase tracking-widest above it.

---

SECTION 3 — WHAT WE DO (Programs):

- Background: white.
- Each of the 6 skill track cards should have a distinctly colored top accent bar:
  UI/UX Design → purple (#7C3AED)
  Web Development → blue (#2563EB)
  AI & Automation → teal (#00C9A7)
  Content Writing → orange (#F97316)
  Data Analysis → green (#16A34A)
  Digital Marketing → red (#DC2626)
- Cards should have a light version of their accent color as the card background 
  (e.g., purple at 8% opacity).
- The badge labels ("Beginner Friendly", "High Demand", etc.) should be styled as 
  pill badges using those same accent colors.
- The filter dropdown ("All Tracks") should be styled as a rounded select 
  with border and hover state.

---

SECTION 4 — UPCOMING EVENTS (Calendar):

- Background: --color-hero-bg (dark green), white text — make this section feel 
  like a premium calendar block.
- Each event item should be a horizontal card with:
  - A large date block on the left with --color-accent-primary (golden yellow) 
    background and dark text (day + month).
  - Event type badge (WORKSHOP / BOOTCAMP / PANEL TALK) as a colored pill.
  - Event title bold in white, location/time in muted gray.
- Separate event items with a subtle divider.
- Section heading in large off-white text with the eyebrow "CALENDAR" in teal.

---

SECTION 5 — MEET OUR CORE TEAM (Leadership):

- Background: white.
- Team member cards should be redesigned: use a circular avatar area with a 
  gradient background (unique per person), their initials in white, name bold below, 
  department tag as a small badge in --color-section-alt.
- On hover, the card lifts slightly (transform: translateY(-4px)) with a stronger shadow.
- Each card should have a thin top border in the person's accent color.

---

SECTION 6 — FAQ:

- Background: --color-section-alt (light sage).
- Style the accordion items with left-side colored vertical bar 
  (--color-accent-secondary) when expanded.
- The "+" icon should animate to "×" on open.
- Add subtle background highlight (#fff) on the open accordion item.

---

SECTION 7 — JOIN FORM / CTA:

- Background: split layout — left side is --color-hero-bg (dark green) with 
  the CTA copy in white, right side is white with the form.
- Form inputs should have a clean border, subtle focus ring in teal.
- The "Submit Application" button: full-width, golden yellow background, 
  dark text, bold, 14px tracking, hover effect.
- Left side benefits list (Free membership, Hands-on workshops, Mentorship) 
  should use teal checkmark icons.

---

SECTION 8 — FOOTER:

- Background: #0A0A0A (near black), white text.
- Club name in bold white, tagline in muted gray.
- Address/contact info in a smaller muted text.
- Add a thin top border in golden yellow as a visual separator.

---

ADDITIONAL GLOBAL RULES:

- Do NOT add any cartoon illustrations, clip art, or emoji.
- Do NOT change the content, copy, or structure of the page — only visual styling.
- Keep all existing IDs and class names functional (don't break JS behavior).
- All changes must be responsive — test at 375px (mobile) and 1280px (desktop).
- Smooth scroll behavior: add scroll-behavior: smooth to html.
- Add a subtle scroll-reveal: sections fade in slightly as they enter the viewport 
  (use IntersectionObserver, 0.3s ease-out opacity + translateY(20px) → 0).