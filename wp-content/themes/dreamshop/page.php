<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other 'pages' on your WordPress site will use a different template.
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
			
			<div id="content" class="col-md-12 col-sm-12 col-xs-12">
				<?php
					// Start the Loop.
					while ( have_posts() ) : the_post();

						// Include the page content template.
						get_template_part( 'template-parts/content', 'page' );

						// If comments are open or we have at least one comment, load up the comment template.
						if ( comments_open() || get_comments_number() ) {
							comments_template();
						}
					endwhile;
				?>
			</div><!-- #content -->		
		</div><!-- .row -->
	</div><!-- .container -->
</div><!-- #container -->
<?php get_footer(); ?>