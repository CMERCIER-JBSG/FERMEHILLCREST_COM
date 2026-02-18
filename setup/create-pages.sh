#!/bin/bash
# =============================================================================
# Ferme Hillcrest — Page Creation Script
# =============================================================================
# Creates all 9 pages in French and English with the final-draft content.
# Run from the LocalWP shell AFTER configuring Polylang with FR + EN languages.
#
# Prerequisites:
#   1. Polylang is installed and activated
#   2. French (fr) is set as the default language
#   3. English (en) is added as a secondary language
#
# Usage:
#   bash /path/to/FERMEHILLCREST_COM/setup/create-pages.sh
# =============================================================================

echo "============================================"
echo "  Ferme Hillcrest — Creating Pages"
echo "============================================"
echo ""

# ---------------------------------------------------------------------------
# FRENCH PAGES (default language)
# ---------------------------------------------------------------------------

echo "--- Creating French pages ---"
echo ""

echo "[FR 1/9] Accueil (Landing Page)..."
FR_HOME=$(wp post create --post_type=page --post_title="Accueil" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Bienvenue à la Ferme Hillcrest</h2>

Nichée au cœur de Knowlton, au Québec, dans les magnifiques Cantons-de-l'Est. Entourés des collines verdoyantes et des rives paisibles du lac Brome, nous cultivons certaines des plus belles pivoines au Canada.

<strong>Du champ à vos mains — découvrez la beauté de la saison.</strong>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_HOME"

echo "[FR 2/9] Notre Histoire..."
FR_ABOUT=$(wp post create --post_type=page --post_title="Notre Histoire" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Notre Histoire</h2>

La Ferme Hillcrest S.E.N.C. est une ferme familiale de pivoines enracinée dans le magnifique paysage de Knowlton — un village historique des Cantons-de-l'Est, fondé par les Loyalistes de l'Empire-Uni.

Nous cultivons des pivoines de qualité supérieure qui célèbrent la beauté de chaque saison éphémère, depuis nos champs près des rives du lac Brome.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_ABOUT"

echo "[FR 3/9] Nos Pivoines..."
FR_PEONIES=$(wp post create --post_type=page --post_title="Nos Pivoines" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Nos Pivoines</h2>

Des classiques doubles rosées aux spectaculaires simples corail, nos pivoines sont cultivées avec un soin méticuleux. Chaque variété est sélectionnée pour sa beauté, son parfum et sa longévité — parfaite pour les mariages, les événements et les moments d'élégance du quotidien.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_PEONIES"

echo "[FR 4/9] Acheter des Fleurs Fraîches..."
FR_FLOWERS=$(wp post create --post_type=page --post_title="Acheter des Fleurs Fraîches" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Acheter des Fleurs Fraîches</h2>

Les pivoines sont disponibles fraîches coupées pendant notre saison de floraison, généralement à la fin du printemps et au début de l'été.

Commandez à l'avance pour réserver votre bouquet, ou venez nous rendre visite à la ferme. Nous offrons également une option de cueillette à la ferme.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_FLOWERS"

echo "[FR 5/9] Pour les Fleuristes..."
FR_FLORISTS=$(wp post create --post_type=page --post_title="Pour les Fleuristes" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Pour les Fleuristes</h2>

Êtes-vous fleuriste à la recherche de pivoines de première qualité cultivées localement ? Nous approvisionnons des fleuristes professionnels dans les Cantons-de-l'Est et au-delà.

Contactez-nous pour discuter des disponibilités, des tarifs et des commandes minimales.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_FLORISTS"

echo "[FR 6/9] Racines de Pivoines..."
FR_ROOTS=$(wp post create --post_type=page --post_title="Racines de Pivoines" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Racines de Pivoines</h2>

Apportez la beauté de la Ferme Hillcrest dans votre propre jardin. Chaque automne, nous offrons une sélection soignée de racines de pivoines — idéales pour les jardiniers qui souhaitent profiter de ces magnifiques fleurs pendant des décennies.

Les quantités sont limitées ; la précommande est fortement recommandée.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_ROOTS"

echo "[FR 7/9] JB SkinSavvi & Boutique..."
FR_BOUTIQUE=$(wp post create --post_type=page --post_title="JB SkinSavvi & Boutique" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>JB SkinSavvi &amp; Boutique</h2>

La beauté de nos pivoines ne s'arrête pas au champ. Pendant la saison de floraison, des bouquets frais de la Ferme Hillcrest sont disponibles chez JB SkinSavvi — notre boutique de soins de la peau au cœur du village de Knowlton.

JB SkinSavvi propose également une gamme de produits de soins inspirés de la pivoine. Visitez-nous en boutique ou explorez la collection sur <a href="https://jbskinsavvi.com" target="_blank" rel="noopener">jbskinsavvi.com</a>.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_BOUTIQUE"

echo "[FR 8/9] Infolettre..."
FR_NEWSLETTER=$(wp post create --post_type=page --post_title="Infolettre" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Infolettre</h2>

Soyez parmi les premiers à savoir quand nos pivoines sont en fleur. Inscrivez-vous à notre infolettre pour recevoir des mises à jour saisonnières, des annonces de floraison et des offres exclusives de la Ferme Hillcrest.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_NEWSLETTER"

echo "[FR 9/9] Réseaux Sociaux..."
FR_SOCIAL=$(wp post create --post_type=page --post_title="Réseaux Sociaux" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Suivez-nous</h2>

Suivez la Ferme Hillcrest sur les réseaux sociaux pour découvrir les coulisses de notre ferme, des photos de nos pivoines en fleur et les dernières nouvelles de la saison.
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_SOCIAL"

echo ""

# ---------------------------------------------------------------------------
# ENGLISH PAGES
# ---------------------------------------------------------------------------

echo "--- Creating English pages ---"
echo ""

echo "[EN 1/9] Home (Landing Page)..."
EN_HOME=$(wp post create --post_type=page --post_title="Home" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Welcome to Hillcrest Farm</h2>

Nestled in the heart of Knowlton, Quebec, in the storied Eastern Townships. Here, amid the rolling hills and tranquil shores of Lac Brome, we cultivate some of the most breathtaking peonies in Canada.

<strong>From our fields to your hands — discover the beauty of the season.</strong>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_HOME"

echo "[EN 2/9] About Us..."
EN_ABOUT=$(wp post create --post_type=page --post_title="About Us" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Our Story</h2>

Hillcrest Farm S.E.N.C. is a family peony farm rooted in the rich landscape of Knowlton, Quebec — a historic village in the Eastern Townships, first settled by United Empire Loyalists.

We grow premium peonies that celebrate the beauty of each fleeting season, from our fields near the tranquil shores of Lac Brome.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_ABOUT"

echo "[EN 3/9] Our Peonies..."
EN_PEONIES=$(wp post create --post_type=page --post_title="Our Peonies" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Our Peonies</h2>

From classic blush doubles to dramatic coral singles, our peonies are grown with meticulous care from bud to bloom. Each variety is selected for its beauty, fragrance, and longevity — perfect for weddings, events, and everyday moments of elegance.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_PEONIES"

echo "[EN 4/9] Buy Fresh Flowers..."
EN_FLOWERS=$(wp post create --post_type=page --post_title="Buy Fresh Flowers" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Buy Fresh Flowers</h2>

Peonies are available fresh-cut during our blooming season, typically late spring to early summer.

Order ahead to reserve your bouquet, or visit us at the farm. We also offer U-Cut options — come select your own blooms straight from the field.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_FLOWERS"

echo "[EN 5/9] For Florists..."
EN_FLORISTS=$(wp post create --post_type=page --post_title="For Florists" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>For Florists</h2>

Are you a florist looking for locally grown, premium peonies? We supply professional florists throughout the Eastern Townships and beyond.

Contact us to discuss availability, pricing, and minimum orders.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_FLORISTS"

echo "[EN 6/9] Peony Roots..."
EN_ROOTS=$(wp post create --post_type=page --post_title="Peony Roots" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Peony Roots</h2>

Bring the beauty of Hillcrest Farm to your own garden. Each fall, we offer a curated selection of peony roots — ideal for home gardeners who want to enjoy these magnificent blooms for decades to come.

Quantities are limited; pre-ordering is strongly recommended.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_ROOTS"

echo "[EN 7/9] JB SkinSavvi & Boutique..."
EN_BOUTIQUE=$(wp post create --post_type=page --post_title="JB SkinSavvi & Boutique" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>JB SkinSavvi &amp; Boutique</h2>

The beauty of our peonies doesn't end in the field. During blooming season, fresh Hillcrest Farm bouquets are available at JB SkinSavvi — our skincare boutique in the heart of Knowlton village.

JB SkinSavvi also features a line of peony-inspired skincare products, crafted with the same care we bring to our farm. Visit us in store or explore the collection online at <a href="https://jbskinsavvi.com" target="_blank" rel="noopener">jbskinsavvi.com</a>.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_BOUTIQUE"

echo "[EN 8/9] Newsletter..."
EN_NEWSLETTER=$(wp post create --post_type=page --post_title="Newsletter" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Newsletter</h2>

Be the first to know when our peonies are in bloom. Sign up for our newsletter and receive seasonal updates, bloom announcements, root sale notifications, and exclusive offers from Hillcrest Farm.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_NEWSLETTER"

echo "[EN 9/9] Social Media..."
EN_SOCIAL=$(wp post create --post_type=page --post_title="Social Media" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Follow Us</h2>

Follow Hillcrest Farm on social media for behind-the-scenes glimpses of our farm, photos of our peonies in bloom, and the latest news of the season.
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_SOCIAL"

echo ""

# ---------------------------------------------------------------------------
# SET HOMEPAGE
# ---------------------------------------------------------------------------

echo "--- Setting French homepage ---"
wp option update show_on_front page
wp option update page_on_front $FR_HOME
echo "    Homepage set to: Accueil (ID: $FR_HOME)"

echo ""
echo "============================================"
echo "  All 18 pages created (9 FR + 9 EN)!"
echo "============================================"
echo ""
echo "IMPORTANT — Next steps in WordPress admin:"
echo ""
echo "  1. Go to Languages > Languages to verify FR + EN are configured"
echo "  2. Go to Languages > Strings Translation for menu/widget strings"
echo "  3. For each English page, edit it and set:"
echo "     - Language: English"
echo "     - Translation of: [corresponding French page]"
echo "  4. Build visual layouts in Elementor for each page"
echo "  5. Create navigation menus (Appearance > Menus) for FR and EN"
echo ""
echo "  Page ID Reference:"
echo "  FR: Home=$FR_HOME About=$FR_ABOUT Peonies=$FR_PEONIES Flowers=$FR_FLOWERS"
echo "      Florists=$FR_FLORISTS Roots=$FR_ROOTS Boutique=$FR_BOUTIQUE"
echo "      Newsletter=$FR_NEWSLETTER Social=$FR_SOCIAL"
echo "  EN: Home=$EN_HOME About=$EN_ABOUT Peonies=$EN_PEONIES Flowers=$EN_FLOWERS"
echo "      Florists=$EN_FLORISTS Roots=$EN_ROOTS Boutique=$EN_BOUTIQUE"
echo "      Newsletter=$EN_NEWSLETTER Social=$EN_SOCIAL"
echo ""
