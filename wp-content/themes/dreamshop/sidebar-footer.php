<?php
/**
 * The Footer Sidebars
 *
 * @package WordPress
 * @subpackage Dreamshop
 */
if ( is_active_sidebar( 'footer-sidebar' ) ) : ?>
	<div class="footer-sidebar widget-area clearfix" role="complementary">
		<?php dynamic_sidebar( 'footer-sidebar' ); ?>
	</div><!-- #sidebar -->
<?php endif; ?>