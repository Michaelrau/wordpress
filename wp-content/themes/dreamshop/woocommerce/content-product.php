<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 3.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $product;

// Ensure visibility
if ( empty( $product ) || ! $product->is_visible() ) {
	return;
}
?>
<li <?php post_class(); ?>>
	<?php
	/**
	 * woocommerce_before_shop_loop_item hook.
	 *
	 * @hooked woocommerce_template_loop_product_link_open - 10
	 */
	 $sproid = get_the_id(); 
							
							$stock_status  = get_post_meta( get_the_ID(), '_stock_status', true); 
							global $woocommerce;
							$currency = get_woocommerce_currency_symbol();
							$price    = get_post_meta( get_the_ID(), '_regular_price', true);
							$sale     = get_post_meta( get_the_ID(), '_sale_price', true);
							?>
							<div <?php post_class('product-wrap'); ?>>
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
																																	 
												
													<?php $classes = get_option('yith_wcwl_use_button') == 'yes' ? 'class="add_to_wishlist link-wishlist"' : 'class="add_to_wishlist link-wishlist"';?>
													
													<a href="<?php echo esc_url(add_query_arg('add_to_wishlist', $product->get_id())) ?>"
													data-product-id="<?php echo esc_html($product->get_id()); ?>"
													data-product-type="<?php echo esc_html($product->get_type()); ?>" <?php echo htmlspecialchars_decode($classes); ?>
													title="<?php esc_attr_e('Add to WishList','dreamshop'); ?>"><i class="fa fa-heart"></i></a>														
												
																																														
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
										<div class="view-product quick-view">
											<a class="button hoverlink alt cart_link add_to_cart_button add-to-cart ajax_add_to_cart product_type_simple " href="<?php echo esc_url($product->add_to_cart_url()); ?>" data-quantity="1" data-product_id="<?php echo  $sproid; ?>" data-product_sku="<?php $product->get_sku(); ?>" >
												<?php _e('Add to cart','dreamshop');?>
											</a>
										</div>
										<?php if ( has_post_thumbnail( $sproid ) ) { ?>
											<a href="<?php echo get_permalink($sproid); ?>"><?php echo get_the_post_thumbnail( $sproid,'hproduct_thumb'); ?></a>
										<?php } else { ?>
											<a href="<?php echo get_permalink($product->get_id()); ?>"><?php echo '<img src="' . esc_url( wc_placeholder_img_src() ) . '" alt="Placeholder" width="277" height="347" />'; ?></a>
										<?php } ?>
									</div>		
									
									<h3 class="product-title"><?php echo '<a href="'.get_permalink($sproid).'">'.get_the_title($sproid).'</a>'; ?></h3>
									<?php if($sale) : ?>
									<span class="product-price"><del><?php echo $currency; echo $price; ?></del> <?php echo $currency; echo $sale; ?></span>    
									<?php elseif($price) : ?>
									<span class="product-price"><?php echo $currency; echo $price; ?></span>    
									<?php endif; ?>	
								</div>
							</div>
	
</li>
