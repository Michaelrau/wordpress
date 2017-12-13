<?php
/* 
Template Name: Homepage Template
*/ 
get_header(); 
global $dreamshop_shortname, $wp_query; 

	$pageid    				= $wp_query->post->ID;
	$page_data 				= get_post_meta($pageid);

	// Theme customizer home template options 
	$image_dirpath 			=  get_template_directory_uri() . '/assets/images/'; 
	
	// Slider section meta fields
	$default_slider_title   = sprintf( __( 'Summer Sales', 'dreamshop' ));

	$hslider_display        = get_theme_mod('hslider_display','on');
	$home_slide_1_img       = get_theme_mod('home_slide_1_img',$image_dirpath.'slider-img.png');
	$home_slide_1_title     = get_theme_mod('home_slide_1_title',$default_slider_title);
	$home_slide_1_lbl     	= get_theme_mod('home_slide_1_lbl','Shop Now');
	$home_slide_1_url     	= get_theme_mod('home_slide_1_url','#');
	
	$home_slide_2_img       = get_theme_mod('home_slide_2_img',$image_dirpath.'slider-img.png');
	$home_slide_2_title     = get_theme_mod('home_slide_2_title',$default_slider_title);
	$home_slide_2_lbl     	= get_theme_mod('home_slide_2_lbl','Shop Now');
	$home_slide_2_url     	= get_theme_mod('home_slide_2_url','#');
	
	$home_slide_3_img       = get_theme_mod('home_slide_3_img',$image_dirpath.'slider-img.png');
	$home_slide_3_title     = get_theme_mod('home_slide_3_title',$default_slider_title);
	$home_slide_3_lbl     	= get_theme_mod('home_slide_3_lbl','Shop Now');
	$home_slide_3_url     	= get_theme_mod('home_slide_3_url','#');
	
	// New arrival section meta fields
	$new_arrival_display    = get_theme_mod('new_arrival_display','on');
	$home_new_arrival_title	= get_theme_mod('home_new_arrival_title','New Arrivals');
	
	// subscribe section meta fields
	$subscribe_display		= get_theme_mod('subscribe_display','on');
	$home_subscribe_bimg    = get_theme_mod('home_subscribe_bimg',$image_dirpath.'subscribe-img.png');
	
	// Best seller section meta fields
	$best_seller_display    = get_theme_mod('best_seller_display','on');
	$home_best_seller_title = get_theme_mod('home_best_seller_title','Best Sellers');
	
	wp_reset_query();
?> 

<!-- .slider-wrapper starts -->
<?php if(!empty($hslider_display) && $hslider_display === 'on'){ ?>
	<div class="slider-wrapper">
		<div class="home-slider flexslider">
			<ul class="slides">
				<!-- First slide -->
				<?php if(!empty($home_slide_1_img)){ 
					$home_slide_1_id  = dreamshop_attachment_id($home_slide_1_img);
					$home_slide_1 = wp_get_attachment_image_src( $home_slide_1_id, 'slide_thumb' );
					?>
					<li>
						<?php if(!empty($home_slide_1[0])){ ?>
							<img src="<?php echo $home_slide_1[0]; ?>" alt="slide-1" />
						<?php } else { ?>
							<img src="<?php echo $home_slide_1_img; ?>" alt="slide-1" />
						<?php } ?>
						
						<div class="sdetail-wrap text-center">
							<?php if(!empty($home_slide_1_title)){ ?>
								<div class="slide-lines">
									<h1 class="slide-heading"><?php echo $home_slide_1_title; ?></h1>
								</div>
							<?php } ?>
							<?php if(!empty($home_slide_1_url) && !empty($home_slide_1_lbl)){ ?>
								<a href="<?php echo $home_slide_1_url; ?>" class="slide-btn btn btn-white"><?php echo $home_slide_1_lbl; ?></a>
							<?php } ?>
						</div>
					</li>
				<?php } ?>
				
				<!-- Second slide -->
				<?php if(!empty($home_slide_2_img)){ 
					$home_slide_2_id  = dreamshop_attachment_id($home_slide_2_img);
					$home_slide_2 = wp_get_attachment_image_src( $home_slide_2_id, 'slide_thumb' );
					?>
					<li>
						<?php if(!empty($home_slide_2[0])){ ?>
							<img src="<?php echo $home_slide_2[0]; ?>" alt="slide-2" />
						<?php } else { ?>
							<img src="<?php echo $home_slide_2_img; ?>" alt="slide-2" />
						<?php } ?>
						
						<div class="sdetail-wrap text-center">
							<?php if(!empty($home_slide_2_title)){ ?>
								<div class="slide-lines">
									<h1 class="slide-heading"><?php echo $home_slide_2_title ; ?></h1>
								</div>
							<?php } ?>
							<?php if(!empty($home_slide_2_url) && !empty($home_slide_2_lbl)){ ?>
								<a href="<?php echo $home_slide_2_url; ?>" class="slide-btn btn btn-white"><?php echo $home_slide_2_lbl; ?></a>
							<?php } ?>
						</div>
					</li>
				<?php } ?>
				
				<!-- Third slide -->
				<?php if(!empty($home_slide_3_img)){ 
					$home_slide_3_id  = dreamshop_attachment_id($home_slide_3_img);
					$home_slide_3 	  = wp_get_attachment_image_src( $home_slide_3_id, 'slide_thumb' );
					?>
					<li>
						<?php if(!empty($home_slide_3[0])){ ?>
							<img src="<?php echo $home_slide_3[0]; ?>" alt="slide-3" />
						<?php } else { ?>
							<img src="<?php echo $home_slide_3_img; ?>" alt="slide-3" />
						<?php } ?>
						
						<div class="sdetail-wrap text-center">
							<?php if(!empty($home_slide_3_title)){ ?>
								<div class="slide-lines">
									<h1 class="slide-heading"><?php echo $home_slide_3_title ; ?></h1>
								</div>
							<?php } ?>
							<?php if(!empty($home_slide_3_url) && !empty($home_slide_3_lbl)){ ?>
								<a href="<?php echo $home_slide_3_url; ?>" class="slide-btn btn btn-white"><?php echo $home_slide_3_lbl; ?></a>
							<?php } ?>
						</div>
					</li>
				<?php } ?>
			</ul>
		</div>	
		<script>
			jQuery(window).load(function() {
				jQuery('.home-slider').flexslider({
					slideshow      :  true,   //Boolean: Animate slider automatically
					animation      : 'fade',  //String: Select your animation type, "fade" or "slide"
					slideshowSpeed :  8000,   //Integer: Set the speed of the slideshow cycling, in milliseconds
					animationSpeed :  2000 ,  //Integer: Set the speed of animations, in milliseconds
					directionNav   :  false,  //Boolean: Create navigation for previous/next navigation? (true/false)
					randomize      :  true,   //Boolean: Randomize slide order,
					controlNav     :  true,   //Boolean: Create navigation for paging control of each slide
					smoothHeight   :  true,   //{NEW} Boolean: Allow height of the slider to animate smoothly in horizontal mode
					start          : function(){ jQuery('.home-slider .flex-direction-nav').addClass('container').css('opacity','1');} 
				});
			});
		</script>
	</div>
<?php } ?>
<!-- .slider-wrapper ends -->

<!-- new arrivals section start -->
<?php if(!empty($new_arrival_display) && $new_arrival_display === 'on'){ ?>
	<div class="arrival-wrap section-wrap">
		<div class="container">
			<div class="row featured-wrapper clearfix woocommerce">
				<!-- arrival title -->
				<?php if(!empty($home_new_arrival_title )){ ?><div class="new-arrtitle pro-title"><?php echo $home_new_arrival_title ; ?></div><?php } ?>
				<?php
				// fetch new arrivals products
				$args = array(
					'post_type' => 'product',
					'posts_per_page' => 4,
					'orderby' =>'date',
					'order' => 'DESC'
				); 
				$loop = new WP_Query( $args );
				while ( $loop->have_posts() ) : $loop->the_post(); global $product; 
					$stock_status  = get_post_meta( get_the_ID(), '_stock_status', true); 
					global $woocommerce;
					$currency = get_woocommerce_currency_symbol();
					$price    = get_post_meta( get_the_ID(), '_regular_price', true);
					$sale     = get_post_meta( get_the_ID(), '_sale_price', true);			
					?>
					<div <?php post_class('product-wrap col-md-3 col-sm-6 col-xs-12'); ?>>
						<div class="product-item">
							<!-- product image -->
							<div class="pro-img">
								<div class="product-icons">
									<div class="link-wrap">
										<?php if (class_exists('YITH_Woocompare_Frontend')) {
											$mgk_yith_cmp = new YITH_Woocompare_Frontend;
											$mgk_yith_cmp->add_product_url($product->get_id());
											?>
											<a class="pro-compare compare add_to_compare_small link-compare" data-product_id="<?php echo esc_html($product->get_id()); ?>"
											href="<?php echo esc_url($mgk_yith_cmp->add_product_url($product->get_id())); ?>" title="<?php esc_attr_e('Add to Compare','dreamshop'); ?>"><?php esc_attr_e('Add to Compare','dreamshop'); ?></a>
										<?php } ?>  
																																 
										<?php if (isset($yith_wcwl) && is_object($yith_wcwl)) {
											$classes = get_option('yith_wcwl_use_button') == 'yes' ? 'class="add_to_wishlist link-wishlist"' : 'class="add_to_wishlist link-wishlist"';
											?>
											<a href="<?php echo esc_url(add_query_arg('add_to_wishlist', $product->get_id())) ?>"
											data-product-id="<?php echo esc_html($product->get_id()); ?>"
											data-product-type="<?php echo esc_html($product->get_type()); ?>" <?php echo htmlspecialchars_decode($classes); ?>
											title="<?php esc_attr_e('Add to WishList','dreamshop'); ?>"><i class="fa fa-heart"></i></a>														
										<?php } ?>																																							
									</div>
								</div>
								
								<!-- product in sale -->
								<?php if(!empty($sale)){?>
									<div class="pro-sale">
										<?php _e('SALE','dreamshop'); ?>
									</div>
								<?php } ?>
													
								<!-- out of stock status -->
								<?php if( $stock_status == 'outofstock' ) {?>
									<div class="stock-status">
										<?php _e('OUT OF STOCK','dreamshop'); ?>
									</div>
								<?php } ?>
								
								<!--Add To Cart-->
								
								<a class="button product_type_simple alt cart_link add_to_cart_button add-to-cart ajax_add_to_cart" href="<?php echo esc_url($product->add_to_cart_url()); ?>" data-quantity="1" data-product_id="<?php echo  $loop->post->ID; ?>" data-product_sku="<?php $product->get_sku(); ?>" >
									<?php _e('Add to cart','dreamshop');?>
								</a>
								
								<?php if ( has_post_thumbnail( $loop->post->ID ) ) { ?>
									<a href="<?php echo get_permalink($loop->post->ID); ?>"><?php echo get_the_post_thumbnail( $loop->post->ID,'hproduct_thumb'); ?></a>
								<?php } else { ?>
									<a href="<?php echo get_permalink($loop->post->ID); ?>"><?php echo '<img src="' . esc_url( wc_placeholder_img_src() ) . '" alt="Placeholder" width="277" height="347" />'; ?></a>
								<?php } ?>
							</div>
							
							<h3 class="product-title"><?php echo '<a href="'.get_permalink($loop->post->ID).'">'.get_the_title($loop->post->ID).'</a>'; ?></h3>
							<?php if($sale) : ?>
							<span class="product-price"><del><?php echo $currency; echo $price; ?></del> <?php echo $currency; echo $sale; ?></span>    
							<?php elseif($price) : ?>
							<span class="product-price"><?php echo $currency; echo $price; ?></span>    
							<?php endif; ?>	
						</div>
					</div>
					<?php endwhile; ?>
				<?php wp_reset_query(); ?>
			</div>
		</div>
	</div>
<?php } ?>
<!-- new arrivals section end -->

<!-- subscribe section start -->
<?php if(!empty($subscribe_display) && $subscribe_display === 'on'){ ?>
	<?php if ( is_active_sidebar( 'subscribe-sidebar' ) ) : ?>
		<div id="subscribe-sec" style="background-image:url('<?php echo $home_subscribe_bimg; ?>')">
			<div class="container">
				<div class="row">
					<?php dynamic_sidebar( 'subscribe-sidebar' ); ?>
				</div>
			</div>
		</div><!-- #sidebar -->
	<?php endif; ?>
<?php } ?>
<!-- subscribe section end -->

<!-- best sellers section start -->
<?php if(!empty($best_seller_display) && $best_seller_display === 'on'){ ?>
	<div class="bestsell-wrap section-wrap">
		<div class="container">
			<div class="row featured-wrapper clearfix woocommerce">
				<!-- best-seller title -->
				<?php if(!empty($home_best_seller_title )){ ?><div class="best-seller pro-title"><?php echo $home_best_seller_title ; ?></div><?php } ?>
				<?php
				// fetch new arrivals products
				$args = array(
					'post_type' => 'product',
					'posts_per_page' => 4,
					'meta_key' => 'total_sales',
					'orderby' => 'meta_value_num',
				); 
				$loop = new WP_Query( $args );
				while ( $loop->have_posts() ) : $loop->the_post(); global $product; 
					$stock_status  = get_post_meta( get_the_ID(), '_stock_status', true); 
					global $woocommerce;
					$currency = get_woocommerce_currency_symbol();
					$price    = get_post_meta( get_the_ID(), '_regular_price', true);
					$sale     = get_post_meta( get_the_ID(), '_sale_price', true);
					?>
					<div <?php post_class('product-wrap col-md-3 col-sm-6 col-xs-12 animated-from-left'); ?>>
						<div class="product-item">
							<!-- product image -->
							<div class="pro-img">
								<div class="product-icons">
									<div class="link-wrap">
										<?php if (class_exists('YITH_Woocompare_Frontend')) {
											$mgk_yith_cmp = new YITH_Woocompare_Frontend;
											$mgk_yith_cmp->add_product_url($product->get_id());
											?>
											<a class="pro-compare compare add_to_compare_small link-compare" data-product_id="<?php echo esc_html($product->get_id()); ?>"
											href="<?php echo esc_url($mgk_yith_cmp->add_product_url($product->get_id())); ?>" title="<?php esc_attr_e('Add to Compare','dreamshop'); ?>"><?php esc_attr_e('Add to Compare','dreamshop'); ?></a>
										<?php } ?>  
																																 
										<?php if (isset($yith_wcwl) && is_object($yith_wcwl)) {
											$classes = get_option('yith_wcwl_use_button') == 'yes' ? 'class="add_to_wishlist link-wishlist"' : 'class="add_to_wishlist link-wishlist"';
											?>
											<a href="<?php echo esc_url(add_query_arg('add_to_wishlist', $product->get_id())) ?>"
											data-product-id="<?php echo esc_html($product->get_id()); ?>"
											data-product-type="<?php echo esc_html($product->get_type()); ?>" <?php echo htmlspecialchars_decode($classes); ?>
											title="<?php esc_attr_e('Add to WishList','dreamshop'); ?>"><i class="fa fa-heart"></i></a>														
										<?php } ?>
																																												
									</div>
								</div>
								<!-- product in sale -->
								<?php if(!empty($sale)){?>
									<div class="pro-sale">
										<?php _e('SALE','dreamshop'); ?>
									</div>
								<?php } ?>
								
								<!-- out of stock status -->
								<?php if( $stock_status == 'outofstock' ) {?>
									<div class="stock-status">
										<?php _e('OUT OF STOCK','dreamshop'); ?>
									</div>
								<?php } ?>
								
								<!--Add To Cart-->
								<a class="button product_type_simple alt cart_link add_to_cart_button add-to-cart ajax_add_to_cart" href="<?php echo esc_url($product->add_to_cart_url()); ?>" data-quantity="1" data-product_id="<?php echo  $loop->post->ID; ?>" data-product_sku="<?php $product->get_sku(); ?>" >
									<?php _e('Add to cart','dreamshop');?>
								</a>
								
								<?php if ( has_post_thumbnail( $loop->post->ID ) ) { ?>
									<a href="<?php echo get_permalink($loop->post->ID); ?>"><?php echo get_the_post_thumbnail( $loop->post->ID,'hproduct_thumb'); ?></a>
								<?php } else { ?>
									<a href="<?php echo get_permalink($loop->post->ID); ?>"><?php echo '<img src="' . esc_url( wc_placeholder_img_src() ) . '" alt="Placeholder" width="277" height="328" />'; ?></a>
								<?php } ?>
							</div>
							
							<h3 class="product-title"><?php echo '<a href="'.get_permalink($loop->post->ID).'">'.get_the_title($loop->post->ID).'</a>'; ?></h3>
							<?php if($sale) : ?>
							<span class="product-price"><del><?php echo $currency; echo $price; ?></del> <?php echo $currency; echo $sale; ?></span>    
							<?php elseif($price) : ?>
							<span class="product-price"><?php echo $currency; echo $price; ?></span>    
							<?php endif; ?>	
						</div>
					</div>
					<?php endwhile; ?>
				<?php wp_reset_query(); ?>
			</div>
		</div>
	</div>
<?php } ?>
<!-- best sellers section end -->
<?php get_footer(); ?>