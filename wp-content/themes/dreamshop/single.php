<?php 
/**
 * The template for displaying all single posts
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
			<div id="content" class="col-md-9 col-sm-9 col-xs-12">
				<?php 
					if(have_posts()) : 
					while(have_posts()) : the_post();
				?>
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<?php if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it. ?>
						<div class="post-thumbnail">
							<?php the_post_thumbnail( 'full' ); ?>
						</div>
					<?php } ?>
					
					<h1 class="entry-title"><?php the_title(); ?></h1>
					
					<?php if ( 'post' === get_post_type() ){ ?>
						<div class="entry-meta clearfix">
							<span class="date"><?php the_time( 'd M Y' ); ?></span>
							<?php if (has_category()) { ?><span class="category"><?php the_category(','); ?></span><?php } ?>
							<span class="author-name"><?php the_author_posts_link(); ?> </span>
							<span class="comments"><?php comments_popup_link(__('No Comments ','dreamshop'), __('1 Comment ','dreamshop'), __('% Comments ','dreamshop')) ; ?></span>
						</div>
					<?php } ?>
	

					<div class="entry-content clearfix">
						<?php the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'dreamshop' ) ); ?>
						<?php
							wp_link_pages( array(
								'before'      => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'dreamshop' ) . '</span>',
								'after'       => '</div>',
								'link_before' => '<span>',
								'link_after'  => '</span>',
								'pagelink'    => '<span class="screen-reader-text">' . __( 'Page', 'dreamshop' ) . ' </span>%',
								'separator'   => '<span class="screen-reader-text">, </span>',
							) );
						?> 
					</div>
				</article>
				
				<?php
					edit_post_link(
						sprintf(
							/* translators: %s: Name of current post */
							__( 'Edit<span class="screen-reader-text"> "%s"</span>', 'dreamshop' ),
							get_the_title()
						),
						'<span class="edit-link">',
						'</span>'
					);
				?>
				
				<div class="post-tag">
					<?php 						 
						$output = "";
						$terms = get_the_term_list(get_the_ID(), 'post_tag');
						  if ($terms) {
							$termText = '<label>' . __("Tags:", "'dreamshop'") . '</label>';
							$output .='<div class="post_tags">';
							$output .=$termText . ' ';
						  $output.= $terms;
							$output .= '</div>';
						}
						echo $output;
					?>					
				</div>

				<?php
					// If comments are open or we have at least one comment, load up the comment template.
					if ( comments_open() || get_comments_number() ) {
						comments_template();
					}						
				?> 
				<?php endwhile; else :  ?>
				<?php get_template_part( 'template-parts/content', 'none' ); ?>
				<?php endif; ?>				
			</div><!-- #content -->
			
			<?php get_sidebar( 'blog' ); ?>				
		</div><!-- .row -->
	</div><!-- .container -->
</div><!-- #container -->
<?php get_footer(); ?>