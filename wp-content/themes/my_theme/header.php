<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doumacssloz</title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="header.css">
    
    <?php wp_head(); ?>

</head>

<body>

    <header>

        <!-- Welcome to Hifidresy_bag -->
        
        <div class="header-top" style="background:rgb(245 245 245); padding:15px;overflow:visible">
        
            <div class="container">
                <div class="topbar-outer" >

                <div class="topbar-main theme-container">
                    <span class="site-welcome-message">
                        <span>Welcome to&nbsp;Hifidresy_bag</span>
                    </span>

            
                        <!--top right -->
                    <div class="top_right" style=" position: absolute; top: 20px; right: 0px;margin:0 auto ">
                       

                        <!-- search -->


                        <div class="header-search">
                            <div class="header-toggle"></div>

                            <form role="search" method="get" class="product-search" action="#">
                                <label class="screen-reader-text" for="product-search-field-0">Search for:</label>
                                <input type="search" id="product-search-field-0" class="search-field" placeholder="Search products…" value="" name="s">
                                    <button type="submit" value="Search">
                                        <img class="btn-search" href="#" src="http://wordpress.prj/wp-content/uploads/2021/06/iconfinder_172546_search_icon_32px.png" style="width:20px"></button>
                                <input type="hidden" name="post_type" value="product">

					            <img class="img-cart" link="#" title="View your cart" src="http://wordpress.prj/wp-content/uploads/2021/06/iconfinder_1564496_basket_cart_shop_shopping_store_icon_32px.png" style="width:25px">

			                    <aside id="cart-2" class="shopping_cart tab_content" style="display:none;">
                                    <div class="shopping_cart_content" >

	                                    <p class="mini-cart__empty-message" >No products in the cart.</p>
                                    </div>
                                </aside>	

                            </form>
                            
        
                        </div>

                    </div>

                </div>
							                   
                </div>
            </div> 
            
                        <!-- top right -->
        </div>
            

<!-- header -->
    <nav class="navbar navbar-expand" style=" border-bottom: 1px solid #eee;display: inline-block;position: relative;vertical-align: top;width: 100%;" >

        <div class="container">

                <div class="menu-mainmenu-container" >

                    <ul class="navbar-nav header-left"style="font-weight: bold;">
                            <!-- home -->
                            <li class="nav-item"style="padding-right: 10px;" >
                                <a class="nav_link" href="#" style="color: #000000">HOME</a>
                            </li>
                            <!-- shop -->
                            <li class="nav-item"style="padding-right: 10px;">
                                <a class="nav_link" href="#" style="color: #000000">SHOP</a>

                                    <ul class="sub-nav">

                                        <div class="row" style="width: 462px;display:none">
                                            <li id="nav-item-shop-layout" class="nav-item shop-layout">
                                                <a href="#" class="mega-hdr-a" style="height: 24px; color:#000000">Shop Layout</a>
                                                <ul class="sub-nav">
                                                    <li id="nav-item-left" class="nav-item left"><a href="#"style="color: #000000">Left Sidebar</a></li>
                                                    <li id="nav-item-right" class="nav-item right"><a href="#"style="color: #000000">Right Sidebar</a></li>
                                                    <li id="nav-item-full-width" class="nav-item full-width"><a href="#"style="color: #000000">Full Width</a></li>
                                                    <li id="nav-item-product-brand" class="nav-item product-brand"><a href="#"style="color: #000000">Products Brands</a></li>
                                                    <li id="nav-item-product-category" class="nav-item product-category"><a href="#"style="color: #000000">Product Category</a></li>
                                                </ul>
                                            </li>
                                    
                                             <li id="nav-item-product-type" class="nav-item product-type"><a href="#" class="mega-hdr-a" style="height: 24px;color:#000000">Product Type</a>
                                                <ul class="sub-nav">
                                                    <li id="nav-item-variable-product" class="nav-item variable-product"><a href="#"style="color: #000000">Variable Product</a></li>
                                                    <li id="nav-item-external-product" class="nav-item external-product"><a href="#"style="color: #000000">External Product</a></li>
                                                    <li id="nav-item-group-product" class="nav-item group-product"><a href="#"style="color: #000000">Group Product</a></li>
                                                    <li id="nav-item-special-product" class="sale-label special_product"><a href="#"style="color: #000000">Special Products</a></li>
                                                    <li id="nav-item-rated-product" class="nav-item rated-product"><a href="#"style="color: #000000">Top rated product</a></li>
                                                </ul>
                                            </li>
                                        </div>

                                    </ul>

                            </li>
                            <!-- blog -->
                            <li id="nav-item blog" class="nav-item-blog"style="padding-right: 10px;"><a href="#" class="dc-mega"style="color: #000000">BLOG<span class="dc-mega-icon"></span></a>
                                <ul class="sub-nav" style="left: 147.031px; top: 63px; z-index: 1000; display:none">
                                    <li id="nav-item-left-slidebar" class="nav-item left-slidebar"><a href="#"style="color: #000000">Left Sidebar</a></li>
                                    <li id="nav-item-right-slidebar" class="nav-item right-slidebar"><a href="#"style="color: #000000">Right Sidebar</a></li>
                                    <li id="nav-item-full-width" class="nav-item full-width"><a href="#"style="color: #000000">Full Width</a></li>
                                </ul>
                            
                            </li>
                            <!-- more -->
                            <li id="nav-item more" class="nav-item-more "style="padding-right: 100px;">
                                <a href="#" class="level-0  activSub dc-mega" style="color: #000000">MORE<span class="dc-mega-icon"></span></a>

                                <div class="sub-container mega" style="left: 0px; top: 63px; z-index: 1000;">
                                    <ul class="children sub" >

                                        <div class="row" style="width: 693px;display:none">

                                            <li id="nav-item-more" class="nav-item more">
                                            </li>

                                            <!--sub media -->
                                            <a href="#" class="mega-hdr-a" style="height: 24px;color:#000000">Media</a>

                                            <ul class="sub-nav">

                                            <!-- sub galleery -->
                                            <li id="nav-item-gallery" class="nav-item gallery"><a href="#"style="color: #000000">Gallery</a>
                                                <ul class="sub-nav">
                                                    <li id="nav-item-2-columns" class="nav-item 2-columns"><a href="#"style="color: #000000">2 Columns</a></li>
                                                    <li id="nav-item-3-columns" class="nav-item 3-columns"><a href="#"style="color: #000000">3 Columns</a></li>
                                                    <li id="nav-item-4-columns" class="nav-item 4-columns"><a href="#"style="color: #000000">4 Columns</a></li>
                                                </ul>
                                            </li>

                                            <!-- sub portfolio -->
                                        <li id="nav-item-portfolio" class="nav-item portfolio"><a href="#"style="color: #000000">Portfolio</a>
                                            <ul class="sub-nav">
                                                <li id="nav-item-2-columns" class="nav-item 2-columns"><a href="#"style="color: #000000">2 Columns</a></li>
                                                <li id="nav-item-3-columns" class="nav-item 3-columns"><a href="#"style="color: #000000">3 Columns</a></li>
                                                <li id="nav-item-4-columns" class="nav-item 4-columns"><a href="#"style="color: #000000">4 Columns</a></li>
                                            </ul>
                                        </li>
                                    </ul>

                                    <!-- sub shortcode -->
                                    <li id="nav-item-shortcode" class="nav-item nav-item-type-custom nav-item-object-custom nav-item-has-children nav-item-6491 mega-unit mega-hdr" style="height: 430px;">

                                        <a href="#" class="mega-hdr-a" style="height: 24px;color:#000000">ShortCode</a>

                                        <ul class="sub-nav">
                                        <li id="nav-item-shortcode-page" class="nav-item shortcode-page"><a href="#"style="color: #000000">Shortcode Pages</a>
                                            <ul class="sub-nav">
                                                <li id="nav-item-accordion" class="nav-item accordion"><a href="#"style="color: #000000">Accordions &amp; Toggles</a></li>
                                                <li id="nav-item-buttons" class="nav-item buttons"><a href="#"style="color: #000000">Buttons</a></li>
                                                <li id="nav-item-drivider" class="nav-item drivider"><a href="#"style="color: #000000">Divider</a></li>
                                                <li id="nav-item-bar" class="nav-item bar"><a href="#"style="color: #000000">Progress Bar &amp; Pie Chart</a></li>
                                                <li id="nav-item-lists" class="nav-item lists"><a href="#"style="color: #000000">Lists</a></li>
                                                <li id="nav-item-service" class="nav-item service"><a href="#"style="color: #000000">Services</a></li>
                                                <li id="nav-item-tab" class="nav-item tab"><a href="#"style="color: #000000">Tabs</a></li>
                                                <li id="nav-item-map-contact" class="nav-item map-contact"><a href="#"style="color: #000000">Map &amp; Contact</a></li>
                                                <li id="nav-item-message-box" class="nav-item message-box "><a href="#"style="color: #000000">Message Boxes</a></li>
                                                <li id="nav-item-pricing-table" class="nav-item pricing-table"><a href="#"style="color: #000000">Pricing table</a></li>
                                            </ul>
                                        </li>
                                        </ul>
                                    </li>

                                    <!-- sub features -->
                                    <li id="nav-item-features" class="nav-item sub-features" style="height: 430px;">
                                        <a href="#" class="mega-hdr-a" style="height: 24px;color:#000000">Features</a>
                                        <ul class="sub-nav">
                                        <li id="nav-item-faqs-page" class="nav-item nav-item-type-post_type nav-item-object-page nav-item-faqs-page"><a href="#"style="color: #000000">FAQs Page</a></li>
                                        <li id="nav-item-typography" class="nav-item nav-item-type-post_type nav-item-object-page nav-item-typography"><a href="#"style="color: #000000">Typography</a></li>
                                        <li id="nav-item-sitemap" class="nav-item nav-item-type-post_type nav-item-object-page nav-item-sitemap"><a href="#"style="color: #000000">Sitemap</a></li>
                                        <li id="nav-item-contact" class="nav-item nav-item-type-post_type nav-item-object-page nav-item-contact"><a href="#"style="color: #000000">Contact Us</a></li>
                                        <li id="nav-item-about" class="nav-item nav-item-type-post_type nav-item-object-page nav-item-about"><a href="#"style="color: #000000">About Us</a></li>
                                        </ul>
                                    </li>
                                </div>

                                </ul>
                                </div>

                            </li>
                    </ul>

                </div>

        

                <div class="header_center">
                    <!-- Header LOGO-->

                    <div class="header-logo">
                        <a href="#" title="Hifidresy_bag" rel="home">
                            <img alt="Hifidresy" src="http://wordpress.prj/wp-content/uploads/2021/06/Mob-logo.png" style=" width:180px;">
                        </a>
                    </div>
                </div>

                        <!-- Start header_right -->
                <div class="header_right">


                            <div class="nav-link">

                                <ul class="navbar-nav header-right" style="font-weight: bold;">
                                    <li class="nav-item"style="padding-right: 15px;">
                                        <a class="nav_link" href="#"style="color: #000000">ABOUT US</a>
                                    </li>
                                    <li class="nav-item" style="padding-right: 15px;">
                                        <a class="nav_link" href="#"style="color: #000000">MY ACCOUNT</a>
                                    </li>
                                    <li class="nav-item"style="padding-right: 15px;" >
                                        <a class="nav_link" href="#"style="color: #000000">WISHLIST</a>
                                    </li>
                                </ul>
                            </div>


            
                        <!-- End header-main -->
                </div>

           

            <!-- container -->
        </div>

    </nav>


</header>