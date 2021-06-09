<?php
get_header();

get_template_part('content', 'slide');

$orderby = 'count';
$order = 'desc';
$cat_args = array(
    'orderby'    => $orderby,
    'order'      => $order,
    'hide_empty' => 0,
    'number' => 3,
);

$product_categories = get_terms('product_cat', $cat_args);

if (!empty($product_categories)) {
    global $product_categories;
    get_template_part('content', 'category');
    unset($product_categories);
}

get_template_part('content', 'productList');

get_template_part('content', 'modal');

get_footer();