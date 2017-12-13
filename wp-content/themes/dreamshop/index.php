<?php 
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme and one of the
 * two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * For example, it puts together the home page when no home.php file exists.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 */
get_header(); 
if (function_exists('dreamshop_breadcrumbs')) {
	dreamshop_breadcrumbs(); 
}
?>
<div id="container">
	<div class="container">
		<div class="row">
			<div id="content" class="col-md-9 col-sm-9 col-xs-12 archive-wrap">
				<div class="entry-listing">
					<?php 
						if(have_posts()) : 
						while(have_posts()) : the_post();
						get_template_part( 'template-parts/content', get_post_format() );
						endwhile; 

						// Previous/next page navigation.
						the_posts_pagination( array(
							'prev_text'          => __( '<i class="fa fa-angle-left" aria-hidden="true"></i>', 'dreamshop' ),
							'next_text'          => __( '<i class="fa fa-angle-right" aria-hidden="true"></i>', 'dreamshop' ),
							'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'dreamshop' ) . ' </span>',
						));
					?> 
					<?php else :  ?>
					<?php get_template_part( 'template-parts/content', 'none' ); ?>
					<?php endif; ?>
				</div><!-- .entry-listing -->
			</div><!-- #content -->
		
			<?php get_sidebar( 'blog' ); ?>

		</div><!-- .row -->
	</div><!-- .container -->
</div><!-- #container -->
<?php get_footer(); ?>