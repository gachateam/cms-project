<?php
if (!function_exists('wpbootstrap_enqueue_styles')) {
    function wpbootstrap_enqueue_styles()
    {
        add_theme_support('woocommerce');
        wp_register_style("theme_bootstrap", "https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css", array(), '5.0.1', 'all');

        wp_enqueue_style('theme_bootstrap');
        wp_enqueue_style('fontawnsome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css');

        wp_enqueue_style('owl-carowsel', 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css');

        wp_enqueue_script('my-jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js');
        wp_enqueue_script('my-owl-carowsel', 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js');
        wp_enqueue_style('my-woocommerce', get_template_directory_uri() . '/woocommerce/woocommerce.css');

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
            wp_enqueue_script('script', get_template_directory_uri() . '/js/single-product.js', array(), null, true);
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

wp_enqueue_style('my-style-header',get_template_directory_uri() . './header.css');


function mytheme_add_woocommerce_support()
{
    add_theme_support('woocommerce');
}
function register_my_menu() {
   
    register_nav_menu('left-menu', __('Left Menu','project'));
    register_nav_menu('right-menu', __('Rigth Menu','project'));
}
add_action( 'init', 'register_my_menu' );
add_action('after_setup_theme', 'mytheme_add_woocommerce_support');
