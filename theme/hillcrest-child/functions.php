<?php
/**
 * Hillcrest Child Theme — functions.php
 *
 * Astra child theme for Ferme Hillcrest S.E.N.C.
 *
 * @package Hillcrest_Child
 */

// Prevent direct access
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

/**
 * Enqueue parent and child theme stylesheets + Google Fonts.
 */
function hillcrest_enqueue_styles() {
    // Google Fonts: Cormorant Garamond (headings) + Lato (body)
    wp_enqueue_style(
        'hillcrest-google-fonts',
        'https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Lato:ital,wght@0,300;0,400;0,700;1,400&display=swap',
        array(),
        null
    );

    // Parent theme (Astra)
    wp_enqueue_style(
        'astra-parent',
        get_template_directory_uri() . '/style.css',
        array( 'hillcrest-google-fonts' ),
        wp_get_theme( 'astra' )->get( 'Version' )
    );

    // Child theme
    wp_enqueue_style(
        'hillcrest-child',
        get_stylesheet_uri(),
        array( 'astra-parent' ),
        wp_get_theme()->get( 'Version' )
    );

    // Custom design system CSS
    wp_enqueue_style(
        'hillcrest-custom',
        get_stylesheet_directory_uri() . '/assets/css/custom.css',
        array( 'hillcrest-child' ),
        wp_get_theme()->get( 'Version' )
    );
}
add_action( 'wp_enqueue_scripts', 'hillcrest_enqueue_styles' );

/**
 * Register navigation menus.
 */
function hillcrest_register_menus() {
    register_nav_menus( array(
        'primary'          => __( 'Primary Menu', 'hillcrest-child' ),
        'footer'           => __( 'Footer Menu', 'hillcrest-child' ),
        'language-switcher' => __( 'Language Switcher', 'hillcrest-child' ),
    ) );
}
add_action( 'after_setup_theme', 'hillcrest_register_menus' );

/**
 * Add theme supports.
 */
function hillcrest_theme_support() {
    add_theme_support( 'title-tag' );
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'custom-logo', array(
        'height'      => 120,
        'width'       => 400,
        'flex-height' => true,
        'flex-width'  => true,
    ) );
    add_theme_support( 'woocommerce' );
    add_theme_support( 'wc-product-gallery-zoom' );
    add_theme_support( 'wc-product-gallery-lightbox' );
    add_theme_support( 'wc-product-gallery-slider' );
}
add_action( 'after_setup_theme', 'hillcrest_theme_support' );

/**
 * Add Polylang language switcher to the navigation bar.
 * Displays flags + language name in the top-right of the header.
 */
function hillcrest_language_switcher( $items, $args ) {
    if ( 'primary' === $args->theme_location && function_exists( 'pll_the_languages' ) ) {
        $switcher = '<li class="menu-item hillcrest-lang-switcher">';
        $switcher .= pll_the_languages( array(
            'show_flags'  => 0,
            'show_names'  => 1,
            'echo'        => 0,
            'hide_current' => 1,
        ) );
        $switcher .= '</li>';
        $items .= $switcher;
    }
    return $items;
}
add_filter( 'wp_nav_menu_items', 'hillcrest_language_switcher', 10, 2 );

/**
 * Make all jbskinsavvi.com links open in a new tab.
 * Applied via a content filter.
 */
function hillcrest_external_links( $content ) {
    $content = str_replace(
        'href="https://jbskinsavvi.com',
        'target="_blank" rel="noopener" href="https://jbskinsavvi.com',
        $content
    );
    return $content;
}
add_filter( 'the_content', 'hillcrest_external_links' );

/**
 * Custom excerpt length for blog/journal (Phase 3).
 */
function hillcrest_excerpt_length( $length ) {
    return 30;
}
add_filter( 'excerpt_length', 'hillcrest_excerpt_length' );
