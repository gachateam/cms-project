<?php
add_action('home_page', 'get_slide', 5);
add_action('home_page', 'get_category', 10);
add_action('home_page', 'get_productList', 15);
add_action('home_page', 'get_modal', 20);
add_action('home_page', 'get_banner', 25);
add_action('home_page', 'get_latestpost', 30);

add_action("loop_post","loop_post");

add_action( 'storefront_page', 'storefront_page_header', 10 );
add_action( 'storefront_page', 'storefront_page_content', 20 );