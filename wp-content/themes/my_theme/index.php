<?php
get_header();

get_template_part( 'content', 'slide' );

$items = $woocommerce->cart->get_cart();
foreach ($items as $item => $values) {

    $_product = $values['data']->post;
}

$orderby = 'name';
$order = 'asc';
$hide_empty = false;
$cat_args = array(
    'orderby'    => $orderby,
    'order'      => $order,
    'hide_empty' => $hide_empty,
);

$product_categories = get_terms('product_cat', $cat_args);

if (!empty($product_categories)) {
    echo '<ul>';
    foreach ($product_categories as $key => $category) {
        // get the thumbnail id using the queried category term_id
        $thumbnail_id = get_term_meta($category->term_id, 'thumbnail_id', true);

        // get the image URL
        $image = wp_get_attachment_url($thumbnail_id);

        // print the IMG HTML

        echo '<li>';
        if ($image) {
            echo "<img src='{$image}' alt='' class='img-fluid' />";
        }
        echo '<a href="' . get_term_link($category) . '" >';
        echo $category->name;
        echo '</a>';
        echo '</li>';
    }
    echo '</ul>';
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
