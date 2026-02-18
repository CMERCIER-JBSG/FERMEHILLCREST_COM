# CLAUDE.md — Ferme Hillcrest S.E.N.C.

## Project Summary
WordPress website for Ferme Hillcrest S.E.N.C., a premium peony farm in Knowlton, Quebec (Eastern Townships). Bilingual French/English with WooCommerce for seasonal flower and root sales.

- **Domain:** fermehillcrest.com
- **French (default):** fermehillcrest.com/
- **English:** fermehillcrest.com/en/
- **Related site:** jbskinsavvi.com (skincare boutique in Knowlton)

## Tech Stack
- **CMS:** WordPress (latest stable)
- **Local Dev:** LocalWP (PHP 8.1+, MySQL 8.0+)
- **Theme:** Astra or Kadence + Elementor page builder
- **Languages:** Polylang (French default, English at /en/)
- **E-commerce:** WooCommerce (seasonal availability)
- **Hosting (future):** SiteGround, Kinsta, or WP Engine (Canadian server)

## Key Plugins
- Elementor, Polylang, WooCommerce
- Contact Form 7, WP Mail SMTP
- MailPoet or Mailchimp for WP
- Yoast SEO, WP Migrate DB
- Smush or ShortPixel (image optimization)
- WP Super Cache (performance)
- CookieYes or Complianz (Quebec Law 25 compliance)

## Design Direction
- **Aesthetic:** Elegant, upscale, editorial — refined countryside luxury
- **Typography:** Cormorant Garamond or Playfair Display (headings) + Lato or Jost (body)
- **Palette:** Blush pink, cream/ivory, sage green, warm white, soft gold accents
- **Layout:** Generous white space, clean grid, mobile-first responsive

## Repository Structure
```
FERMEHILLCREST_COM/
├── theme/
│   └── hillcrest-child/       ← Astra child theme (zip and install in WP)
│       ├── style.css          ← Theme metadata + CSS design tokens
│       ├── functions.php      ← Menus, fonts, Polylang, WooCommerce support
│       └── assets/css/custom.css ← Full design system
│
├── setup/
│   ├── SETUP_GUIDE.md        ← Step-by-step LocalWP setup instructions
│   ├── install-plugins.sh    ← WP-CLI: install all 11 plugins
│   └── create-pages.sh       ← WP-CLI: create all 18 bilingual pages
│
├── content/
│   ├── pages-fr.md           ← French page content (copy-paste for Elementor)
│   └── pages-en.md           ← English page content (copy-paste for Elementor)
│
├── docs/
│   └── PROJECT_BRIEF.md      ← Full website development brief
│
├── CLAUDE.md                  ← This file
└── .gitignore
```

## Development Phases
1. **Phase 1 — Local Build:** LocalWP setup, theme/plugins, build all French pages, translate to English, WooCommerce, forms, newsletter
2. **Phase 2 — Live Deployment:** Hosting, migration, SSL, domain, analytics
3. **Phase 3 — Enhancements:** Instagram feed, U-Cut booking, gallery filters, seasonal blog

## Pages (9 total, each in FR + EN)
1. Landing Page / Accueil
2. About Us / Notre Histoire
3. Our Peonies / Nos Pivoines
4. Buy Fresh Flowers / Acheter des Fleurs Fraîches
5. For Florists / Pour les Fleuristes
6. Peony Roots / Racines de Pivoines
7. JB SkinSavvi & Boutique
8. Newsletter / Infolettre
9. Social Media / Réseaux Sociaux

## Important Rules
- French is the DEFAULT language (root URL /)
- English lives under /en/
- All jbskinsavvi.com links: `target="_blank" rel="noopener"`
- WooCommerce products use date-based visibility for seasonal show/hide
- Cookie consent banner required before go-live (Quebec Law 25)
- Language switcher visible in top navigation on every page
