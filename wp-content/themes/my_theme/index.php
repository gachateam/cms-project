<?php
get_header();

while (have_posts()) :

    the_post();
    the_title();
    the_ID();
    the_author();
    the_tags();
    the_time();
    the_content();

endwhile;

// $amount2 = floatval(preg_replace('#[^\d.]#', '', $woocommerce->cart->get_cart_total()));
$items = $woocommerce->cart->get_cart();
foreach ($items as $item => $values) {

    $_product = $values['data']->post;
    echo $_product->post_title;
}

echo $amount2;

$product_object = wc_get_product(12);

$args = array(
    'post_type' => 'product',
    'posts_per_page' => 12
);
$loop = new WP_Query($args);
if ($loop->have_posts()) {
    while ($loop->have_posts()) : $loop->the_post();
        the_title();
        the_content();

        $price = get_post_meta(get_the_ID(), '_price', true);
        echo wc_price($price);
        echo '<a href="/?add-to-cart=' . $loop->post->ID . '" rel="nofollow" data-product-id="' . $loop->post->ID . '" class="btn btn-primary">Add to cart</a>';


    endwhile;
} else {
    echo __('No products found');
}


get_footer();
