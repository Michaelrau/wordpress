<?php
/**
 * The default template for displaying content.
 * Used for both single and index/archive/search.
 */
?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<!-- Sticky / Featured Post -->
	<?php if ( is_sticky() && is_home() && ! is_paged() ) : ?><span class="sticky-post"><?php _e( 'Featured', 'dreamshop' ); ?></span><?php endif; ?>
	
	<?php 
		// Post thumbnail & title.
		dreamshop_post_thumbnail();
		the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' ); 
	?>

	<?php if ( 'post' === get_post_type() ){ ?>
		<div class="entry-meta clearfix">
			<span class="date"><?php the_time( 'd M Y' ); ?></span>
			<?php if (has_category()) { ?><span class="category"><?php the_category(','); ?></span><?php } ?>
			<span class="author-name"><?php the_author_posts_link(); ?> </span>
			<span class="comments"><?php comments_popup_link(__('No Comments ','dreamshop'), __('1 Comment ','dreamshop'), __('% Comments ','dreamshop')) ; ?></span>
		</div>
	<?php } ?>

	<div class="entry-excerpt clearfix">
		<?php the_excerpt(); ?>   
	</div>
	
	<div class="entry-more clearfix">
		<a class="btn" href="<?php the_permalink(); ?>"><?php _e('Read More','dreamshop');?></a>
	</div>
	
</article>