# Ferme Hillcrest — LocalWP Setup Guide

Step-by-step instructions to set up the WordPress development environment.

---

## Prerequisites

- Windows 10/11 or macOS
- [LocalWP](https://localwp.com/) installed (free download)
- This repository cloned to your machine

---

## Step 1: Create the Local Site

1. Open **LocalWP**
2. Click **+ Create a new site**
3. Choose **Create a new site** (not from Blueprint)
4. Site name: `ferme-hillcrest`
5. Choose **Preferred** environment (or Custom: PHP 8.1+, MySQL 8.0+)
6. Set WordPress admin credentials:
   - Username: `admin`
   - Password: (choose a strong password)
   - Email: (your email)
7. Click **Add Site** and wait for setup to complete

---

## Step 2: Install the Astra Parent Theme

1. In LocalWP, click **WP Admin** to open the WordPress dashboard
2. Go to **Appearance > Themes > Add New**
3. Search for **Astra**
4. Click **Install**, then **Activate**

---

## Step 3: Install the Hillcrest Child Theme

### Option A: Zip Upload (Recommended)

1. Create a zip file from the `theme/hillcrest-child/` folder in this repository:
   - On Windows: Right-click `hillcrest-child` folder > **Send to > Compressed (zipped) folder**
   - On macOS: Right-click `hillcrest-child` folder > **Compress**
2. In WordPress admin, go to **Appearance > Themes > Add New > Upload Theme**
3. Choose the `hillcrest-child.zip` file
4. Click **Install Now**, then **Activate**

### Option B: Direct Copy

1. Find the LocalWP site folder:
   - LocalWP > Right-click site > **Go to site folder**
   - Navigate to `app/public/wp-content/themes/`
2. Copy the entire `theme/hillcrest-child/` folder there
3. In WordPress admin, go to **Appearance > Themes**
4. Find **Hillcrest Child** and click **Activate**

---

## Step 4: Install Plugins

### Option A: WP-CLI Script (Fast)

1. In LocalWP, right-click the site > **Open Site Shell**
2. Run:
   ```bash
   bash /path/to/FERMEHILLCREST_COM/setup/install-plugins.sh
   ```
   Replace `/path/to/` with the actual path to your cloned repository.

### Option B: Manual Installation

In WordPress admin, go to **Plugins > Add New** and install each:

| Plugin | Search Term |
|--------|-------------|
| Elementor | `elementor` |
| Polylang | `polylang` |
| WooCommerce | `woocommerce` |
| Contact Form 7 | `contact form 7` |
| WP Mail SMTP | `wp mail smtp` |
| MailPoet | `mailpoet` |
| Yoast SEO | `yoast seo` |
| WP Migrate DB | `wp migrate db` |
| ShortPixel | `shortpixel` |
| WP Super Cache | `wp super cache` |
| CookieYes | `cookieyes` |

Activate each plugin after installation.

---

## Step 5: Configure Polylang (Languages)

1. Go to **Languages > Languages**
2. Add **French (fr_FR)**:
   - Full name: Français
   - Locale: fr_FR
   - Set as **Default language**
   - Save
3. Add **English (en_US)**:
   - Full name: English
   - Locale: en_US
   - URL modification: **The language is set from the directory name in the URL** (`/en/`)
   - Save
4. Go to **Settings > Permalinks** and click **Save Changes** (flushes rewrite rules)

---

## Step 6: Create Pages

### Option A: WP-CLI Script (Fast)

1. In the LocalWP site shell, run:
   ```bash
   bash /path/to/FERMEHILLCREST_COM/setup/create-pages.sh
   ```
2. This creates all 18 pages (9 FR + 9 EN) with content pre-filled

### Option B: Manual Creation

1. Go to **Pages > Add New**
2. Create each page from the content in `content/pages-fr.md` and `content/pages-en.md`
3. For each page, set the correct language in the Polylang metabox on the right sidebar

---

## Step 7: Link Polylang Translations

For each pair of FR/EN pages, you need to tell Polylang they are translations of each other:

1. Edit the **English** page (e.g., "Home")
2. In the **Languages** metabox (right sidebar), find the French flag
3. Click the pencil icon and select the corresponding French page (e.g., "Accueil")
4. Save

Repeat for all 9 page pairs:

| French Page | English Page |
|-------------|-------------|
| Accueil | Home |
| Notre Histoire | About Us |
| Nos Pivoines | Our Peonies |
| Acheter des Fleurs Fraîches | Buy Fresh Flowers |
| Pour les Fleuristes | For Florists |
| Racines de Pivoines | Peony Roots |
| JB SkinSavvi & Boutique | JB SkinSavvi & Boutique |
| Infolettre | Newsletter |
| Réseaux Sociaux | Social Media |

---

## Step 8: Set Up Navigation Menus

1. Go to **Appearance > Menus**
2. Create a **French menu** (`menu-principal`):
   - Add pages: Accueil, Notre Histoire, Nos Pivoines, Acheter des Fleurs Fraîches, Pour les Fleuristes, Racines de Pivoines, JB SkinSavvi & Boutique
   - Assign to **Primary Menu** location
   - Set language: **French**
3. Create an **English menu** (`main-menu`):
   - Add pages: Home, About Us, Our Peonies, Buy Fresh Flowers, For Florists, Peony Roots, JB SkinSavvi & Boutique
   - Assign to **Primary Menu** location
   - Set language: **English**

The language switcher is automatically added by the child theme's `functions.php`.

---

## Step 9: Configure WooCommerce

1. Complete the **WooCommerce Setup Wizard** when prompted
2. Set store location: **Canada — Quebec**
3. Currency: **CAD ($)**
4. Enable **Shipping** (local pickup at minimum)
5. Skip payment setup for now (Phase 2)

### Product Categories
Create these categories (in both languages):
- Fleurs Fraîches / Fresh Flowers
- Racines de Pivoines / Peony Roots

### Sample Products (placeholder)
Add placeholder products — real pricing is needed from the client (see Section 9 of the brief).

---

## Step 10: Build Pages with Elementor

1. Go to **Pages > All Pages**
2. For each page, click **Edit with Elementor**
3. Use the content from `content/pages-fr.md` and `content/pages-en.md` as your guide
4. The CSS classes from the child theme (`hc-hero`, `hc-peony-gallery`, `hc-seasonal-notice`, etc.) are available for styling

### Key Elementor Settings
- **Global Colors:** Match the CSS variables in the child theme (blush, cream, sage, gold)
- **Global Fonts:** Cormorant Garamond (headings), Lato (body)
- **Default Colors:** Disable Elementor default colors to use theme colors

---

## Viewing Your Site

- **French version:** http://ferme-hillcrest.local/
- **English version:** http://ferme-hillcrest.local/en/

(The exact `.local` domain depends on your LocalWP configuration)

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Child theme not appearing | Ensure Astra parent theme is installed first |
| Polylang not showing language switcher | Check functions.php is using `pll_the_languages` correctly |
| WP-CLI scripts fail | Run from LocalWP's "Open Site Shell", not a regular terminal |
| Pages not showing correct language | Edit each page and set language in the Polylang metabox |
| Elementor styles conflict with theme | In Elementor > Settings, disable default colors and fonts |
