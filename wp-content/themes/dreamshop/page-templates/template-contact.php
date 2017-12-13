<?php 
/* 
Template Name: Contact Template
*/ 
get_header(); 
	global $dreamshop_shortname, $wp_query; 

	$pageid    					= $wp_query->post->ID;
	$page_data 					= get_post_meta($pageid);

	// Contact map meta field
	$contact_map      			= get_theme_mod('contact_map');
	
	// Contact form meta field
	$contact_form      			= get_theme_mod('contact_form');
	
	// Contact Address field
	$contact_address_display    = get_theme_mod('contact_address_display','on');
	$country_name_1_lbl      	= get_theme_mod('country_name_1_lbl','Philippines Store');
	$country_name_1_add     	= get_theme_mod('country_name_1_add','Philippines, PO Box 620067, Talay st. 66, A-ha inc.');
	
	// Contact Info field
	$contact_info_display       = get_theme_mod('contact_info_display','on');
	$contact_phone      		= get_theme_mod('contact_phone','+ 1-888-1554-456-123');
	$contact_email     			= get_theme_mod('contact_email','themesupport@gmail.com');
	$contact_skype      		= get_theme_mod('contact_skype','ahasupport');
	
	// Contact Info field
	$contact_business_display	= get_theme_mod('contact_business_display','on');
	$mon_fri_time      			= get_theme_mod('mon_fri_time','9am to 20 pm ');
	$sat_time     				= get_theme_mod('sat_time','9am to 17 pm ');
	$sun_time      				= get_theme_mod('sun_time','closed ');
	
	wp_reset_query();
?> 

<!-- breadcrumbs -->
<?php if (function_exists('dreamshop_breadcrumbs')) {
	dreamshop_breadcrumbs(); 
}?>

<div class="contact-temp">
	<div class="container">
		<div class="row">
			<?php if(!empty($contact_map)){ ?>
				<div class="add-map col-lg-12">
					<iframe src="<?php echo $contact_map; ?>" height="450" frameborder="0" allowfullscreen></iframe>
				</div>
			<?php } ?>
		</div><!-- .row -->
		
		<div class="row contact-wrap">
			<?php if(!empty($contact_form)){ ?>
				<div class="contact-form col-md-8 col-sm-8 colxs-12">
					<div class="cform-title">
						<?php _e('Send Us Message','dreamshop');?>
					</div>
					<?php echo do_shortcode( $contact_form ); ?>
				</div>
			<?php } ?>
			
			<div class="contact-detail col-md-4 col-sm-4 colxs-12">
				<!-- contact address section -->
				<?php if(!empty($contact_address_display) && $contact_address_display === 'on'){ ?>
					<?php if(!empty($country_name_1_lbl) || !empty($country_name_1_add) || !empty($country_name_2_lbl) || !empty($country_name_2_add)){ ?>
						<div class="address-wraper">
							<div class="contact-title cadd-title">
								<?php _e('ADDRESS','dreamshop'); ?>
							</div>
							
							<?php if(!empty($country_name_1_lbl) && !empty($country_name_1_add)){ ?>
								<div class="country-swrap">
									<?php if(!empty($country_name_1_lbl)){ ?>
										<div class="country-stitle">
											<?php echo $country_name_1_lbl; ?>
										</div>
									<?php } ?>
									
									<?php if(!empty($country_name_1_add)){ ?>
										<div class="country-sadd">
											<?php echo $country_name_1_add; ?> 
										</div>
									<?php } ?>
								</div>
							<?php } ?>
						</div>
					<?php } ?>
				<?php } ?>
				
				<!-- contact info section -->
				<?php if(!empty($contact_info_display) && $contact_info_display === 'on'){ ?>
					<?php if(!empty($contact_phone) || !empty($contact_email) || !empty($contact_skype)){ ?>
						<div class="contact-info">
							<div class="contact-title contact-infotitle">
								<?php _e('Contact Info','dreamshop'); ?>
							</div>
							
							<div class="cinfo-wrap">
								<?php if(!empty($contact_phone)){ ?>
									<div class="cinfo-phone">
										<span><?php _e('Phone: ','dreamshop'); ?></span><a href="tel:<?php echo $contact_phone; ?>"><?php echo $contact_phone; ?></a>
									</div>
								<?php } ?>
								
								<?php if(!empty($contact_email)){ ?>
									<div class="cinfo-email">
										<span><?php _e('Email: ','dreamshop'); ?></span><a href="mailto:<?php echo $contact_email; ?>"><?php echo $contact_email; ?></a>
									</div>
								<?php } ?>
								
								<?php if(!empty($contact_skype)){ ?>
									<div class="cinfo-skype">
										<span><?php _e('Skype: ','dreamshop'); ?></span><a href="skype:<?php echo $contact_skype; ?>"><?php echo $contact_skype; ?></a>
									</div>
								<?php } ?>
							</div>
						</div>
					<?php } ?>
				<?php } ?>
				
				<!-- contact info section -->
				<?php if(!empty($contact_business_display) && $contact_business_display === 'on'){ ?>
					<?php if(!empty($mon_fri_time) || !empty($mon_fri_time) || !empty($mon_fri_time)){ ?>
						<div class="business-hour">
							<div class="contact-title business-htitle">
								<?php _e('Business Hours','dreamshop'); ?>
							</div>
							
							<div class="business-hwrap">
								<?php if(!empty($mon_fri_time)){ ?>
									<div class="time-detail monfri-time">
										<?php _e('Monday - Friday: ','dreamshop'); echo $mon_fri_time ; ?>
									</div>
								<?php } ?>
								
								<?php if(!empty($sat_time)){ ?>
									<div class="time-detail sat-time">
										<?php _e('Saturday: ','dreamshop'); echo $sat_time; ?> 
									</div>
								<?php } ?>
								
								<?php if(!empty($sun_time)){ ?>
									<div class="time-detail sun-time">
										<?php _e('Sunday: ','dreamshop'); echo $sun_time; ?>
									</div>
								<?php } ?>
							</div>
						</div>
					<?php } ?>
				<?php } ?>
			</div>
		</div>
	</div><!-- .container -->
</div><!-- #container -->
<?php get_footer(); ?>