<?php

/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package storefront
 */

get_header();

?>

<style>
    .entry-title {
        text-align: center;
    }

    .entry-header ul {
        display: flex;
        justify-content: center;
        height: 50px;
        align-items: center;
    }
</style>

<div class="container">
    <div id="primary" class="content-area" style="display: flex;justify-content: center;float:none;width: 100%;">
        <main id="main" class="site-main" role="main" style="width: 100%;">
            <?php
            while (have_posts()) :
                the_post();

                do_action('storefront_page_before');

                get_template_part('content', 'page');

                /**
                 * Functions hooked in to storefront_page_after action
                 *
                 * @hooked storefront_display_comments - 10
                 */
                do_action('storefront_page_after');

            endwhile; // End of the loop.
            ?>

        </main><!-- #main -->
    </div><!-- #primary -->
    
</div>

<?php
do_action('storefront_sidebar');
get_footer();
