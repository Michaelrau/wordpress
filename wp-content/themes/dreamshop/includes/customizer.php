<?php
/**
 * Dreamshop Customizer functionality
 *
 * @package WordPress
 * @subpackage Dreamshop
 * @since Dreamshop 1.0
 */

/**
 * Add postMessage support for site title and description for the Customizer.
 *
 * @since Dreamshop 1.0
 *
 * @param WP_Customize_Manager $wp_customize Customizer object.
 */
function dreamshop_customize_register( $wp_customize ) 
{
	
	$image_dirpath = get_template_directory_uri() . '/assets/images/';

	$wp_customize->get_setting( 'blogname' )->transport        = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport = 'postMessage';
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CUSTOMIZER PANELS ------------------------------------
	//-----------------------------------------------------------------

	$wp_customize->add_panel( 'general_options', array(
		'title' 	=> __( 'General Options','dreamshop'),
		'priority' 	=> 11,
	));
	
	$wp_customize->add_panel( 'home_temp_options', array(
		'title' 	=> __( 'Home Template Options','dreamshop'),
		'priority' 	=> 11,
	));
	
	$wp_customize->add_panel( 'contact_temp_options', array(
		'title' 	=> __( 'Contact Template Options','dreamshop'),
		'priority' 	=> 11,
	));
	
	//-----------------------------------------------------------------
	// DREAMSHOP : COLOR SCHEME SECTION ---------------------------------
	//-----------------------------------------------------------------
	
	// Create "Color Scheme" section in customizer 
	$wp_customize->add_section(
		'dreamshop_color_scheme_section',
		array(
			'title'       => __('Color Setting','dreamshop'),
			'description' => __('Please choose color setting for your site.','dreamshop'),
			'panel' 	  => 'general_options',
		)
	);
	
	// Set "Color Scheme" option color default value
	$wp_customize->add_setting(
		'color_scheme',
		array(
			'default' => '#e74c3c',
			'sanitize_callback' => 'sanitize_hex_color',
		)
	);
	
	// Add "Color Scheme" color picker Control
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize,'color_scheme',
			array(
				'label'    => __('Site Color Scheme','dreamshop'),
				'section'  => 'dreamshop_color_scheme_section',
			)
		)
	);
	
	//-----------------------------------------------------------------
	// DREAMSHOP : HEADER SETTINGS SECTION ----------------------------
	//-----------------------------------------------------------------
	
	// Create "HEDAER SETTINGS" section in customizer 
	$wp_customize->add_section(
		'dreamshop_header_section',
		array(
			'title'       => __('Header Settings','dreamshop'),
			'panel' 	  => 'general_options',
		)
	);
	
	// Mobile Menu Activation Width
	$wp_customize->add_setting( 
		'mob_menu_active', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'mob_menu_active', 
		array(
			'label'       => __('Mobile Menu Activate Width','dreamshop'),
			'description' => __('Layout width (without unit) after which mobile menu will get activated (default : 1024)','dreamshop'),
			'section'     => 'dreamshop_header_section',
		)
	);
	
	// Header Sticky Option
	
	$wp_customize->add_setting( 
		'header_sticky', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'header_sticky', 
		array(
			'label'       => __('Header Sticky (On/Off)','dreamshop'),
			'description' => __('Enable/disable header sticky feature for desktop viewers.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'dreamshop_header_section'

		)
	);
	//-----------------------------------------------------------------
	// DREAMSHOP : HEADER CONTACT SECTION -------------------------------
	//-----------------------------------------------------------------
	
	// Create "CONTACT INFORMATION" section in customizer 
	$wp_customize->add_section(
		'dreamshop_header_contact_section',
		array(
			'title'       => __('Header Contact Info','dreamshop'),
			'description' => __('Add contact information about your business.','dreamshop'),
			'panel' 	  => 'general_options',
		)
	);
	
	// Contact Title Text 
	$wp_customize->add_setting( 
		'contact_email', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'contact_email', 
		array(
			'label'       => __('Contact Email Address','dreamshop'),
			'section'     => 'dreamshop_header_contact_section',
		)
	);
	
	// Contact Address
	$wp_customize->add_setting( 
		'contact_phone', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'contact_phone', 
		array(
			'label'       => __('Contact Phone Number','dreamshop'),
			'section'     => 'dreamshop_header_contact_section',
		)
	);	
	
	//-----------------------------------------------------------------
	// DREAMSHOP : HEADER FOLLOW ICONS SECTION ------------------------
	//-----------------------------------------------------------------
	
	// Create "Follow Icons" section in customizer 
	$wp_customize->add_section(
		'dreamshop_follow_icons_section',
		array(
			'title'       => __('Header Follow Icons','dreamshop'),
			'description' => __('Please add your social profile (if you want to make disable icon, please leave icon url field blank).','dreamshop'),
			'panel' 	  => 'general_options',
		)
	);
	
	// Twitter Icon URL 
	$wp_customize->add_setting( 
		'twicon', 
		array(
			'default'        => '',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	$wp_customize->add_control(
		'twicon', 
		array(
			'label'       => __('Twitter URL','dreamshop'),
			'section'     => 'dreamshop_follow_icons_section',
		)
	);
	
	// Facebook Icon URL 
	$wp_customize->add_setting( 
		'fbicon', 
		array(
			'default'        => '',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	$wp_customize->add_control(
		'fbicon', 
		array(
			'label'       => __('Facebook URL','dreamshop'),
			'section'     => 'dreamshop_follow_icons_section',
		)
	);
	
	// Google Plus Icon URL 
	$wp_customize->add_setting( 
		'gpicon', 
		array(
			'default'        => '',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	$wp_customize->add_control(
		'gpicon', 
		array(
			'label'       => __('Google+ URL','dreamshop'),
			'section'     => 'dreamshop_follow_icons_section',
		)
	);
	
	// Linkedin Icon URL 
	$wp_customize->add_setting( 
		'linkdicon', 
		array(
			'default'        => '',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	$wp_customize->add_control(
		'linkdicon', 
		array(
			'label'       => __('Linkedin URL','dreamshop'),
			'section'     => 'dreamshop_follow_icons_section',
		)
	);	
	
	// Vimeo Icon URL 
	$wp_customize->add_setting( 
		'vmicon', 
		array(
			'default'        => '',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	$wp_customize->add_control(
		'vmicon', 
		array(
			'label'       => __('Vimeo URL','dreamshop'),
			'section'     => 'dreamshop_follow_icons_section',
		)
	);
	
	//-----------------------------------------------------------------
	// DREAMSHOP : Footer SETTINGS SECTION ----------------------------
	//-----------------------------------------------------------------
	
	// Create "HEDAER SETTINGS" section in customizer 
	$wp_customize->add_section(
		'dreamshop_footer_section',
		array(
			'title'       => __('Footer Settings','dreamshop'),
			'panel' 	  => 'general_options',
		)
	);
	
	// Mobile Menu Activation Width
	$wp_customize->add_setting( 
		'footer_copy_right', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'footer_copy_right', 
		array(
			'label'       => __('Footer Copy Right','dreamshop'),
			'description' => __('Please add footer copy right','dreamshop'),
			'section'     => 'dreamshop_footer_section',
		)
	);
	//-----------------------------------------------------------------
	// DREAMSHOP : HOME TEMPLATE OPTIONS (PANEL) ----------------------
	//-----------------------------------------------------------------
	
	//-----------------------------------------------------------------
	// DREAMSHOP : HOME SLIDER CONTENT SECTION ------------------------
	//-----------------------------------------------------------------
	
	// Create "Home Slider Content" section in customizer 
	$wp_customize->add_section(
		'dreamshop_slider_section',
		array(
			'title'       => __('Home Slider Content','dreamshop'),
			'description' => __('Please home slider content.','dreamshop'),
			'panel' 	  => 'home_temp_options'
		)
	);
	
	// Home Slider (Enable/Disable)
	$wp_customize->add_setting( 
		'hslider_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'hslider_display', 
		array(
			'label'       => __('Home Slider (On/Off)','dreamshop'),
			'description' => __('Enable/disable Home slider.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'dreamshop_slider_section'
		)
	);
	
	// Slider First meta filds
	// slider image
	$wp_customize->add_setting( 
		'home_slide_1_img', 
		array(
			'default'           => $image_dirpath.'slider-img.png',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	
	$wp_customize->add_control(  
			new WP_Customize_Image_Control( $wp_customize, 
		    'home_slide_1_img', 
			array(
				'label'        => __( 'First Slide Image', 'dreamshop' ),
				'description'  => __('Uplaod first slide image 1600x650px.', 'dreamshop' ),
				'section' 	   => 'dreamshop_slider_section',
			) 
		) 
	);
	
	
	// slider title
	$wp_customize->add_setting( 
		'home_slide_1_title', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'home_slide_1_title', 
		array(
			'label'       => __('First Slide Title','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);
	
	// slide Button Label
	$wp_customize->add_setting( 
		'home_slide_1_lbl', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'home_slide_1_lbl', 
		array(
			'label'       => __('First Button Label','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);	
	
	// slide learn more URL
	$wp_customize->add_setting( 
		'home_slide_1_url', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'home_slide_1_url', 
		array(
			'label'       => __('First Button URL','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);	
	
	// Slider Second meta filds
	
	// slider image
	$wp_customize->add_setting( 
		'home_slide_2_img', 
		array(
			'default'           => $image_dirpath.'slider-img.png',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	
	$wp_customize->add_control(  
			new WP_Customize_Image_Control( $wp_customize, 
		    'home_slide_2_img', 
			array(
				'label'        => __( 'Second Slide Image', 'dreamshop' ),
				'description'  => __('Uplaod first slide image 1600x650px.', 'dreamshop' ),
				'section' 	   => 'dreamshop_slider_section',
			) 
		) 
	);
	
	
	// slider title
	$wp_customize->add_setting( 
		'home_slide_2_title', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'home_slide_2_title', 
		array(
			'label'       => __('Second Slide Title','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);
	
	
	// slide Button Label
	$wp_customize->add_setting( 
		'home_slide_2_lbl', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'home_slide_2_lbl', 
		array(
			'label'       => __('Second Button Label','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);	
	
	// slide learn more URL
	$wp_customize->add_setting( 
		'home_slide_2_url', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'home_slide_2_url', 
		array(
			'label'       => __('Second Button URL','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);	
	
	// Slider Third meta filds
	
	// slider image
	$wp_customize->add_setting( 
		'home_slide_3_img', 
		array(
			'default'           => $image_dirpath.'slider-img.png',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	
	$wp_customize->add_control(  
			new WP_Customize_Image_Control( $wp_customize, 
		    'home_slide_3_img', 
			array(
				'label'        => __( 'Third Slide Image', 'dreamshop' ),
				'description'  => __('Uplaod first slide image 1600x650px.', 'dreamshop' ),
				'section' 	   => 'dreamshop_slider_section',
			) 
		) 
	);
	
	
	// slider title
	$wp_customize->add_setting( 
		'home_slide_3_title', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'home_slide_3_title', 
		array(
			'label'       => __('Third Slide Title','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);
	
	// slide Button Label
	$wp_customize->add_setting( 
		'home_slide_3_lbl', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'home_slide_3_lbl', 
		array(
			'label'       => __('Third Button Label','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);	
	
	// slide learn more URL
	$wp_customize->add_setting( 
		'home_slide_3_url', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	
	$wp_customize->add_control( 
		'home_slide_3_url', 
		array(
			'label'       => __('Third Button URL','dreamshop'),
			'section'     => 'dreamshop_slider_section',
		)
	);	
	
	//-----------------------------------------------------------------
	// DREAMSHOP : HOME NEW ARRIVAL SECTION ---------------------------
	//-----------------------------------------------------------------
	
	// Create "Home New Arrival" section in customizer 
	$wp_customize->add_section(
		'dreamshop_home_new_arrival_section',
		array(
			'title'       => __('Home New Arrival Section','dreamshop'),
			'description' => __('Please add content for New Arrival Section.','dreamshop'),
			'panel' 	  => 'home_temp_options'
		)
	);
	
	// New Arrival (Enable/Disable)
	$wp_customize->add_setting( 
		'new_arrival_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'new_arrival_display', 
		array(
			'label'       => __('New Arrival Section (On/Off)','dreamshop'),
			'description' => __('Enable/disable new arrival section.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'dreamshop_home_new_arrival_section'
		)
	);

	// Section Title
	$wp_customize->add_setting( 
		'home_new_arrival_title', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'home_new_arrival_title', 
		array(
			'label'       => __('New Arrival Section Title','dreamshop'),
			'section'     => 'dreamshop_home_new_arrival_section',
		)
	);
	
	//-----------------------------------------------------------------
	// DREAMSHOP : HOME SUBSCRIBE SECTION -----------------------------
	//-----------------------------------------------------------------
	
	// Create "Home SUBSCRIBE" section in customizer 
	$wp_customize->add_section(
		'dreamshop_home_subscribe_section',
		array(
			'title'       => __('Home Subscribe Section','dreamshop'),
			'description' => __('Please add content for subscribe section.','dreamshop'),
			'panel' 	  => 'home_temp_options'
		)
	);
	
	// Subscribe (Enable/Disable)
	$wp_customize->add_setting( 
		'subscribe_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'subscribe_display', 
		array(
			'label'       => __('Subscribe Section (On/Off)','dreamshop'),
			'description' => __('Enable/disable subscribe section.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'dreamshop_home_subscribe_section'
		)
	);
	
	// Subscribe Background Image
	$wp_customize->add_setting( 
		'home_subscribe_bimg', 
		array(
			'default'           => $image_dirpath.'slider-img.png',
			'sanitize_callback' => 'esc_url_raw',
		)
	);
	
	$wp_customize->add_control(  
			new WP_Customize_Image_Control( $wp_customize, 
		    'home_subscribe_bimg', 
			array(
				'label'        => __( 'Subscribe Background Image', 'dreamshop' ),
				'description'  => __('Uplaod subscribe background image', 'dreamshop' ),
				'section' 	   => 'dreamshop_home_subscribe_section',
			) 
		) 
	);
	
	//-----------------------------------------------------------------
	// DREAMSHOP : HOME BEST SELLER SECTION ---------------------------
	//-----------------------------------------------------------------
	
	// Create "Home Best Seller" section in customizer 
	$wp_customize->add_section(
		'dreamshop_home_best_seller_section',
		array(
			'title'       => __('Home Best Seller Section','dreamshop'),
			'description' => __('Please add content for Best Seller Section.','dreamshop'),
			'panel' 	  => 'home_temp_options'
		)
	);
	
	// Best Seller (Enable/Disable)
	$wp_customize->add_setting( 
		'best_seller_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'best_seller_display', 
		array(
			'label'       => __('Best Seller Section (On/Off)','dreamshop'),
			'description' => __('Enable/disable best seller section.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'dreamshop_home_best_seller_section'
		)
	);

	// Section Title
	$wp_customize->add_setting( 
		'home_best_seller_title', 
		array(
			'default'        => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'home_best_seller_title', 
		array(
			'label'       => __('Best Seller Section Title','dreamshop'),
			'section'     => 'dreamshop_home_best_seller_section',
		)
	);
	
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CONTACT TEMPLATE OPTIONS (PANEL) -------------------
	//-----------------------------------------------------------------
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CONTACT MAP SECTION --------------------------------
	//-----------------------------------------------------------------
	
	// Create "Contact Map" section in customizer 
	$wp_customize->add_section(
		'contact_map_section',
		array(
			'title'       => __('Contact Google Map','dreamshop'),
			'description' => __('Please add google map iframe "src" code.','dreamshop'),
			'panel' 	  => 'contact_temp_options'
		)
	);
	
	// Contact Map Field
	$wp_customize->add_setting( 
		'contact_map', 
		array(
			'default'     => '',
			'sanitize_callback' => 'dreamshop_sanitize_textarea',
		)
	);
	
	$wp_customize->add_control(
		'contact_map', 
		array(
			'label'       => __('Contact Map','dreamshop'),
			'type'        => 'textarea',
			'section'     => 'contact_map_section',
		)
	);
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CONTACT FORM SECTION -------------------------------
	//-----------------------------------------------------------------
	
	// Create "Contact Form" section in customizer 
	$wp_customize->add_section(
		'contact_form_section',
		array(
			'title'       => __('Contact Form Section','dreamshop'),
			'description' => __('Please add contact form section.','dreamshop'),
			'panel' 	  => 'contact_temp_options'
		)
	);
	
	// Contact Map Field
	$wp_customize->add_setting( 
		'contact_form', 
		array(
			'default'     => '',
			'sanitize_callback' => 'dreamshop_sanitize_textarea',
		)
	);
	$wp_customize->add_control(
		'contact_form', 
		array(
			'label'       => __('Contact Form 7 Shortcode','dreamshop'),
			'type'        => 'textarea',
			'section'     => 'contact_form_section',
		)
	);	
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CONTACT ADDRESS SECTION ----------------------------
	//-----------------------------------------------------------------
	
	// Create "Contact Address" section in customizer 
	$wp_customize->add_section(
		'contact_add_section',
		array(
			'title'       => __('Contact Address Section','dreamshop'),
			'description' => __('Please add contact address section.','dreamshop'),
			'panel' 	  => 'contact_temp_options'
		)
	);
	
	// Contact Address (Enable/Disable)
	$wp_customize->add_setting( 
		'contact_address_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'contact_address_display', 
		array(
			'label'       => __('Contact Address Section (On/Off)','dreamshop'),
			'description' => __('Enable/disable contact address section.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'contact_add_section'
		)
	);
	
	// First Contact Address 
	$wp_customize->add_setting( 
		'country_name_1_lbl', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'country_name_1_lbl', 
		array(
			'label'       => __('Country Name','dreamshop'),
			'section'     => 'contact_add_section',
		)
	);	
	
	$wp_customize->add_setting( 
		'country_name_1_add', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'country_name_1_add', 
		array(
			'label'       => __('Country Address','dreamshop'),
			'section'     => 'contact_add_section',
		)
	);	
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CONTACT INFO SECTION -------------------------------
	//-----------------------------------------------------------------
	
	// Create "Contact Address" section in customizer 
	$wp_customize->add_section(
		'contact_info_section',
		array(
			'title'       => __('Contact Info Section','dreamshop'),
			'description' => __('Please add contact info section.','dreamshop'),
			'panel' 	  => 'contact_temp_options'
		)
	);
	
	// Contact Info (Enable/Disable)
	$wp_customize->add_setting( 
		'contact_info_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'contact_info_display', 
		array(
			'label'       => __('Contact Info Section (On/Off)','dreamshop'),
			'description' => __('Enable/disable contact info section.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'contact_info_section'
		)
	);
	
	$wp_customize->add_setting( 
		'contact_phone', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'contact_phone', 
		array(
			'label'       => __('Contact Phone Number','dreamshop'),
			'section'     => 'contact_info_section',
		)
	);	
	
	$wp_customize->add_setting( 
		'contact_email', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'contact_email', 
		array(
			'label'       => __('Contact Email Address','dreamshop'),
			'section'     => 'contact_info_section',
		)
	);	
	
	$wp_customize->add_setting( 
		'contact_skype', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'contact_skype', 
		array(
			'label'       => __('Contact Skype Id','dreamshop'),
			'section'     => 'contact_info_section',
		)
	);	
	
	
	//-----------------------------------------------------------------
	// DREAMSHOP : CONTACT BUSINESS HOURS SECTION ---------------------
	//-----------------------------------------------------------------
	
	// Create "Contact Address" section in customizer 
	$wp_customize->add_section(
		'contact_bussness_section',
		array(
			'title'       => __('Contact Business Hours Section','dreamshop'),
			'description' => __('Please add contact business hours section.','dreamshop'),
			'panel' 	  => 'contact_temp_options'
		)
	);
	
	// Contact Business Hours (Enable/Disable)
	$wp_customize->add_setting( 
		'contact_business_display', 
		array(
			'default'        => 'on',
			'sanitize_callback' => 'dreamshop_sanitize_on_off',
		)
	);
	$wp_customize->add_control(
		'contact_business_display', 
		array(
			'label'       => __('Contact Business Hours Section (On/Off)','dreamshop'),
			'description' => __('Enable/disable contact business hours section.','dreamshop'),
			'type'        => 'select',
			'choices'     => array(
				'on' => __('On', 'dreamshop' ),
				'off'=> __('Off', 'dreamshop' ),
			),
			'section'     => 'contact_bussness_section'
		)
	);
	
	$wp_customize->add_setting( 
		'mon_fri_time', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'mon_fri_time', 
		array(
			'label'       => __('Monday To Friday Timing','dreamshop'),
			'section'     => 'contact_bussness_section',
		)
	);	
	
	$wp_customize->add_setting( 
		'sat_time', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'sat_time', 
		array(
			'label'       => __('Saturday Timing','dreamshop'),
			'section'     => 'contact_bussness_section',
		)
	);	
	
	$wp_customize->add_setting( 
		'sun_time', 
		array(
			'default'     => '',
			'sanitize_callback' => 'sanitize_text_field',
		)
	);
	$wp_customize->add_control(
		'sun_time', 
		array(
			'label'       => __('Sunday Timing','dreamshop'),
			'section'     => 'contact_bussness_section',
		)
	);	

	

}
add_action( 'customize_register', 'dreamshop_customize_register', 11 );

/**
 * Binds JS handlers to make the Customizer preview reload changes asynchronously.
 *
 * @since Dreamshop 1.0
 */
function dreamshop_customize_preview_js() {
	wp_enqueue_script( 'dreamshop-customize-preview', get_template_directory_uri() . '/js/customize-preview.js', array( 'customize-preview' ), '20141216', true );
}
add_action( 'customize_preview_init', 'dreamshop_customize_preview_js' );

// Santize a Textarea Field
function dreamshop_sanitize_textarea( $input ) {
	return wp_kses_post( force_balance_tags( $input ) );
}

// Sanitize On-Off Field
function dreamshop_sanitize_on_off( $input ) {
	if ( $input == 'on' ) {
        return 'on';
    } else {
        return 'off';
    }
}