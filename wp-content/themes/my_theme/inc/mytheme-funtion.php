<?php
if (!function_exists('get_banner')) {
    function get_banner()
    {
        wc_get_template("content/content-banner.php");
    }
}
if (!function_exists('get_category')) {
    function get_category()
    {
        wc_get_template("content/content-category.php");
    }
}
if (!function_exists('get_latestpost')) {
    function get_latestpost()
    {
        wc_get_template("content/content-latestpost.php");
    }
}
if (!function_exists('get_modal')) {
    function get_modal()
    {
        wc_get_template("content/content-modal.php");
    }
}
if (!function_exists('get_productlist')) {
    function get_productlist()
    {
        wc_get_template("content/content-productlist.php");
    }
}
if (!function_exists('get_slide')) {
    function get_slide()
    {
        wc_get_template("content/content-slide.php");
    }
}
if (!function_exists('loop_post')) {
    function loop_post()
    {
        wc_get_template("loop/post.php");
    }
}
if (!function_exists('storefront_page_header')) {
    /**
     * Display the page header
     *
     * @since 1.0.0
     */
    function storefront_page_header()
    {
        if (is_front_page() && is_page_template('template-fullwidth.php')) {
            return;
        }

?>
<header class="entry-header">
    <?php
            if (has_post_thumbnail()) {
                the_post_thumbnail('full');
            }
            the_title('<h1 class="entry-title">', '</h1>');
            woocommerce_breadcrumb();
            ?>


</header><!-- .entry-header -->
<?php
    }
}

if (!function_exists('storefront_page_content')) {
    /**
     * Display the post content
     *
     * @since 1.0.0
     */
    function storefront_page_content()
    {
    ?>
<div class="entry-content">
    <?php the_content(); ?>
    <?php
            wp_link_pages(
                array(
                    'before' => '<div class="page-links">' . __('Pages:', 'storefront'),
                    'after'  => '</div>',
                )
            );
            ?>
</div><!-- .entry-content -->
<?php
    }
}