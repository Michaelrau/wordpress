<?php
/**
* The template for displaying the footer.
* Contains footer content and the closing of the
*/
$footer_copy_right = get_theme_mod('footer_copy_right','© 2017 Dreamshop WooCommerce Theme');
?>
				
<!-- #Footer Section Starts -->
<footer id="footer">
	<div class="container">
		<div class="row">
			<?php get_sidebar( 'footer' ); ?>	
		</div>
	</div>
	
	<!-- .footer site info starts here -->
	<div class="footer-siteinfo">
		<div class="container">
			<div class="row">
				<?php //if(isset($_foot_copyright) && $_foot_copyright !=""){ ?>
					<div class="col-md-6 col-sm-6 col-xs-12 site-copyright"><?php echo $footer_copy_right; ?></div>
				<?php //} ?>
				
				<div class="col-md-6 col-sm-6 col-xs-12 site-copyright text-right">
					<?php _e('Dreamshop by','dreamshop'); ?><a href="<?php echo esc_url( __('http://desirepress.com', 'dreamshop' ) ); ?>" target="_blank">&nbsp;<?php _e('DesirePress','dreamshop'); ?></a>
				</div>	
			</div>
		</div>
	</div>
	<!-- .footer site info ends here -->
</footer>
<!-- #Footer Section Ends -->

<!-- #Back to top arrow -->
<div id="back-to-top">
	<a href="#top">
	  <i class="fa fa-angle-up"></i>
	</a>
</div>
<?php wp_footer(); ?>
</body>
</html>