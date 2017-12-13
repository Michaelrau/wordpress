<?php
/**
 * The Header for Dreamshop theme
 * @package WordPress
 * @subpackage Dreamshop
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--[if IE 9]>
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<![endif]-->
<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
<link rel="profile" href="http://gmpg.org/xfn/11" />
<!--[if lt IE 9]>
<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js"></script>
<![endif]-->
<!--[if IE]><style type="text/css">.flexslider .slides,.flex-control-nav li{zoom: 1;}</style><![endif]-->
<?php
wp_head(); 
?>
</head>
<body <?php body_class(); ?> >

	<!-- #Header Section Starts -->
	<header id="header">
		<?php
		
		$custom_logo_id     = get_theme_mod( 'custom_logo' );
		$custom_logo_src    = wp_get_attachment_image_src( $custom_logo_id , 'full' );
	
		// header follow icons 
		$twicon             = get_theme_mod('twicon','#');
		$fbicon             = get_theme_mod('fbicon','#');
		$gpicon             = get_theme_mod('gpicon','#');
		$linkdicon          = get_theme_mod('linkdicon','#');
		$vmicon             = get_theme_mod('vmicon','#');
		?>
		<!-- .header-icons -->
		<?php //if(isset($_follow_icons) && $_follow_icons ==="on") { ?>
			<div class="header-icons">
				<div class="container">
					<div class="row">
						<div class="top-nav col-md-8 col-sm-8 col-xs-12">
							<?php 
							if( function_exists( 'has_nav_menu' ) && has_nav_menu( 'Topnav' ) ) {
								wp_nav_menu(array( 'container_class' => 'top-navigation', 'container_id' => 'top-navigation', 'menu_id' => 'top-nav','menu_class' => 'menu clearfix','theme_location' => 'Topnav' )); 
							} 
							?>
						</div>
						<div class="hfollow-icon col-md-4 col-sm-4 col-xs-12">
							<?php if(isset($twicon) && $twicon !=""){ ?><a class="icon-item" target="_blank" href="<?php echo $twicon; ?>"><i class="fa fa-twitter"></i></a><?php } ?>
							<?php if(isset($fbicon) && $fbicon !=""){ ?><a class="icon-item" target="_blank" href="<?php echo $fbicon; ?>"><i class="fa fa-facebook"></i></a><?php } ?>
							<?php if(isset($gpicon) && $gpicon !=""){ ?><a class="icon-item" target="_blank" href="<?php echo $gpicon; ?>"><i class="fa fa-google-plus"></i></a><?php } ?>
							<?php if(isset($linkdicon) && $linkdicon !=""){ ?><a class="icon-item" target="_blank" href="<?php echo $linkdicon; ?>"><i class="fa fa-linkedin"></i></a><?php } ?>
							<?php if(isset($vmicon) && $vmicon !=""){ ?><a class="icon-item" target="_blank" href="<?php echo $vmicon; ?>"><i class="fa fa-vimeo"></i></a><?php } ?>
						</div>
					</div>
				</div>
			</div>
		<?php //} ?>
		
		<div class="navbar navbar-static-top">
			<div id="sticky-nav">
				<div class="head-logo">
					<div class="container">
						<div class="row">
							<!-- #logo -->
							<div id="logo" class="col-md-4 col-sm-4 col-xs-12">
								<div id="site-title">
									<?php 
									if($custom_logo_src[0]){ 
										?><a href="<?php echo esc_url(home_url('/')); ?>" title="<?php bloginfo('name'); ?>" ><img class="logo custom-logo" src="<?php echo esc_url($custom_logo_src[0]); ?>" alt="<?php bloginfo('name'); ?>" /></a><?php 
									} 
									else{ 
									?>
									<!-- #site-description -->
									<div class="site-title">
										<a href="<?php echo esc_url(home_url('/')); ?>" title="<?php bloginfo('name') ?>" ><?php bloginfo('name'); ?></a> 
										<div id="site-description" class="site-description"><?php bloginfo( 'description' ); ?></div>
									</div>
									<?php 
									} 
									?>
							
								</div>
							</div>
							<!-- #logo -->
							
							<!--cart details -->
							<div class="cart-item col-md-8 col-sm-8 col-xs-12">
								<?php if ( in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) { ?>
									<a class="cart-contents" href="<?php echo WC()->cart->get_cart_url(); ?>" title="<?php _e( 'View your shopping cart','dreamshop'); ?>"><?php _e('CART / ','dreamshop');?><?php echo WC()->cart->get_cart_total(); ?>&nbsp;<span class="nav-cart-icon"><?php echo sprintf ( _n( '%d', '%d', WC()->cart->get_cart_contents_count(),'dreamshop'), WC()->cart->get_cart_contents_count() ); ?></span></a>
								<?php } ?>
							</div>
						</div>
					</div>
				</div>
				
				<!-- .header-nav for desktop-->
				<div class="header-nav desc-nav <?php if(!is_home() && ! is_front_page()){ ?> inner-header-nav <?php } ?>">
					<div class="container">
						<div class="row">
							<!-- product search form -->
							<div class="col-md-4 col-sm-4 col-xs-12 product-search mob-pro-search">
								<div class="search-form">
									<form role="search" method="get" id="prosearch" action="<?php echo esc_url( home_url( '/'  ));?>">
										<input type="text" value="<?php echo get_search_query(); ?>" name="s" id="searchbox" placeholder="Search" />
										<input type="hidden" name="post_type" value="product" />
										<button class="pro-submit" type="submit"><i class="fa fa-search"></i></button>
									</form>
								</div>
							</div>
							
							<!-- #main-navigation-->
							<?php 
								if( function_exists( 'has_nav_menu' ) && has_nav_menu( 'Header' ) ) {
									wp_nav_menu(array( 'container_class' => 'main-navigation col-md-8 col-sm-8 col-xs-12', 'container_id' => 'main-navigation', 'menu_id' => 'main-nav','menu_class' => 'menu clearfix','theme_location' => 'Header' )); 
								} else {
								?>
								<nav id="main-navigation" class="main-navigation col-md-8 col-sm-8 col-xs-12">
									<ul id="main-nav" class="menu clearfix">
										<?php wp_list_pages('title_li=&depth=0'); ?>
									</ul>
								</nav>
								<?php 
								}
							?>
							<!-- #main-navigation -->
							
							<!-- product search form -->
							<div class="col-md-4 col-sm-4 col-xs-12 product-search desk-pro-search">
								<div class="search-form">
									<form role="search" method="get" id="prosearch" action="<?php echo esc_url( home_url( '/'  ));?>">
										<input type="text" value="<?php echo get_search_query(); ?>" name="s" id="searchbox" placeholder="Search products" />
										<input type="hidden" name="post_type" value="product" />
										<button class="pro-submit" type="submit"><i class="fa fa-search"></i></button>
									</form>
								</div>
							</div>
						</div><!-- .row -->
					</div><!-- .container -->
				</div><!-- .header-nav -->
			</div>
		</div>
	</header><!-- #Header Section Ends -->

	<!-- SCRIPT FOR WISHLIST POPUP -->
	<?php
	global $yith_wcwl;
	if (isset($yith_wcwl) && is_object($yith_wcwl)) { ?>
	<script type="text/javascript">
	if( !jQuery('#yith-wcwl-popup-message').length ) {
		jQuery( 'body' ).prepend(
			'<div id="wishlist-popup" class="container"><div id="yith-wcwl-popup-message" style="opacity:1;">' +
				'<div class="wish-pwrp"><div class="yith-wcwl-popup-close"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/close.png"></div><div id="yith-wcwl-message"></div><div class="wishlist"><a href="<?php echo $yith_wcwl->get_wishlist_url(); ?>" rel="nofollow">Browse Wishlist</a></div></div></div>' +
			'</div></div>'
		);
	}
	</script>
	<?php } ?>