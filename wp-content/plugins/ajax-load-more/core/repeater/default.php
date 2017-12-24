<div class="owl-item active">
	<div class="wcps-items skin flat">
		<div class="layer-media">
			<div class="wcps-items-thumb">
				<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
			</div>
		</div>
		<div class="layer-content">
			<div class="wcps-items-title">
				<a style="color:#626262;font-size:" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
			</div>
			<div class="wcps-items-price" style="color:#626262;font-size:">
				<span class="woocommerce-Price-amount amount"><?php echo get_post_meta( get_the_ID(), '_regular_price', true);?><span class="woocommerce-Price-currencySymbol">₫</span></span>
			</div>
			<div class="wcps-items-cart default">
				<p class="product woocommerce add_to_cart_inline " >					
					<a rel="nofollow" href="/wordpress/?add-to-cart=<?php echo get_the_ID() ?>" data-quantity="1" data-product_id="<?php echo get_the_ID() ?>" data-product_sku="" class="button product_type_simple add_to_cart_button ajax_add_to_cart">Thêm vào giỏ</a>
				</p>
			</div>			
		</div>
	</div>
</div>