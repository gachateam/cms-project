<?php
function wpbootstrap_enqueue_styles()
{
    wp_register_style("theme_bootstrap", "https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css", array(), '5.0.1', 'all');
    wp_enqueue_style('theme_bootstrap');
    wp_enqueue_style('my-style', get_template_directory_uri() . './style.css');
}
add_action('wp_enqueue_scripts', 'wpbootstrap_enqueue_styles');