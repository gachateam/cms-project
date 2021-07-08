<?php
global $product;
?>
<div>
    <?php
    $image = wp_get_attachment_image_src(get_post_thumbnail_id($id), 'single-post-thumbnail');
    ?>
    <div class="product-block-inner">
        <div class="image-block overflow-hidden">
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
</div>