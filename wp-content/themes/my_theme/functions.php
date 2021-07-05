<?php
function setup()
{
    add_theme_support(
        'woocommerce',
        apply_filters(
            'storefront_woocommerce_args',
            array(
                'single_image_width'    => 416,
                'thumbnail_image_width' => 324,
                'product_grid'          => array(
                    'default_columns' => 3,
                    'default_rows'    => 4,
                    'min_columns'     => 1,
                    'max_columns'     => 6,
                    'min_rows'        => 1,
                ),
            )
        )
    );

    add_theme_support('wc-product-gallery-zoom');
    add_theme_support('wc-product-gallery-lightbox');
    add_theme_support('wc-product-gallery-slider');

    /**
     * Add 'storefront_woocommerce_setup' action.
     *
     * @since  2.4.0
     */
    do_action('storefront_woocommerce_setup');
    add_filter('woocommerce_enqueue_styles', '__return_empty_array');
}
add_action('after_setup_theme', 'setup');

if (!function_exists('wpbootstrap_enqueue_styles')) {
    function wpbootstrap_enqueue_styles()
    {
        add_theme_support('woocommerce');
        wp_register_style("theme_bootstrap", "https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css", array(), '5.0.1', 'all');

        wp_enqueue_style('theme_bootstrap');
        wp_enqueue_style('fontawnsome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css');

        wp_enqueue_style('owl-carowsel', 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css');

        wp_enqueue_style("slick-style", "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css", [], null);
        wp_enqueue_script("slick-slider", "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js", [], null, true);

        wp_enqueue_script('my-jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js');
        wp_enqueue_script('my-owl-carowsel', 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js');
        wp_enqueue_style('my-woocommerce', get_template_directory_uri() . '/woocommerce/woocommerce.css');
        wp_enqueue_style('my-style-footer', get_template_directory_uri() . './footer.css');

        if (is_home()) {
            wp_enqueue_style('my-style', get_template_directory_uri() . './style.css');
            wp_enqueue_script('script', get_template_directory_uri() . '/js/main.js', array(), null, true);
            wp_localize_script('script', 'myAjax', array('ajaxurl' => admin_url('admin-ajax.php')));
        }

        if (is_shop()) {
            wp_enqueue_style('my-style', get_template_directory_uri() . './style.css');
            wp_enqueue_script('script', get_template_directory_uri() . '/js/main.js', array(), null, true);
            wp_localize_script('script', 'myAjax', array('ajaxurl' => admin_url('admin-ajax.php')));
        }

        if (is_product()) {
            wp_enqueue_style('my-style', get_template_directory_uri() . './single-product.css');
            wp_enqueue_script('single-product', get_template_directory_uri() . '/js/single-product.js', array(), null, true);
            wp_localize_script('script', 'myAjax', array('ajaxurl' => admin_url('admin-ajax.php')));
        }
        if (is_page("wishlist")) {
            wp_enqueue_style('my-style', get_template_directory_uri() . './wishlist.css');
        }
        if (is_page("cart")) {
            wp_enqueue_style('my-style', get_template_directory_uri() . './cart.css');
        }
        if (is_page("checkout")) {
            wp_enqueue_style('my-style', get_template_directory_uri() . './checkout.css');
        }
    }
}

add_action('wp_enqueue_scripts', 'wpbootstrap_enqueue_styles');

require 'inc/mytheme-funtion.php';
require 'inc/mytheme-hook.php';
