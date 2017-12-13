<?php
/**
 * The template for displaying Archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each specific one. For example, Dreamshop already
 * has tag.php for Tag archives, category.php for Category archives, and
 * author.php for Author archives.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
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
			<div id="content" class="col-md-9 col-sm-9 col-xs-12 archive-wrap">
				<h1 class="archive-title">
					<?php
						if ( is_day() ) :
							printf( __( 'Daily Archives : %s', 'dreamshop' ), '<span>' . get_the_date() . '</span>' );
						elseif ( is_month() ) :
							printf( __( 'Monthly Archives : %s', 'dreamshop' ), '<span>' . get_the_date( _x( 'F Y', 'monthly archives date format', 'dreamshop' ) ) . '</span>' );
						elseif ( is_year() ) :
							printf( __( 'Yearly Archives : %s', 'dreamshop' ), '<span>' . get_the_date( _x( 'Y', 'yearly archives date format', 'dreamshop' ) ) . '</span>' );
						else :
							_e( 'Archives', 'dreamshop' );
						endif;
					?>
				</h1>
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
				</div>
			</div><!-- #content -->
			<?php get_sidebar( 'blog' ); ?>
		</div><!-- .row -->
	</div><!-- .container -->
</div><!-- #container -->
<?php get_footer(); ?>