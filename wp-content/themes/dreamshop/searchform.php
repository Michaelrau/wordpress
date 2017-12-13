<?php
/**
 * Template for displaying search forms in Dreamshop
 *
 * @package WordPress
 * @subpackage Dreamshop
 */
?>
<form method="get" id="searchform" action="<?php echo esc_url(home_url('/')); ?>">
	<div class="search-wrapper clearfix">
		<input type="text" value="" placeholder="<?php echo esc_attr_x( 'Search &hellip;', 'placeholder', 'dreamshop' ); ?>" name="s" id="searchbox" class="searchinput"/>
		<button class="pro-submit" type="submit">
			<i class="fa fa-search"></i>
		</button>
	</div>
</form>

