# Ferme Hillcrest S.E.N.C. — Website Development Brief

**Domain:** fermehillcrest.com | **Related:** jbskinsavvi.com | **Date:** February 18, 2026

---

## 1. Project Overview

Build a WordPress website for Ferme Hillcrest S.E.N.C., a peony farm in Knowlton, Quebec, in the upscale Eastern Townships (Cantons-de-l'Est). The site must be elegant and refined, evoking the beauty of the farm and the distinguished character of Knowlton village near Lac Brome.

Two fully separate language versions:

- **English** — branded as **Hillcrest Farm S.E.N.C.** at `fermehillcrest.com/en/`
- **French** — branded as **Ferme Hillcrest S.E.N.C.** at `fermehillcrest.com/` (default)

These are NOT a bilingual toggle — they are two complete, self-contained site versions.

---

## 2. Local Development Setup

| Item | Detail |
|------|--------|
| Local Environment | LocalWP (free) |
| PHP | 8.1+ |
| MySQL | 8.0+ |
| WordPress | Latest stable |

### LocalWP Steps

1. Download and install LocalWP
2. Create new site: `ferme-hillcrest`
3. Set admin credentials securely
4. Install theme and plugins below
5. Build locally, then migrate to live hosting when ready

### Recommended Theme

Astra or Kadence + Elementor page builder

### Essential Plugins

| Plugin | Purpose |
|--------|---------|
| Elementor | Page builder |
| Polylang | EN/FR language management |
| WooCommerce | Flower pre-orders + root sales |
| WP Mail SMTP | Contact form email delivery |
| Contact Form 7 | Florist inquiry forms |
| MailPoet or Mailchimp for WP | Newsletter signup |
| Yoast SEO | SEO optimization |
| WP Migrate DB | Migrate to live hosting |
| Smush or ShortPixel | Image optimization |
| WP Super Cache | Performance |
| CookieYes or Complianz | Quebec Law 25 cookie compliance |

---

## 3. Site Architecture

```
fermehillcrest.com/       → French (default)
fermehillcrest.com/en/    → English
```

---

## 4. Pages & Content

### 4.1 Landing Page / Accueil

**EN:** Welcome to Hillcrest Farm — nestled in the heart of Knowlton, Quebec, in the storied Eastern Townships. Here, amid the rolling hills and tranquil shores of Lac Brome, we cultivate some of the most breathtaking peonies in Canada. From our fields to your hands — discover the beauty of the season.

**FR:** Bienvenue à la Ferme Hillcrest — nichée au cœur de Knowlton, au Québec, dans les magnifiques Cantons-de-l'Est. Entourés des collines verdoyantes et des rives paisibles du lac Brome, nous cultivons certaines des plus belles pivoines au Canada. Du champ à vos mains — découvrez la beauté de la saison.

**Design:** Full-width hero image, serif typography (Cormorant Garamond or Playfair Display), blush/cream/sage palette, language switcher top-right, CTA buttons to Shop and Florist sections.

### 4.2 About Us / Notre Histoire

**EN:** Hillcrest Farm S.E.N.C. is a family peony farm rooted in the rich landscape of Knowlton, Quebec — a historic village in the Eastern Townships, first settled by United Empire Loyalists. We grow premium peonies that celebrate the beauty of each fleeting season, from our fields near the tranquil shores of Lac Brome.

**FR:** La Ferme Hillcrest S.E.N.C. est une ferme familiale de pivoines enracinée dans le magnifique paysage de Knowlton — un village historique des Cantons-de-l'Est, fondé par les Loyalistes de l'Empire-Uni. Nous cultivons des pivoines de qualité supérieure qui célèbrent la beauté de chaque saison éphémère, depuis nos champs près des rives du lac Brome.

**Design:** Lifestyle photography, warm editorial layout, Loyalist heritage note.

### 4.3 Our Peonies / Nos Pivoines

**EN:** From classic blush doubles to dramatic coral singles, our peonies are grown with meticulous care from bud to bloom. Each variety is selected for its beauty, fragrance, and longevity — perfect for weddings, events, and everyday moments of elegance.

**FR:** Des classiques doubles rosées aux spectaculaires simples corail, nos pivoines sont cultivées avec un soin méticuleux. Chaque variété est sélectionnée pour sa beauté, son parfum et sa longévité — parfaite pour les mariages, les événements et les moments d'élégance du quotidien.

**Design:** Masonry gallery, each variety with name, color, bloom time, fragrance. High-res photography essential.

### 4.4 Buy Fresh Flowers / Acheter des Fleurs Fraîches

**EN:** Peonies are available fresh-cut during our blooming season, typically late spring to early summer. Order ahead to reserve your bouquet, or visit us at the farm. We also offer U-Cut options — come select your own blooms straight from the field.

**FR:** Les pivoines sont disponibles fraîches coupées pendant notre saison de floraison, généralement à la fin du printemps et au début de l'été. Commandez à l'avance pour réserver votre bouquet, ou venez nous rendre visite à la ferme. Nous offrons également une option de cueillette à la ferme.

**Design:** WooCommerce shop, seasonal availability toggle, out-of-season message during off months.

### 4.5 For Florists / Pour les Fleuristes

**EN:** Are you a florist looking for locally grown, premium peonies? We supply professional florists throughout the Eastern Townships and beyond. Contact us to discuss availability, pricing, and minimum orders.

**FR:** Êtes-vous fleuriste à la recherche de pivoines de première qualité cultivées localement ? Nous approvisionnons des fleuristes professionnels dans les Cantons-de-l'Est et au-delà. Contactez-nous pour discuter des disponibilités, des tarifs et des commandes minimales.

**Contact form fields:** Full Name, Business Name, Email, Phone, Weekly Volume Needed, Message.

### 4.6 Peony Roots / Racines de Pivoines

**EN:** Bring the beauty of Hillcrest Farm to your own garden. Each fall, we offer a curated selection of peony roots — ideal for home gardeners who want to enjoy these magnificent blooms for decades to come. Quantities are limited; pre-ordering is strongly recommended.

**FR:** Apportez la beauté de la Ferme Hillcrest dans votre propre jardin. Chaque automne, nous offrons une sélection soignée de racines de pivoines — idéales pour les jardiniers qui souhaitent profiter de ces magnifiques fleurs pendant des décennies. Les quantités sont limitées ; la précommande est fortement recommandée.

**Design:** WooCommerce listings, active late summer–fall only. Downloadable planting care guide PDF.

### 4.7 JB SkinSavvi & Boutique

**EN:** The beauty of our peonies doesn't end in the field. During blooming season, fresh Hillcrest Farm bouquets are available at JB SkinSavvi — our skincare boutique in the heart of Knowlton village. JB SkinSavvi also features a line of peony-inspired skincare products, crafted with the same care we bring to our farm. Visit us in store or explore the collection online at jbskinsavvi.com.

**FR:** La beauté de nos pivoines ne s'arrête pas au champ. Pendant la saison de floraison, des bouquets frais de la Ferme Hillcrest sont disponibles chez JB SkinSavvi — notre boutique de soins de la peau au cœur du village de Knowlton. JB SkinSavvi propose également une gamme de produits de soins inspirés de la pivoine. Visitez-nous en boutique ou explorez la collection sur jbskinsavvi.com.

**Design:** Link opens in new tab. Boutique address with embedded Google Map. Cohesive elegant cross-branding.

### 4.8 Newsletter / Infolettre

**EN:** Be the first to know when our peonies are in bloom. Sign up for our newsletter and receive seasonal updates, bloom announcements, root sale notifications, and exclusive offers from Hillcrest Farm.

**FR:** Soyez parmi les premiers à savoir quand nos pivoines sont en fleur. Inscrivez-vous à notre infolettre pour recevoir des mises à jour saisonnières, des annonces de floraison et des offres exclusives de la Ferme Hillcrest.

**Design:** Email capture in footer and as standalone section. Language preference option at signup.

### 4.9 Social Media / Réseaux Sociaux

**Design:** Instagram and Facebook icons in footer. Optional: live Instagram feed embed on homepage via Smash Balloon plugin.

---

## 5. Design Direction

| Element | Direction |
|---------|-----------|
| Aesthetic | Elegant, upscale, editorial — refined countryside luxury |
| Typography | Cormorant Garamond or Playfair Display (headings) + Lato or Jost (body) |
| Color Palette | Blush pink, cream/ivory, sage green, warm white, soft gold accents |
| Photography | High-res, natural light, no stock images |
| Layout | Generous white space, clean grid, uncluttered |
| Logo | Simple wordmark with subtle peony illustration |

---

## 6. Technical Specs

| Item | Detail |
|------|--------|
| CMS | WordPress (latest) |
| Local Dev | LocalWP |
| Future Hosting | SiteGround, Kinsta, or WP Engine — Canadian server preferred |
| SSL | Required on live deployment |
| Responsive | Mobile-first |
| Languages | Polylang plugin |
| E-commerce | WooCommerce (seasonal) |
| Analytics | Google Analytics 4 |
| Privacy | Cookie consent — Quebec Law 25 (CookieYes or Complianz) |

---

## 7. Development Phases

### Phase 1 — Local Build (Now)

1. Install LocalWP
2. Install WordPress + theme + plugins
3. Configure Polylang (French default, English at /en/)
4. Build all pages in French
5. Duplicate and translate to English
6. Set up WooCommerce (products, seasonal visibility)
7. Set up forms and newsletter
8. Internal review

### Phase 2 — Live Deployment

1. Purchase hosting (Canadian server)
2. Migrate with WP Migrate DB
3. Connect fermehillcrest.com domain
4. SSL certificate
5. Test everything
6. Google Analytics + Search Console

### Phase 3 — Enhancements

- Instagram feed embed (Smash Balloon)
- U-Cut booking system
- Gallery variety filter
- Seasonal blog/journal

---

## 8. Instructions for Claude Code

1. Scaffold WordPress via LocalWP (PHP 8.1+, MySQL 8.0+)
2. Install: Astra/Kadence theme, Elementor, Polylang, WooCommerce, Contact Form 7, MailPoet
3. Set French as default language in Polylang, English under /en/
4. Build French pages first, then duplicate and translate to English
5. Use all copy in Section 4 directly — it is final-draft quality
6. WooCommerce products: use date-based visibility (Barn2 WooCommerce Visibility plugin) for seasonal show/hide
7. All jbskinsavvi.com links: `target="_blank" rel="noopener"`
8. Language switcher: visible in top navigation on every page
9. Contact forms: configure email delivery via WP Mail SMTP
10. Cookie consent banner: active before go-live (Quebec Law 25 requirement)

---

## 9. Content Still Needed from Client

- [ ] Farm email address for contact form notifications
- [ ] High-resolution farm and peony photography
- [ ] List of peony varieties (names, colors, bloom times, fragrance)
- [ ] Pricing (bouquets, stems, bundles, roots)
- [ ] JB SkinSavvi boutique address in Knowlton
- [ ] Social media handles (Instagram, Facebook)
- [ ] Logo files (or logo design brief)
- [ ] Farm mailing/physical address
- [ ] Hosting provider decision (Phase 2)
- [ ] Newsletter platform preference: MailPoet or Mailchimp

---

*Brief prepared: February 18, 2026 | Ferme Hillcrest S.E.N.C., Knowlton, Quebec*
