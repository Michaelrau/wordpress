<?php 
/**
 * The template for displaying 404 pages (Not Found)
 *
 * @package WordPress
 * @subpackage Dreamshop
 */
get_header();
if (function_exists('dreamshop_breadcrumbs')) {
	dreamshop_breadcrumbs(); 
}
?>
<div id="container">
	<div class="container">
		<div class="row">
			<div id="content" class="col-md-9 col-sm-9 col-xs-12">
				<h1 class="entry-title"><?php _e('Error 404!', 'dreamshop'); ?></h1>
				<p><?php _e( 'It looks like nothing was found at this location. Maybe try a search?', 'dreamshop' ); ?></p>
				<?php get_search_form(); ?>
			</div><!-- #content -->
		</div><!-- .row -->
	</div><!-- .container -->
</div><!-- #container -->
<?php get_footer(); ?>