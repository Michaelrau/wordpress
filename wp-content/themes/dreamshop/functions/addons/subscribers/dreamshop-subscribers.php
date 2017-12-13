<?php
// Database Installation
function dreamshop_subs_db_install() {
    global $wpdb;
    $table = $wpdb->prefix."ds_subscriber";
	
	if($wpdb->get_var("show tables like '$table'") != $table)
	{
		$structure = "CREATE TABLE $table (
			id INT(9) NOT NULL AUTO_INCREMENT,
			subs_name VARCHAR(200) NOT NULL,
			subs_email VARCHAR(200) NOT NULL,
			subs_time DATETIME DEFAULT CURRENT_TIMESTAMP,
			UNIQUE KEY id (id)
		);";
		require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
		dbDelta( $structure );
	}
}
add_action('admin_init', 'dreamshop_subs_db_install');

// Left Menu Button
function dreamshop_register_subs_menu() {
	add_theme_page( 'Dreamshop Subscribers', 'Shop Subscribers', 'add_users', 'ds_subscribers_list', 'dreamshop_subscribers_info' );
}
add_action('admin_menu', 'dreamshop_register_subs_menu');

// Generate Subscribe Form 
function dreamshop_smlsubform($atts=array())
{
	$thankyou    = !empty($atts['thankyou']) ? $atts['thankyou'] : 'Thank you for subscribing to our mailing list';
	$emailholder = !empty($atts['emailholder']) ? $atts['emailholder'] : 'Your email';
	$submittxt   = !empty($atts['submittxt']) ? $atts['submittxt'] : 'SUBSCRIBE';
	
	$return = '<form class="ds_subscribe" method="post"><input class="sml_hiddenfield" name="ds_subscribe" type="hidden" value="1">';

	if (array_key_exists('ds_subscribe', $_POST) && $_POST['ds_subscribe'] && $thankyou) { 
		$return .= "<script>window.onload = function() { alert('".$thankyou."'); }</script>";
	}
	
	$return .= '<p class="subs_email"><input class="subs_emailinput" name="subs_email" placeholder="'.$emailholder.'" required type="email" value=""></p>';
	$return .= '<p class="sml_submit"><input name="submit" class="btn sml_submitbtn" type="submit" value="'.($submittxt).'"></p>';
	$return .= '</form>';
	
 	return $return;
}

// Widget Controller
function deramshop_subscribe_widget_control($args=array(), $params=array()) {
	
	if (isset($_POST['ds_subscribe_submitted']) && current_user_can('edit_theme_options')) {
		update_option('ds_subscribe_widget_title', $_POST['ds_subscribe_widget_title']);
		update_option('ds_subscribe_widget_thankyou', $_POST['ds_subscribe_widget_thankyou']);
		update_option('ds_subscribe_widget_emailholder', $_POST['ds_subscribe_widget_emailholder']);
		update_option('ds_subscribe_widget_submittxt', $_POST['ds_subscribe_widget_submittxt']);
	}
	
	$ds_subscribe_widget_title       = get_option('ds_subscribe_widget_title');
	$ds_subscribe_widget_thankyou    = get_option('ds_subscribe_widget_thankyou');
	$ds_subscribe_widget_emailholder = get_option('ds_subscribe_widget_emailholder');
	$ds_subscribe_widget_submittxt   = get_option('ds_subscribe_widget_submittxt');
	?>

	<br />
	<?php _e('Title:','dreamshop'); ?><br />
	<input type="text" class="widefat ds_subscribe_widget_submittxt" name="ds_subscribe_widget_title" value="<?php echo stripslashes($ds_subscribe_widget_title); ?>" />
	<br /><br />
	
    <?php _e('Thank You Message','dreamshop'); ?><br />
	<textarea class="widefat ds_subscribe_widget_thankyou" rows="5" name="ds_subscribe_widget_thankyou"><?php echo stripslashes($ds_subscribe_widget_thankyou); ?></textarea>
	<br /><br />
    
    <?php _e('Email Placeholder Text','dreamshop'); ?>
	<input type="text" class="widefat ds_subscribe_widget_emailholder" name="ds_subscribe_widget_emailholder" value="<?php echo stripslashes($ds_subscribe_widget_emailholder); ?>" />
	<br /><br />
    
    <?php _e('Submit Button Text','dreamshop'); ?>
	<input type="text" class="widefat ds_subscribe_widget_submittxt" name="ds_subscribe_widget_submittxt" value="<?php echo stripslashes($ds_subscribe_widget_submittxt); ?>" />
	<br /><br />
	
	<input type="hidden" name="ds_subscribe_submitted" value="1" />
	<?php
}

$options = array( 
    'id_base' => 'ds_subswidget'
); 

wp_register_widget_control(
	'ds_subscribe_widget',
	'ds_subscribe_widget',
	'deramshop_subscribe_widget_control',
	$options
);

// Widget Display
function dreanshop_subs_subscribe_widget_display($args=array(), $params=array())
{
	$ds_subscribe_widget_title       = !empty(get_option('ds_subscribe_widget_title')) ? get_option('ds_subscribe_widget_title') : 'Subscribe to Receive Our Updates';
	$ds_subscribe_widget_thankyou    = get_option('ds_subscribe_widget_thankyou');
	$ds_subscribe_widget_emailholder = get_option('ds_subscribe_widget_emailholder');
	$ds_subscribe_widget_submittxt   = get_option('ds_subscribe_widget_submittxt');

	//widget output
	echo stripslashes($args['before_widget']);
	echo stripslashes($args['before_title']);
	echo stripslashes($ds_subscribe_widget_title);
	echo stripslashes($args['after_title']);

	echo '<div class="textwidget">';

	$argss = array(
		'emailholder' => $ds_subscribe_widget_emailholder,
		'submittxt' => $ds_subscribe_widget_submittxt, 
		'thankyou' => $ds_subscribe_widget_thankyou
	);
	echo dreamshop_smlsubform($argss);

	echo '</div>';
    echo stripslashes($args['after_widget']);
}

wp_register_sidebar_widget(
    'ds_subscribe_widget',
    'DreamShop : Home Subscription Widget',
    'dreanshop_subs_subscribe_widget_display',
    array(
        'description' => 'Display Subscribe Form'
    )
);

// Handle form Post
if (array_key_exists('ds_subscribe', $_POST) && $_POST['ds_subscribe']) {
	$name  = $_POST['subs_name'];
	$email = $_POST['subs_email'];

	if (is_email($email)) {
		$exists = $wpdb->get_row($wpdb->prepare("SELECT COUNT(`id`) as 'count' FROM ".$wpdb->prefix."ds_subscriber WHERE subs_email = %s LIMIT 1", $email));

		if ((int) $exists->count === 0) {
			$wpdb->query($wpdb->prepare("INSERT INTO ".$wpdb->prefix."ds_subscriber (subs_name, subs_email) VALUES (%s, %s)", $name, $email));
		}
	}
}

function dreamshop_subscribers_info()
{
	global $wpdb;
	?>
	<style>
	.ds_subscribers th.check-column input{
		position: relative;
		top: 6px;
	}
	</style>
	<div class="wrap ds_subscribers">
		<h2><?php _e('DreamShop Subscribers','dreamshop'); ?></h2>
		<div id="poststuff">
		
			<div id="post-body" class="metabox-holder columns-2">
				<div id="post-body-content">
					<form method="post" action="?page=<?php echo esc_js(esc_html($_GET['page'])); ?>">
						<input name="sml_remove" value="1" type="hidden" />
						<?php 
						$message = "";
						if ($_SERVER['REQUEST_METHOD']=="POST" and $_POST['sml_remove']) 
						{
							if ($_GET['rem']) $_POST['rem'][] = $_GET['rem'];
							$count = 0;
							if (is_array($_POST['rem'])) {
								foreach ($_POST['rem'] as $id) { 
									$wpdb->query("delete from ".$wpdb->prefix."ds_subscriber where id = '".$wpdb->escape($id)."' limit 1"); 
									$count++; 
								}
								$message = $count." subscribers have been removed successfully.";
							}
						}
						
						//echo $sql;
						if ($message) { echo '<div style="padding: 5px;" class="updated"><p>'.$message.'</p></div>'; }				
						?>
					
						<table cellspacing="0" class="wp-list-table widefat fixed subscribers">
							<thead>
								<tr>
									<th style="" class="manage-column column-cb check-column" id="cb" scope="col"><input type="checkbox"></th>
									<th style="" class="manage-column column-email" id="email" scope="col"><span><?php _e('Email Address','dreamshop'); ?></span><span class="sorting-indicator"></span></th>
									<th style="" class="manage-column column-time" id="time" scope="col"><?php _e('Time','dreamshop'); ?><span class="sorting-indicator"></span></th>
								</tr>
							</thead>
					  
							<tfoot>
								<tr>
									<th style="" class="manage-column column-cb check-column" scope="col"><input type="checkbox"></th>
									<th style="" class="manage-column column-email" scope="col"><span><?php _e('Email Address','dreamshop'); ?></span><span class="sorting-indicator"></span></th>
									<th style="" class="manage-column column-time" scope="col"><span><?php _e('Time','dreamshop'); ?></span><span class="sorting-indicator"></span></th>
								</tr>
							</tfoot>
						
							<tbody id="the-list">
							<?php 
								$results = $wpdb->get_results("SELECT * FROM ".$wpdb->prefix."ds_subscriber");
								//print_r($results);
								if (count($results)<1) echo '<tr class="no-items"><td colspan="3" class="colspanchange">No mailing list subscribers have been added.</td></tr>';
								else 
								{
									foreach($results as $row) 
									{
										echo '<tr>
												<th class="check-column" style="padding:5px 0 2px 0"><input type="checkbox" name="rem[]" value="'.esc_js(esc_html($row->id)).'"></th>
												<td>'.esc_js(esc_html($row->subs_email)).'</td>
												<td>'.esc_js(esc_html($row->subs_time)).'</td>
										</tr>';	
									}
								}
							?>
							</tbody>
						</table>
						<br class="clear">
						<input class="button" name="submit" type="submit" value="Remove Selected" />
					</form>
				</div> 
			</div>
		</div>
	</div> 
<?php
}