<div class="container mt-5">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#featured" type="button" role="tab" aria-controls="featured" aria-selected="true">FEATURED</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#latest" type="button" role="tab" aria-controls="latest" aria-selected="false">LATEST</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#special" type="button" role="tab" aria-controls="special" aria-selected="false">SPECIAL</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#special" type="button" role="tab" aria-controls="special" aria-selected="false">SPECIAL</button>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="featured" role="tabpanel" aria-labelledby="featured-tab">
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
        </div>
        <div class="tab-pane fade" id="latest" role="tabpanel" aria-labelledby="latest-tab">
            <div class="container mt-5">
                <div id="owl-example2" class="owl-carousel owl-theme">
                    <?php
                    $args = array(
                        'post_type' => 'product',
                        'posts_per_page' => 12,
                        'orderby' => 'date',
                        'order' => 'DESC'
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
        </div>
        <div class="tab-pane fade" id="special" role="tabpanel" aria-labelledby="special-tab">
            <div class="container mt-5">
                <div id="owl-example3" class="owl-carousel owl-theme">
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
        </div>
        <div class="tab-pane fade" id="special" role="tabpanel" aria-labelledby="special-tab">
            <div class="container mt-5">
                <div id="owl-example4" class="owl-carousel owl-theme">
                    <?php
                    $args = array(
                        'post_type' => 'product',
                        'posts_per_page' => 12,
                        'orderby' => 'meta_value_num',
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
        </div>
    </div>
</div>