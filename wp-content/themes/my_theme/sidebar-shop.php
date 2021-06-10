<div class="container mt-5">
    <div id="owl-example1" class="owl-carousel owl-theme">
        <?php
        $args = array(
            'post_type' => 'product',
            'posts_per_page' => 12,
            'tax_query' => array(
                array(
                    'taxonomy' => 'product_visibility',
                    'field'    => 'name',
                    'terms'    => 'featured',
                ),
            ),
        );
        $loop = new WP_Query($args);
        if ($loop->have_posts()) {
            while ($loop->have_posts()) : $loop->the_post();
                get_template_part('loop', 'owlcarowsel');
            endwhile;
        } else {
            echo __('No products found');
        }
        ?>
    </div>
</div>