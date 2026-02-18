#!/bin/bash
# =============================================================================
# Ferme Hillcrest — Plugin Installation Script
# =============================================================================
# Run this from the LocalWP shell (Right-click site > Open Site Shell)
#
# Usage:
#   bash /path/to/FERMEHILLCREST_COM/setup/install-plugins.sh
# =============================================================================

echo "============================================"
echo "  Ferme Hillcrest — Installing Plugins"
echo "============================================"
echo ""

# Page builder
echo "[1/11] Installing Elementor..."
wp plugin install elementor --activate

# Language management
echo "[2/11] Installing Polylang..."
wp plugin install polylang --activate

# E-commerce
echo "[3/11] Installing WooCommerce..."
wp plugin install woocommerce --activate

# Contact forms
echo "[4/11] Installing Contact Form 7..."
wp plugin install contact-form-7 --activate

# Email delivery
echo "[5/11] Installing WP Mail SMTP..."
wp plugin install wp-mail-smtp --activate

# Newsletter
echo "[6/11] Installing MailPoet..."
wp plugin install mailpoet --activate

# SEO
echo "[7/11] Installing Yoast SEO..."
wp plugin install wordpress-seo --activate

# Migration (for Phase 2)
echo "[8/11] Installing WP Migrate DB..."
wp plugin install wp-migrate-db --activate

# Image optimization
echo "[9/11] Installing ShortPixel..."
wp plugin install shortpixel-image-optimiser --activate

# Performance
echo "[10/11] Installing WP Super Cache..."
wp plugin install wp-super-cache --activate

# Cookie consent (Quebec Law 25)
echo "[11/11] Installing CookieYes..."
wp plugin install cookie-law-info --activate

echo ""
echo "============================================"
echo "  All plugins installed and activated!"
echo "============================================"
echo ""
echo "Next steps:"
echo "  1. Install the Astra theme:  wp theme install astra --activate"
echo "  2. Install the child theme:  Upload hillcrest-child/ via Appearance > Themes > Add New"
echo "  3. Configure Polylang:       Settings > Languages > Add French (default) + English"
echo "  4. Run create-pages.sh to create all bilingual pages"
echo ""
