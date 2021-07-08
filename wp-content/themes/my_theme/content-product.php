<?php

/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 */

defined('ABSPATH') || exit;

global $product;

// Ensure visibility.
if (empty($product) || !$product->is_visible()) {
    return;
}
?>
<li <?php wc_product_class('', $product); ?>>
    <?php
    $image = wp_get_attachment_image_src(get_post_thumbnail_id($id), 'single-post-thumbnail');
    ?>
    <div class="product-block-inner">
        <div class="image-block">
            <a href="<?php echo $product->get_permalink() ?>">
                <?php
                $link = $image[0] ?? get_template_directory_uri() . '/img/default-thumbnail.jpg';
                ?>
                <img class="image2 product-image" alt="..." src="<?php echo $link ?>">
                <?php
                unset($link);
                $link = wp_get_attachment_url($product->get_gallery_image_ids()[0]) ?: get_template_directory_uri() . '/img/default-thumbnail.jpg';
                ?>
                <img class="image1 product-image" alt="..." src="<?php echo $link ?>">
                <?php
                if ($product->is_on_sale()) {
                    $persent = (($product->get_regular_price() - $product->get_sale_price()) / $product->get_regular_price()) * 100;
                    echo '<span class="onsale">-' . $persent . '%</span>';
                }
                ?>
                <span class="price">
                    <?php echo $product->get_price_html() ?>
                </span>
            </a>
            <a href="#" class="button yith-wcqv-button" data-product_id="<?php echo $product->id ?>">Quick View</a>
        </div>

        <?php
        if (!wc_review_ratings_enabled()) {
            return;
        }
        echo '<div class="rating">' . wc_get_rating_html($product->get_average_rating()) . '</div>';
        ?>

        <div class="product-name text-center">
            <?php echo $product->name ?>
        </div>

        <div class="product-button-outer">
            <a href="/?add-to-cart=<?php echo $product->id ?>" class="button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="<?php echo $product->id ?>"><i class="fas fa-plus add-to-cart"></i><?php echo $product->add_to_cart_text() ?></a>
        </div>
    </div>
</li>