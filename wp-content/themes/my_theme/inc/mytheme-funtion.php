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