<?php
#-----------------------------------------------------------------#
#------------- DREAMSHOP : CUSTOM STYLES & SCRIPTS ---------------#
#-----------------------------------------------------------------#
global $dreamshop_shortname;

//Get required theme custom options value
$mob_menu_active = get_theme_mod('mob_menu_active','1024');
$color_scheme    = get_theme_mod('color_scheme','#e74c3c');
$header_sticky   = get_theme_mod('header_sticky','on');
?>

<!-- Dreamshop Theme Options CSS section starts // -->

<style type="text/css">
::selection{
	background: <?php echo $color_scheme; ?>;
	color: #fff;
	text-shadow: none;
}
::-moz-selection {
	background: <?php echo $color_scheme; ?>;
	color: #fff;
	text-shadow: none;
}

/*Global css*/
a,a:active,a:hover{color:<?php echo $color_scheme; ?>;}

/*color scheme*/
#logo #site-title a,#follow-icons li a,h1.entry-title span, #content .sticky-post{color:<?php echo $color_scheme; ?>;}

.main-navigation .mobmenu-toggle,
.main-navigation ul.mobile-menu-active.submenu-toggle i.fa,
.wishlist_table tr td.product-stock-status span.wishlist-in-stock,
.woocommerce-message::before,
.woocommerce-Message--info::before,
.woocommerce-error::before, 
.woocommerce-info::before,
h2.entry-title a:hover,
.theme-color{
	color:<?php echo $color_scheme ?>;
}

body.woocommerce .star-rating::before,
body.woocommerce .star-rating span::before  {
	color:<?php echo $color_scheme ?>;
}

table.compare-list .stock td span{
	color:<?php echo $color_scheme ?> !important;
}

.btn:hover,
.product-wrap .pro-img .pro-sale,
.pro-img a.pro-compare:hover:after,
.pro-img .link-wrap a:hover,
.product-wrap .pro-img a.add_to_cart_button:hover,
.woocommerce div.product form.cart .button,
.single-product .yith-wcwl-add-to-wishlist .add_to_wishlist:hover,
.woocommerce #respond input#submit,
#back-to-top:hover,
.cart.wishlist_table .product-add-to-cart .button,
.cart.wishlist_table .product-add-to-cart .button:hover,
.shop_table .actions .checkout-button,
.shop_table .actions .checkout-button:hover,
#payment .place-order #place_order,
.woocommerce a.remove:hover,
#subscribe-sec,
.woocommerce-message .button,
.woocommerce-Message--info .button,
.woocommerce-error .button, 
.woocommerce-info .button,
.checkout_coupon input[name="apply_coupon"],
.woocommerce-MyAccount-navigation ul .woocommerce-MyAccount-navigation-link a:hover,
.woocommerce-MyAccount-navigation ul .woocommerce-MyAccount-navigation-link.is-active a,
.widget_tag_cloud a:hover,
table.compare-list .add-to-cart td a{
	background-color:<?php echo $color_scheme; ?> !important;
	color:#fff;
}

button,
html input[type="button"],
input[type="reset"],
input[type="submit"]{
	background-color:<?php echo $color_scheme; ?>;
	color:#fff;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus,
input[type="url"]:focus,
textarea:focus,
button,
#subscribe-sec .ds_subscribe input.subs_emailinput:focus,
html input[type="button"],
input[type="reset"],
input[type="submit"],
#coupon_code:focus,
.woocommerce-MyAccount-navigation ul .woocommerce-MyAccount-navigation-link a:hover,
.woocommerce-MyAccount-navigation ul .woocommerce-MyAccount-navigation-link.is-active a{
	border:1px solid <?php echo $color_scheme; ?> ;
}

.woocommerce div.product .woocommerce-tabs ul.tabs li.active,
.woocommerce-message,
.woocommerce-Message--info,
.woocommerce-error, 
.woocommerce-info{
	border-top:2px solid <?php echo $color_scheme; ?> !important;
}

@media (max-width: <?php echo $mob_menu_active; ?>px) {	
	#main-nav{		
		display:none;	
	}
	#header .header-nav .desk-pro-search{
		display:none;
	}
	#header .header-nav .mob-pro-search{
		display:block;
	}
}
</style>

<script>
jQuery('document').ready(function(){
	jQuery('#main-nav').dreamshopMobMenu({'activewidth':'<?php echo $mob_menu_active; ?>'});
});
</script>

<!-- header sticky js -->
<?php if(!empty($header_sticky) && $header_sticky === 'on'){ ?>
	<script>
		jQuery(window).load(function(){
			if( jQuery(window).width() > 1024 ){
				if(jQuery('#header .navbar').length > 0){
					if(jQuery('body.admin-bar').length > 0){
						jQuery("#header .navbar").sticky({ topSpacing: 25 });
					}else{
						jQuery("#header .navbar").sticky({ topSpacing: 0 });
					}
				}
			}
		});
	</script>
<?php } ?>
<!-- // Dreamshop Theme Options CSS section ends -->