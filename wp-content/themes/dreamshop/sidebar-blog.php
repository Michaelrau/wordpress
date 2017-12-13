<?php
/**
 * The Blog Sidebar
 *
 * @package WordPress
 * @subpackage Dreamshop
 */
if ( is_active_sidebar( 'blog-sidebar' ) ) : ?>
	<div id="sidebar" class="col-md-3 col-sm-3 col-xs-12 widget-area" role="complementary">
		<?php dynamic_sidebar( 'blog-sidebar' ); ?>
	</div><!-- #sidebar -->
<?php endif; ?>