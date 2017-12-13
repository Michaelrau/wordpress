<?php
/**
 * Cart Page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart.php.
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
 * @version 3.1.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

wc_print_notices();

do_action( 'woocommerce_before_cart' ); ?>

<form class="woocommerce-cart-form" action="<?php echo esc_url( wc_get_cart_url() ); ?>" method="post">
	<?php do_action( 'woocommerce_before_cart_table' ); ?>

	<table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents" cellspacing="0">
		<thead>
			<tr>
				<th class="product-thum"><?php _e( 'Product', 'dreamshop' ); ?></th>
				<th class="product-name"><?php _e( '', 'dreamshop' ); ?></th>
				<th class="product-price"><?php _e( 'Price', 'dreamshop' ); ?></th>
				<th class="product-quantity"><?php _e( 'Quantity', 'dreamshop' ); ?></th>
				<th class="product-subtotal"><?php _e( 'Total', 'dreamshop' ); ?></th>
				<th class="product-remove">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			<?php do_action( 'woocommerce_before_cart_contents' ); ?>

			<?php
			foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
				
				//print_r($cart_item);
				$_product   = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
				$product_id = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );
				
				if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
					$product_permalink = apply_filters( 'woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink( $cart_item ) : '', $cart_item, $cart_item_key );
					?>
					<tr class="woocommerce-cart-form__cart-item <?php echo esc_attr( apply_filters( 'woocommerce_cart_item_class', 'cart_item', $cart_item, $cart_item_key ) ); ?>">
						

						<td class="product-thumb" data-title="<?php esc_attr_e( 'Product', 'dreamshop' ); ?>">
						
							<span class="product-thumbnail">
								<?php
									$thumbnail = apply_filters( 'woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key );

									if ( ! $product_permalink ) {
										echo $thumbnail;
									} else {
										printf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $thumbnail );
									}
								?>
							</span>
							
						</td>
						
						<td class="product-name" data-title="<?php esc_attr_e( 'Product', 'dreamshop' ); ?>">
						
					
						<?php //echo $cart_item['attribute_pa_size']; ?>
							
							<?php
								if ( ! $product_permalink ) {
									
									$proname = $_product->get_title();
									$prosize = nl2br( $_product->get_attribute( 'size' ) );
									$procolor = nl2br( $_product->get_attribute( 'color' ) );
									
									echo apply_filters( 'woocommerce_cart_item_name', $proname, $cart_item, $cart_item_key ) . '&nbsp;';
									
									if(!empty($pvcolor[1])){ ?>
										<div class="cart-psize">
											<?php _e('Size:','dreamshop'); echo $prosize; ?>
										</div>
									<?php }
									
									if(!empty($pvcolor[0])){ ?>
										<div class="cart-pcolor">
											<?php _e('Color:','dreamshop'); echo $procolor; ?>
										</div>
									<?php }
									
								} else {
									
									$proname = $_product->get_title();
									$prosize = nl2br( $_product->get_attribute( 'size' ) );
									$procolor = nl2br( $_product->get_attribute( 'color' ) );
												
									echo apply_filters( 'woocommerce_cart_item_name', sprintf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $proname ), $cart_item, $cart_item_key );
									
									if(!empty($prosize)){ ?>
										<div class="cart-psize">
											<?php _e('Size:','dreamshop'); echo $prosize; ?>
										</div>
									<?php }
									
									if(!empty($procolor)){ ?>
										<div class="cart-pcolor">
											<?php _e('Color:','dreamshop'); echo $procolor; ?>
										</div>
									<?php }
									
									
								}

								// Meta data
								echo WC()->cart->get_item_data( $cart_item );

								// Backorder notification
								if ( $_product->backorders_require_notification() && $_product->is_on_backorder( $cart_item['quantity'] ) ) {
									echo '<p class="backorder_notification">' . esc_html__( 'Available on backorder', 'dreamshop' ) . '</p>';
								}
							?>
							
						</td>

						<td class="product-price" data-title="<?php esc_attr_e( 'Price', 'dreamshop' ); ?>">
							<?php
								echo apply_filters( 'woocommerce_cart_item_price', WC()->cart->get_product_price( $_product ), $cart_item, $cart_item_key );
							?>
						</td>

						<td class="product-quantity" data-title="<?php esc_attr_e( 'Quantity', 'dreamshop' ); ?>">
							<?php
								if ( $_product->is_sold_individually() ) {
									$product_quantity = sprintf( '1 <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key );
								} else {
									$product_quantity = woocommerce_quantity_input( array(
										'input_name'  => "cart[{$cart_item_key}][qty]",
										'input_value' => $cart_item['quantity'],
										'max_value'   => $_product->get_max_purchase_quantity(),
										'min_value'   => '0',
									), $_product, false );
								}

								echo apply_filters( 'woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item );
							?>
						</td>

						<td class="product-subtotal" data-title="<?php esc_attr_e( 'Total', 'dreamshop' ); ?>">
							<?php
								echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key );
							?>
						</td>
						
						<td class="product-remove">
							<?php
								echo apply_filters( 'woocommerce_cart_item_remove_link', sprintf(
									'<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s">&times;</a>',
									esc_url( WC()->cart->get_remove_url( $cart_item_key ) ),
									__( 'Remove this item', 'dreamshop' ),
									esc_attr( $product_id ),
									esc_attr( $_product->get_sku() )
								), $cart_item_key );
							?>
						</td>
					</tr>
					<?php
				}
			}
			?>

			<?php do_action( 'woocommerce_cart_contents' ); ?>

			<tr>
				<td colspan="6" class="actions">

					<?php if ( wc_coupons_enabled() ) { ?>
						<div class="coupon">
							<label for="coupon_code"><?php _e( 'Coupon:', 'dreamshop' ); ?></label> <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="<?php esc_attr_e( 'Coupon code', 'dreamshop' ); ?>" /> <input type="submit" class="button" name="apply_coupon" value="<?php esc_attr_e( 'Apply', 'dreamshop' ); ?>" />
							<?php do_action( 'woocommerce_cart_coupon' ); ?>
						</div>
					<?php } ?>

					<input type="submit" class="button" name="update_cart" value="<?php esc_attr_e( 'Update cart', 'dreamshop' ); ?>" />
				
						<?php do_action( 'woocommerce_proceed_to_checkout' ); ?>
				
					<?php do_action( 'woocommerce_cart_actions' ); ?>

					<?php wp_nonce_field( 'woocommerce-cart' ); ?>
				</td>
			</tr>

			<?php do_action( 'woocommerce_after_cart_contents' ); ?>
		</tbody>
	</table>
	<?php do_action( 'woocommerce_after_cart_table' ); ?>
</form>

<!-- cart totle item list start-->
<div id="cart-prod">
	<div class="clearfix">
		<!-- cart calculat shiping section start-->
		<div class="calculat-shipping col-md-8 col-sm-8 col-xs12">
			<!-- cart calculat shipping heading start-->
			<div class="cal-shiping-head">
				<?php _e( 'CALCULAT SHIPPING', 'dreamshop' ); ?>
			</div>
			<!-- cart calculat shipping heading end-->
		
			<!-- cart calculat shipping form start-->
			<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">	
				<!-- country start-->
				<p class="form-row form-row-wide" id="calc_shipping_country_field">
					<select name="calc_shipping_country" id="calc_shipping_country" class="country_to_state" rel="calc_shipping_state">
						<option value=""><?php _e( 'Select a country&hellip;', 'dreamshop' ); ?></option>
						<?php
							foreach( WC()->countries->get_shipping_countries() as $key => $value )
								echo '<option value="' . esc_attr( $key ) . '"' . selected( WC()->customer->get_shipping_country(), esc_attr( $key ), false ) . '>' . esc_html( $value ) . '</option>';
						?>
					</select>
				</p>
				<!-- country end-->
				
				<!-- state start-->
				<p class="form-row form-row-wide" id="calc_shipping_state_field">
					<?php
						$current_cc = WC()->customer->get_shipping_country();
						$current_r  = WC()->customer->get_shipping_state();
						$states     = WC()->countries->get_states( $current_cc );

						// Hidden Input
						if ( is_array( $states ) && empty( $states ) ) {

							?><input type="hidden" name="calc_shipping_state" id="calc_shipping_state" placeholder="<?php esc_attr_e( 'State / county', 'dreamshop' ); ?>" /><?php

						// Dropdown Input
						} elseif ( is_array( $states ) ) {

							?><span>
								<select name="calc_shipping_state" id="calc_shipping_state" placeholder="<?php esc_attr_e( 'State / county', 'dreamshop' ); ?>">
									<option value=""><?php _e( 'Select a state&hellip;', 'dreamshop' ); ?></option>
									<?php
										foreach ( $states as $ckey => $cvalue )
											echo '<option value="' . esc_attr( $ckey ) . '" ' . selected( $current_r, $ckey, false ) . '>' . esc_html( $cvalue ).'</option>';
									?>
								</select>
							</span><?php

						// Standard Input
						} else {
							?><input type="text" class="input-text" value="<?php echo esc_attr( $current_r ); ?>" placeholder="<?php esc_attr_e( 'State / county', 'dreamshop' ); ?>" name="calc_shipping_state" id="calc_shipping_state" /><?php
						}
					?>
				</p>
				<!-- state end-->
				
				<!-- city start-->
				<?php if ( apply_filters( 'woocommerce_shipping_calculator_enable_city', false ) ) : ?>
					<p class="form-row form-row-wide" id="calc_shipping_city_field">
						<input type="text" class="input-text" value="<?php echo esc_attr( WC()->customer->get_shipping_city() ); ?>" placeholder="<?php esc_attr_e( 'City', 'dreamshop' ); ?>" name="calc_shipping_city" id="calc_shipping_city" />
					</p>
				<?php endif; ?>
				<!-- city end-->
				
				<!-- postcode/zip start-->
				<?php if ( apply_filters( 'woocommerce_shipping_calculator_enable_postcode', true ) ) : ?>
					<p class="form-row form-row-wide" id="calc_shipping_postcode_field">
						<input type="text" class="input-text" value="<?php echo esc_attr( WC()->customer->get_shipping_postcode() ); ?>" placeholder="<?php esc_attr_e( 'Postcode / ZIP', 'dreamshop' ); ?>" name="calc_shipping_postcode" id="calc_shipping_postcode" />
					</p>
				<?php endif; ?>
				<p><button type="submit" name="calc_shipping" value="1" class="button"><?php _e( 'UPDATE TOTALS', 'dreamshop' ); ?></button></p>
				<!-- postcode/zip end-->
			</form>
			<!-- cart calculat shipping form end-->
		</div>
		<!-- cart calculat shiping section end-->
		
		<!-- cart shoping bag summry section start-->
		<div class="bag-summry col-md-4 col-sm-4 col-xs12">
			<div class="cart-collaterals">
				<?php do_action( 'woocommerce_cart_collaterals' ); ?>
			</div>
		</div>
		<!-- cart shoping bag summry section end-->
	</div>
</div>