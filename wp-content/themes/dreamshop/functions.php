<?php
/**
 * Dreamshop functions and definitions.
 *
 * Sets up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * When using a child theme (see http://codex.wordpress.org/Theme_Development
 * and http://codex.wordpress.org/Child_Themes), you can override certain
 * functions (those wrapped in a function_exists() call) by defining them first
 * in your child theme's functions.php file. The child theme's functions.php
 * file is included before the parent theme's file, so the child theme
 * functions would be used.
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * see http://codex.wordpress.org/Plugin_API
 *
 */
#-----------------------------------------------------------------#
# INCLUDE REQUIRED FILE FOR THEME (PLEASE DON'T REMOVE IT)
#-----------------------------------------------------------------#
include_once(get_template_directory().'/includes/customizer.php');
include_once(get_template_directory().'/functions/init.php');
require_once(get_template_directory().'/includes/tgm_activation/install-required.php');

#-----------------------------------------------------------------#
# REGISTER SIDEBARS
#-----------------------------------------------------------------#
 
function dreamshop_register_sidebar() 
{	
	register_sidebar(array(
		'name'          => 'Blog Sidebar',
		'id'            => 'blog-sidebar',
		'description'   => __( 'Add widgets here to appear in blog, archive pages & single posts sidebar.', 'dreamshop' ),
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget'  => '</li>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
	register_sidebar(array(
		'name'          => 'Home Subscription',
		'id'            => 'subscribe-sidebar',
		'description'   => __( 'Add dreamshop subscription widget here to appear in home subscription section.', 'dreamshop' ),
		'before_widget' => '<div id="%1$s" class="col-lg-12 subscribe-form %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<div class="subscribe-title">',
		'after_title'   => '</div>',
	));
	register_sidebar(array(
		'name'          => 'Footer Sidebar',
		'id'            => 'footer-sidebar',
		'description'   => __( 'Add widgets here to appear in footer sidebar.', 'dreamshop' ),
		'before_widget' => '<li id="%1$s" class="col-md-3 col-sm-3 col-xs-12 widget %2$s">',
		'after_widget'  => '</li>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));	
	
}

add_action( 'widgets_init', 'dreamshop_register_sidebar' );

#-----------------------------------------------------------------#
# THEME CONFIGURATION
#-----------------------------------------------------------------#
function dreamshop_theme_config() 
{
	// adds rss feed links to <head> for posts and comments.
	add_theme_support('automatic-feed-links');
	add_theme_support('post-thumbnails');
	add_theme_support('woocommerce');
	
	// This theme styles the visual editor with editor-style.css to match the theme style.
	add_editor_style();
	
	// Let WordPress manage the document title.
	add_theme_support( 'title-tag' );
	
	// Setup the WordPress custom logo feature.
	add_theme_support( 'custom-logo', array(
	   'width'       => 170,
	   'height'      => 40,
	   'flex-width' => true,
	));
	
	set_post_thumbnail_size( 150, 150, true );
	add_image_size( 'slide_thumb',1600,650,true );     // slide_thumb size
	add_image_size( 'hproduct_thumb',277,347,true );   // hproduct_thumb size
	add_image_size( 'sproduct_thumb',556,684,true );   // sproduct_thumb size
	
	// this theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'Header' => __( 'Header Navigation', 'dreamshop' ),
		'Topnav' => __( 'Top Navigation', 'dreamshop' )
	));
}
add_action( 'after_setup_theme', 'dreamshop_theme_config' ); 

#-----------------------------------------------------------------#
# FROM HERE YOU CAN ADD YOUR OWN FUNCTIONS
#-----------------------------------------------------------------#
