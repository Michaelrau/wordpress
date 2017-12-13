<?php
#-----------------------------------------------------------------#
#------------ DREAMSHOP : WP-ENQUEUE STYLES & SCRIPTS ------------#
#-----------------------------------------------------------------#

#-----------------------------------------------------------------#
# FRONT SCRIPT : REGISTER/ENQUEUE JS
#-----------------------------------------------------------------#

if( !function_exists('dreamshop_front_enqueue_scripts') ){
    add_action('wp_enqueue_scripts', 'dreamshop_front_enqueue_scripts');
	
	function dreamshop_front_enqueue_scripts() {	
		
		if (!is_admin()) 
		{ 
			// Enqueue 
			wp_enqueue_script('jquery');
			wp_enqueue_script('hoverIntent');
			wp_enqueue_script('easing', get_template_directory_uri() . '/assets/js/jquery.easing.1.3.js', 'jquery', '1.3', TRUE);
			wp_enqueue_script('superfish', get_template_directory_uri() . '/assets/js/superfish.js', 'jquery', '1.7.4', TRUE);
			wp_enqueue_script('flexslider', get_template_directory_uri() . '/assets/js/jquery.flexslider-min.js', 'jquery', '2.2.0', TRUE);
			wp_enqueue_script('owlcarousel', get_template_directory_uri() . '/assets/js/owl.carousel.js', 'jquery', '2.2.0', TRUE);			
			wp_enqueue_script('stickyjs', get_template_directory_uri() . '/assets/js/jquery.sticky.js', 'jquery', '1.0.0', TRUE);
			wp_enqueue_script('slickslider', get_template_directory_uri() . '/assets/js/slick.min.js', 'jquery', '2.2.0', TRUE);
			wp_enqueue_script('fancybox', get_template_directory_uri() . '/assets/js/jquery.fancybox.js', 'jquery', '2.2.0', TRUE);			
			wp_enqueue_script('zoom', get_template_directory_uri() . '/assets/js/jquery.zoom.min.js', 'jquery', '1.0.0', TRUE);			
			wp_enqueue_script('customjs', get_template_directory_uri() . '/assets/js/custom.js', 'jquery', '1.0.0', TRUE);
		}
	}
}

#-----------------------------------------------------------------#
# FRONT STYLES : REGISTER/ENQUEUE CSS
#-----------------------------------------------------------------#

if( !function_exists('dreamshop_front_enqueue_styles') ){
	add_action('wp_enqueue_scripts', 'dreamshop_front_enqueue_styles');
	
	function dreamshop_front_enqueue_styles() {	
		
		if (!is_admin()) 
		{ 
			// Enqueue 
			wp_enqueue_style('google-raleway-font','//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i','', '1.0.0');
			wp_enqueue_style('google-maven-font','//fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900','', '1.0.0');
			wp_enqueue_style('google-Playfair-font','//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i','', '1.0.0');
			wp_enqueue_style('font-awesome', get_template_directory_uri() . "/assets/css/font-awesome.css", '', '4.6.3');
			wp_enqueue_style('fancybox-css', get_template_directory_uri() . "/assets/css/fancybox.css", '', '2.2.0');
			wp_enqueue_style('main-stylesheet', get_stylesheet_uri());
			wp_enqueue_style('flexslider-css', get_template_directory_uri() . "/assets/css/flexslider.css", '', '2.2.0');
			wp_enqueue_style('slickslider-css', get_template_directory_uri() . "/assets/css/slickslider.css", '', '1.0.0');
			wp_enqueue_style('owlcarousel-css', get_template_directory_uri() . "/assets/css/owl.carousel.css", '', '2.2.0');
			wp_enqueue_style('bootstrap-css', get_template_directory_uri() . "/assets/css/bootstrap.css", '', '3.3.6');
		}
	}
}

#-----------------------------------------------------------------#
# APPEND REQUIRED INFO IN SITE HEAD SECTION
#-----------------------------------------------------------------#
function dreamshop_head_info() 
{
	if(!is_admin()) 
	{
		include_once(get_template_directory().'/includes/custom.php');
	}
}
add_action('wp_head', 'dreamshop_head_info');