<?php
#-----------------------------------------------------------------#
#--------- DREAMSHOP : CORE FUNCTIONS AND DEFINITIONS ------------#
#-----------------------------------------------------------------#

#-----------------------------------------------------------------#
# LOAD TEXT DOMAIN
#-----------------------------------------------------------------#
add_action('after_setup_theme', 'dreamshop_lang_setup');
function dreamshop_lang_setup(){
	load_theme_textdomain('dreamshop', get_template_directory() . '/languages');
}

#-----------------------------------------------------------------#
# EXCERPT RELATED 
#-----------------------------------------------------------------#
//EXCERPT LENGTH
function dreamshop_excerpt_length( $length ) {
	global $options;
	$excerpt_length = (!empty($options['blog_excerpt_length'])) ? intval($options['blog_excerpt_length']) : 30; 
    return $excerpt_length;
}
add_filter( 'excerpt_length', 'dreamshop_excerpt_length', 999 );


//CUSTOM EXCERPT ENDING
function dreamshop_excerpt_more( $more ) {
	return '...';
}
add_filter('excerpt_more', 'dreamshop_excerpt_more');

#-----------------------------------------------------------------#
# FUNTION TO FETCH CUSTOM FIELD IMAGE ID FROM THE FILE URL
#-----------------------------------------------------------------#
function dreamshop_attachment_id($image_url) {
	global $wpdb;
	$attachment = $wpdb->get_col($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE guid='%s';", $image_url )); 
    return $attachment[0]; 
}

#-----------------------------------------------------------------#
# REMOVE CROSS-SELLS & UPSELL PRODUCTS : WOOCOMMERCE
#-----------------------------------------------------------------#
remove_action( 'woocommerce_cart_collaterals', 'woocommerce_cross_sell_display' );
remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_upsell_display', 15 );

#-----------------------------------------------------------------#
# FUNTION TO ADD CSS CLASS TO BODY
#-----------------------------------------------------------------#
function dreamshop_add_classes( $classes ) {
	if ( 'page' == get_option( 'show_on_front' ) && ( '' != get_option( 'page_for_posts' ) ) && is_front_page() ) {
		$classes[] = 'front-page';
	}
	return $classes;
}
add_filter( 'body_class','dreamshop_add_classes' );

#-----------------------------------------------------------------#
# TEXT WIDGET - ALLOW SHORTCODES IN TEXT WIDGET
#-----------------------------------------------------------------#
add_filter('widget_text', 'do_shortcode');

#-----------------------------------------------------------------#
# FILTER FOR DOCUMENT TITLE TAG SEPARATOR
#-----------------------------------------------------------------#
add_filter( 'document_title_separator', 'dreamshop_document_title_separator' );
function dreamshop_document_title_separator( $sep ){
    $sep = "|";
    return $sep;
}

#-----------------------------------------------------------------#
# DISPLAY AN OPTIONAL POST THUMBNAIL
#-----------------------------------------------------------------#
if ( ! function_exists( 'dreamshop_post_thumbnail' ) ) :

function dreamshop_post_thumbnail() {
	if ( post_password_required() || is_attachment() || ! has_post_thumbnail() ) {
		return;
	}
	if ( is_singular() ) :
	?>
	<div class="post-thumbnail">
		<?php the_post_thumbnail('full'); ?>
	</div>

	<?php else : ?>
		<a class="post-thumbnail" href="<?php the_permalink(); ?>"><?php the_post_thumbnail('full'); ?></a>
	<?php endif; // End is_singular()
}
endif;

#-----------------------------------------------------------------#
# ADD 'DATA-FANCYBOX' ATTRIBUTE FOR LIGHTBOX TO WP GALLERY
#-----------------------------------------------------------------#
add_filter('wp_get_attachment_link', 'dreamshop_add_rel_attribute');
function dreamshop_add_rel_attribute($link) {
	global $post;
	return str_replace('<a href', '<a data-fancybox="dreamshop-img" href', $link);
}

#-----------------------------------------------------------------#
# LIMIT WORDS COUNTS
#-----------------------------------------------------------------#
function dreamshop_limit_words($string, $word_limit) {
	$words = explode(' ', $string);
	return implode(' ', array_slice($words, 0, $word_limit));
}

#-----------------------------------------------------------------#	
# FUNCTION FOR COMMENT SECTION
#-----------------------------------------------------------------#
function dreamshop_comment($comment, $args, $depth) 
{
   $GLOBALS['comment'] = $comment; ?>
    <li <?php comment_class(); ?> id="li-comment-<?php comment_ID() ?>">
		<div id="comment-<?php comment_ID(); ?>">
			<div class="comment-author vcard clearfix">
					<div class="comment-img col-md-1 col-sm-2 col-xs-2">
						<?php echo get_avatar( $comment, 72 ); ?>
					</div>
					<div class="comment-detail col-md-11 col-sm-10 col-xs-10">
						<?php printf(__('<cite class="fn">%s</cite>','dreamshop'), get_comment_author_link()) ?> 
						<span class="comment-date">
							<a href="<?php echo htmlspecialchars( get_comment_link( $comment->comment_ID ) ) ?>">
								<?php printf(__('%1$s At %2$s','dreamshop'), get_comment_date("M d, Y"),  get_comment_time()) ?>
							</a>
						</span>
							<?php comment_text() ?>
						<div class="reply">
							<span>
								<?php comment_reply_link(array_merge( $args, array('depth' => $depth, 'max_depth' => $args['max_depth']))) ?>
							</span>
							<span class="edit">
								<?php edit_comment_link(__('(Edit)','dreamshop'),'  ','') ?>
							</span>
						</div>
					</div>
				<div class="comment-meta commentmetadata"></div>
			</div>
		<div>
	</li>
<?php 
} 

#-----------------------------------------------------------------#
# FUNCTION FOR MOVE COMMENT FIELD TO BOTTOM
#-----------------------------------------------------------------#
function deramhousing_move_comment_field_to_bottom( $fields ) 
{
	$comment_field = $fields['comment'];
	unset( $fields['comment'] );
	$fields['comment'] = $comment_field;
	return $fields;
}
add_filter( 'comment_form_fields', 'deramhousing_move_comment_field_to_bottom' );

#-----------------------------------------------------------------#
# PLACEHOLDER FOR COMMENT FORM
#-----------------------------------------------------------------#
add_filter( 'comment_form_default_fields', 'dreamshop_comment_placeholders' );

/**
 * Change default fields, add placeholder and change type attributes.
 *
 * @param  array $fields
 * @return array
 */
function dreamshop_comment_placeholders( $fields )
{
    $fields['author'] = str_replace(
        '<input',
        '<input placeholder="'
        /* Replace 'dreamshop' with your theme’s text domain.
         * I use _x() here to make your translators life easier. :)
         * See http://codex.wordpress.org/Function_Reference/_x
         */
            . _x(
                'Name*',
                'comment form placeholder',
                'dreamshop'
                )
            . '"',
        $fields['author']
    );
    $fields['email'] = str_replace(
        '<input id="email" name="email" type="text"',
        /* We use a proper type attribute to make use of the browser’s
         * validation, and to get the matching keyboard on smartphones.
         */
        '<input type="email" placeholder="E-mail*"  id="email" name="email"',
        $fields['email']
    );
    $fields['url'] = str_replace(
        '<input id="url" name="url" type="text"',
        // Again: a better 'type' attribute value.
        '<input placeholder="Website" id="url" name="url" type="url"',
        $fields['url']
    );
    return $fields;
}

#-----------------------------------------------------------------#
# FUNCTION FOR ADJUST CONTENT
#-----------------------------------------------------------------#
if ( ! isset( $content_width ) )
$content_width = 1170;
function dreamshop_adjust_content_width() {
    global $content_width;
 
    if ( is_page_template( 'full-width.php' ) )
    $content_width = 1170;
}
add_action( 'template_redirect', 'dreamshop_adjust_content_width' );

#-----------------------------------------------------------------#
# FUNCTION TO UPDATE CART WHEN PRODUCTS ARE ADDED TO CART VIA AJAX
#-----------------------------------------------------------------#
add_filter( 'woocommerce_add_to_cart_fragments', 'dreamshop_add_to_cart_fragment' );
function dreamshop_add_to_cart_fragment( $fragments ) 
{
    ob_start(); 
	?>
	<a class="cart-contents" href="<?php echo WC()->cart->get_cart_url(); ?>" title="<?php _e( 'View your shopping cart','dreamshop' ); ?>"><?php _e('CART / ','dreamshop');?><?php echo WC()->cart->get_cart_total(); ?>&nbsp;<span class="nav-cart-icon"><?php echo sprintf ( _n( '%d', '%d', WC()->cart->get_cart_contents_count(),'dreamshop'), WC()->cart->get_cart_contents_count() ); ?></span></a>
    <?php 
	$fragments['a.cart-contents'] = ob_get_clean();
    return $fragments;
}

add_filter( 'loop_shop_per_page', create_function( '$cols', 'return 12;' ), 20 );

#-----------------------------------------------------------------#
# FUNCTION FOR ARCHIVE PRODUCT PAGINATION
#-----------------------------------------------------------------#
function dreamshop_archive_product_pagination($query){
	if ($query->is_archive && ! is_front_page()) {
		$query->set('posts_per_page', 8);
	}
	return $query;
}	

add_filter('pre_get_posts', 'dreamshop_archive_product_pagination');

#-----------------------------------------------------------------#
# FUNCTION TO RETURN NEW PLACEHOLDER IMAGE URL
#-----------------------------------------------------------------#
add_filter( 'woocommerce_placeholder_img_src', 'dreamshop_custom_woocommerce_placeholder', 10 );
function dreamshop_custom_woocommerce_placeholder( $image_url ) {
	$image_url = get_stylesheet_directory_uri().'/assets/images/placeholder.png';
	return $image_url;
}

#-----------------------------------------------------------------#
# FUNCTION FOR BREADCRUMBS
#-----------------------------------------------------------------#
function dreamshop_breadcrumbs(){ ?>
	<div id="breadcrumb-sec">	
		<div class="row">
			<div class="container">
				<div class="page-title">
				<?php
				$text['home']     = 'Home'; // text for the 'Home' link
				$text['category'] = 'Category / %s'; // text for a category page
				$text['tax'] 	  = 'Archive / %s'; // text for a taxonomy page
				$text['search']   = 'Search Results / %s'; // text for a search results page
				$text['tag']      = 'Tag / %s'; // text for a tag page
				$text['author']   = 'Articles / %s'; // text for an author page
				$text['404']      = 'Error 404'; // text for the 404 page
				$showCurrent = 1; // 1 - show current post/page title in breadcrumbs, 0 - don't show
				$showOnHome  = 0; // 1 - show breadcrumbs on the homepage, 0 - don't show
				$delimiter   = ' / '; // delimiter between crumbs
				$before      = '<span class="current">'; // tag before the current crumb
				$after       = '</span>'; // tag after the current crumb
				/* === END OF OPTIONS === */
				global $post;
				$homeLink = get_home_url() . '/';
				$linkBefore = '<span typeof="v:Breadcrumb">';
				$linkAfter = '</span>';
				$linkAttr = ' rel="v:url" property="v:title"';
				$link = $linkBefore . '<a' . $linkAttr . ' href="%1$s">%2$s</a>' . $linkAfter;
				if (is_home() || is_front_page()) {
					if ($showOnHome == 1) echo '<div id="crumbs"><a href="' . $homeLink . '">' . $text['home'] . '</a></div>';
				} else {
					echo '<div id="crumbs" xmlns:v="http://rdf.data-vocabulary.org/#">' . sprintf($link, $homeLink, $text['home']) . $delimiter;
					
					if ( is_category() ) {
						$thisCat = get_category(get_query_var('cat'), false);
						if ($thisCat->parent != 0) {
							$cats = get_category_parents($thisCat->parent, TRUE, $delimiter);
							$cats = str_replace('<a', $linkBefore . '<a' . $linkAttr, $cats);
							$cats = str_replace('</a>', '</a>' . $linkAfter, $cats);
							echo $cats;
						}
						echo $before . sprintf($text['category'], single_cat_title('', false)) . $after;
					} elseif( is_tax() ){
						$thisCat = get_category(get_query_var('cat'), false);
						if ($thisCat->parent != 0) {
							$cats = get_category_parents($thisCat->parent, TRUE, $delimiter);
							$cats = str_replace('<a', $linkBefore . '<a' . $linkAttr, $cats);
							$cats = str_replace('</a>', '</a>' . $linkAfter, $cats);
							echo $cats;
						}
						echo $before . sprintf($text['tax'], single_cat_title('', false)) . $after;
					
					}elseif ( is_search() ) {
						echo $before . sprintf($text['search'], get_search_query()) . $after;
					} elseif ( is_day() ) {
						echo sprintf($link, get_year_link(get_the_time('Y')), get_the_time('Y')) . $delimiter;
						echo sprintf($link, get_month_link(get_the_time('Y'),get_the_time('m')), get_the_time('F')) . $delimiter;
						echo $before . get_the_time('d') . $after;
					} elseif ( is_month() ) {
						echo sprintf($link, get_year_link(get_the_time('Y')), get_the_time('Y')) . $delimiter;
						echo $before . get_the_time('F') . $after;
					} elseif ( is_year() ) {
						echo $before . get_the_time('Y') . $after;
					} elseif ( is_single() && !is_attachment() ) {
						if ( get_post_type() != 'post' ) {
							$post_type = get_post_type_object(get_post_type());
							$slug = $post_type->rewrite;
							printf($link, $homeLink . '/' . $slug['slug'] . '/', $post_type->labels->singular_name);
							if ($showCurrent == 1) echo $delimiter . $before . get_the_title() . $after;
						} else {
							$cat = get_the_category(); $cat = $cat[0];
							$cats = get_category_parents($cat, TRUE, $delimiter);
							if ($showCurrent == 0) $cats = preg_replace("#^(.+)$delimiter$#", "$1", $cats);
							$cats = str_replace('<a', $linkBefore . '<a' . $linkAttr, $cats);
							$cats = str_replace('</a>', '</a>' . $linkAfter, $cats);
							echo $cats;
							if ($showCurrent == 1) echo $before . get_the_title() . $after;
						}
					} elseif ( !is_single() && !is_page() && get_post_type() != 'post' && !is_404() ) {
						$post_type = get_post_type_object(get_post_type());
						echo $before . $post_type->labels->singular_name . $after;
					} elseif ( is_attachment() ) {
						$parent = get_post($post->post_parent);
						$cat = get_the_category($parent->ID); $cat = $cat[0];
						$cats = get_category_parents($cat, TRUE, $delimiter);
						$cats = str_replace('<a', $linkBefore . '<a' . $linkAttr, $cats);
						$cats = str_replace('</a>', '</a>' . $linkAfter, $cats);
						echo $cats;
						printf($link, get_permalink($parent), $parent->post_title);
						if ($showCurrent == 1) echo $delimiter . $before . get_the_title() . $after;
					} elseif ( is_page() && !$post->post_parent ) {
						if ($showCurrent == 1) echo $before . get_the_title() . $after;
					} elseif ( is_page() && $post->post_parent ) {
						$parent_id  = $post->post_parent;
						$breadcrumbs = array();
						while ($parent_id) {
							$page = get_page($parent_id);
							$breadcrumbs[] = sprintf($link, get_permalink($page->ID), get_the_title($page->ID));
							$parent_id  = $page->post_parent;
						}
						$breadcrumbs = array_reverse($breadcrumbs);
						for ($i = 0; $i < count($breadcrumbs); $i++) {
							echo $breadcrumbs[$i];
							if ($i != count($breadcrumbs)-1) echo $delimiter;
						}
						if ($showCurrent == 1) echo $delimiter . $before . get_the_title() . $after;
					} elseif ( is_tag() ) {
						echo $before . sprintf($text['tag'], single_tag_title('', false)) . $after;
					} elseif ( is_author() ) {
						global $author;
						$userdata = get_userdata($author);
						echo $before . sprintf($text['author'], $userdata->display_name) . $after;
					} elseif ( is_404() ) {
						echo $before . $text['404'] . $after;
					}
					if ( get_query_var('paged') ) {
						if ( is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author() ) echo ' (';
						echo __('Page','dreamshop') . ' ' . get_query_var('paged');
						if ( is_category() || is_day() || is_month() || is_year() || is_search() || is_tag() || is_author() ) echo ')';
					}
					echo '</div>';
				}
				?>
				</div>
			</div>
		</div>
	</div>
	<?php
} // end dreamshop_breadcrumbs()