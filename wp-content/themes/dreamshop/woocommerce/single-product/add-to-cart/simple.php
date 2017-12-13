<?php
/**
 * Simple product add to cart
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/add-to-cart/simple.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     3.0.0
 */
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

global $product;

if ( ! $product->is_purchasable() ) {
	return;
}

echo wc_get_stock_html( $product );

if ( $product->is_in_stock() ) : ?>

	<?php do_action( 'woocommerce_before_add_to_cart_form' ); ?>

	<form class="cart" method="post" enctype='multipart/form-data'>
		<?php
			/**
			 * @since 2.1.0.
			 */
			do_action( 'woocommerce_before_add_to_cart_button' );

			/**
			 * @since 3.0.0.
			 */
			do_action( 'woocommerce_before_add_to_cart_quantity' );
		
			woocommerce_quantity_input( array(
				
				'min_value'   => apply_filters( 'woocommerce_quantity_input_min', $product->get_min_purchase_quantity(), $product ),
				'max_value'   => apply_filters( 'woocommerce_quantity_input_max', $product->get_max_purchase_quantity(), $product ),
				'input_value' => isset( $_POST['quantity'] ) ? wc_stock_amount( $_POST['quantity'] ) : $product->get_min_purchase_quantity(),
				
			) );
			
			/**
			 * @since 3.0.0.
			 */
			do_action( 'woocommerce_after_add_to_cart_quantity' );
		?>
		
		<button type="submit" name="add-to-cart" value="<?php echo esc_attr( $product->get_id() ); ?>" class="single_add_to_cart_button button alt"><?php echo esc_html( $product->single_add_to_cart_text() ); ?></button>
		
		<!-- add to wishlist -->
		
		<div class="yith-wcwl-add-to-wishlist add-to-wishlist-<?php echo get_the_ID(); ?>">
			<div class="yith-wcwl-add-button hide" style="display: none;">
				<a class="add_to_wishlist" title="Add to wishlist" href="<?php echo get_site_url(); ?>?add_to_wishlist=<?php echo get_the_ID(); ?>" rel="nofollow" data-product-id="<?php echo get_the_ID(); ?>" data-product-type="simple"> <i class="fa fa-heart-o" aria-hidden="true"></i></a>
			</div>
			
			<div class="wish-pop-wrp">
				<div class="yith-wcwl-wishlistaddedbrowse show" style="">
					<span class="feedback">Product added!</span>
					<a href="http://localserver/dev/dp-development/dreamshop/wishlist/view/GW9WNCNF06AJ/" rel="nofollow"> Browse Wishlist </a>
				</div>
				<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
					<span class="feedback">The product is already in the wishlist!</span>
					<a href="http://localserver/dev/dp-development/dreamshop/wishlist/view/GW9WNCNF06AJ/" rel="nofollow"> Browse Wishlist </a>
				</div>
					<div style="clear:both"></div>
				<div class="yith-wcwl-wishlistaddresponse"></div>
			</div>
		</div>
			
		
		<?php
			/**
			 * @since 2.1.0.
			 */
			do_action( 'woocommerce_after_add_to_cart_button' );
		?>
	</form>

	<?php do_action( 'woocommerce_after_add_to_cart_form' ); ?>

<?php endif; ?>
