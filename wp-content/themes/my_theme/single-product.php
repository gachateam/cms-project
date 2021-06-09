<?php
get_header();
$product = wc_get_product();
$id = $product->get_id();
var_dump($id);


