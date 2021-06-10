<?php
$recent_args = array(
    "posts_per_page" => 8,
    "orderby"        => "date",
    "order"          => "DESC"
);

$recent_posts = new WP_Query($recent_args);

?>
<div class="container my-5">
    <div class="shortcode-title text-center">
        <h3 class="normal-title">Latest News</h3>
    </div>
    <div id="owl-example5" class="owl-carousel owl-theme">
        <?php
        if ($recent_posts->have_posts()) :
            while ($recent_posts->have_posts()) :

                $recent_posts->the_post();

                do_action("loop_post");

            endwhile;
        endif;
        ?>
    </div>
</div>