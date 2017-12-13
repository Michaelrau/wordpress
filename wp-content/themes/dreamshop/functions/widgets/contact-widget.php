<?php
/**
 * Class Dreamshop_contact_widget
 */
class Dreamshop_contact_widget extends WP_Widget {

	/**
	 * Initializing the widget
	 */
	public function __construct() {
		$widget_ops = array(
			'class'		  => 'dreamshop_contact_widget',
			'description' => __( 'A widget to display contact address in widget.', 'dreamshop' )
		);

		parent::__construct(
			'dreamshop_contact_widget', //base id
			__( 'Dreamshop : Contact Widget', 'dreamshop' ), //title
			$widget_ops
		);
	}

	/**
	 * Displaying the widget on the back-end
	 * @param  array $instance An instance of the widget
	 */
	public function form( $instance ) {
		$widget_defaults = array(
			'title'		  => 'Contact',
		);

		$instance = wp_parse_args( (array) $instance, $widget_defaults );
		?>
		
		<!-- Rendering the widget form in the admin -->
		<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title', 'dreamshop' ); ?></label>
			<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" class="widefat" value="<?php echo esc_attr( $instance['title'] ); ?>">
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'address' ); ?>"><?php _e( 'Address', 'dreamshop' ); ?></label>
			<textarea id="<?php echo $this->get_field_id( 'address' ); ?>" name="<?php echo $this->get_field_name( 'address' ); ?>" class="widefat" ><?php echo esc_attr( $instance['address'] ); ?></textarea>
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'phone_number' ); ?>"><?php _e( 'Contact Number', 'dreamshop' ); ?></label>
			<textarea id="<?php echo $this->get_field_id( 'phone_number' ); ?>" name="<?php echo $this->get_field_name( 'phone_number' ); ?>" class="widefat" ><?php echo esc_attr( $instance['phone_number'] ); ?></textarea>
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'email' ); ?>"><?php _e( 'Email', 'dreamshop' ); ?></label>
			<textarea id="<?php echo $this->get_field_id( 'email' ); ?>" name="<?php echo $this->get_field_name( 'email' ); ?>" class="widefat" ><?php echo esc_attr( $instance['email'] ); ?></textarea>
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'foot_twitter' ); ?>"><?php _e( 'Twitter Link', 'dreamshop' ); ?></label>
			<input type="text" id="<?php echo $this->get_field_id( 'foot_twiter' ); ?>" name="<?php echo $this->get_field_name( 'foot_twitter' ); ?>" class="widefat" value="<?php echo esc_attr( $instance['foot_twitter'] ); ?>">
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'foot_facebook' ); ?>"><?php _e( 'Facebook Link', 'dreamshop' ); ?></label>
			<input type="text" id="<?php echo $this->get_field_id( 'foot_facebook' ); ?>" name="<?php echo $this->get_field_name( 'foot_facebook' ); ?>" class="widefat" value="<?php echo esc_attr( $instance['foot_facebook'] ); ?>">
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'foot_gplus' ); ?>"><?php _e( 'Google Plus Link', 'dreamshop' ); ?></label>
			<input type="text" id="<?php echo $this->get_field_id( 'foot_gplus' ); ?>" name="<?php echo $this->get_field_name( 'foot_gplus' ); ?>" class="widefat" value="<?php echo esc_attr( $instance['foot_gplus'] ); ?>">
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'foot_linkdin' ); ?>"><?php _e( 'Linkedin Link', 'dreamshop' ); ?></label>
			<input type="text" id="<?php echo $this->get_field_id( 'foot_linkdin' ); ?>" name="<?php echo $this->get_field_name( 'foot_linkdin' ); ?>" class="widefat" value="<?php echo esc_attr( $instance['foot_linkdin'] ); ?>">
		</p>
		<p>
			<label for="<?php echo $this->get_field_id( 'foot_vimeo' ); ?>"><?php _e( 'Vimeo Link', 'dreamshop' ); ?></label>
			<input type="text" id="<?php echo $this->get_field_id( 'foot_vimeo' ); ?>" name="<?php echo $this->get_field_name( 'foot_vimeo' ); ?>" class="widefat" value="<?php echo esc_attr( $instance['foot_vimeo'] ); ?>">
		</p>
		
	<?php
	}

	/**
	 * Making the widget updateable
	 * @param  array $new_instance New instance of the widget
	 * @param  array $old_instance Old instance of the widget
	 * @return array An updated instance of the widget
	 */
	public function update( $new_instance, $old_instance ) {
		$instance = $old_instance;
		$instance['title']        	   = $new_instance['title'];
		$instance['address']      	   = $new_instance['address'];
		$instance['phone_number'] 	   = $new_instance['phone_number'];
		$instance['email']        	   = $new_instance['email'];
		$instance['foot_twitter']      = $new_instance['foot_twitter'];
		$instance['foot_facebook']     = $new_instance['foot_facebook'];
		$instance['foot_gplus']        = $new_instance['foot_gplus'];
		$instance['foot_linkdin']      = $new_instance['foot_linkdin'];
		$instance['foot_vimeo']        = $new_instance['foot_vimeo'];
		return $instance; 
	}

	/**
	 * Displaying the widget on the front-end
	 * @param  array $args     Widget options
	 * @param  array $instance An instance of the widget
	 */
	public function widget( $args, $instance ) 
	{
		extract( $args );
		$title        	= apply_filters( 'widget_title', $instance['title'] );
		$address      	= !empty($instance['address']) ? $instance['address'] : '' ;
		$phone_number 	= !empty($instance['phone_number']) ? $instance['phone_number'] : '' ;
		$email          = !empty($instance['email']) ? $instance['email'] : '' ;
		$foot_twitter   = !empty($instance['foot_twitter']) ? $instance['foot_twitter'] : '' ;						
		$foot_facebook  = !empty($instance['foot_facebook']) ? $instance['foot_facebook'] : '' ;						
		$foot_gplus     = !empty($instance['foot_gplus']) ? $instance['foot_gplus'] : '' ;						
		$foot_linkdin   = !empty($instance['foot_linkdin']) ? $instance['foot_linkdin'] : '' ;						
		$foot_vimeo     = !empty($instance['foot_vimeo']) ? $instance['foot_vimeo'] : '' ;						
						
		//Preparing to show the events
		echo $before_widget;
		
		if ( $title ) {
			echo $before_title . $title . $after_title;
		}
		?>
		<div class="footer-contact">
			<?php if(!empty($address)){ ?>
				<div class='foot-address'>
					<span class="foot-addlbl">
						<?php _e('Address:','dreamshop');?> 
					</span>
					<?php echo $address;?>
				</div>
			<?php } ?>
			
			<?php if(!empty($phone_number)){ ?>
				<div class='foot-phone'>
					<span class="foot-phnlbl">
						<?php _e('Phone:','dreamshop');?> 
					</span>
					
					<a href="tel:<?php echo $phone_number;?>"><?php echo $phone_number;?></a>				
				</div>
			<?php } ?>
			
			<?php if(!empty($email)){ ?>
				<div class='foot-email'>
					<span class="foot-phnlbl">
						<?php _e('Email:','dreamshop');?> 
					</span>
					<a href="mailto:<?php echo $email;?>"><?php echo $email;?></a>	
				</div>
			<?php } ?>
		</div>
		
		<div class="foot-ficon">
			<?php if(isset($foot_twitter) && $foot_twitter !=""){ ?><a class="icon-item" target="_blank" href="<?php echo esc_url($foot_twitter); ?>"><i class="fa fa-twitter"></i></a><?php } ?>
			<?php if(isset($foot_facebook) && $foot_facebook !=""){ ?><a class="icon-item" target="_blank" href="<?php echo esc_url($foot_facebook); ?>"><i class="fa fa-facebook"></i></a><?php } ?>
			<?php if(isset($foot_gplus) && $foot_gplus !=""){ ?><a class="icon-item" target="_blank" href="<?php echo esc_url($foot_gplus); ?>"><i class="fa fa-google-plus"></i></a><?php } ?>
			<?php if(isset($foot_linkdin) && $foot_linkdin !=""){ ?><a class="icon-item" target="_blank" href="<?php echo esc_url($foot_linkdin); ?>"><i class="fa fa-linkedin"></i></a><?php } ?>
			<?php if(isset($foot_vimeo) && $foot_vimeo !=""){ ?><a class="icon-item" target="_blank" href="<?php echo esc_url($foot_vimeo); ?>"><i class="fa fa-vimeo"></i></a><?php } ?>
		</div>
					
		<?php
		echo $after_widget;
	}
}

function Dreamshop_contact_register_widget() {
	register_widget( 'Dreamshop_contact_widget' );
}
add_action( 'widgets_init', 'Dreamshop_contact_register_widget' );