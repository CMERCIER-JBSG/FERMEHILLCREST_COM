#!/bin/bash
# =============================================================================
# Ferme Hillcrest — Page Creation Script
# =============================================================================
# Creates all pages in French and English with real content from the
# existing Squarespace site + brief.
#
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
<h2>Ferme Hillcrest S.E.N.C.</h2>
<p><em>Ferme de pivoines à Knowlton, au cœur des Cantons-de-l'Est</em></p>

<p>Perchée dans les vallons paisibles de Knowlton, dans la région de Lac-Brome, notre ferme de pivoines est un véritable havre de beauté et de sérénité. À la fin du printemps et au début de l'été, les champs s'illuminent de fleurs majestueuses aux teintes douces et vibrantes, cultivées avec soin, passion et dans le plus grand respect de la nature.</p>

<blockquote><em>Ici, le temps ralentit. On s'imprègne du silence, du parfum des fleurs, de la magie de l'instant.</em></blockquote>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_HOME"

echo "[FR 2/9] Notre Histoire..."
FR_ABOUT=$(wp post create --post_type=page --post_title="Notre Histoire" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Notre Histoire</h2>

<h3>Ce qu'on fait</h3>
<p>Tout a commencé avec la racine de pivoine, précieuse alliée que nous utilisons dans nos soins. De là est née l'envie d'aller plus loin — de la cultiver nous-mêmes, pour mieux comprendre sa force, sa beauté et son lien profond avec la terre.</p>

<p>Aujourd'hui, nous faisons pousser des pivoines dans nos champs avec le même soin et le même respect que nous mettons dans chaque produit. Une façon d'honorer la plante, sa symbolique, et ce qu'elle nous enseigne : prendre le temps, s'enraciner, et fleurir pleinement.</p>

<blockquote><em>Les racines de pivoines : là où la force prend racine et la beauté prépare son envol.</em></blockquote>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_ABOUT"

echo "[FR 3/9] Magasiner..."
FR_SHOP=$(wp post create --post_type=page --post_title="Magasiner" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Magasiner des pivoines</h2>

<p>Des classiques doubles rosées aux spectaculaires simples corail, nos pivoines sont cultivées avec un soin méticuleux. Chaque variété est sélectionnée pour sa beauté, son parfum et sa longévité.</p>

<p>Les racines sont disponibles en prévente. Les expéditions commencent à la mi-octobre. Vous recevrez un courriel lorsque votre commande sera expédiée ou prête pour la cueillette à la ferme.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_SHOP"

echo "[FR 4/9] Acheter des Fleurs Fraîches..."
FR_FLOWERS=$(wp post create --post_type=page --post_title="Acheter des Fleurs Fraîches" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Acheter des Fleurs Fraîches</h2>

<p>Les pivoines sont disponibles fraîches coupées pendant notre saison de floraison, généralement à la fin du printemps et au début de l'été.</p>

<p>Commandez à l'avance pour réserver votre bouquet, ou venez nous rendre visite à la ferme. Nous offrons également une option de cueillette à la ferme.</p>

<div class="hc-seasonal-notice">
Nos pivoines fraîches sont disponibles de la fin mai au début juillet. Inscrivez-vous à notre infolettre pour être informé de l'ouverture de la saison.
</div>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_FLOWERS"

echo "[FR 5/9] Contactez-nous..."
FR_CONTACT=$(wp post create --post_type=page --post_title="Contactez-nous" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Contactez-nous</h2>

<p><strong>Ferme Hillcrest S.E.N.C.</strong><br>
20 Chemin Tibbits Hill<br>
Knowlton, QC, J0E 1V0<br>
Canada</p>

<p><strong>Téléphone :</strong> 514-951-3205<br>
<strong>Courriel :</strong> fermehillcrest@gmail.com<br>
<strong>Instagram :</strong> <a href="https://instagram.com/fermehillcrest" target="_blank" rel="noopener">@fermehillcrest</a></p>

<h3>Pour les fleuristes</h3>
<p>Êtes-vous fleuriste à la recherche de pivoines de première qualité cultivées localement ? Nous approvisionnons des fleuristes professionnels dans les Cantons-de-l'Est et au-delà. Contactez-nous pour discuter des disponibilités, des tarifs et des commandes minimales.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_CONTACT"

echo "[FR 6/9] Racines de Pivoines..."
FR_ROOTS=$(wp post create --post_type=page --post_title="Racines de Pivoines" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Les racines de pivoines</h2>

<blockquote><em>Là où la force prend racine et la beauté prépare son envol.</em></blockquote>

<p>Apportez la beauté de la Ferme Hillcrest dans votre propre jardin. Chaque automne, nous offrons une sélection soignée de racines de pivoines — idéales pour les jardiniers qui souhaitent profiter de ces magnifiques fleurs pendant des décennies.</p>

<p>Les quantités sont limitées ; la précommande est fortement recommandée. Les expéditions commencent à la mi-octobre.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_ROOTS"

echo "[FR 7/9] JB SkinSavvi & Boutique..."
FR_BOUTIQUE=$(wp post create --post_type=page --post_title="JB SkinSavvi & Boutique" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>JB SkinSavvi &amp; Boutique</h2>

<p>Tout a commencé avec la racine de pivoine, précieuse alliée que nous utilisons dans nos soins chez JB SkinSavvi — notre boutique de soins de la peau au cœur du village de Knowlton.</p>

<p>Pendant la saison de floraison, des bouquets frais de la Ferme Hillcrest sont disponibles en boutique. JB SkinSavvi propose également une gamme de produits de soins inspirés de la pivoine, élaborés avec le même soin que nous apportons à notre ferme.</p>

<p>Visitez-nous en boutique ou explorez la collection sur <a href="https://jbskinsavvi.com" target="_blank" rel="noopener">jbskinsavvi.com</a>.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_BOUTIQUE"

echo "[FR 8/9] Infolettre..."
FR_NEWSLETTER=$(wp post create --post_type=page --post_title="Infolettre" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Recevoir des nouvelles de la ferme</h2>

<p>Envie de suivre la floraison, connaître les variétés en bouquet, ou être les premiers informés de nos événements saisonniers ?</p>

<p>Inscrivez-vous à notre infolettre pour recevoir, de temps à autre, une bouffée de fleurs, de nature et de nouvelles fraîches, directement dans votre boîte courriel.</p>

<p><em>Promis, que du beau.</em></p>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_NEWSLETTER"

echo "[FR 9/9] La vie parmi les pivoines..."
FR_GALLERY=$(wp post create --post_type=page --post_title="La vie parmi les pivoines" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>La vie parmi les pivoines</h2>

<p>Suivez la Ferme Hillcrest sur les réseaux sociaux pour découvrir les coulisses de notre ferme, des photos de nos pivoines en fleur et les dernières nouvelles de la saison.</p>

<p><a href="https://instagram.com/fermehillcrest" target="_blank" rel="noopener">Suivez-nous sur Instagram : @fermehillcrest</a></p>
CONTENT
)" --porcelain)
echo "    Created page ID: $FR_GALLERY"

echo ""

# ---------------------------------------------------------------------------
# ENGLISH PAGES
# ---------------------------------------------------------------------------

echo "--- Creating English pages ---"
echo ""

echo "[EN 1/9] Home (Landing Page)..."
EN_HOME=$(wp post create --post_type=page --post_title="Home" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Hillcrest Farm S.E.N.C.</h2>
<p><em>Peonies Grown with Care in the Heart of Knowlton's Eastern Townships</em></p>

<p>Perched in the peaceful rolling hills of Knowlton, in the Lac-Brome region, our peony farm is a true haven of beauty and serenity. At the end of spring and the beginning of summer, the fields light up with majestic blooms in soft and vibrant hues, lovingly cultivated with care, passion, and deep respect for nature.</p>

<blockquote><em>Here, time slows down. One soaks in the silence, the scent of the flowers, the magic of the moment.</em></blockquote>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_HOME"

echo "[EN 2/9] Our Story..."
EN_ABOUT=$(wp post create --post_type=page --post_title="Our Story" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Our Story</h2>

<h3>What We Do</h3>
<p>It all began with the peony root — a precious ingredient we use in our skincare. From there came the desire to go further — to cultivate it ourselves, to better understand its strength, its beauty, and its deep connection to the earth.</p>

<p>Today, we grow peonies in our fields with the same care and respect we pour into every product. It's our way of honoring the plant, its symbolism, and what it teaches us: to take our time, to root deeply, and to bloom fully.</p>

<blockquote><em>Peony roots: Buried deep in the soil, the peony root holds the promise of beauty and resilience.</em></blockquote>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_ABOUT"

echo "[EN 3/9] Shop..."
EN_SHOP=$(wp post create --post_type=page --post_title="Shop" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Shop Peonies</h2>

<p>From classic blush doubles to dramatic coral singles, our peonies are grown with meticulous care from bud to bloom. Each variety is selected for its beauty, fragrance, and longevity.</p>

<p>Roots are available for pre-sale. Shipments begin mid-October. You will receive an email when your order ships or is ready for farm pickup.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_SHOP"

echo "[EN 4/9] Buy Fresh Flowers..."
EN_FLOWERS=$(wp post create --post_type=page --post_title="Buy Fresh Flowers" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Buy Fresh Flowers</h2>

<p>Peonies are available fresh-cut during our blooming season, typically late spring to early summer.</p>

<p>Order ahead to reserve your bouquet, or visit us at the farm. We also offer U-Cut options — come select your own blooms straight from the field.</p>

<div class="hc-seasonal-notice">
Our fresh peonies are available from late May through early July. Sign up for our newsletter to be notified when the season opens.
</div>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_FLOWERS"

echo "[EN 5/9] Get in Touch..."
EN_CONTACT=$(wp post create --post_type=page --post_title="Get in Touch" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Get in Touch</h2>

<p><strong>Hillcrest Farm S.E.N.C.</strong><br>
20 Chemin Tibbits Hill<br>
Knowlton, QC, J0E 1V0<br>
Canada</p>

<p><strong>Phone:</strong> 514-951-3205<br>
<strong>Email:</strong> fermehillcrest@gmail.com<br>
<strong>Instagram:</strong> <a href="https://instagram.com/fermehillcrest" target="_blank" rel="noopener">@fermehillcrest</a></p>

<h3>For Florists</h3>
<p>Are you a florist looking for locally grown, premium peonies? We supply professional florists throughout the Eastern Townships and beyond. Contact us to discuss availability, pricing, and minimum orders.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_CONTACT"

echo "[EN 6/9] Peony Roots..."
EN_ROOTS=$(wp post create --post_type=page --post_title="Peony Roots" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Peony Roots</h2>

<blockquote><em>Buried deep in the soil, the peony root holds the promise of beauty and resilience.</em></blockquote>

<p>Bring the beauty of Hillcrest Farm to your own garden. Each fall, we offer a curated selection of peony roots — ideal for home gardeners who want to enjoy these magnificent blooms for decades to come.</p>

<p>Quantities are limited; pre-ordering is strongly recommended. Shipments begin mid-October.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_ROOTS"

echo "[EN 7/9] JB SkinSavvi & Boutique..."
EN_BOUTIQUE=$(wp post create --post_type=page --post_title="JB SkinSavvi & Boutique" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>JB SkinSavvi &amp; Boutique</h2>

<p>It all began with the peony root — a precious ingredient we use in our skincare at JB SkinSavvi — our skincare boutique in the heart of Knowlton village.</p>

<p>During blooming season, fresh Hillcrest Farm bouquets are available in store. JB SkinSavvi also features a line of peony-inspired skincare products, crafted with the same care we bring to our farm.</p>

<p>Visit us in store or explore the collection online at <a href="https://jbskinsavvi.com" target="_blank" rel="noopener">jbskinsavvi.com</a>.</p>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_BOUTIQUE"

echo "[EN 8/9] Newsletter..."
EN_NEWSLETTER=$(wp post create --post_type=page --post_title="Newsletter" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Stay in Touch with the Farm</h2>

<p>Want to follow the bloom, discover which varieties are available in bouquets, or be the first to hear about our seasonal events?</p>

<p>Sign up for our newsletter to receive, every now and then, a breath of flowers, nature, and fresh updates — delivered straight to your inbox.</p>

<p><em>We promise: only beautiful things.</em></p>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_NEWSLETTER"

echo "[EN 9/9] Life Among the Peonies..."
EN_GALLERY=$(wp post create --post_type=page --post_title="Life Among the Peonies" --post_status=publish --post_content="$(cat <<'CONTENT'
<h2>Life Among the Peonies</h2>

<p>Follow Hillcrest Farm on social media for behind-the-scenes glimpses of our farm, photos of our peonies in bloom, and the latest news of the season.</p>

<p><a href="https://instagram.com/fermehillcrest" target="_blank" rel="noopener">Follow us on Instagram: @fermehillcrest</a></p>
CONTENT
)" --porcelain)
echo "    Created page ID: $EN_GALLERY"

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
echo "  2. For each English page, edit it and set:"
echo "     - Language: English"
echo "     - Translation of: [corresponding French page]"
echo ""
echo "  Translation pairs:"
echo "    Accueil              ↔  Home"
echo "    Notre Histoire       ↔  Our Story"
echo "    Magasiner            ↔  Shop"
echo "    Acheter des Fleurs   ↔  Buy Fresh Flowers"
echo "    Contactez-nous       ↔  Get in Touch"
echo "    Racines de Pivoines  ↔  Peony Roots"
echo "    JB SkinSavvi         ↔  JB SkinSavvi & Boutique"
echo "    Infolettre           ↔  Newsletter"
echo "    La vie parmi...      ↔  Life Among the Peonies"
echo ""
echo "  3. Build visual layouts in Elementor for each page"
echo "  4. Create navigation menus (Appearance > Menus) for FR and EN"
echo ""
