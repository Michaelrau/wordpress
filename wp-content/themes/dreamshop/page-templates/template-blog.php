<?php
/* 
Template Name: Blog Template
*/ 
get_header(); 
global $dreamshop_shortname, $wp_query; 
$pageid    = $wp_query->post->ID;
$page_data = get_post_meta($pageid);
?>


<?php if (function_exists('dreamshop_breadcrumbs')) {
	dreamshop_breadcrumbs(); 
}?>
<div id="container" class="blog-temp">
	<div class="container">
		<div class="row">
			<div id="content" class="col-md-9 col-sm-9 col-xs-12">
				<?php
					// Start the Loop.
					while ( have_posts() ) : the_post();

						get_the_content();
					endwhile;
				?>
				
				<?php
					// Fetch blog posts
					$paged      = ( get_query_var('paged') ) ? get_query_var('paged') : 1;
					$posts_args = array('post_type' => 'post','paged' => $paged );
					$wp_query   = new WP_Query($posts_args); 
				?>
			
				<div class="entry-listing">
					<?php
					// Start the Loop.
					if($wp_query->have_posts()) : 
					while ( $wp_query->have_posts() ) : $wp_query->the_post();
						get_template_part( 'template-parts/content', get_post_format() );
						endwhile; 

						// Previous/next page navigation.
						the_posts_pagination( array(
							'prev_text'          => __( '<i class="fa fa-angle-left" aria-hidden="true"></i>', 'dreamshop' ),
							'next_text'          => __( '<i class="fa fa-angle-right" aria-hidden="true"></i>', 'dreamshop' ),
							'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'dreamshop' ) . ' </span>',
						));
					wp_reset_postdata();	
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
<?php get_footer();?>	