<?php global $product_categories; ?>
<div class="container mt-5">
    <div class="row">
        <?php
        foreach ($product_categories as $key => $category) :
            // get the thumbnail id using the queried category term_id
            $thumbnail_id = get_term_meta($category->term_id, 'thumbnail_id', true);

            // get the image URL
            $image = wp_get_attachment_url($thumbnail_id);
        ?>
            <div class="col-md-4 col-12 text-center">
                <div class="category">
                    <?php
                    if ($image) {
                        echo "<img src='{$image}' alt='' class='img-fluid category-img' />";
                    }
                    ?>
                    <a href="<?php echo get_term_link($category) ?>" class="category-link"><?php echo $category->description ?></a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<?php unset($product_categories); ?>