-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2017 at 10:11 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-08 08:25:08', '2017-12-08 08:25:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 52, 'WooCommerce', '', '', '', '2017-12-10 08:58:26', '2017-12-10 08:58:26', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 90, 'WooCommerce', '', '', '', '2017-12-13 08:38:53', '2017-12-13 08:38:53', 'Đang chờ kiểm tra thanh toán Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Tạm giữ.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ds_subscriber`
--

CREATE TABLE `wp_ds_subscriber` (
  `id` int(9) NOT NULL,
  `subs_name` varchar(200) NOT NULL,
  `subs_email` varchar(200) NOT NULL,
  `subs_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'YADINGJI', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'wpdemo2000@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:19:{i:0;s:28:"2j-slideshow/2jslideshow.php";i:1;s:31:"code-snippets/code-snippets.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:4;s:35:"oa-social-login/oa-social-login.php";i:5;s:25:"profile-builder/index.php";i:6;s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";i:7;s:52:"theme-customisations-master/theme-customisations.php";i:8;s:34:"woo-product-images-slider/wpis.php";i:9;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:10;s:49:"woocommerce-login-popup-and-shortcodes/plugin.php";i:11;s:57:"woocommerce-menu-extension/woocommerce-menu-extension.php";i:12;s:59:"woocommerce-products-slider/woocommerce-products-slider.php";i:13;s:67:"woocommerce-simple-registration/woocommerce-simple-registration.php";i:14;s:27:"woocommerce/woocommerce.php";i:15;s:42:"wordpress-social-login/wp-social-login.php";i:16;s:31:"wp-google-maps/wpGoogleMaps.php";i:17;s:21:"wp-reset/wp-reset.php";i:18;s:29:"wp-subscribe/wp-subscribe.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'deli', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:29:"easy-wp-smtp/easy-wp-smtp.php";s:22:"swpsmtp_send_uninstall";s:50:"social-media-buttons-toolbar/inc/php/uninstall.php";s:26:"spacexchimp_p005_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"manage_snippets";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:1:{i:0;s:13:"custom_html-2";}s:8:"footer-2";a:1:{i:0;s:13:"custom_html-3";}s:8:"footer-3";a:1:{i:0;s:14:"wp_subscribe-2";}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:7:"content";s:459:"<div class="container">\r\n	<div class="image">\r\n		<a href="/">\r\n			<img src="http://localhost/wordpress/wp-content/themes/deli/images/logo.png" title="" alt=""/>\r\n		</a>\r\n	</div>\r\n	<div class="text">\r\n    <p></p>\r\n		<p>\r\n			<span>Địa Chỉ:</span>215 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1, TP.HCM\r\n		</p>\r\n		<p>\r\n			<span>Email:</span>yadingji@gmail.com\r\n		</p>\r\n		<p>\r\n			<span>Giờ Mở Cưa:</span>11:00 AM - 09:00 PM\r\n		</p>\r\n	</div>\r\n</div>";}i:3;a:2:{s:5:"title";s:0:"";s:7:"content";s:389:"<div class="container">	\r\n	<div class="text">\r\n			<span>THỰC ĐƠN YADINGJI</span>	\r\n	</div>\r\n	<div class="links">\r\n		<p>\r\n			<a href="#">VỊT QUAY</a>&nbsp;/&nbsp; \r\n			<a href="#">CUỐN VỊT QUAY</a>&nbsp;/&nbsp;\r\n			<a href="#">MÀN THẦU VỊT QUAY</a>&nbsp;/&nbsp;\r\n			<a href="#">MÌ XÀO VỊT QUAY</a>&nbsp;/&nbsp;\r\n			<a href="#">CƠM VỊT QUAY</a>\r\n		</p>\r\n	</div>\r\n</div>";}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:9:{i:1513158559;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1513182412;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513196710;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513196856;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513209600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513239987;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513240056;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1514851200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512721729;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(113, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(114, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(122, '_site_transient_timeout_browser_2091071f72f8ef11d33bd2f87d23a086', '1513326314', 'no'),
(123, '_site_transient_browser_2091071f72f8ef11d33bd2f87d23a086', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'wc_ppec_version', '1.4.7', 'yes'),
(145, 'woocommerce_store_address', 'Address Example', 'yes'),
(146, 'woocommerce_store_address_2', '', 'yes'),
(147, 'woocommerce_store_city', 'HCM', 'yes'),
(148, 'woocommerce_default_country', 'VN', 'yes'),
(149, 'woocommerce_store_postcode', '084', 'yes'),
(150, 'woocommerce_allowed_countries', 'all', 'yes'),
(151, 'woocommerce_all_except_countries', '', 'yes'),
(152, 'woocommerce_specific_allowed_countries', '', 'yes'),
(153, 'woocommerce_ship_to_countries', '', 'yes'),
(154, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(155, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(156, 'woocommerce_calc_taxes', 'no', 'yes'),
(157, 'woocommerce_demo_store', 'no', 'yes'),
(158, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(159, 'woocommerce_currency', 'VND', 'yes'),
(160, 'woocommerce_currency_pos', 'left', 'yes'),
(161, 'woocommerce_price_thousand_sep', ',', 'yes'),
(162, 'woocommerce_price_decimal_sep', '.', 'yes'),
(163, 'woocommerce_price_num_decimals', '2', 'yes'),
(164, 'woocommerce_weight_unit', 'kg', 'yes'),
(165, 'woocommerce_dimension_unit', 'cm', 'yes'),
(166, 'woocommerce_enable_reviews', 'yes', 'yes'),
(167, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(168, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(169, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(170, 'woocommerce_review_rating_required', 'yes', 'no'),
(171, 'woocommerce_shop_page_id', '4', 'yes'),
(172, 'woocommerce_shop_page_display', '', 'yes'),
(173, 'woocommerce_category_archive_display', '', 'yes'),
(174, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(178, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(179, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(180, 'woocommerce_manage_stock', 'yes', 'yes'),
(181, 'woocommerce_hold_stock_minutes', '60', 'no'),
(182, 'woocommerce_notify_low_stock', 'yes', 'no'),
(183, 'woocommerce_notify_no_stock', 'yes', 'no'),
(184, 'woocommerce_stock_email_recipient', 'wpdemo2000@gmail.com', 'no'),
(185, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(186, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(188, 'woocommerce_stock_format', '', 'yes'),
(189, 'woocommerce_file_download_method', 'force', 'no'),
(190, 'woocommerce_downloads_require_login', 'no', 'no'),
(191, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(197, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'no'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_total_display', 'itemized', 'no'),
(201, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(202, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(203, 'woocommerce_ship_to_destination', 'billing', 'no'),
(204, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(205, 'woocommerce_enable_coupons', 'yes', 'yes'),
(206, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(207, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(208, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(209, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(210, 'woocommerce_cart_page_id', '5', 'yes'),
(211, 'woocommerce_checkout_page_id', '6', 'yes'),
(212, 'woocommerce_terms_page_id', '', 'no'),
(213, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(214, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(215, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(216, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(217, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(218, 'woocommerce_myaccount_page_id', '7', 'yes'),
(219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'no', 'no'),
(224, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(225, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(226, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(227, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(228, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(229, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(230, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(231, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(232, 'woocommerce_email_from_name', 'E-Commerce', 'no'),
(233, 'woocommerce_email_from_address', 'wpdemo2000@gmail.com', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', 'E-Commerce', 'no'),
(236, 'woocommerce_email_base_color', '#96588a', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_api_enabled', 'yes', 'yes'),
(241, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(244, 'woocommerce_version', '3.2.5', 'yes'),
(245, 'woocommerce_db_version', '3.2.5', 'yes'),
(246, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(247, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'woocommerce_product_type', 'both', 'yes'),
(262, 'woocommerce_allow_tracking', 'yes', 'yes'),
(263, 'woocommerce_tracker_last_send', '1512721699', 'yes'),
(265, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(266, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:20:"wpdemo2000@gmail.com";}', 'yes'),
(272, '_transient_shipping-transient-version', '1512721723', 'yes'),
(273, 'current_theme', 'Deli', 'yes'),
(274, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512721835;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(275, 'theme_switched', '', 'yes'),
(276, 'storefront_nux_fresh_site', '0', 'yes'),
(277, 'storefront_nux_dismissed', '1', 'yes'),
(280, '_transient_timeout_external_ip_address_::1', '1513326564', 'no'),
(281, '_transient_external_ip_address_::1', '103.199.7.209', 'no'),
(284, 'product_cat_children', 'a:0:{}', 'yes'),
(285, '_transient_product_query-transient-version', '1512721798', 'yes'),
(288, '_transient_product-transient-version', '1512721784', 'yes'),
(296, '_transient_timeout_wc_products_onsale', '1515313784', 'no'),
(297, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(303, '_transient_timeout_wc_term_counts', '1515313808', 'no'),
(304, '_transient_wc_term_counts', 'a:3:{i:15;s:1:"4";i:16;s:1:"4";i:17;s:1:"4";}', 'no'),
(305, '_transient_timeout_wc_loopce7e1512721798', '1515313808', 'no'),
(306, '_transient_wc_loopce7e1512721798', 'a:4:{i:0;i:37;i:1;i:36;i:2;i:35;i:3;i:34;}', 'no'),
(307, '_transient_timeout_wc_loopbb9a1512721798', '1515313808', 'no'),
(308, '_transient_wc_loopbb9a1512721798', 'a:4:{i:0;i:32;i:1;i:33;i:2;i:31;i:3;i:29;}', 'no'),
(309, '_transient_timeout_wc_loopf8571512721798', '1515313808', 'no'),
(310, '_transient_wc_loopf8571512721798', 'a:0:{}', 'no'),
(311, '_transient_timeout_wc_loop45db1512721798', '1515313808', 'no'),
(312, '_transient_wc_loop45db1512721798', 'a:0:{}', 'no'),
(313, '_transient_timeout_wc_loopa47f1512721798', '1515313808', 'no'),
(314, '_transient_wc_loopa47f1512721798', 'a:4:{i:0;i:33;i:1;i:34;i:2;i:35;i:3;i:36;}', 'no'),
(316, 'theme_mods_deli', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:18;}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #ffffff;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #ffffff;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffffff;\n			}\n\n			table th {\n				background-color: #5d513f;\n			}\n\n			table tbody td {\n				background-color: #625644;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #605442;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #b64902;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #b64902;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #b64902;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #2b2b2b;\n			}\n\n			.widget h1 {\n				border-bottom-color: #2b2b2b;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #615d59;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #938f8b;\n			}\n\n			a  {\n				color: #0e7784;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #0e7784;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #0e7784;\n				border-color: #0e7784;\n				color: #ffffff;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #005e6b;\n				border-color: #005e6b;\n				color: #ffffff;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #b64902;\n				border-color: #b64902;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #9d3000;\n				border-color: #9d3000;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #4b3f2d;\n				color: #615d59;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #5d513f;\n			}\n\n			.site-footer {\n				background-color: #2b2b2b;\n				color: #ffffff;\n			}\n\n			.site-footer a:not(.button) {\n				color: #e4decd;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #ffffff;\n			}\n\n			#order_review {\n				background-color: #645846;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #5f5341;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #5a4e3c;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #554937;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #ffffff;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #ffffff;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #a73a00;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #ac3f00;\n				}\n\n				.site-header {\n					border-bottom-color: #a73a00;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #ffffff;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #645846;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #615d59;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #938f8b;\n			}\n\n			.onsale {\n				border-color: #615d59;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #0e7784;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #0e7784;\n			}\n\n			.order_details {\n				background-color: #5d513f;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #483c2a;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#5d513f 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#5d513f 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #615d59;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #0e7784;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #0e7784;\n				color: #ffffff;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #005e6b;\n				border-color: #005e6b;\n				color: #ffffff;\n			}\n\n			.button.loading {\n				color: #0e7784;\n			}\n\n			.button.loading:hover {\n				background-color: #0e7784;\n			}\n\n			.button.loading:after {\n				color: #ffffff;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #ffffff;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:73;}', 'yes'),
(318, 'woocommerce_tracker_ua', 'a:2:{i:0;s:105:"mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/61.0.3163.100 safari/537.36";i:1;s:105:"mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/59.0.3071.115 safari/537.36";}', 'yes'),
(323, '_transient_timeout_wc_low_stock_count', '1515340209', 'no'),
(324, '_transient_wc_low_stock_count', '0', 'no'),
(325, '_transient_timeout_wc_outofstock_count', '1515340209', 'no'),
(326, '_transient_wc_outofstock_count', '0', 'no'),
(335, '_site_transient_timeout_browser_06fdd3e0f178ba6aec43dc3e36dea840', '1513439457', 'no'),
(336, '_site_transient_browser_06fdd3e0f178ba6aec43dc3e36dea840', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"61.0.3163.100";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(359, 'woo_login_popup_sc_installDate', '2017-12-09 03:51:13', 'yes'),
(361, 'woo_login_popup_sc_settings', 'a:3:{s:5:"popup";s:1:"1";s:10:"background";s:0:"";s:3:"css";s:0:"";}', 'yes'),
(364, '_transient_timeout_wc_shipping_method_count_1_1512721723', '1515427394', 'no'),
(365, '_transient_wc_shipping_method_count_1_1512721723', '2', 'no'),
(387, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(412, 'swpsmtp_options', 'a:7:{s:15:"allowed_domains";s:12:"bG9jYWxob3N0";s:15:"from_name_field";s:14:"Wordpress Demo";s:16:"from_email_field";s:20:"wpdemo2000@gmail.com";s:14:"reply_to_email";s:0:"";s:17:"email_ignore_list";s:0:"";s:13:"smtp_settings";a:7:{s:4:"host";s:14:"smtp.gmail.com";s:15:"type_encryption";s:3:"ssl";s:13:"autentication";s:3:"yes";s:8:"username";s:20:"wpdemo2000@gmail.com";s:8:"password";s:24:"aG9mZ3ZnYmJqdnZrbmZoYQ==";s:12:"enable_debug";b:0;s:4:"port";s:3:"465";}s:19:"enable_domain_check";b:0;}', 'yes'),
(413, 'smtp_test_mail', 'a:3:{s:10:"swpsmtp_to";s:19:"thanhvd84@gmail.com";s:15:"swpsmtp_subject";s:10:"Test Email";s:15:"swpsmtp_message";s:25:"send to admin for testing";}', 'yes'),
(418, 'widget_wppb-login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(419, 'wppb_version', '2.7.2', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(420, 'wppb_manage_fields', 'a:13:{i:0;a:21:{s:2:"id";i:1;s:5:"field";s:24:"Default - Name (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:4:"Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:1;a:21:{s:2:"id";i:2;s:5:"field";s:18:"Default - Username";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Username";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:2;a:21:{s:2:"id";i:3;s:5:"field";s:20:"Default - First Name";s:9:"meta-name";s:10:"first_name";s:11:"field-title";s:10:"First Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:3;a:21:{s:2:"id";i:4;s:5:"field";s:19:"Default - Last Name";s:9:"meta-name";s:9:"last_name";s:11:"field-title";s:9:"Last Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:4;a:21:{s:2:"id";i:5;s:5:"field";s:18:"Default - Nickname";s:9:"meta-name";s:8:"nickname";s:11:"field-title";s:8:"Nickname";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:5;a:21:{s:2:"id";i:6;s:5:"field";s:34:"Default - Display name publicly as";s:9:"meta-name";s:0:"";s:11:"field-title";s:24:"Display name publicly as";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:6;a:21:{s:2:"id";i:7;s:5:"field";s:32:"Default - Contact Info (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:12:"Contact Info";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:7;a:21:{s:2:"id";i:8;s:5:"field";s:16:"Default - E-mail";s:9:"meta-name";s:0:"";s:11:"field-title";s:6:"E-mail";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:8;a:21:{s:2:"id";i:9;s:5:"field";s:17:"Default - Website";s:9:"meta-name";s:0:"";s:11:"field-title";s:7:"Website";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:9;a:21:{s:2:"id";i:10;s:5:"field";s:34:"Default - About Yourself (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:14:"About Yourself";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:10;a:21:{s:2:"id";i:11;s:5:"field";s:27:"Default - Biographical Info";s:9:"meta-name";s:11:"description";s:11:"field-title";s:17:"Biographical Info";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:11;a:21:{s:2:"id";i:12;s:5:"field";s:18:"Default - Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:12;a:21:{s:2:"id";i:13;s:5:"field";s:25:"Default - Repeat Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:15:"Repeat Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}}', 'yes'),
(421, 'wppb_general_settings', 'a:7:{s:17:"extraFieldsLayout";s:7:"default";s:17:"emailConfirmation";s:2:"no";s:21:"activationLandingPage";s:0:"";s:13:"adminApproval";s:2:"no";s:9:"loginWith";s:13:"usernameemail";s:11:"rolesEditor";s:2:"no";s:18:"contentRestriction";s:2:"no";}', 'yes'),
(422, 'wsl_settings_welcome_panel_enabled', '1', 'yes'),
(423, 'wsl_settings_redirect_url', 'http://localhost/wordpress', 'yes'),
(424, 'wsl_settings_force_redirect_url', '1', 'yes'),
(425, 'wsl_settings_connect_with_label', 'Connect with:', 'yes'),
(426, 'wsl_settings_users_avatars', '1', 'yes'),
(427, 'wsl_settings_use_popup', '1', 'yes'),
(428, 'wsl_settings_widget_display', '3', 'yes'),
(429, 'wsl_settings_authentication_widget_css', '.wp-social-login-connect-with {}\r\n.wp-social-login-provider-list {}\r\n.wp-social-login-provider-list a {}\r\n.wp-social-login-provider-list img {}\r\n.wsl_connect_with_provider {}', 'yes'),
(430, 'wsl_settings_bouncer_registration_enabled', '1', 'yes'),
(431, 'wsl_settings_bouncer_authentication_enabled', '1', 'yes'),
(432, 'wsl_settings_bouncer_accounts_linking_enabled', '1', 'yes'),
(433, 'wsl_settings_bouncer_profile_completion_require_email', '2', 'yes'),
(434, 'wsl_settings_bouncer_profile_completion_change_username', '2', 'yes'),
(435, 'wsl_settings_bouncer_profile_completion_hook_extra_fields', '2', 'yes'),
(436, 'wsl_settings_bouncer_new_users_moderation_level', '1', 'yes'),
(437, 'wsl_settings_bouncer_new_users_membership_default_role', 'default', 'yes'),
(438, 'wsl_settings_bouncer_new_users_restrict_domain_enabled', '2', 'yes'),
(439, 'wsl_settings_bouncer_new_users_restrict_domain_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn''t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(440, 'wsl_settings_bouncer_new_users_restrict_email_enabled', '2', 'yes'),
(441, 'wsl_settings_bouncer_new_users_restrict_email_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn''t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(442, 'wsl_settings_bouncer_new_users_restrict_profile_enabled', '2', 'yes'),
(443, 'wsl_settings_bouncer_new_users_restrict_profile_text_bounce', '<strong>This website is restricted to invited readers only.</strong><p>It doesn''t look like you have been invited to access this site. If you think this is a mistake, you might want to contact the website owner and request an invitation.<p>', 'yes'),
(444, 'wsl_settings_contacts_import_facebook', '2', 'yes'),
(445, 'wsl_settings_contacts_import_google', '2', 'yes'),
(446, 'wsl_settings_contacts_import_twitter', '2', 'yes'),
(447, 'wsl_settings_contacts_import_live', '2', 'yes'),
(448, 'wsl_settings_contacts_import_linkedin', '2', 'yes'),
(449, 'wsl_settings_buddypress_enable_mapping', '2', 'yes'),
(450, 'wsl_settings_buddypress_xprofile_map', '', 'yes'),
(451, 'wsl_settings_Facebook_enabled', '1', 'yes'),
(452, 'wsl_settings_Google_enabled', '1', 'yes'),
(453, 'wsl_settings_Twitter_enabled', '1', 'yes'),
(454, 'wsl_components_core_enabled', '1', 'yes'),
(455, 'wsl_components_networks_enabled', '1', 'yes'),
(456, 'wsl_components_login-widget_enabled', '1', 'yes'),
(457, 'wsl_components_bouncer_enabled', '1', 'yes'),
(458, 'wsl_settings_Facebook_app_scope', 'email, public_profile, user_friends', 'yes'),
(459, 'wsl_settings_Google_app_scope', 'profile https://www.googleapis.com/auth/plus.profile.emails.read', 'yes'),
(460, 'wsl_settings_GitHub_app_scope', 'user:email', 'yes'),
(461, 'WPLANG', 'vi', 'yes'),
(462, 'new_admin_email', 'wpdemo2000@gmail.com', 'yes'),
(463, 'wsl_settings_Facebook_app_id', '158439298220523', 'yes'),
(464, 'wsl_settings_Facebook_app_secret', 'ea328895bcda7e6299dc4a6a0cb9c262', 'yes'),
(465, 'wsl_settings_Google_app_id', '', 'yes'),
(466, 'wsl_settings_Google_app_secret', '', 'yes'),
(467, 'wsl_settings_Twitter_app_key', '', 'yes'),
(468, 'wsl_settings_Twitter_app_secret', '', 'yes'),
(469, 'wsl_settings_WordPress_enabled', '1', 'yes'),
(470, 'wsl_settings_WordPress_app_id', '', 'yes'),
(471, 'wsl_settings_WordPress_app_secret', '', 'yes'),
(472, 'wsl_settings_Yahoo_enabled', '', 'yes'),
(473, 'wsl_settings_LinkedIn_enabled', '', 'yes'),
(474, 'wsl_settings_LinkedIn_app_key', '', 'yes'),
(475, 'wsl_settings_LinkedIn_app_secret', '', 'yes'),
(476, 'wsl_settings_Disqus_enabled', '', 'yes'),
(477, 'wsl_settings_Disqus_app_id', '', 'yes'),
(478, 'wsl_settings_Disqus_app_secret', '', 'yes'),
(479, 'wsl_settings_Instagram_enabled', '', 'yes'),
(480, 'wsl_settings_Instagram_app_id', '', 'yes'),
(481, 'wsl_settings_Instagram_app_secret', '', 'yes'),
(482, 'wsl_settings_Reddit_enabled', '', 'yes'),
(483, 'wsl_settings_Reddit_app_id', '', 'yes'),
(484, 'wsl_settings_Reddit_app_secret', '', 'yes'),
(485, 'wsl_settings_Foursquare_enabled', '', 'yes'),
(486, 'wsl_settings_Foursquare_app_id', '', 'yes'),
(487, 'wsl_settings_Foursquare_app_secret', '', 'yes'),
(488, 'wsl_settings_LastFM_enabled', '', 'yes'),
(489, 'wsl_settings_LastFM_app_key', '', 'yes'),
(490, 'wsl_settings_LastFM_app_secret', '', 'yes'),
(491, 'wsl_settings_Tumblr_enabled', '', 'yes'),
(492, 'wsl_settings_Tumblr_app_key', '', 'yes'),
(493, 'wsl_settings_Tumblr_app_secret', '', 'yes'),
(494, 'wsl_settings_Goodreads_enabled', '', 'yes'),
(495, 'wsl_settings_Goodreads_app_key', '', 'yes'),
(496, 'wsl_settings_Goodreads_app_secret', '', 'yes'),
(497, 'wsl_settings_Stackoverflow_enabled', '', 'yes'),
(498, 'wsl_settings_GitHub_enabled', '', 'yes'),
(499, 'wsl_settings_GitHub_app_id', '', 'yes'),
(500, 'wsl_settings_GitHub_app_secret', '', 'yes'),
(501, 'wsl_settings_Dribbble_enabled', '', 'yes'),
(502, 'wsl_settings_Dribbble_app_id', '', 'yes'),
(503, 'wsl_settings_Dribbble_app_secret', '', 'yes'),
(504, 'wsl_settings_500px_enabled', '', 'yes'),
(505, 'wsl_settings_500px_app_key', '', 'yes'),
(506, 'wsl_settings_500px_app_secret', '', 'yes'),
(507, 'wsl_settings_Skyrock_enabled', '', 'yes'),
(508, 'wsl_settings_Skyrock_app_key', '', 'yes'),
(509, 'wsl_settings_Skyrock_app_secret', '', 'yes'),
(510, 'wsl_settings_Mixi_enabled', '', 'yes'),
(511, 'wsl_settings_Steam_enabled', '', 'yes'),
(512, 'wsl_settings_Steam_app_key', '', 'yes'),
(513, 'wsl_settings_Steam_app_secret', '', 'yes'),
(514, 'wsl_settings_TwitchTV_enabled', '', 'yes'),
(515, 'wsl_settings_TwitchTV_app_id', '', 'yes'),
(516, 'wsl_settings_TwitchTV_app_secret', '', 'yes'),
(517, 'wsl_settings_Vkontakte_enabled', '', 'yes'),
(518, 'wsl_settings_Vkontakte_app_id', '', 'yes'),
(519, 'wsl_settings_Vkontakte_app_secret', '', 'yes'),
(520, 'wsl_settings_Mailru_enabled', '', 'yes'),
(521, 'wsl_settings_Mailru_app_id', '', 'yes'),
(522, 'wsl_settings_Mailru_app_secret', '', 'yes'),
(523, 'wsl_settings_Yandex_enabled', '', 'yes'),
(524, 'wsl_settings_Yandex_app_id', '', 'yes'),
(525, 'wsl_settings_Yandex_app_secret', '', 'yes'),
(526, 'wsl_settings_Odnoklassniki_enabled', '', 'yes'),
(527, 'wsl_settings_Odnoklassniki_app_id', '', 'yes'),
(528, 'wsl_settings_Odnoklassniki_app_secret', '', 'yes'),
(529, 'wsl_settings_AOL_enabled', '', 'yes'),
(530, 'wsl_settings_Live_enabled', '', 'yes'),
(531, 'wsl_settings_Live_app_id', '', 'yes'),
(532, 'wsl_settings_Live_app_secret', '', 'yes'),
(533, 'wsl_settings_PixelPin_enabled', '', 'yes'),
(534, 'wsl_settings_PixelPin_app_id', '', 'yes'),
(535, 'wsl_settings_PixelPin_app_secret', '', 'yes'),
(547, 'oa_social_login_activation_message', '1', 'yes'),
(548, 'widget_oa_social_login', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(563, 'wsl_settings_social_icon_set', 'wpzoom', 'yes'),
(564, 'wsl_settings_users_notification', '1', 'yes'),
(568, '_transient_orders-transient-version', '1513154324', 'yes'),
(608, 'photonic_options', 'a:1:{s:14:"disable_editor";s:2:"on";}', 'yes'),
(609, 'widget_twoj_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(611, 'twojSlideshowVersion', '1.3.23', 'yes'),
(612, '_transient_timeout_plugin_slugs', '1513241086', 'no'),
(613, '_transient_plugin_slugs', 'a:22:{i:0;s:28:"2j-slideshow/2jslideshow.php";i:1;s:19:"akismet/akismet.php";i:2;s:31:"code-snippets/code-snippets.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:5;s:9:"hello.php";i:6;s:19:"jetpack/jetpack.php";i:7;s:25:"profile-builder/index.php";i:8;s:67:"woocommerce-simple-registration/woocommerce-simple-registration.php";i:9;s:35:"oa-social-login/oa-social-login.php";i:10;s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";i:11;s:52:"theme-customisations-master/theme-customisations.php";i:12;s:27:"woocommerce/woocommerce.php";i:13;s:49:"woocommerce-login-popup-and-shortcodes/plugin.php";i:14;s:57:"woocommerce-menu-extension/woocommerce-menu-extension.php";i:15;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:16;s:59:"woocommerce-products-slider/woocommerce-products-slider.php";i:17;s:34:"woo-product-images-slider/wpis.php";i:18;s:42:"wordpress-social-login/wp-social-login.php";i:19;s:31:"wp-google-maps/wpGoogleMaps.php";i:20;s:21:"wp-reset/wp-reset.php";i:21;s:29:"wp-subscribe/wp-subscribe.php";}', 'no'),
(621, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.1.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1513154674;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(623, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513154678;s:7:"checked";a:7:{s:8:"boutique";s:6:"2.0.11";s:4:"deli";s:6:"2.0.10";s:9:"dreamshop";s:5:"1.0.0";s:10:"storefront";s:5:"2.2.5";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(628, 'theme_mods_boutique', 'a:6:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:18;}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #ffffff;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #ffffff;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffffff;\n			}\n\n			table th {\n				background-color: #292929;\n			}\n\n			table tbody td {\n				background-color: #2e2e2e;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #2c2c2c;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #2b2b2b;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #2b2b2b;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #2b2b2b;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #2b2b2b;\n			}\n\n			.widget h1 {\n				border-bottom-color: #2b2b2b;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #777777;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #a9a9a9;\n			}\n\n			a  {\n				color: #7c7235;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #7c7235;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #2b2b2b;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #2b2b2b;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #7c7235;\n				border-color: #7c7235;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #63591c;\n				border-color: #63591c;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #171717;\n				color: #777777;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #292929;\n			}\n\n			.site-footer {\n				background-color: #2b2b2b;\n				color: #777777;\n			}\n\n			.site-footer a:not(.button) {\n				color: #111111;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #2b2b2b;\n			}\n\n			#order_review {\n				background-color: #303030;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #2b2b2b;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #262626;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #212121;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #ffffff;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #ffffff;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #1c1c1c;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #212121;\n				}\n\n				.site-header {\n					border-bottom-color: #1c1c1c;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #ffffff;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #303030;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #777777;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #a9a9a9;\n			}\n\n			.onsale {\n				border-color: #777777;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #7c7235;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #7c7235;\n			}\n\n			.order_details {\n				background-color: #292929;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #141414;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#292929 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#292929 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #777777;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #7c7235;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #2b2b2b;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #2b2b2b;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #2b2b2b;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #ffffff;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1513007100;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(629, '_transient_timeout_wc_loop0d8d1512721798', '1515598997', 'no'),
(630, '_transient_wc_loop0d8d1512721798', 'a:3:{i:0;i:37;i:1;i:36;i:2;i:35;}', 'no'),
(631, '_transient_timeout_wc_loop656a1512721798', '1515598997', 'no'),
(632, '_transient_wc_loop656a1512721798', 'a:0:{}', 'no'),
(633, '_transient_timeout_wc_loop34551512721798', '1515598997', 'no'),
(634, '_transient_wc_loop34551512721798', 'a:0:{}', 'no'),
(635, '_transient_timeout_wc_loop7e2f1512721798', '1515598997', 'no'),
(636, '_transient_wc_loop7e2f1512721798', 'a:3:{i:0;i:36;i:1;i:32;i:2;i:33;}', 'no'),
(637, 'theme_switch_menu_locations', 'a:1:{s:7:"primary";i:18;}', 'yes'),
(638, 'theme_switched_via_customizer', '', 'yes'),
(639, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(687, 'widget_wp_subscribe', 'a:2:{i:2;a:20:{s:5:"title";s:14:"Get more stuff";s:7:"service";s:9:"mailchimp";s:19:"aweber_consumer_key";s:0:"";s:22:"aweber_consumer_secret";s:0:"";s:17:"aweber_access_key";s:0:"";s:20:"aweber_access_secret";s:0:"";s:17:"aweber_account_id";s:0:"";s:14:"aweber_list_id";s:4:"none";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:37:"f9c73c7125773ee916b6f278edffc8fa-us17";s:17:"mailchimp_list_id";s:4:"none";s:22:"mailchimp_double_optin";s:1:"1";s:18:"include_name_field";s:1:"1";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:16:"name_placeholder";s:20:"Enter your name here";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";}s:12:"_multiwidget";i:1;}', 'yes'),
(720, 'spacexchimp_p005_service_info', 'a:3:{s:7:"upgrade";s:4:"0001";s:7:"version";s:4:"4.26";s:11:"old_version";s:1:"0";}', 'yes'),
(721, 'spacexchimp_p005_settings', 'a:5:{s:5:"media";a:88:{s:8:"facebook";a:3:{s:5:"label";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:7:"content";s:33:"https://www.facebook.com/Yadingji";}s:7:"twitter";a:3:{s:5:"label";s:7:"Twitter";s:4:"slug";s:7:"twitter";s:7:"content";s:26:"http://www.yadingji.com.vn";}s:9:"instagram";a:3:{s:5:"label";s:9:"Instagram";s:4:"slug";s:9:"instagram";s:7:"content";s:0:"";}s:11:"google-plus";a:3:{s:5:"label";s:7:"Google+";s:4:"slug";s:11:"google-plus";s:7:"content";s:26:"http://www.yadingji.com.vn";}s:7:"youtube";a:3:{s:5:"label";s:7:"YouTube";s:4:"slug";s:7:"youtube";s:7:"content";s:0:"";}s:14:"youtube-gaming";a:3:{s:5:"label";s:14:"YouTube Gaming";s:4:"slug";s:14:"youtube-gaming";s:7:"content";s:0:"";}s:11:"google-play";a:3:{s:5:"label";s:11:"Google Play";s:4:"slug";s:11:"google-play";s:7:"content";s:0:"";}s:6:"itunes";a:3:{s:5:"label";s:6:"iTunes";s:4:"slug";s:6:"itunes";s:7:"content";s:0:"";}s:15:"itunes-podcasts";a:3:{s:5:"label";s:15:"iTunes Podcasts";s:4:"slug";s:15:"itunes-podcasts";s:7:"content";s:0:"";}s:11:"apple-music";a:3:{s:5:"label";s:11:"Apple Music";s:4:"slug";s:11:"apple-music";s:7:"content";s:0:"";}s:9:"periscope";a:3:{s:5:"label";s:9:"Periscope";s:4:"slug";s:9:"periscope";s:7:"content";s:0:"";}s:5:"vimeo";a:3:{s:5:"label";s:5:"Vimeo";s:4:"slug";s:5:"vimeo";s:7:"content";s:0:"";}s:7:"blogger";a:3:{s:5:"label";s:7:"Blogger";s:4:"slug";s:7:"blogger";s:7:"content";s:0:"";}s:10:"buzzsprout";a:3:{s:5:"label";s:10:"Buzzsprout";s:4:"slug";s:10:"buzzsprout";s:7:"content";s:0:"";}s:11:"livejournal";a:3:{s:5:"label";s:11:"LiveJournal";s:4:"slug";s:11:"livejournal";s:7:"content";s:0:"";}s:6:"reddit";a:3:{s:5:"label";s:6:"Reddit";s:4:"slug";s:6:"reddit";s:7:"content";s:0:"";}s:8:"linkedin";a:3:{s:5:"label";s:8:"LinkedIn";s:4:"slug";s:8:"linkedin";s:7:"content";s:0:"";}s:8:"diaspora";a:3:{s:5:"label";s:8:"Diaspora";s:4:"slug";s:8:"diaspora";s:7:"content";s:0:"";}s:10:"deviantart";a:3:{s:5:"label";s:10:"DeviantArt";s:4:"slug";s:10:"deviantart";s:7:"content";s:0:"";}s:4:"xing";a:3:{s:5:"label";s:4:"XING";s:4:"slug";s:4:"xing";s:7:"content";s:0:"";}s:9:"pinterest";a:3:{s:5:"label";s:9:"Pinterest";s:4:"slug";s:9:"pinterest";s:7:"content";s:0:"";}s:6:"flickr";a:3:{s:5:"label";s:6:"Flickr";s:4:"slug";s:6:"flickr";s:7:"content";s:0:"";}s:6:"tumblr";a:3:{s:5:"label";s:6:"Tumblr";s:4:"slug";s:6:"tumblr";s:7:"content";s:0:"";}s:8:"snapchat";a:3:{s:5:"label";s:8:"Snapchat";s:4:"slug";s:8:"snapchat";s:7:"content";s:0:"";}s:6:"twitch";a:3:{s:5:"label";s:6:"Twitch";s:4:"slug";s:6:"twitch";s:7:"content";s:0:"";}s:7:"patreon";a:3:{s:5:"label";s:7:"Patreon";s:4:"slug";s:7:"patreon";s:7:"content";s:0:"";}s:4:"imdb";a:3:{s:5:"label";s:4:"IMDb";s:4:"slug";s:4:"imdb";s:7:"content";s:0:"";}s:10:"soundcloud";a:3:{s:5:"label";s:10:"SoundCloud";s:4:"slug";s:10:"soundcloud";s:7:"content";s:0:"";}s:6:"plugdj";a:3:{s:5:"label";s:7:"Plug.dj";s:4:"slug";s:6:"plugdj";s:7:"content";s:0:"";}s:7:"spotify";a:3:{s:5:"label";s:7:"Spotify";s:4:"slug";s:7:"spotify";s:7:"content";s:0:"";}s:8:"bandcamp";a:3:{s:5:"label";s:8:"Bandcamp";s:4:"slug";s:8:"bandcamp";s:7:"content";s:0:"";}s:5:"dloky";a:3:{s:5:"label";s:5:"Dloky";s:4:"slug";s:5:"dloky";s:7:"content";s:0:"";}s:6:"amazon";a:3:{s:5:"label";s:6:"Amazon";s:4:"slug";s:6:"amazon";s:7:"content";s:0:"";}s:7:"bookbub";a:3:{s:5:"label";s:7:"BookBub";s:4:"slug";s:7:"bookbub";s:7:"content";s:0:"";}s:9:"goodreads";a:3:{s:5:"label";s:9:"Goodreads";s:4:"slug";s:9:"goodreads";s:7:"content";s:0:"";}s:8:"meetvibe";a:3:{s:5:"label";s:8:"MeetVibe";s:4:"slug";s:8:"meetvibe";s:7:"content";s:0:"";}s:6:"meetup";a:3:{s:5:"label";s:6:"Meetup";s:4:"slug";s:6:"meetup";s:7:"content";s:0:"";}s:5:"steam";a:3:{s:5:"label";s:5:"Steam";s:4:"slug";s:5:"steam";s:7:"content";s:0:"";}s:5:"mixer";a:3:{s:5:"label";s:5:"Mixer";s:4:"slug";s:5:"mixer";s:7:"content";s:0:"";}s:7:"discord";a:3:{s:5:"label";s:7:"Discord";s:4:"slug";s:7:"discord";s:7:"content";s:0:"";}s:4:"yelp";a:3:{s:5:"label";s:4:"Yelp";s:4:"slug";s:4:"yelp";s:7:"content";s:0:"";}s:11:"stumbleupon";a:3:{s:5:"label";s:11:"StumbleUpon";s:4:"slug";s:11:"stumbleupon";s:7:"content";s:0:"";}s:9:"bloglovin";a:3:{s:5:"label";s:9:"Bloglovin";s:4:"slug";s:9:"bloglovin";s:7:"content";s:0:"";}s:8:"whatsapp";a:3:{s:5:"label";s:8:"WhatsApp";s:4:"slug";s:8:"whatsapp";s:7:"content";s:0:"";}s:6:"medium";a:3:{s:5:"label";s:6:"Medium";s:4:"slug";s:6:"medium";s:7:"content";s:0:"";}s:5:"500px";a:3:{s:5:"label";s:5:"500px";s:4:"slug";s:5:"500px";s:7:"content";s:0:"";}s:7:"behance";a:3:{s:5:"label";s:7:"Behance";s:4:"slug";s:7:"behance";s:7:"content";s:0:"";}s:8:"polyvore";a:3:{s:5:"label";s:8:"Polyvore";s:4:"slug";s:8:"polyvore";s:7:"content";s:0:"";}s:11:"yellowpages";a:3:{s:5:"label";s:12:"Yellow Pages";s:4:"slug";s:11:"yellowpages";s:7:"content";s:0:"";}s:4:"line";a:3:{s:5:"label";s:4:"LINE";s:4:"slug";s:4:"line";s:7:"content";s:0:"";}s:4:"itch";a:3:{s:5:"label";s:4:"itch";s:4:"slug";s:4:"itch";s:7:"content";s:0:"";}s:8:"mastodon";a:3:{s:5:"label";s:8:"Mastodon";s:4:"slug";s:8:"mastodon";s:7:"content";s:0:"";}s:6:"remind";a:3:{s:5:"label";s:6:"Remind";s:4:"slug";s:6:"remind";s:7:"content";s:0:"";}s:7:"trademe";a:3:{s:5:"label";s:8:"Trade Me";s:4:"slug";s:7:"trademe";s:7:"content";s:0:"";}s:4:"vsco";a:3:{s:5:"label";s:4:"VSCO";s:4:"slug";s:4:"vsco";s:7:"content";s:0:"";}s:9:"hireology";a:3:{s:5:"label";s:9:"Hireology";s:4:"slug";s:9:"hireology";s:7:"content";s:0:"";}s:6:"kompoz";a:3:{s:5:"label";s:6:"Kompoz";s:4:"slug";s:6:"kompoz";s:7:"content";s:0:"";}s:10:"soundblend";a:3:{s:5:"label";s:10:"SoundBlend";s:4:"slug";s:10:"soundblend";s:7:"content";s:0:"";}s:9:"vkontakte";a:3:{s:5:"label";s:9:"VKontakte";s:4:"slug";s:9:"vkontakte";s:7:"content";s:0:"";}s:13:"odnoklassniki";a:3:{s:5:"label";s:13:"Odnoklassniki";s:4:"slug";s:13:"odnoklassniki";s:7:"content";s:0:"";}s:8:"telegram";a:3:{s:5:"label";s:8:"Telegram";s:4:"slug";s:8:"telegram";s:7:"content";s:0:"";}s:6:"github";a:3:{s:5:"label";s:6:"GitHub";s:4:"slug";s:6:"github";s:7:"content";s:0:"";}s:9:"wordpress";a:3:{s:5:"label";s:9:"WordPress";s:4:"slug";s:9:"wordpress";s:7:"content";s:0:"";}s:7:"codepen";a:3:{s:5:"label";s:7:"CodePen";s:4:"slug";s:7:"codepen";s:7:"content";s:0:"";}s:5:"askfm";a:3:{s:5:"label";s:5:"ASKfm";s:4:"slug";s:5:"askfm";s:7:"content";s:0:"";}s:4:"ebay";a:3:{s:5:"label";s:4:"eBay";s:4:"slug";s:4:"ebay";s:7:"content";s:0:"";}s:8:"hangouts";a:3:{s:5:"label";s:8:"Hangouts";s:4:"slug";s:8:"hangouts";s:7:"content";s:0:"";}s:5:"houzz";a:3:{s:5:"label";s:5:"Houzz";s:4:"slug";s:5:"houzz";s:7:"content";s:0:"";}s:5:"quora";a:3:{s:5:"label";s:5:"Quora";s:4:"slug";s:5:"quora";s:7:"content";s:0:"";}s:7:"steemit";a:3:{s:5:"label";s:7:"Steemit";s:4:"slug";s:7:"steemit";s:7:"content";s:0:"";}s:11:"theartstack";a:3:{s:5:"label";s:8:"ArtStack";s:4:"slug";s:11:"theartstack";s:7:"content";s:0:"";}s:7:"theknot";a:3:{s:5:"label";s:8:"The Knot";s:4:"slug";s:7:"theknot";s:7:"content";s:0:"";}s:5:"viber";a:3:{s:5:"label";s:5:"Viber";s:4:"slug";s:5:"viber";s:7:"content";s:0:"";}s:4:"etsy";a:3:{s:5:"label";s:4:"Etsy";s:4:"slug";s:4:"etsy";s:7:"content";s:0:"";}s:11:"tripadvisor";a:3:{s:5:"label";s:12:"Trip Advisor";s:4:"slug";s:11:"tripadvisor";s:7:"content";s:0:"";}s:13:"stackoverflow";a:3:{s:5:"label";s:14:"Stack Overflow";s:4:"slug";s:13:"stackoverflow";s:7:"content";s:0:"";}s:13:"stackexchange";a:3:{s:5:"label";s:14:"Stack Exchange";s:4:"slug";s:13:"stackexchange";s:7:"content";s:0:"";}s:9:"bitbucket";a:3:{s:5:"label";s:9:"Bitbucket";s:4:"slug";s:9:"bitbucket";s:7:"content";s:0:"";}s:15:"dailypaintworks";a:3:{s:5:"label";s:16:"Daily Paintworks";s:4:"slug";s:15:"dailypaintworks";s:7:"content";s:0:"";}s:9:"flipboard";a:3:{s:5:"label";s:9:"Flipboard";s:4:"slug";s:9:"flipboard";s:7:"content";s:0:"";}s:3:"gab";a:3:{s:5:"label";s:3:"Gab";s:4:"slug";s:3:"gab";s:7:"content";s:0:"";}s:5:"minds";a:3:{s:5:"label";s:5:"Minds";s:4:"slug";s:5:"minds";s:7:"content";s:0:"";}s:7:"wattpad";a:3:{s:5:"label";s:7:"Wattpad";s:4:"slug";s:7:"wattpad";s:7:"content";s:0:"";}s:5:"skype";a:3:{s:5:"label";s:5:"Skype";s:4:"slug";s:5:"skype";s:7:"content";s:0:"";}s:7:"website";a:3:{s:5:"label";s:16:"Personal website";s:4:"slug";s:7:"website";s:7:"content";s:0:"";}s:5:"email";a:3:{s:5:"label";s:5:"Email";s:4:"slug";s:5:"email";s:7:"content";s:20:"wpdemo2000@gmail.com";}s:9:"telephone";a:3:{s:5:"label";s:9:"Telephone";s:4:"slug";s:9:"telephone";s:7:"content";s:11:"01234808818";}s:8:"rss-feed";a:3:{s:5:"label";s:8:"RSS Feed";s:4:"slug";s:8:"rss-feed";s:7:"content";s:0:"";}}s:9:"icon-size";s:2:"48";s:12:"margin-right";s:2:"10";s:9:"alignment";s:6:"center";s:7:"caption";s:0:"";}', 'yes'),
(743, '_transient_timeout__woocommerce_helper_updates', '1513176382', 'no'),
(744, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1513133182;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(747, 'code_snippets_version', '2.9.4', 'yes'),
(748, 'code_snippets_settings', 'a:3:{s:7:"general";a:5:{s:19:"activate_by_default";b:0;s:21:"snippet_scope_enabled";b:1;s:11:"enable_tags";b:1;s:18:"enable_description";b:1;s:13:"disable_prism";b:0;}s:18:"description_editor";a:3:{s:4:"rows";i:5;s:12:"use_full_mce";b:0;s:13:"media_buttons";b:0;}s:6:"editor";a:8:{s:5:"theme";s:7:"default";s:16:"indent_with_tabs";b:1;s:8:"tab_size";i:4;s:11:"indent_unit";i:2;s:10:"wrap_lines";b:1;s:12:"line_numbers";b:1;s:19:"auto_close_brackets";b:1;s:27:"highlight_selection_matches";b:1;}}', 'yes'),
(749, 'recently_activated_snippets', 'a:0:{}', 'yes'),
(757, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(758, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(759, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(760, 'wpgmza_db_version', '6.4.06', 'yes'),
(761, 'wpgmaps_current_version', '6.4.06', 'yes'),
(762, 'widget_wpgmza_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(763, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:"wpgmza_settings_marker_pull";s:1:"0";}', 'yes'),
(764, 'wpgmza_stats', 'a:2:{s:14:"settings_basic";a:3:{s:5:"views";i:4;s:13:"last_accessed";s:19:"2017-12-13 07:09:32";s:14:"first_accessed";s:19:"2017-12-13 04:37:28";}s:15:"list_maps_basic";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2017-12-13 07:13:36";s:14:"first_accessed";s:19:"2017-12-13 04:44:02";}}', 'yes'),
(765, 'wpgmza_google_maps_api_key', 'AIzaSyBwC16OOqDvPi6n80Yr0F83h3LADTQmyxI', 'yes'),
(766, 'WPGMZA_FIRST_TIME', '6.4.06', 'yes'),
(779, 'widget_dreamshop_contact_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(780, 'theme_mods_dreamshop', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(781, 'wpis_options', 'a:5:{s:5:"arrow";s:4:"true";s:6:"carrow";s:5:"false";s:4:"zoom";s:4:"true";s:5:"popup";s:4:"true";s:8:"autoplay";s:4:"true";}', 'yes'),
(782, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1513163290', 'no'),
(783, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4412;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2520;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2465;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2382;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1848;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1616;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1612;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1439;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1369;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1368;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1355;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1285;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1280;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1161;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1072;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1055;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1005;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:972;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:843;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:836;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:817;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:785;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:778;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:683;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:675;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:672;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:670;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:663;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:650;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:640;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:638;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:619;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:618;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:600;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:592;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:591;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:590;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:583;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:572;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:569;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:550;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:541;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:530;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:526;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:513;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:504;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:504;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:498;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:484;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:484;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:480;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:474;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:461;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:458;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:456;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:451;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:450;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:447;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:429;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:416;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:416;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:416;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:410;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:407;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:402;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:400;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:391;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:386;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:379;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:358;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:353;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:351;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:346;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:338;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:337;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:336;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:331;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:330;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:328;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:325;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:324;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:321;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:319;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:307;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:304;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:298;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:298;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:292;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:288;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:288;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:286;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:283;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:282;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:279;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:279;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:278;}}', 'no'),
(790, '_transient_timeout_wc_featured_products', '1515745998', 'no'),
(791, '_transient_wc_featured_products', 'a:4:{i:0;i:33;i:1;i:32;i:2;i:31;i:3;i:29;}', 'no'),
(792, '_transient_timeout_wc_loop0e711512721798', '1515745998', 'no'),
(793, '_transient_wc_loop0e711512721798', 'a:2:{i:0;i:32;i:1;i:33;}', 'no'),
(794, '_transient_timeout_wc_related_33', '1513240430', 'no'),
(795, '_transient_wc_related_33', 'a:3:{i:0;s:2:"30";i:1;s:2:"31";i:2;s:2:"32";}', 'no'),
(796, '_transient_timeout_wc_related_28', '1513240468', 'no'),
(797, '_transient_wc_related_28', 'a:3:{i:0;s:2:"26";i:1;s:2:"27";i:2;s:2:"29";}', 'no'),
(801, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(804, '_site_transient_timeout_theme_roots', '1513156475', 'no'),
(805, '_site_transient_theme_roots', 'a:7:{s:8:"boutique";s:7:"/themes";s:4:"deli";s:7:"/themes";s:9:"dreamshop";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(807, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1513154684;s:7:"checked";a:22:{s:28:"2j-slideshow/2jslideshow.php";s:6:"1.3.23";s:19:"akismet/akismet.php";s:5:"4.0.1";s:31:"code-snippets/code-snippets.php";s:5:"2.9.4";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.9.2";s:29:"easy-wp-smtp/easy-wp-smtp.php";s:5:"1.3.1";s:9:"hello.php";s:3:"1.6";s:19:"jetpack/jetpack.php";s:3:"5.6";s:25:"profile-builder/index.php";s:5:"2.7.2";s:67:"woocommerce-simple-registration/woocommerce-simple-registration.php";s:5:"1.5.2";s:35:"oa-social-login/oa-social-login.php";s:5:"5.4.0";s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";s:4:"4.26";s:52:"theme-customisations-master/theme-customisations.php";s:5:"1.0.0";s:27:"woocommerce/woocommerce.php";s:5:"3.2.5";s:49:"woocommerce-login-popup-and-shortcodes/plugin.php";s:5:"1.0.1";s:57:"woocommerce-menu-extension/woocommerce-menu-extension.php";s:3:"1.6";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:5:"1.4.7";s:59:"woocommerce-products-slider/woocommerce-products-slider.php";s:7:"1.12.18";s:34:"woo-product-images-slider/wpis.php";s:5:"1.3.0";s:42:"wordpress-social-login/wp-social-login.php";s:5:"2.3.3";s:31:"wp-google-maps/wpGoogleMaps.php";s:6:"6.4.06";s:21:"wp-reset/wp-reset.php";s:5:"1.0.1";s:29:"wp-subscribe/wp-subscribe.php";s:5:"1.2.5";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-11 08:09:52";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.9.2/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:21:{s:28:"2j-slideshow/2jslideshow.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/2j-slideshow";s:4:"slug";s:12:"2j-slideshow";s:6:"plugin";s:28:"2j-slideshow/2jslideshow.php";s:11:"new_version";s:6:"1.3.23";s:3:"url";s:43:"https://wordpress.org/plugins/2j-slideshow/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/2j-slideshow.1.3.23.zip";s:5:"icons";a:3:{s:2:"1x";s:65:"https://ps.w.org/2j-slideshow/assets/icon-128x128.png?rev=1271183";s:2:"2x";s:65:"https://ps.w.org/2j-slideshow/assets/icon-256x256.png?rev=1271183";s:7:"default";s:65:"https://ps.w.org/2j-slideshow/assets/icon-256x256.png?rev=1271183";}s:7:"banners";a:3:{s:2:"2x";s:68:"https://ps.w.org/2j-slideshow/assets/banner-1544x500.png?rev=1271183";s:2:"1x";s:67:"https://ps.w.org/2j-slideshow/assets/banner-772x250.png?rev=1271183";s:7:"default";s:68:"https://ps.w.org/2j-slideshow/assets/banner-1544x500.png?rev=1271183";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:31:"code-snippets/code-snippets.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/code-snippets";s:4:"slug";s:13:"code-snippets";s:6:"plugin";s:31:"code-snippets/code-snippets.php";s:11:"new_version";s:5:"2.9.4";s:3:"url";s:44:"https://wordpress.org/plugins/code-snippets/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/code-snippets.zip";s:5:"icons";a:2:{s:3:"svg";s:57:"https://ps.w.org/code-snippets/assets/icon.svg?rev=986370";s:7:"default";s:57:"https://ps.w.org/code-snippets/assets/icon.svg?rev=986370";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=1490174";s:7:"default";s:68:"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=1490174";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:29:"easy-wp-smtp/easy-wp-smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/easy-wp-smtp";s:4:"slug";s:12:"easy-wp-smtp";s:6:"plugin";s:29:"easy-wp-smtp/easy-wp-smtp.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:43:"https://wordpress.org/plugins/easy-wp-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip";s:5:"icons";a:2:{s:2:"1x";s:65:"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044";s:7:"default";s:65:"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044";}s:7:"banners";a:2:{s:2:"1x";s:67:"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323";s:7:"default";s:67:"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:19:"jetpack/jetpack.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/jetpack";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"5.6";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.5.6.zip";s:5:"icons";a:4:{s:2:"1x";s:59:"https://ps.w.org/jetpack/assets/icon-128x128.png?rev=969908";s:2:"2x";s:59:"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=969908";s:3:"svg";s:51:"https://ps.w.org/jetpack/assets/icon.svg?rev=969908";s:7:"default";s:51:"https://ps.w.org/jetpack/assets/icon.svg?rev=969908";}s:7:"banners";a:3:{s:2:"2x";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1173629";s:2:"1x";s:62:"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1173629";s:7:"default";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1173629";}s:11:"banners_rtl";a:0:{}}s:25:"profile-builder/index.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/profile-builder";s:4:"slug";s:15:"profile-builder";s:6:"plugin";s:25:"profile-builder/index.php";s:11:"new_version";s:5:"2.7.2";s:3:"url";s:46:"https://wordpress.org/plugins/profile-builder/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/profile-builder.2.7.2.zip";s:5:"icons";a:3:{s:2:"1x";s:68:"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=1470754";s:2:"2x";s:68:"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754";s:7:"default";s:68:"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307";s:7:"default";s:70:"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307";}s:11:"banners_rtl";a:0:{}}s:67:"woocommerce-simple-registration/woocommerce-simple-registration.php";O:8:"stdClass":9:{s:2:"id";s:45:"w.org/plugins/woocommerce-simple-registration";s:4:"slug";s:31:"woocommerce-simple-registration";s:6:"plugin";s:67:"woocommerce-simple-registration/woocommerce-simple-registration.php";s:11:"new_version";s:5:"1.5.2";s:3:"url";s:62:"https://wordpress.org/plugins/woocommerce-simple-registration/";s:7:"package";s:80:"https://downloads.wordpress.org/plugin/woocommerce-simple-registration.1.5.2.zip";s:5:"icons";a:2:{s:2:"2x";s:84:"https://ps.w.org/woocommerce-simple-registration/assets/icon-256x256.png?rev=1488276";s:7:"default";s:84:"https://ps.w.org/woocommerce-simple-registration/assets/icon-256x256.png?rev=1488276";}s:7:"banners";a:3:{s:2:"2x";s:87:"https://ps.w.org/woocommerce-simple-registration/assets/banner-1544x500.png?rev=1488276";s:2:"1x";s:86:"https://ps.w.org/woocommerce-simple-registration/assets/banner-772x250.png?rev=1488276";s:7:"default";s:87:"https://ps.w.org/woocommerce-simple-registration/assets/banner-1544x500.png?rev=1488276";}s:11:"banners_rtl";a:0:{}}s:35:"oa-social-login/oa-social-login.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/oa-social-login";s:4:"slug";s:15:"oa-social-login";s:6:"plugin";s:35:"oa-social-login/oa-social-login.php";s:11:"new_version";s:5:"5.4.0";s:3:"url";s:46:"https://wordpress.org/plugins/oa-social-login/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/oa-social-login.5.4.0.zip";s:5:"icons";a:3:{s:2:"1x";s:68:"https://ps.w.org/oa-social-login/assets/icon-128x128.png?rev=1643974";s:2:"2x";s:68:"https://ps.w.org/oa-social-login/assets/icon-256x256.png?rev=1644019";s:7:"default";s:68:"https://ps.w.org/oa-social-login/assets/icon-256x256.png?rev=1644019";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/oa-social-login/assets/banner-772x250.png?rev=1641440";s:7:"default";s:70:"https://ps.w.org/oa-social-login/assets/banner-772x250.png?rev=1641440";}s:11:"banners_rtl";a:0:{}}s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";O:8:"stdClass":9:{s:2:"id";s:42:"w.org/plugins/social-media-buttons-toolbar";s:4:"slug";s:28:"social-media-buttons-toolbar";s:6:"plugin";s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";s:11:"new_version";s:4:"4.26";s:3:"url";s:59:"https://wordpress.org/plugins/social-media-buttons-toolbar/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/social-media-buttons-toolbar.4.26.zip";s:5:"icons";a:4:{s:2:"1x";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-128x128.png?rev=1396749";s:2:"2x";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-256x256.png?rev=1621322";s:0:"";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-512x512.png?rev=1621322";s:7:"default";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-256x256.png?rev=1621322";}s:7:"banners";a:2:{s:2:"1x";s:83:"https://ps.w.org/social-media-buttons-toolbar/assets/banner-772x250.png?rev=1621322";s:7:"default";s:83:"https://ps.w.org/social-media-buttons-toolbar/assets/banner-772x250.png?rev=1621322";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.2.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.2.5.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:7:"default";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";s:7:"default";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";}s:11:"banners_rtl";a:0:{}}s:49:"woocommerce-login-popup-and-shortcodes/plugin.php";O:8:"stdClass":9:{s:2:"id";s:52:"w.org/plugins/woocommerce-login-popup-and-shortcodes";s:4:"slug";s:38:"woocommerce-login-popup-and-shortcodes";s:6:"plugin";s:49:"woocommerce-login-popup-and-shortcodes/plugin.php";s:11:"new_version";s:5:"1.0.1";s:3:"url";s:69:"https://wordpress.org/plugins/woocommerce-login-popup-and-shortcodes/";s:7:"package";s:81:"https://downloads.wordpress.org/plugin/woocommerce-login-popup-and-shortcodes.zip";s:5:"icons";a:3:{s:2:"1x";s:91:"https://ps.w.org/woocommerce-login-popup-and-shortcodes/assets/icon-128x128.png?rev=1631630";s:2:"2x";s:91:"https://ps.w.org/woocommerce-login-popup-and-shortcodes/assets/icon-256x256.png?rev=1631630";s:7:"default";s:91:"https://ps.w.org/woocommerce-login-popup-and-shortcodes/assets/icon-256x256.png?rev=1631630";}s:7:"banners";a:3:{s:2:"2x";s:94:"https://ps.w.org/woocommerce-login-popup-and-shortcodes/assets/banner-1544x500.png?rev=1631630";s:2:"1x";s:93:"https://ps.w.org/woocommerce-login-popup-and-shortcodes/assets/banner-772x250.png?rev=1631630";s:7:"default";s:94:"https://ps.w.org/woocommerce-login-popup-and-shortcodes/assets/banner-1544x500.png?rev=1631630";}s:11:"banners_rtl";a:0:{}}s:57:"woocommerce-menu-extension/woocommerce-menu-extension.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/woocommerce-menu-extension";s:4:"slug";s:26:"woocommerce-menu-extension";s:6:"plugin";s:57:"woocommerce-menu-extension/woocommerce-menu-extension.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:57:"https://wordpress.org/plugins/woocommerce-menu-extension/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/woocommerce-menu-extension.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:81:"https://ps.w.org/woocommerce-menu-extension/assets/banner-772x250.jpg?rev=1043276";s:7:"default";s:81:"https://ps.w.org/woocommerce-menu-extension/assets/banner-772x250.jpg?rev=1043276";}s:11:"banners_rtl";a:0:{}}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":9:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.4.7";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.4.7.zip";s:5:"icons";a:3:{s:2:"1x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389";s:2:"2x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389";s:7:"default";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389";}s:7:"banners";a:3:{s:2:"2x";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389";s:2:"1x";s:98:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389";s:7:"default";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389";}s:11:"banners_rtl";a:0:{}}s:59:"woocommerce-products-slider/woocommerce-products-slider.php";O:8:"stdClass":9:{s:2:"id";s:41:"w.org/plugins/woocommerce-products-slider";s:4:"slug";s:27:"woocommerce-products-slider";s:6:"plugin";s:59:"woocommerce-products-slider/woocommerce-products-slider.php";s:11:"new_version";s:7:"1.12.18";s:3:"url";s:58:"https://wordpress.org/plugins/woocommerce-products-slider/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-products-slider.zip";s:5:"icons";a:3:{s:2:"1x";s:80:"https://ps.w.org/woocommerce-products-slider/assets/icon-128x128.png?rev=1637877";s:2:"2x";s:80:"https://ps.w.org/woocommerce-products-slider/assets/icon-256x256.png?rev=1637877";s:7:"default";s:80:"https://ps.w.org/woocommerce-products-slider/assets/icon-256x256.png?rev=1637877";}s:7:"banners";a:3:{s:2:"2x";s:83:"https://ps.w.org/woocommerce-products-slider/assets/banner-1544x500.png?rev=1637877";s:2:"1x";s:82:"https://ps.w.org/woocommerce-products-slider/assets/banner-772x250.png?rev=1637877";s:7:"default";s:83:"https://ps.w.org/woocommerce-products-slider/assets/banner-1544x500.png?rev=1637877";}s:11:"banners_rtl";a:0:{}}s:34:"woo-product-images-slider/wpis.php";O:8:"stdClass":9:{s:2:"id";s:39:"w.org/plugins/woo-product-images-slider";s:4:"slug";s:25:"woo-product-images-slider";s:6:"plugin";s:34:"woo-product-images-slider/wpis.php";s:11:"new_version";s:5:"1.3.0";s:3:"url";s:56:"https://wordpress.org/plugins/woo-product-images-slider/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/woo-product-images-slider.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:80:"https://ps.w.org/woo-product-images-slider/assets/banner-772x250.png?rev=1577092";s:7:"default";s:80:"https://ps.w.org/woo-product-images-slider/assets/banner-772x250.png?rev=1577092";}s:11:"banners_rtl";a:0:{}}s:42:"wordpress-social-login/wp-social-login.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/wordpress-social-login";s:4:"slug";s:22:"wordpress-social-login";s:6:"plugin";s:42:"wordpress-social-login/wp-social-login.php";s:11:"new_version";s:5:"2.3.3";s:3:"url";s:53:"https://wordpress.org/plugins/wordpress-social-login/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/wordpress-social-login.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/wordpress-social-login/assets/icon-128x128.png?rev=1013190";s:2:"2x";s:75:"https://ps.w.org/wordpress-social-login/assets/icon-256x256.png?rev=1013188";s:7:"default";s:75:"https://ps.w.org/wordpress-social-login/assets/icon-256x256.png?rev=1013188";}s:7:"banners";a:2:{s:2:"1x";s:76:"https://ps.w.org/wordpress-social-login/assets/banner-772x250.png?rev=503808";s:7:"default";s:76:"https://ps.w.org/wordpress-social-login/assets/banner-772x250.png?rev=503808";}s:11:"banners_rtl";a:0:{}}s:31:"wp-google-maps/wpGoogleMaps.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-google-maps";s:4:"slug";s:14:"wp-google-maps";s:6:"plugin";s:31:"wp-google-maps/wpGoogleMaps.php";s:11:"new_version";s:6:"6.4.06";s:3:"url";s:45:"https://wordpress.org/plugins/wp-google-maps/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-google-maps.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398";s:2:"2x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";s:7:"default";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";s:7:"default";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";}s:11:"banners_rtl";a:0:{}}s:21:"wp-reset/wp-reset.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-reset";s:4:"slug";s:8:"wp-reset";s:6:"plugin";s:21:"wp-reset/wp-reset.php";s:11:"new_version";s:5:"1.0.1";s:3:"url";s:39:"https://wordpress.org/plugins/wp-reset/";s:7:"package";s:51:"https://downloads.wordpress.org/plugin/wp-reset.zip";s:5:"icons";a:2:{s:2:"1x";s:61:"https://ps.w.org/wp-reset/assets/icon-128x128.png?rev=1431144";s:7:"default";s:61:"https://ps.w.org/wp-reset/assets/icon-128x128.png?rev=1431144";}s:7:"banners";a:2:{s:2:"1x";s:63:"https://ps.w.org/wp-reset/assets/banner-772x250.png?rev=1431144";s:7:"default";s:63:"https://ps.w.org/wp-reset/assets/banner-772x250.png?rev=1431144";}s:11:"banners_rtl";a:0:{}}s:29:"wp-subscribe/wp-subscribe.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-subscribe";s:4:"slug";s:12:"wp-subscribe";s:6:"plugin";s:29:"wp-subscribe/wp-subscribe.php";s:11:"new_version";s:5:"1.2.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-subscribe/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-subscribe.1.2.5.zip";s:5:"icons";a:3:{s:2:"1x";s:65:"https://ps.w.org/wp-subscribe/assets/icon-128x128.png?rev=1007129";s:2:"2x";s:65:"https://ps.w.org/wp-subscribe/assets/icon-256x256.png?rev=1007129";s:7:"default";s:65:"https://ps.w.org/wp-subscribe/assets/icon-256x256.png?rev=1007129";}s:7:"banners";a:2:{s:2:"1x";s:67:"https://ps.w.org/wp-subscribe/assets/banner-772x250.png?rev=1007129";s:7:"default";s:67:"https://ps.w.org/wp-subscribe/assets/banner-772x250.png?rev=1007129";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(808, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1513154686;s:7:"version";s:5:"4.9.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(809, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wp_attached_file', '2017/12/beanie-1.jpg'),
(3, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:20:"2017/12/beanie-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"beanie-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"beanie-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"beanie-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"beanie-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"beanie-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"beanie-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 8, '_starter_content_theme', 'storefront'),
(6, 9, '_wp_attached_file', '2017/12/belt-1.jpg'),
(7, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:18:"2017/12/belt-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"belt-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"belt-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"belt-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"belt-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"belt-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"belt-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 9, '_starter_content_theme', 'storefront'),
(10, 10, '_wp_attached_file', '2017/12/cap-1.jpg'),
(11, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:17:"2017/12/cap-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"cap-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"cap-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cap-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"cap-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"cap-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"cap-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 10, '_starter_content_theme', 'storefront'),
(14, 11, '_wp_attached_file', '2017/12/hoodie-with-logo-1.jpg'),
(15, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:30:"2017/12/hoodie-with-logo-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"hoodie-with-logo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"hoodie-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"hoodie-with-logo-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"hoodie-with-logo-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"hoodie-with-logo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"hoodie-with-logo-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 11, '_starter_content_theme', 'storefront'),
(18, 12, '_wp_attached_file', '2017/12/hoodie-with-pocket-1.jpg'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:32:"2017/12/hoodie-with-pocket-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-pocket-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"hoodie-with-pocket-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"hoodie-with-pocket-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-pocket-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"hoodie-with-pocket-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"hoodie-with-pocket-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 12, '_starter_content_theme', 'storefront'),
(22, 13, '_wp_attached_file', '2017/12/hoodie-with-zipper-1.jpg'),
(23, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:32:"2017/12/hoodie-with-zipper-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-zipper-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"hoodie-with-zipper-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"hoodie-with-zipper-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"hoodie-with-zipper-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"hoodie-with-zipper-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"hoodie-with-zipper-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(24, 13, '_starter_content_theme', 'storefront'),
(26, 14, '_wp_attached_file', '2017/12/hoodie-1.jpg'),
(27, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:20:"2017/12/hoodie-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"hoodie-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"hoodie-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"hoodie-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"hoodie-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"hoodie-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"hoodie-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 14, '_starter_content_theme', 'storefront'),
(30, 15, '_wp_attached_file', '2017/12/long-sleeve-tee-1.jpg'),
(31, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:29:"2017/12/long-sleeve-tee-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"long-sleeve-tee-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"long-sleeve-tee-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"long-sleeve-tee-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"long-sleeve-tee-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"long-sleeve-tee-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:29:"long-sleeve-tee-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 15, '_starter_content_theme', 'storefront'),
(34, 16, '_wp_attached_file', '2017/12/polo-1.jpg'),
(35, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:800;s:4:"file";s:18:"2017/12/polo-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"polo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"polo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"polo-1-768x767.jpg";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"polo-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"polo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"polo-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 16, '_starter_content_theme', 'storefront'),
(38, 17, '_wp_attached_file', '2017/12/sunglasses-1.jpg'),
(39, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:24:"2017/12/sunglasses-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"sunglasses-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"sunglasses-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"sunglasses-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"sunglasses-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"sunglasses-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"sunglasses-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(40, 17, '_starter_content_theme', 'storefront'),
(42, 18, '_wp_attached_file', '2017/12/tshirt-1.jpg'),
(43, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:20:"2017/12/tshirt-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"tshirt-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"tshirt-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"tshirt-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"tshirt-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"tshirt-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"tshirt-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(44, 18, '_starter_content_theme', 'storefront'),
(46, 19, '_wp_attached_file', '2017/12/vneck-tee-1.jpg'),
(47, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:800;s:4:"file";s:23:"2017/12/vneck-tee-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"vneck-tee-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"vneck-tee-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"vneck-tee-1-768x767.jpg";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"vneck-tee-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"vneck-tee-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"vneck-tee-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(48, 19, '_starter_content_theme', 'storefront'),
(50, 20, '_wp_attached_file', '2017/12/hero-1.jpg'),
(51, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3795;s:6:"height";i:2355;s:4:"file";s:18:"2017/12/hero-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"hero-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"hero-1-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"hero-1-768x477.jpg";s:5:"width";i:768;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"hero-1-1024x635.jpg";s:5:"width";i:1024;s:6:"height";i:635;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"hero-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"hero-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"hero-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 20, '_starter_content_theme', 'storefront'),
(54, 21, '_wp_attached_file', '2017/12/accessories-1.jpg'),
(55, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:25:"2017/12/accessories-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"accessories-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"accessories-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"accessories-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"accessories-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"accessories-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"accessories-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 21, '_starter_content_theme', 'storefront'),
(58, 22, '_wp_attached_file', '2017/12/tshirts-1.jpg'),
(59, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:801;s:6:"height";i:801;s:4:"file";s:21:"2017/12/tshirts-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"tshirts-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"tshirts-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"tshirts-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"tshirts-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"tshirts-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"tshirts-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(60, 22, '_starter_content_theme', 'storefront'),
(62, 23, '_wp_attached_file', '2017/12/hoodies-1.jpg'),
(63, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:21:"2017/12/hoodies-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"hoodies-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"hoodies-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"hoodies-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"hoodies-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"hoodies-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"hoodies-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 23, '_starter_content_theme', 'storefront'),
(67, 24, '_wp_page_template', 'template-homepage.php'),
(69, 24, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(71, 25, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(72, 26, '_thumbnail_id', '8'),
(74, 26, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(75, 27, '_thumbnail_id', '9'),
(77, 27, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(78, 28, '_thumbnail_id', '10'),
(80, 28, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(81, 29, '_thumbnail_id', '17'),
(83, 29, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(84, 30, '_thumbnail_id', '11'),
(86, 30, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(87, 31, '_thumbnail_id', '12'),
(89, 31, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(90, 32, '_thumbnail_id', '13'),
(92, 32, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(93, 33, '_thumbnail_id', '14'),
(95, 33, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(96, 34, '_thumbnail_id', '15'),
(98, 34, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(99, 35, '_thumbnail_id', '16'),
(101, 35, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(102, 36, '_thumbnail_id', '18'),
(104, 36, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(105, 37, '_thumbnail_id', '19'),
(107, 37, '_customize_changeset_uuid', '4fc57191-c48a-4462-98e5-92705e3c5685'),
(108, 38, '_edit_lock', '1512721790:1'),
(109, 26, '_wc_review_count', '0'),
(110, 26, '_wc_rating_count', 'a:0:{}'),
(111, 26, '_wc_average_rating', '0'),
(112, 26, '_sku', ''),
(113, 26, '_regular_price', '20'),
(114, 26, '_sale_price', '18'),
(115, 26, '_sale_price_dates_from', ''),
(116, 26, '_sale_price_dates_to', ''),
(117, 26, 'total_sales', '0'),
(118, 26, '_tax_status', 'taxable'),
(119, 26, '_tax_class', ''),
(120, 26, '_manage_stock', 'no'),
(121, 26, '_backorders', 'no'),
(122, 26, '_sold_individually', 'no'),
(123, 26, '_weight', ''),
(124, 26, '_length', ''),
(125, 26, '_width', ''),
(126, 26, '_height', ''),
(127, 26, '_upsell_ids', 'a:0:{}'),
(128, 26, '_crosssell_ids', 'a:0:{}'),
(129, 26, '_purchase_note', ''),
(130, 26, '_default_attributes', 'a:0:{}'),
(131, 26, '_virtual', 'no'),
(132, 26, '_downloadable', 'no'),
(133, 26, '_product_image_gallery', ''),
(134, 26, '_download_limit', '-1'),
(135, 26, '_download_expiry', '-1'),
(136, 26, '_stock', NULL),
(137, 26, '_stock_status', 'instock'),
(138, 26, '_product_version', '3.2.5'),
(139, 26, '_price', '18'),
(140, 27, '_wc_review_count', '0'),
(141, 27, '_wc_rating_count', 'a:0:{}'),
(142, 27, '_wc_average_rating', '0'),
(143, 27, '_sku', ''),
(144, 27, '_regular_price', '65'),
(145, 27, '_sale_price', '55'),
(146, 27, '_sale_price_dates_from', ''),
(147, 27, '_sale_price_dates_to', ''),
(148, 27, 'total_sales', '0'),
(149, 27, '_tax_status', 'taxable'),
(150, 27, '_tax_class', ''),
(151, 27, '_manage_stock', 'no'),
(152, 27, '_backorders', 'no'),
(153, 27, '_sold_individually', 'no'),
(154, 27, '_weight', ''),
(155, 27, '_length', ''),
(156, 27, '_width', ''),
(157, 27, '_height', ''),
(158, 27, '_upsell_ids', 'a:0:{}'),
(159, 27, '_crosssell_ids', 'a:0:{}'),
(160, 27, '_purchase_note', ''),
(161, 27, '_default_attributes', 'a:0:{}'),
(162, 27, '_virtual', 'no'),
(163, 27, '_downloadable', 'no'),
(164, 27, '_product_image_gallery', ''),
(165, 27, '_download_limit', '-1'),
(166, 27, '_download_expiry', '-1'),
(167, 27, '_stock', NULL),
(168, 27, '_stock_status', 'instock'),
(169, 27, '_product_version', '3.2.5'),
(170, 27, '_price', '55'),
(171, 28, '_wc_review_count', '0'),
(172, 28, '_wc_rating_count', 'a:0:{}'),
(173, 28, '_wc_average_rating', '0'),
(174, 28, '_sku', ''),
(175, 28, '_regular_price', '18'),
(176, 28, '_sale_price', '16'),
(177, 28, '_sale_price_dates_from', ''),
(178, 28, '_sale_price_dates_to', ''),
(179, 28, 'total_sales', '1'),
(180, 28, '_tax_status', 'taxable'),
(181, 28, '_tax_class', ''),
(182, 28, '_manage_stock', 'no'),
(183, 28, '_backorders', 'no'),
(184, 28, '_sold_individually', 'no'),
(185, 28, '_weight', ''),
(186, 28, '_length', ''),
(187, 28, '_width', ''),
(188, 28, '_height', ''),
(189, 28, '_upsell_ids', 'a:0:{}'),
(190, 28, '_crosssell_ids', 'a:0:{}'),
(191, 28, '_purchase_note', ''),
(192, 28, '_default_attributes', 'a:0:{}'),
(193, 28, '_virtual', 'no'),
(194, 28, '_downloadable', 'no'),
(195, 28, '_product_image_gallery', ''),
(196, 28, '_download_limit', '-1'),
(197, 28, '_download_expiry', '-1'),
(198, 28, '_stock', NULL),
(199, 28, '_stock_status', 'instock'),
(200, 28, '_product_version', '3.2.5'),
(201, 28, '_price', '16'),
(202, 29, '_wc_review_count', '0'),
(203, 29, '_wc_rating_count', 'a:0:{}'),
(204, 29, '_wc_average_rating', '0'),
(205, 29, '_sku', ''),
(206, 29, '_regular_price', '90'),
(207, 29, '_sale_price', ''),
(208, 29, '_sale_price_dates_from', ''),
(209, 29, '_sale_price_dates_to', ''),
(210, 29, 'total_sales', '0'),
(211, 29, '_tax_status', 'taxable'),
(212, 29, '_tax_class', ''),
(213, 29, '_manage_stock', 'no'),
(214, 29, '_backorders', 'no'),
(215, 29, '_sold_individually', 'no'),
(216, 29, '_weight', ''),
(217, 29, '_length', ''),
(218, 29, '_width', ''),
(219, 29, '_height', ''),
(220, 29, '_upsell_ids', 'a:0:{}'),
(221, 29, '_crosssell_ids', 'a:0:{}'),
(222, 29, '_purchase_note', ''),
(223, 29, '_default_attributes', 'a:0:{}'),
(224, 29, '_virtual', 'no'),
(225, 29, '_downloadable', 'no'),
(226, 29, '_product_image_gallery', ''),
(227, 29, '_download_limit', '-1'),
(228, 29, '_download_expiry', '-1'),
(229, 29, '_stock', NULL),
(230, 29, '_stock_status', 'instock'),
(231, 29, '_product_version', '3.2.5'),
(232, 29, '_price', '90'),
(233, 30, '_wc_review_count', '0'),
(234, 30, '_wc_rating_count', 'a:0:{}'),
(235, 30, '_wc_average_rating', '0'),
(236, 30, '_sku', ''),
(237, 30, '_regular_price', '45'),
(238, 30, '_sale_price', ''),
(239, 30, '_sale_price_dates_from', ''),
(240, 30, '_sale_price_dates_to', ''),
(241, 30, 'total_sales', '1'),
(242, 30, '_tax_status', 'taxable'),
(243, 30, '_tax_class', ''),
(244, 30, '_manage_stock', 'no'),
(245, 30, '_backorders', 'no'),
(246, 30, '_sold_individually', 'no'),
(247, 30, '_weight', ''),
(248, 30, '_length', ''),
(249, 30, '_width', ''),
(250, 30, '_height', ''),
(251, 30, '_upsell_ids', 'a:0:{}'),
(252, 30, '_crosssell_ids', 'a:0:{}'),
(253, 30, '_purchase_note', ''),
(254, 30, '_default_attributes', 'a:0:{}'),
(255, 30, '_virtual', 'no'),
(256, 30, '_downloadable', 'no'),
(257, 30, '_product_image_gallery', ''),
(258, 30, '_download_limit', '-1'),
(259, 30, '_download_expiry', '-1'),
(260, 30, '_stock', NULL),
(261, 30, '_stock_status', 'instock'),
(262, 30, '_product_version', '3.2.5'),
(263, 30, '_price', '45'),
(264, 31, '_wc_review_count', '0'),
(265, 31, '_wc_rating_count', 'a:0:{}'),
(266, 31, '_wc_average_rating', '0'),
(267, 31, '_sku', ''),
(268, 31, '_regular_price', '45'),
(269, 31, '_sale_price', '35'),
(270, 31, '_sale_price_dates_from', ''),
(271, 31, '_sale_price_dates_to', ''),
(272, 31, 'total_sales', '0'),
(273, 31, '_tax_status', 'taxable'),
(274, 31, '_tax_class', ''),
(275, 31, '_manage_stock', 'no'),
(276, 31, '_backorders', 'no'),
(277, 31, '_sold_individually', 'no'),
(278, 31, '_weight', ''),
(279, 31, '_length', ''),
(280, 31, '_width', ''),
(281, 31, '_height', ''),
(282, 31, '_upsell_ids', 'a:0:{}'),
(283, 31, '_crosssell_ids', 'a:0:{}'),
(284, 31, '_purchase_note', ''),
(285, 31, '_default_attributes', 'a:0:{}'),
(286, 31, '_virtual', 'no'),
(287, 31, '_downloadable', 'no'),
(288, 31, '_product_image_gallery', ''),
(289, 31, '_download_limit', '-1'),
(290, 31, '_download_expiry', '-1'),
(291, 31, '_stock', NULL),
(292, 31, '_stock_status', 'instock'),
(293, 31, '_product_version', '3.2.5'),
(294, 31, '_price', '35'),
(295, 32, '_wc_review_count', '0'),
(296, 32, '_wc_rating_count', 'a:0:{}'),
(297, 32, '_wc_average_rating', '0'),
(298, 32, '_sku', ''),
(299, 32, '_regular_price', '45'),
(300, 32, '_sale_price', ''),
(301, 32, '_sale_price_dates_from', ''),
(302, 32, '_sale_price_dates_to', ''),
(303, 32, 'total_sales', '0'),
(304, 32, '_tax_status', 'taxable'),
(305, 32, '_tax_class', ''),
(306, 32, '_manage_stock', 'no'),
(307, 32, '_backorders', 'no'),
(308, 32, '_sold_individually', 'no'),
(309, 32, '_weight', ''),
(310, 32, '_length', ''),
(311, 32, '_width', ''),
(312, 32, '_height', ''),
(313, 32, '_upsell_ids', 'a:0:{}'),
(314, 32, '_crosssell_ids', 'a:0:{}'),
(315, 32, '_purchase_note', ''),
(316, 32, '_default_attributes', 'a:0:{}'),
(317, 32, '_virtual', 'no'),
(318, 32, '_downloadable', 'no'),
(319, 32, '_product_image_gallery', ''),
(320, 32, '_download_limit', '-1'),
(321, 32, '_download_expiry', '-1'),
(322, 32, '_stock', NULL),
(323, 32, '_stock_status', 'instock'),
(324, 32, '_product_version', '3.2.5'),
(325, 32, '_price', '45'),
(326, 33, '_wc_review_count', '0'),
(327, 33, '_wc_rating_count', 'a:0:{}'),
(328, 33, '_wc_average_rating', '0'),
(329, 33, '_sku', ''),
(330, 33, '_regular_price', '45'),
(331, 33, '_sale_price', '42'),
(332, 33, '_sale_price_dates_from', ''),
(333, 33, '_sale_price_dates_to', ''),
(334, 33, 'total_sales', '0'),
(335, 33, '_tax_status', 'taxable'),
(336, 33, '_tax_class', ''),
(337, 33, '_manage_stock', 'no'),
(338, 33, '_backorders', 'no'),
(339, 33, '_sold_individually', 'no'),
(340, 33, '_weight', ''),
(341, 33, '_length', ''),
(342, 33, '_width', ''),
(343, 33, '_height', ''),
(344, 33, '_upsell_ids', 'a:0:{}'),
(345, 33, '_crosssell_ids', 'a:0:{}'),
(346, 33, '_purchase_note', ''),
(347, 33, '_default_attributes', 'a:0:{}'),
(348, 33, '_virtual', 'no'),
(349, 33, '_downloadable', 'no'),
(350, 33, '_product_image_gallery', ''),
(351, 33, '_download_limit', '-1'),
(352, 33, '_download_expiry', '-1'),
(353, 33, '_stock', NULL),
(354, 33, '_stock_status', 'instock'),
(355, 33, '_product_version', '3.2.5'),
(356, 33, '_price', '42'),
(357, 34, '_wc_review_count', '0'),
(358, 34, '_wc_rating_count', 'a:0:{}'),
(359, 34, '_wc_average_rating', '0'),
(360, 34, '_sku', ''),
(361, 34, '_regular_price', '25'),
(362, 34, '_sale_price', ''),
(363, 34, '_sale_price_dates_from', ''),
(364, 34, '_sale_price_dates_to', ''),
(365, 34, 'total_sales', '1'),
(366, 34, '_tax_status', 'taxable'),
(367, 34, '_tax_class', ''),
(368, 34, '_manage_stock', 'no'),
(369, 34, '_backorders', 'no'),
(370, 34, '_sold_individually', 'no'),
(371, 34, '_weight', ''),
(372, 34, '_length', ''),
(373, 34, '_width', ''),
(374, 34, '_height', ''),
(375, 34, '_upsell_ids', 'a:0:{}'),
(376, 34, '_crosssell_ids', 'a:0:{}'),
(377, 34, '_purchase_note', ''),
(378, 34, '_default_attributes', 'a:0:{}'),
(379, 34, '_virtual', 'no'),
(380, 34, '_downloadable', 'no'),
(381, 34, '_product_image_gallery', ''),
(382, 34, '_download_limit', '-1'),
(383, 34, '_download_expiry', '-1'),
(384, 34, '_stock', NULL),
(385, 34, '_stock_status', 'instock'),
(386, 34, '_product_version', '3.2.5'),
(387, 34, '_price', '25'),
(388, 35, '_wc_review_count', '0'),
(389, 35, '_wc_rating_count', 'a:0:{}'),
(390, 35, '_wc_average_rating', '0'),
(391, 35, '_sku', ''),
(392, 35, '_regular_price', '20'),
(393, 35, '_sale_price', ''),
(394, 35, '_sale_price_dates_from', ''),
(395, 35, '_sale_price_dates_to', ''),
(396, 35, 'total_sales', '0'),
(397, 35, '_tax_status', 'taxable'),
(398, 35, '_tax_class', ''),
(399, 35, '_manage_stock', 'no'),
(400, 35, '_backorders', 'no'),
(401, 35, '_sold_individually', 'no'),
(402, 35, '_weight', ''),
(403, 35, '_length', ''),
(404, 35, '_width', ''),
(405, 35, '_height', ''),
(406, 35, '_upsell_ids', 'a:0:{}'),
(407, 35, '_crosssell_ids', 'a:0:{}'),
(408, 35, '_purchase_note', ''),
(409, 35, '_default_attributes', 'a:0:{}'),
(410, 35, '_virtual', 'no'),
(411, 35, '_downloadable', 'no'),
(412, 35, '_product_image_gallery', ''),
(413, 35, '_download_limit', '-1'),
(414, 35, '_download_expiry', '-1'),
(415, 35, '_stock', NULL),
(416, 35, '_stock_status', 'instock'),
(417, 35, '_product_version', '3.2.5'),
(418, 35, '_price', '20'),
(419, 36, '_wc_review_count', '0'),
(420, 36, '_wc_rating_count', 'a:0:{}'),
(421, 36, '_wc_average_rating', '0'),
(422, 36, '_sku', ''),
(423, 36, '_regular_price', '18'),
(424, 36, '_sale_price', ''),
(425, 36, '_sale_price_dates_from', ''),
(426, 36, '_sale_price_dates_to', ''),
(427, 36, 'total_sales', '1'),
(428, 36, '_tax_status', 'taxable'),
(429, 36, '_tax_class', ''),
(430, 36, '_manage_stock', 'no'),
(431, 36, '_backorders', 'no'),
(432, 36, '_sold_individually', 'no'),
(433, 36, '_weight', ''),
(434, 36, '_length', ''),
(435, 36, '_width', ''),
(436, 36, '_height', ''),
(437, 36, '_upsell_ids', 'a:0:{}'),
(438, 36, '_crosssell_ids', 'a:0:{}'),
(439, 36, '_purchase_note', ''),
(440, 36, '_default_attributes', 'a:0:{}'),
(441, 36, '_virtual', 'no'),
(442, 36, '_downloadable', 'no'),
(443, 36, '_product_image_gallery', ''),
(444, 36, '_download_limit', '-1'),
(445, 36, '_download_expiry', '-1'),
(446, 36, '_stock', NULL),
(447, 36, '_stock_status', 'instock'),
(448, 36, '_product_version', '3.2.5'),
(449, 36, '_price', '18'),
(450, 37, '_wc_review_count', '0'),
(451, 37, '_wc_rating_count', 'a:0:{}'),
(452, 37, '_wc_average_rating', '0'),
(453, 37, '_sku', ''),
(454, 37, '_regular_price', '18'),
(455, 37, '_sale_price', ''),
(456, 37, '_sale_price_dates_from', ''),
(457, 37, '_sale_price_dates_to', ''),
(458, 37, 'total_sales', '0'),
(459, 37, '_tax_status', 'taxable'),
(460, 37, '_tax_class', ''),
(461, 37, '_manage_stock', 'no'),
(462, 37, '_backorders', 'no'),
(463, 37, '_sold_individually', 'no'),
(464, 37, '_weight', ''),
(465, 37, '_length', ''),
(466, 37, '_width', ''),
(467, 37, '_height', ''),
(468, 37, '_upsell_ids', 'a:0:{}'),
(469, 37, '_crosssell_ids', 'a:0:{}'),
(470, 37, '_purchase_note', ''),
(471, 37, '_default_attributes', 'a:0:{}'),
(472, 37, '_virtual', 'no'),
(473, 37, '_downloadable', 'no'),
(474, 37, '_product_image_gallery', ''),
(475, 37, '_download_limit', '-1'),
(476, 37, '_download_expiry', '-1'),
(477, 37, '_stock', NULL),
(478, 37, '_stock_status', 'instock'),
(479, 37, '_product_version', '3.2.5'),
(480, 37, '_price', '18'),
(481, 38, '_wp_trash_meta_status', 'publish'),
(482, 38, '_wp_trash_meta_time', '1512721798'),
(483, 4, '_edit_lock', '1513005584:1'),
(484, 25, '_edit_lock', '1513005454:1'),
(485, 24, '_edit_lock', '1513007795:1'),
(486, 7, '_edit_lock', '1512836633:1'),
(487, 7, '_edit_last', '1'),
(488, 7, '_wp_page_template', 'default'),
(489, 46, '_edit_last', '1'),
(490, 46, '_edit_lock', '1513005439:1'),
(491, 46, '_wp_page_template', 'default'),
(492, 5, '_edit_lock', '1513154019:1'),
(493, 6, '_edit_lock', '1513005474:1'),
(494, 2, '_edit_lock', '1513005326:1'),
(495, 48, '_wp_trash_meta_status', 'publish'),
(496, 48, '_wp_trash_meta_time', '1512838603'),
(497, 52, '_order_key', 'wc_order_5a2cf7207c242'),
(498, 52, '_customer_user', '3'),
(499, 52, '_payment_method', 'cheque'),
(500, 52, '_payment_method_title', 'Check payments'),
(501, 52, '_transaction_id', ''),
(502, 52, '_customer_ip_address', '::1'),
(503, 52, '_customer_user_agent', 'mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/61.0.3163.100 safari/537.36'),
(504, 52, '_created_via', 'checkout'),
(505, 52, '_date_completed', ''),
(506, 52, '_completed_date', ''),
(507, 52, '_date_paid', ''),
(508, 52, '_paid_date', ''),
(509, 52, '_cart_hash', '5780b793eb984cf3e901eacd3b5c5157'),
(510, 52, '_billing_first_name', 'Thanh'),
(511, 52, '_billing_last_name', 'Vo'),
(512, 52, '_billing_company', ''),
(513, 52, '_billing_address_1', 'Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12'),
(514, 52, '_billing_address_2', ''),
(515, 52, '_billing_city', 'Hồ Chí Minh'),
(516, 52, '_billing_state', ''),
(517, 52, '_billing_postcode', '084'),
(518, 52, '_billing_country', 'VN'),
(519, 52, '_billing_email', 'facebook_user_vo_duy_thanh@example.com'),
(520, 52, '_billing_phone', ''),
(521, 52, '_shipping_first_name', 'Thanh'),
(522, 52, '_shipping_last_name', 'Vo'),
(523, 52, '_shipping_company', ''),
(524, 52, '_shipping_address_1', 'Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12'),
(525, 52, '_shipping_address_2', ''),
(526, 52, '_shipping_city', 'Hồ Chí Minh'),
(527, 52, '_shipping_state', ''),
(528, 52, '_shipping_postcode', '084'),
(529, 52, '_shipping_country', 'VN'),
(530, 52, '_order_currency', 'VND'),
(531, 52, '_cart_discount', '0'),
(532, 52, '_cart_discount_tax', '0'),
(533, 52, '_order_shipping', '0'),
(534, 52, '_order_shipping_tax', '0'),
(535, 52, '_order_tax', '0'),
(536, 52, '_order_total', '18.00'),
(537, 52, '_order_version', '3.2.5'),
(538, 52, '_prices_include_tax', 'no'),
(539, 52, '_billing_address_index', 'Thanh Vo  Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12  Hồ Chí Minh  084 VN facebook_user_vo_duy_thanh@example.com '),
(540, 52, '_shipping_address_index', 'Thanh Vo  Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12  Hồ Chí Minh  084 VN'),
(541, 52, '_recorded_sales', 'yes'),
(542, 52, '_recorded_coupon_usage_counts', 'yes'),
(543, 52, '_order_stock_reduced', 'yes'),
(544, 49, '_customize_restore_dismissed', '1'),
(545, 53, '_edit_lock', '1513004962:1'),
(546, 54, '_menu_item_type', 'custom'),
(547, 54, '_menu_item_menu_item_parent', '0'),
(548, 54, '_menu_item_object_id', '54'),
(549, 54, '_menu_item_object', 'custom'),
(550, 54, '_menu_item_target', ''),
(551, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(552, 54, '_menu_item_xfn', ''),
(553, 54, '_menu_item_url', 'http://localhost/wordpress'),
(554, 53, '_wp_trash_meta_status', 'publish'),
(555, 53, '_wp_trash_meta_time', '1513004963'),
(556, 2, '_edit_last', '1'),
(563, 7, '_wp_trash_meta_status', 'publish'),
(564, 7, '_wp_trash_meta_time', '1513005624'),
(565, 7, '_wp_desired_post_slug', 'my-account'),
(566, 25, '_wp_trash_meta_status', 'publish'),
(567, 25, '_wp_trash_meta_time', '1513005657'),
(568, 25, '_wp_desired_post_slug', 'blog'),
(569, 4, '_edit_last', '1'),
(570, 63, '_menu_item_type', 'custom'),
(571, 63, '_menu_item_menu_item_parent', '0'),
(572, 63, '_menu_item_object_id', '63'),
(573, 63, '_menu_item_object', 'custom'),
(574, 63, '_menu_item_target', ''),
(575, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(576, 63, '_menu_item_xfn', ''),
(577, 63, '_menu_item_url', 'http://localhost/wordpress/thuc-don'),
(579, 64, '_menu_item_type', 'custom'),
(580, 64, '_menu_item_menu_item_parent', '63'),
(581, 64, '_menu_item_object_id', '64'),
(582, 64, '_menu_item_object', 'custom'),
(583, 64, '_menu_item_target', ''),
(584, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(585, 64, '_menu_item_xfn', ''),
(586, 64, '_menu_item_url', 'http://localhost/wordpress/mon-chinh'),
(588, 65, '_menu_item_type', 'custom'),
(589, 65, '_menu_item_menu_item_parent', '63'),
(590, 65, '_menu_item_object_id', '65'),
(591, 65, '_menu_item_object', 'custom'),
(592, 65, '_menu_item_target', ''),
(593, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(594, 65, '_menu_item_xfn', ''),
(595, 65, '_menu_item_url', 'http://localhost/wordpress/mon-an-kem'),
(597, 66, '_menu_item_type', 'custom'),
(598, 66, '_menu_item_menu_item_parent', '63'),
(599, 66, '_menu_item_object_id', '66'),
(600, 66, '_menu_item_object', 'custom'),
(601, 66, '_menu_item_target', ''),
(602, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(603, 66, '_menu_item_xfn', ''),
(604, 66, '_menu_item_url', 'http://localhost/wordpress/combo-tiet-kiem'),
(606, 67, '_menu_item_type', 'custom'),
(607, 67, '_menu_item_menu_item_parent', '63'),
(608, 67, '_menu_item_object_id', '67'),
(609, 67, '_menu_item_object', 'custom'),
(610, 67, '_menu_item_target', ''),
(611, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(612, 67, '_menu_item_xfn', ''),
(613, 67, '_menu_item_url', 'http://localhost/wordpress/nuoc-uong'),
(615, 68, '_menu_item_type', 'post_type'),
(616, 68, '_menu_item_menu_item_parent', '0'),
(617, 68, '_menu_item_object_id', '46'),
(618, 68, '_menu_item_object', 'page'),
(619, 68, '_menu_item_target', ''),
(620, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(621, 68, '_menu_item_xfn', ''),
(622, 68, '_menu_item_url', ''),
(624, 69, '_menu_item_type', 'post_type'),
(625, 69, '_menu_item_menu_item_parent', '0'),
(626, 69, '_menu_item_object_id', '2'),
(627, 69, '_menu_item_object', 'page'),
(628, 69, '_menu_item_target', ''),
(629, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(630, 69, '_menu_item_xfn', ''),
(631, 69, '_menu_item_url', ''),
(633, 70, '_menu_item_type', 'custom'),
(634, 70, '_menu_item_menu_item_parent', '0'),
(635, 70, '_menu_item_object_id', '70'),
(636, 70, '_menu_item_object', 'custom'),
(637, 70, '_menu_item_target', ''),
(638, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(639, 70, '_menu_item_xfn', ''),
(640, 70, '_menu_item_url', '#'),
(660, 73, '_wp_attached_file', '2017/12/logo-KO93qNb0QW.png'),
(661, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:83;s:4:"file";s:27:"2017/12/logo-KO93qNb0QW.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"logo-KO93qNb0QW-150x83.png";s:5:"width";i:150;s:6:"height";i:83;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(662, 73, '_wp_attachment_image_alt', ''),
(663, 74, '_wp_trash_meta_status', 'publish'),
(664, 74, '_wp_trash_meta_time', '1513006817'),
(665, 75, '_wp_trash_meta_status', 'publish'),
(666, 75, '_wp_trash_meta_time', '1513007032'),
(667, 76, '_wp_trash_meta_status', 'publish'),
(668, 76, '_wp_trash_meta_time', '1513007101'),
(669, 77, '_edit_lock', '1513010861:1'),
(670, 77, '_edit_last', '1'),
(671, 78, '_wp_attached_file', '2017/12/bannhbao-uAlesGVQ1x.png'),
(672, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:31:"2017/12/bannhbao-uAlesGVQ1x.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"bannhbao-uAlesGVQ1x-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"bannhbao-uAlesGVQ1x-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:31:"bannhbao-uAlesGVQ1x-768x576.png";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"bannhbao-uAlesGVQ1x-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"bannhbao-uAlesGVQ1x-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"bannhbao-uAlesGVQ1x-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:31:"bannhbao-uAlesGVQ1x-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(673, 78, '_wp_attachment_image_alt', 'Bánh Bao Đình Ký'),
(674, 79, '_wp_attached_file', '2017/12/com-yc099vPAqo.png'),
(675, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:26:"2017/12/com-yc099vPAqo.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"com-yc099vPAqo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"com-yc099vPAqo-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"com-yc099vPAqo-768x576.png";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"com-yc099vPAqo-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"com-yc099vPAqo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"com-yc099vPAqo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:26:"com-yc099vPAqo-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(676, 79, '_wp_attachment_image_alt', 'Cơm Đình Ký'),
(677, 80, '_wp_attached_file', '2017/12/vit-RahD2tfNVn.png'),
(678, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:26:"2017/12/vit-RahD2tfNVn.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"vit-RahD2tfNVn-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"vit-RahD2tfNVn-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"vit-RahD2tfNVn-768x576.png";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"vit-RahD2tfNVn-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"vit-RahD2tfNVn-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"vit-RahD2tfNVn-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:26:"vit-RahD2tfNVn-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(679, 80, '_wp_attachment_image_alt', 'Vịt Đình Ký'),
(680, 24, '_edit_last', '1'),
(681, 77, 'twojs_slideshowImages', 'a:3:{i:0;s:2:"80";i:1;s:2:"79";i:2;s:2:"78";}'),
(682, 77, 'twojs_size', 'a:3:{s:5:"width";s:3:"100";s:9:"widthType";s:1:"1";s:6:"height";s:0:"";}'),
(683, 77, 'twojs_minsize', 'a:2:{s:5:"width";s:3:"300";s:6:"height";s:0:"";}'),
(684, 77, 'twojs_maxsize', 'a:3:{s:5:"width";s:3:"100";s:9:"widthType";s:1:"1";s:6:"height";s:0:"";}'),
(685, 77, 'twojs_ratio', '800/600'),
(686, 77, 'twojs_fit', 'contain'),
(687, 77, 'twojs_margin', '0'),
(688, 77, 'twojs_thumbmargin', '0'),
(689, 77, 'twojs_nav', 'dots'),
(690, 77, 'twojs_navPos', '0'),
(691, 77, 'twojs_thumb-size-options', 'a:3:{s:5:"width";s:3:"120";s:6:"height";s:2:"60";s:6:"source";s:6:"medium";}'),
(692, 77, 'twojs_fullscreen', 'true'),
(693, 77, 'twojs_border-options', 'a:3:{s:5:"width";s:1:"5";s:5:"style";s:5:"solid";s:5:"color";s:16:"rgb(229, 64, 40)";}'),
(694, 77, 'twojs_bgColor', 'rgb(255, 255, 255)'),
(695, 77, 'twojs_bgNavColor', 'rgb(255, 255, 255)'),
(696, 77, 'twojs_transition', 'dissolve'),
(697, 77, 'twojs_transitionduration', '2000'),
(698, 77, 'twojs_timer', '1000'),
(699, 77, 'views', '94'),
(700, 77, 'twojs_loop', '1'),
(701, 77, 'twojs_autoplay', '1'),
(702, 77, 'twojs_autoplaystop', '1'),
(703, 77, 'twojs_startindex', '0'),
(704, 83, '_edit_lock', '1513046580:1'),
(705, 83, '_edit_last', '1'),
(706, 83, '_wp_page_template', 'default'),
(707, 85, '_edit_lock', '1513046688:1'),
(708, 85, '_edit_last', '1'),
(709, 85, '_wp_page_template', 'default'),
(710, 87, '_menu_item_type', 'post_type'),
(711, 87, '_menu_item_menu_item_parent', '70'),
(712, 87, '_menu_item_object_id', '83'),
(713, 87, '_menu_item_object', 'page'),
(714, 87, '_menu_item_target', ''),
(715, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(716, 87, '_menu_item_xfn', ''),
(717, 87, '_menu_item_url', ''),
(719, 88, '_menu_item_type', 'post_type'),
(720, 88, '_menu_item_menu_item_parent', '70'),
(721, 88, '_menu_item_object_id', '85'),
(722, 88, '_menu_item_object', 'page'),
(723, 88, '_menu_item_target', ''),
(724, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(725, 88, '_menu_item_xfn', ''),
(726, 88, '_menu_item_url', ''),
(728, 89, '_edit_lock', '1513152688:1'),
(729, 89, '_edit_last', '1'),
(730, 89, 'wcps_bg_img', ''),
(731, 89, 'wcps_container_padding', ''),
(732, 89, 'wcps_container_bg_color', ''),
(733, 89, 'wcps_items_bg_color', ''),
(734, 89, 'wcps_items_padding', ''),
(735, 89, 'wcps_themes', 'flat');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(736, 89, 'wcps_total_items', '-1'),
(737, 89, 'wcps_items_price_format', 'full'),
(738, 89, 'wcps_column_number', '3'),
(739, 89, 'wcps_column_number_mobile', '1'),
(740, 89, 'wcps_column_number_tablet', '2'),
(741, 89, 'wcps_auto_play', 'true'),
(742, 89, 'wcps_auto_play_speed', '500'),
(743, 89, 'wcps_auto_play_timeout', '500'),
(744, 89, 'wcps_rewind', 'true'),
(745, 89, 'wcps_loop', 'true'),
(746, 89, 'wcps_center', 'false'),
(747, 89, 'wcps_stop_on_hover', 'true'),
(748, 89, 'wcps_slider_navigation', 'true'),
(749, 89, 'wcps_slider_navigation_position', 'topright'),
(750, 89, 'wcps_slide_speed', '1000'),
(751, 89, 'wcps_slider_pagination', 'true'),
(752, 89, 'wcps_pagination_slide_speed', '1000'),
(753, 89, 'wcps_slider_pagination_count', 'false'),
(754, 89, 'wcps_slider_pagination_bg', ''),
(755, 89, 'wcps_slider_pagination_text_color', ''),
(756, 89, 'wcps_slider_touch_drag', 'true'),
(757, 89, 'wcps_slider_mouse_drag', 'true'),
(758, 89, 'wcps_slider_rtl', 'false'),
(759, 89, 'wcps_slider_animateout', 'fadeOut'),
(760, 89, 'wcps_slider_animatein', 'flipInX'),
(761, 89, 'wcps_product_featured', 'no'),
(762, 89, 'wcps_product_on_sale', 'no'),
(763, 89, 'wcps_product_visibility', 'visible'),
(764, 89, 'wcps_items_cat_font_size', ''),
(765, 89, 'wcps_items_cat_text_align', 'left'),
(766, 89, 'wcps_items_cat_font_color', ''),
(767, 89, 'wcps_items_tag_font_size', ''),
(768, 89, 'wcps_items_tag_text_align', 'left'),
(769, 89, 'wcps_items_tag_font_color', ''),
(770, 89, 'wcps_items_sku_font_size', ''),
(771, 89, 'wcps_items_sku_text_align', 'left'),
(772, 89, 'wcps_items_sku_font_color', ''),
(773, 89, 'wcps_featured_icon_url', ''),
(774, 89, 'wcps_sale_icon_url', ''),
(775, 89, 'wcps_ratings_text_align', 'left'),
(776, 89, 'wcps_items_ratings_font_size', ''),
(777, 89, 'wcps_items_ratings_color', ''),
(778, 89, 'wcps_cart_style', 'default'),
(779, 89, 'wcps_cart_bg', ''),
(780, 89, 'wcps_cart_text_color', ''),
(781, 89, 'wcps_cart_text_align', 'left'),
(782, 89, 'wcps_grid_items', 'a:11:{s:5:"thumb";s:9:"Thumbnail";s:5:"title";s:5:"Title";s:7:"excerpt";s:7:"Excerpt";s:8:"category";s:8:"Category";s:3:"tag";s:4:"Tags";s:5:"price";s:5:"Price";s:6:"rating";s:6:"Rating";s:4:"cart";s:4:"Cart";s:4:"sale";s:4:"Sale";s:8:"featured";s:8:"Featured";s:3:"sku";s:3:"SKU";}'),
(783, 89, 'wcps_grid_items_hide', NULL),
(784, 89, 'wcps_items_title_color', ''),
(785, 89, 'wcps_items_title_font_size', ''),
(786, 89, 'wcps_items_title_text_align', 'left'),
(787, 89, 'wcps_items_excerpt_count', '20'),
(788, 89, 'wcps_items_excerpt_read_more', 'View product.'),
(789, 89, 'wcps_items_excerpt_text_align', 'left'),
(790, 89, 'wcps_items_excerpt_font_size', ''),
(791, 89, 'wcps_items_excerpt_font_color', ''),
(792, 89, 'wcps_items_price_color', ''),
(793, 89, 'wcps_items_price_font_size', ''),
(794, 89, 'wcps_items_price_text_align', 'left'),
(795, 89, 'wcps_items_thumb_link_to', 'product'),
(796, 89, 'wcps_items_thumb_size', 'large'),
(797, 89, 'wcps_items_thumb_max_hieght', ''),
(798, 89, 'wcps_items_thumb_zoom', 'no'),
(799, 89, 'wcps_items_empty_thumb', 'http://localhost/wordpress/wp-content/plugins/woocommerce-products-slider/assets/front/images/no-thumb.png'),
(800, 89, 'wcps_query_order', 'DESC'),
(801, 89, 'wcps_query_orderby', 'none'),
(802, 89, 'wcps_hide_out_of_stock', ''),
(803, 89, 'wcps_ribbon_name', 'none'),
(804, 89, 'wcps_ribbon_custom', ''),
(805, 89, 'wcps_items_custom_css', '.wcps-container #wcps-89{} .wcps-container #wcps-89 .wcps-items{} .wcps-container #wcps-89 .wcps-items-thumb{} .wcps-container #wcps-89 .items-info{}'),
(806, 90, '_order_key', 'wc_order_5a30e7105b49a'),
(807, 90, '_customer_user', '0'),
(808, 90, '_payment_method', 'cheque'),
(809, 90, '_payment_method_title', 'Kiểm tra thanh toán'),
(810, 90, '_transaction_id', ''),
(811, 90, '_customer_ip_address', '::1'),
(812, 90, '_customer_user_agent', 'mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/59.0.3071.115 safari/537.36'),
(813, 90, '_created_via', 'checkout'),
(814, 90, '_date_completed', ''),
(815, 90, '_completed_date', ''),
(816, 90, '_date_paid', ''),
(817, 90, '_paid_date', ''),
(818, 90, '_cart_hash', 'ae39ed89edc7ae5893fb88fd01a55267'),
(819, 90, '_billing_first_name', 'Thanh'),
(820, 90, '_billing_last_name', 'Vo'),
(821, 90, '_billing_company', ''),
(822, 90, '_billing_address_1', 'Cong Vien Phan Mem Quang Trung'),
(823, 90, '_billing_address_2', ''),
(824, 90, '_billing_city', 'HCM'),
(825, 90, '_billing_state', ''),
(826, 90, '_billing_postcode', ''),
(827, 90, '_billing_country', 'VN'),
(828, 90, '_billing_email', 'vdthanh@tma.com.vn'),
(829, 90, '_billing_phone', '01234808818'),
(830, 90, '_shipping_first_name', 'Thanh'),
(831, 90, '_shipping_last_name', 'Vo'),
(832, 90, '_shipping_company', ''),
(833, 90, '_shipping_address_1', 'Cong Vien Phan Mem Quang Trung'),
(834, 90, '_shipping_address_2', ''),
(835, 90, '_shipping_city', 'HCM'),
(836, 90, '_shipping_state', ''),
(837, 90, '_shipping_postcode', ''),
(838, 90, '_shipping_country', 'VN'),
(839, 90, '_order_currency', 'VND'),
(840, 90, '_cart_discount', '0'),
(841, 90, '_cart_discount_tax', '0'),
(842, 90, '_order_shipping', '0'),
(843, 90, '_order_shipping_tax', '0'),
(844, 90, '_order_tax', '0'),
(845, 90, '_order_total', '86.00'),
(846, 90, '_order_version', '3.2.5'),
(847, 90, '_prices_include_tax', 'no'),
(848, 90, '_billing_address_index', 'Thanh Vo  Cong Vien Phan Mem Quang Trung  HCM   VN vdthanh@tma.com.vn 01234808818'),
(849, 90, '_shipping_address_index', 'Thanh Vo  Cong Vien Phan Mem Quang Trung  HCM   VN'),
(850, 90, '_recorded_sales', 'yes'),
(851, 90, '_recorded_coupon_usage_counts', 'yes'),
(852, 90, '_order_stock_reduced', 'yes'),
(853, 91, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(854, 91, '_mail', 'a:8:{s:7:"subject";s:25:"YADINGJI "[your-subject]"";s:6:"sender";s:34:"[your-name] <wpdemo2000@gmail.com>";s:4:"body";s:173:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on YADINGJI (http://localhost/wordpress)";s:9:"recipient";s:20:"wpdemo2000@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(855, 91, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"YADINGJI "[your-subject]"";s:6:"sender";s:31:"YADINGJI <wpdemo2000@gmail.com>";s:4:"body";s:115:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on YADINGJI (http://localhost/wordpress)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:30:"Reply-To: wpdemo2000@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(856, 91, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(857, 91, '_additional_settings', NULL),
(858, 91, '_locale', 'vi'),
(859, 92, '_edit_lock', '1513154852:1'),
(860, 92, '_edit_last', '1'),
(861, 92, '_wp_page_template', 'default'),
(862, 94, '_menu_item_type', 'post_type'),
(863, 94, '_menu_item_menu_item_parent', '0'),
(864, 94, '_menu_item_object_id', '92'),
(865, 94, '_menu_item_object', 'page'),
(866, 94, '_menu_item_target', ''),
(867, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(868, 94, '_menu_item_xfn', ''),
(869, 94, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-08 08:25:08', '2017-12-08 08:25:08', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-12-08 08:25:08', '2017-12-08 08:25:08', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-08 08:25:08', '2017-12-08 08:25:08', '<strong>GIỚI THIỆU VỀ YADINGJI</strong>\r\n\r\nNăm 1906 tại một quận thuộc khu đặc trị Hồng Kông, một gia đình đầu bếp truyền thống về món ăn Hoa đã sáng chế thành công công thức vịt quay mà từ đó, tên tuổi và tiếng tăm của họ lẫn món ăn đã được lan toả khắp cả một vùng lúc bấy giờ. Trải qua hơn 100 năm với bốn thế hệ tiếp nối và lưu truyền công thức bí mật, thành công của món ăn Vịt Quay Hồng Kông đã được biết đến cả toàn cầu.\r\n\r\nVà nay, công thức ấy đã đến với Việt Nam qua thương hiệu Đỉnh Ký – YA DING JI.\r\n\r\nSử dụng nguyên liệu chính là loại thịt vịt nuôi tự nhiên được tuyển chọn kỹ càng nhất từ vùng đồng bằng Mê Kông giàu phù sa cùng với các nguyên liệu sạch, có nguồn gốc thảo mộc thiên nhiên và tốt cho sức khoẻ người dùng.\r\n\r\nĐiểm nổi bật chỉ có ở vịt quay Đỉnh Ký – YA DING JI chính là 3 loại sốt ăn kèm được làm theo công thức homemade độc đáo<strong>: </strong>sốt tiêu đen, sốt tương đen và đặc biệt nhất là<strong> </strong>sốt vị mận gừng. Bên cạnh món vịt quay cổ điển, thực đơn của Đỉnh Ký – YA DING JI còn được cải tiến phong phú với các món ăn như cuốn vịt quay, bánh bao kẹp vịt quay, cuốn gỏi vịt quay, mì và cơm vịt quay, … cùng với các lựa chọn và gói giá phù hợp nhất cho từng nhu cầu của từng thực khách.\r\n\r\n<strong>  Đến với Đỉnh Ký – YA DING JI -  bạn có thể ăn vịt quay với mọi cách mà không cần thiết phải mua cả một con vịt.</strong>\r\n\r\nĐỉnh Ký – YA DING JI còn cung cấp đến khách hàng quy trình đóng gói bao bì chuyên nghiệp, hiện đại và vệ sinh cùng dịch vụ giao hàng tận nơi nhanh chóng, thuận tiện với nhiều phương thức khác nhau dành cho tất cả các khách hàng bận rộn không có nhiều quỹ thời gian trong ngày. <strong> </strong>\r\n\r\n<strong>  </strong>Mục tiêu của Đỉnh Ký – YA DING JI là mang tới cho các các thực khách những món ăn theo phong cách nhà hàng cao cấp 5* với mức giá phù hợp nhất song vẫn đảm bảo các tiêu chuẩn vệ sinh và an toàn ở mức tốt nhất.', 'VỀ YADINGJI', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-11 15:17:45', '2017-12-11 15:17:45', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-12-08 08:25:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-08 08:25:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', 'Đang cập nhật ...', 'Đặt Hàng', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-12-11 15:22:00', '2017-12-11 15:22:00', '', 0, 'http://localhost/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-12-13 08:35:46', '2017-12-13 08:35:46', '', 0, 'http://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-12-13 08:37:02', '2017-12-13 08:37:02', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', '[woocommerce_my_account]', 'My account', '', 'trash', 'closed', 'closed', '', 'my-account__trashed', '', '', '2017-12-11 15:20:24', '2017-12-11 15:20:24', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 'Beanie', '', 'inherit', 'open', 'closed', '', 'beanie-image', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/beanie-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 'Belt', '', 'inherit', 'open', 'closed', '', 'belt-image', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/belt-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 'Cap', '', 'inherit', 'open', 'closed', '', 'cap-image', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/cap-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 'Hoodie with Logo', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-image', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/hoodie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 'Hoodie with Pocket', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-image', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/hoodie-with-pocket-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 'Hoodie with Zipper', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-image', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/hoodie-with-zipper-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Hoodie', '', 'inherit', 'open', 'closed', '', 'hoodie-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/hoodie-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Long Sleeve Tee', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/long-sleeve-tee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Polo', '', 'inherit', 'open', 'closed', '', 'polo-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/polo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Sunglasses', '', 'inherit', 'open', 'closed', '', 'sunglasses-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/sunglasses-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Tshirt', '', 'inherit', 'open', 'closed', '', 'tshirt-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/tshirt-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Vneck Tshirt', '', 'inherit', 'open', 'closed', '', 'vneck-tee-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/vneck-tee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Hero', '', 'inherit', 'open', 'closed', '', 'hero-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/hero-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Accessories', '', 'inherit', 'open', 'closed', '', 'accessories-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/accessories-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'T-shirts', '', 'inherit', 'open', 'closed', '', 'tshirts-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/tshirts-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 'Hoodies', '', 'inherit', 'open', 'closed', '', 'hoodies-image', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/hoodies-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', '[2jslideshow id="77"]', 'Banner', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2017-12-11 15:56:43', '2017-12-11 15:56:43', '', 0, 'http://localhost/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-12-08 08:29:52', '2017-12-08 08:29:52', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2017-12-11 15:20:57', '2017-12-11 15:20:57', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2017-12-08 08:29:52', '2017-12-08 08:29:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', '', 'publish', 'open', 'closed', '', 'beanie', '', '', '2017-12-08 08:29:52', '2017-12-08 08:29:52', '', 0, 'http://localhost/wordpress/?p=26', 0, 'product', '', 0),
(27, 1, '2017-12-08 08:29:52', '2017-12-08 08:29:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', '', 'publish', 'open', 'closed', '', 'belt', '', '', '2017-12-08 08:29:52', '2017-12-08 08:29:52', '', 0, 'http://localhost/wordpress/?p=27', 0, 'product', '', 0),
(28, 1, '2017-12-08 08:29:53', '2017-12-08 08:29:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', '', 'publish', 'open', 'closed', '', 'cap', '', '', '2017-12-08 08:29:53', '2017-12-08 08:29:53', '', 0, 'http://localhost/wordpress/?p=28', 0, 'product', '', 0),
(29, 1, '2017-12-08 08:29:53', '2017-12-08 08:29:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', '', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2017-12-08 08:29:53', '2017-12-08 08:29:53', '', 0, 'http://localhost/wordpress/?p=29', 0, 'product', '', 0),
(30, 1, '2017-12-08 08:29:54', '2017-12-08 08:29:54', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', '', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2017-12-08 08:29:54', '2017-12-08 08:29:54', '', 0, 'http://localhost/wordpress/?p=30', 0, 'product', '', 0),
(31, 1, '2017-12-08 08:29:54', '2017-12-08 08:29:54', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', '', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2017-12-08 08:29:55', '2017-12-08 08:29:55', '', 0, 'http://localhost/wordpress/?p=31', 0, 'product', '', 0),
(32, 1, '2017-12-08 08:29:55', '2017-12-08 08:29:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', '', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2017-12-08 08:29:55', '2017-12-08 08:29:55', '', 0, 'http://localhost/wordpress/?p=32', 0, 'product', '', 0),
(33, 1, '2017-12-08 08:29:55', '2017-12-08 08:29:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', '', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2017-12-08 08:29:56', '2017-12-08 08:29:56', '', 0, 'http://localhost/wordpress/?p=33', 0, 'product', '', 0),
(34, 1, '2017-12-08 08:29:56', '2017-12-08 08:29:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', '', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2017-12-08 08:29:56', '2017-12-08 08:29:56', '', 0, 'http://localhost/wordpress/?p=34', 0, 'product', '', 0),
(35, 1, '2017-12-08 08:29:56', '2017-12-08 08:29:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', '', 'publish', 'open', 'closed', '', 'polo', '', '', '2017-12-08 08:29:56', '2017-12-08 08:29:56', '', 0, 'http://localhost/wordpress/?p=35', 0, 'product', '', 0),
(36, 1, '2017-12-08 08:29:57', '2017-12-08 08:29:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Tshirt', '', 'publish', 'open', 'closed', '', 'tshirt', '', '', '2017-12-08 08:29:57', '2017-12-08 08:29:57', '', 0, 'http://localhost/wordpress/?p=36', 0, 'product', '', 0),
(37, 1, '2017-12-08 08:29:57', '2017-12-08 08:29:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Vneck Tshirt', '', 'publish', 'open', 'closed', '', 'vneck-tee', '', '', '2017-12-08 08:29:57', '2017-12-08 08:29:57', '', 0, 'http://localhost/wordpress/?p=37', 0, 'product', '', 0),
(38, 1, '2017-12-08 08:29:50', '2017-12-08 08:29:50', '{\n    "nav_menus_created_posts": {\n        "value": [\n            8,\n            9,\n            10,\n            11,\n            12,\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20,\n            21,\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-08 08:29:50"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-08 08:29:20"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 24,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-08 08:29:20"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 25,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-08 08:29:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4fc57191-c48a-4462-98e5-92705e3c5685', '', '', '2017-12-08 08:29:50', '2017-12-08 08:29:50', '', 0, 'http://localhost/wordpress/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2017-12-08 08:29:51', '2017-12-08 08:29:51', 'This is your homepage which is what most visitors will see when they first visit your shop.\n\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-08 08:29:51', '2017-12-08 08:29:51', '', 24, 'http://localhost/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2017-12-08 08:29:52', '2017-12-08 08:29:52', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-12-08 08:29:52', '2017-12-08 08:29:52', '', 25, 'http://localhost/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2017-12-09 16:17:09', '2017-12-09 16:17:09', '[woo-login-popup]', 'My account', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-09 16:17:09', '2017-12-09 16:17:09', '', 7, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2017-12-09 16:18:06', '2017-12-09 16:18:06', '[woocommerce_my_account]', 'My account', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-09 16:18:06', '2017-12-09 16:18:06', '', 7, 'http://localhost/wordpress/?p=42', 0, 'revision', '', 0),
(43, 1, '2017-12-09 16:20:08', '2017-12-09 16:20:08', '[woo-login-popup]', 'My account', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2017-12-09 16:20:08', '2017-12-09 16:20:08', '', 7, 'http://localhost/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2017-12-09 16:20:09', '2017-12-09 16:20:09', '[woo-login-popup]', 'My account', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-09 16:20:09', '2017-12-09 16:20:09', '', 7, 'http://localhost/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2017-12-09 16:21:17', '2017-12-09 16:21:17', '[woocommerce_my_account]', 'My account', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-09 16:21:17', '2017-12-09 16:21:17', '', 7, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2017-12-09 16:27:23', '2017-12-09 16:27:23', 'Đang cập nhật ...', 'KHUYẾN MÃI', '', 'publish', 'closed', 'closed', '', 'signup', '', '', '2017-12-11 15:19:36', '2017-12-11 15:19:36', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2017-12-09 16:27:23', '2017-12-09 16:27:23', '[woocommerce_simple_registration]', 'Signup', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-12-09 16:27:23', '2017-12-09 16:27:23', '', 46, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2017-12-09 16:56:43', '2017-12-09 16:56:43', '{\n    "deli::nav_menu_locations[primary]": {\n        "value": -5496608570662076000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-09 16:56:43"\n    },\n    "nav_menu[-5496608570662076000]": {\n        "value": {\n            "name": "login",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-09 16:56:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15a5ec39-898b-41c0-9287-0e5b8ff7e8db', '', '', '2017-12-09 16:56:43', '2017-12-09 16:56:43', '', 0, 'http://localhost/wordpress/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2017-12-09 16:57:25', '0000-00-00 00:00:00', '{\n    "deli::nav_menu_locations[primary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-09 16:57:25"\n    },\n    "nav_menu[18]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-09 16:57:25"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ffb22eb8-6132-474d-9602-6f4a2d0411b4', '', '', '2017-12-09 16:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2017-12-10 07:11:40', '2017-12-10 07:11:40', '[wordpress_social_login]', 'Signup', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-12-10 07:11:40', '2017-12-10 07:11:40', '', 46, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2017-12-10 07:22:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-10 07:22:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2017-12-10 08:58:08', '2017-12-10 08:58:08', '', 'Order &ndash; December 10, 2017 @ 08:58 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5a2cf7207c342', 'order-th12-10-2017-0858-am', '', '', '2017-12-10 08:58:12', '2017-12-10 08:58:12', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=52', 0, 'shop_order', '', 1),
(53, 1, '2017-12-11 15:09:22', '2017-12-11 15:09:22', '{\n    "deli::nav_menu_locations[primary]": {\n        "value": -4721439072321286000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:06:42"\n    },\n    "nav_menu[-4721439072321286000]": {\n        "value": {\n            "name": "Main Menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:06:42"\n    },\n    "nav_menu_item[-1748901802242457600]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -4721439072321286000,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:09:22"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '881427c3-1807-4f30-b38e-9766e5e40186', '', '', '2017-12-11 15:09:22', '2017-12-11 15:09:22', '', 0, 'http://localhost/wordpress/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2017-12-11 15:09:22', '2017-12-11 15:09:22', '', 'TRANG CHỦ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2017-12-11 15:16:36', '2017-12-11 15:16:36', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'VỀ YADINGJI', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-12-11 15:16:36', '2017-12-11 15:16:36', '', 2, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2017-12-11 15:11:15', '2017-12-11 15:11:15', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-11 15:11:15', '2017-12-11 15:11:15', '', 2, 'http://localhost/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2017-12-11 15:17:45', '2017-12-11 15:17:45', '<strong>GIỚI THIỆU VỀ YADINGJI</strong>\r\n\r\nNăm 1906 tại một quận thuộc khu đặc trị Hồng Kông, một gia đình đầu bếp truyền thống về món ăn Hoa đã sáng chế thành công công thức vịt quay mà từ đó, tên tuổi và tiếng tăm của họ lẫn món ăn đã được lan toả khắp cả một vùng lúc bấy giờ. Trải qua hơn 100 năm với bốn thế hệ tiếp nối và lưu truyền công thức bí mật, thành công của món ăn Vịt Quay Hồng Kông đã được biết đến cả toàn cầu.\r\n\r\nVà nay, công thức ấy đã đến với Việt Nam qua thương hiệu Đỉnh Ký – YA DING JI.\r\n\r\nSử dụng nguyên liệu chính là loại thịt vịt nuôi tự nhiên được tuyển chọn kỹ càng nhất từ vùng đồng bằng Mê Kông giàu phù sa cùng với các nguyên liệu sạch, có nguồn gốc thảo mộc thiên nhiên và tốt cho sức khoẻ người dùng.\r\n\r\nĐiểm nổi bật chỉ có ở vịt quay Đỉnh Ký – YA DING JI chính là 3 loại sốt ăn kèm được làm theo công thức homemade độc đáo<strong>: </strong>sốt tiêu đen, sốt tương đen và đặc biệt nhất là<strong> </strong>sốt vị mận gừng. Bên cạnh món vịt quay cổ điển, thực đơn của Đỉnh Ký – YA DING JI còn được cải tiến phong phú với các món ăn như cuốn vịt quay, bánh bao kẹp vịt quay, cuốn gỏi vịt quay, mì và cơm vịt quay, … cùng với các lựa chọn và gói giá phù hợp nhất cho từng nhu cầu của từng thực khách.\r\n\r\n<strong>  Đến với Đỉnh Ký – YA DING JI -  bạn có thể ăn vịt quay với mọi cách mà không cần thiết phải mua cả một con vịt.</strong>\r\n\r\nĐỉnh Ký – YA DING JI còn cung cấp đến khách hàng quy trình đóng gói bao bì chuyên nghiệp, hiện đại và vệ sinh cùng dịch vụ giao hàng tận nơi nhanh chóng, thuận tiện với nhiều phương thức khác nhau dành cho tất cả các khách hàng bận rộn không có nhiều quỹ thời gian trong ngày. <strong> </strong>\r\n\r\n<strong>  </strong>Mục tiêu của Đỉnh Ký – YA DING JI là mang tới cho các các thực khách những món ăn theo phong cách nhà hàng cao cấp 5* với mức giá phù hợp nhất song vẫn đảm bảo các tiêu chuẩn vệ sinh và an toàn ở mức tốt nhất.', 'VỀ YADINGJI', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-11 15:17:45', '2017-12-11 15:17:45', '', 2, 'http://localhost/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2017-12-11 15:19:20', '2017-12-11 15:19:20', 'Cập nha', 'KHUYẾN MÃI', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2017-12-11 15:19:20', '2017-12-11 15:19:20', '', 46, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2017-12-11 15:19:36', '2017-12-11 15:19:36', 'Đang cập nhật ...', 'KHUYẾN MÃI', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-12-11 15:19:36', '2017-12-11 15:19:36', '', 46, 'http://localhost/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2017-12-11 15:20:12', '2017-12-11 15:20:12', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-12-11 15:20:12', '2017-12-11 15:20:12', '', 5, 'http://localhost/wordpress/?p=60', 0, 'revision', '', 0),
(61, 1, '2017-12-11 15:20:21', '2017-12-11 15:20:21', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-11 15:20:21', '2017-12-11 15:20:21', '', 6, 'http://localhost/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2017-12-11 15:22:00', '2017-12-11 15:22:00', 'Đang cập nhật ...', 'Đặt Hàng', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-11 15:22:00', '2017-12-11 15:22:00', '', 4, 'http://localhost/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2017-12-11 15:25:50', '2017-12-11 15:25:50', '', 'THỰC ĐƠN', '', 'publish', 'closed', 'closed', '', 'thuc-don', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=63', 3, 'nav_menu_item', '', 0),
(64, 1, '2017-12-11 15:28:30', '2017-12-11 15:28:30', '', 'MÓN CHÍNH', '', 'publish', 'closed', 'closed', '', 'mon-chinh', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=64', 6, 'nav_menu_item', '', 0),
(65, 1, '2017-12-11 15:28:30', '2017-12-11 15:28:30', '', 'MÓN ĂN KÈM', '', 'publish', 'closed', 'closed', '', 'mon-an-kem', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=65', 4, 'nav_menu_item', '', 0),
(66, 1, '2017-12-11 15:28:30', '2017-12-11 15:28:30', '', 'COMBO TIẾT KIÊM', '', 'publish', 'closed', 'closed', '', 'combo-tiet-kiem', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=66', 5, 'nav_menu_item', '', 0),
(67, 1, '2017-12-11 15:31:44', '2017-12-11 15:31:44', '', 'NƯỚC UỐNG', '', 'publish', 'closed', 'closed', '', 'nuoc-uong', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=67', 7, 'nav_menu_item', '', 0),
(68, 1, '2017-12-11 15:34:13', '2017-12-11 15:34:13', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=68', 8, 'nav_menu_item', '', 0),
(69, 1, '2017-12-11 15:34:13', '2017-12-11 15:34:13', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2017-12-11 15:34:14', '2017-12-11 15:34:14', '', 'THÀNH VIÊN', '', 'publish', 'closed', 'closed', '', 'thanh-vien', '', '', '2017-12-13 08:48:16', '2017-12-13 08:48:16', '', 0, 'http://localhost/wordpress/?p=70', 9, 'nav_menu_item', '', 0),
(73, 1, '2017-12-11 15:38:46', '2017-12-11 15:38:46', '', 'VỊT QUAY ĐÌNH KÝ', '', 'inherit', 'open', 'closed', '', 'logo-ko93qnb0qw', '', '', '2017-12-11 15:39:52', '2017-12-11 15:39:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/logo-KO93qNb0QW.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2017-12-11 15:40:16', '2017-12-11 15:40:16', '{\n    "deli::custom_logo": {\n        "value": 73,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:40:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '057a5e6d-8ad1-4e01-b4a8-ce3e8f072dae', '', '', '2017-12-11 15:40:16', '2017-12-11 15:40:16', '', 0, 'http://localhost/wordpress/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2017-12-11 15:43:52', '2017-12-11 15:43:52', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "header-1": [],\n            "footer-1": [],\n            "footer-2": [],\n            "footer-3": [],\n            "footer-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:43:51"\n    },\n    "boutique::nav_menu_locations[primary]": {\n        "value": 18,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:43:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a904d1ac-30f9-410c-8e87-6525ca18f988', '', '', '2017-12-11 15:43:52', '2017-12-11 15:43:52', '', 0, 'http://localhost/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2017-12-11 15:45:01', '2017-12-11 15:45:01', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "header-1": [],\n            "footer-1": [],\n            "footer-2": [],\n            "footer-3": [],\n            "footer-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:45:00"\n    },\n    "deli::nav_menu_locations[primary]": {\n        "value": 18,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:45:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b36ff30e-253d-4c86-acd9-2aeed45b7fe8', '', '', '2017-12-11 15:45:01', '2017-12-11 15:45:01', '', 0, 'http://localhost/wordpress/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2017-12-11 15:56:11', '2017-12-11 15:56:11', '', 'Banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2017-12-11 16:16:33', '2017-12-11 16:16:33', '', 0, 'http://localhost/wordpress/?post_type=twoj_slideshow_post&#038;p=77', 0, 'twoj_slideshow_post', '', 0),
(78, 1, '2017-12-11 15:53:23', '2017-12-11 15:53:23', '', 'Bánh Bao Đình Ký', '', 'inherit', 'open', 'closed', '', 'bannhbao-ualesgvq1x', '', '', '2017-12-11 15:53:59', '2017-12-11 15:53:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/bannhbao-uAlesGVQ1x.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2017-12-11 15:54:08', '2017-12-11 15:54:08', '', 'Cơm Đình Ký', '', 'inherit', 'open', 'closed', '', 'com-yc099vpaqo', '', '', '2017-12-11 15:54:26', '2017-12-11 15:54:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/com-yc099vPAqo.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2017-12-11 15:54:35', '2017-12-11 15:54:35', '', 'Vịt Đình Ký', '', 'inherit', 'open', 'closed', '', 'vit-rahd2tfnvn', '', '', '2017-12-11 15:54:53', '2017-12-11 15:54:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/vit-RahD2tfNVn.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2017-12-11 15:55:42', '2017-12-11 15:55:42', '[2jslideshow id="-"]', 'Banner', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-11 15:55:42', '2017-12-11 15:55:42', '', 24, 'http://localhost/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2017-12-11 15:56:43', '2017-12-11 15:56:43', '[2jslideshow id="77"]', 'Banner', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-11 15:56:43', '2017-12-11 15:56:43', '', 24, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2017-12-12 02:45:19', '2017-12-12 02:45:19', '<strong>[wppb-login]</strong>', 'Đăng Nhập', '', 'publish', 'closed', 'closed', '', 'dang-nhap', '', '', '2017-12-12 02:45:19', '2017-12-12 02:45:19', '', 0, 'http://localhost/wordpress/?page_id=83', 0, 'page', '', 0),
(84, 1, '2017-12-12 02:45:19', '2017-12-12 02:45:19', '<strong>[wppb-login]</strong>', 'Đăng Nhập', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-12-12 02:45:19', '2017-12-12 02:45:19', '', 83, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2017-12-12 02:47:05', '2017-12-12 02:47:05', '<strong>[wppb-register]</strong>', 'Đăng Ký', '', 'publish', 'closed', 'closed', '', 'dang-ky', '', '', '2017-12-12 02:47:05', '2017-12-12 02:47:05', '', 0, 'http://localhost/wordpress/?page_id=85', 0, 'page', '', 0),
(86, 1, '2017-12-12 02:47:05', '2017-12-12 02:47:05', '<strong>[wppb-register]</strong>', 'Đăng Ký', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-12-12 02:47:05', '2017-12-12 02:47:05', '', 85, 'http://localhost/wordpress/?p=86', 0, 'revision', '', 0),
(87, 1, '2017-12-12 02:47:52', '2017-12-12 02:47:52', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2017-12-13 08:48:17', '2017-12-13 08:48:17', '', 0, 'http://localhost/wordpress/?p=87', 10, 'nav_menu_item', '', 0),
(88, 1, '2017-12-12 02:47:53', '2017-12-12 02:47:53', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2017-12-13 08:48:17', '2017-12-13 08:48:17', '', 0, 'http://localhost/wordpress/?p=88', 11, 'nav_menu_item', '', 0),
(89, 1, '2017-12-13 08:13:39', '2017-12-13 08:13:39', '', 'Home Page Slide Products', '', 'publish', 'closed', 'closed', '', 'home-page-slide-products', '', '', '2017-12-13 08:13:39', '2017-12-13 08:13:39', '', 0, 'http://localhost/wordpress/?post_type=wcps&#038;p=89', 0, 'wcps', '', 0),
(90, 1, '2017-12-13 08:38:40', '2017-12-13 08:38:40', '', 'Order &ndash; Tháng Mười Hai 13, 2017 @ 08:38 Sáng', '', 'wc-on-hold', 'open', 'closed', 'order_5a30e7105b626', 'don-hang-th12-13-2017-0838-am', '', '', '2017-12-13 08:38:44', '2017-12-13 08:38:44', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=90', 0, 'shop_order', '', 1),
(91, 1, '2017-12-13 08:44:45', '2017-12-13 08:44:45', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nYADINGJI "[your-subject]"\n[your-name] <wpdemo2000@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on YADINGJI (http://localhost/wordpress)\nwpdemo2000@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nYADINGJI "[your-subject]"\nYADINGJI <wpdemo2000@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on YADINGJI (http://localhost/wordpress)\n[your-email]\nReply-To: wpdemo2000@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-12-13 08:44:45', '2017-12-13 08:44:45', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=91', 0, 'wpcf7_contact_form', '', 0),
(92, 1, '2017-12-13 08:46:59', '2017-12-13 08:46:59', '[contact-form-7 id="91" title="Contact form 1"]', 'Liên Hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2017-12-13 08:46:59', '2017-12-13 08:46:59', '', 0, 'http://localhost/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 1, '2017-12-13 08:46:59', '2017-12-13 08:46:59', '[contact-form-7 id="91" title="Contact form 1"]', 'Liên Hệ', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-12-13 08:46:59', '2017-12-13 08:46:59', '', 92, 'http://localhost/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2017-12-13 08:48:17', '2017-12-13 08:48:17', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2017-12-13 08:48:17', '2017-12-13 08:48:17', '', 0, 'http://localhost/wordpress/?p=94', 12, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_snippets`
--

CREATE TABLE `wp_snippets` (
  `id` bigint(20) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_snippets`
--

INSERT INTO `wp_snippets` (`id`, `name`, `description`, `code`, `tags`, `scope`, `active`) VALUES
(1, 'Add follow social icons to header and footer', 'Add the follow social icons to header &amp; footer', 'if ( ! function_exists( ''storefront_follow_social_icons'' ) ) {\r\n	/**\r\n	 * Follow social icons\r\n	 *\r\n	 * @since  1.4.1\r\n	 * @return void\r\n	 */\r\n	function storefront_follow_social_icons() {\r\n	  	echo ''<div class="social_icons">'';\r\n	    echo do_shortcode("[smbtoolbar]");\r\n		echo ''</div>'';\r\n	}\r\n}\r\nremove_action( ''storefront_header'', ''storefront_skip_links'',                       0 );\r\nremove_action( ''storefront_header'', ''storefront_site_branding'',                    20 );\r\nremove_action( ''storefront_header'', ''storefront_secondary_navigation'',             30 );\r\nremove_action( ''storefront_header'', ''storefront_primary_navigation_wrapper'',       42 );\r\nremove_action( ''storefront_header'', ''storefront_primary_navigation'',               50 );\r\nremove_action( ''storefront_header'', ''storefront_primary_navigation_wrapper_close'', 68 );\r\n\r\nadd_action( ''storefront_header'', ''storefront_skip_links'',                       0 );\r\nadd_action( ''storefront_header'', ''storefront_site_branding'',                    20 );\r\nadd_action( ''storefront_header'', ''storefront_follow_social_icons'', 28 );\r\nadd_action( ''storefront_header'', ''storefront_secondary_navigation'',             30 );\r\nadd_action( ''storefront_header'', ''storefront_primary_navigation_wrapper'',       42 );\r\nadd_action( ''storefront_header'', ''storefront_primary_navigation'',               50 );\r\nadd_action( ''storefront_header'', ''storefront_primary_navigation_wrapper_close'', 68 );\r\n\r\nadd_action( ''storefront_footer'', ''storefront_follow_social_icons'', 30);', '', 0, 1),
(2, 'Add Google Map', 'Add the google maps to home page', 'if ( ! function_exists( ''storefront_homepage_maps'' ) ) {\r\n	/**\r\n	 * Display header widget region\r\n	 *\r\n	 * @since  1.0.0\r\n	 */\r\n	function storefront_homepage_maps() {\r\n	    echo ''<div class="homepage_maps">'';\r\n		echo do_shortcode(''[wpgmza id="1"]'');\r\n	    echo ''</div>'';\r\n	}\r\n}\r\n\r\nadd_action( ''homepage'', ''storefront_homepage_maps'', 90 );', '', 0, 1),
(3, 'Add Slide Products', 'Add the Products slideshow to homepage', 'if ( ! function_exists( ''storefront_slide_products'' ) ) {\r\n	/**\r\n	 * Display Slide Products\r\n	 *\r\n	 * @since  1.0.0\r\n	 * @uses  storefront_is_woocommerce_activated() check if WooCommerce is activated\r\n	 * @return void\r\n	 */\r\n	function storefront_slide_products() {\r\n	    echo ''<div class="products-slideshow">'';\r\n	    echo do_shortcode("[wcps id=''89'']");\r\n	    echo ''</div>'';\r\n	}\r\n}\r\n\r\nadd_action( ''homepage'', ''storefront_slide_products'', 80 );', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'thumbnail_id', '21'),
(2, 15, 'product_count_product_cat', '4'),
(3, 16, 'thumbnail_id', '23'),
(4, 16, 'product_count_product_cat', '4'),
(5, 17, 'thumbnail_id', '22'),
(6, 17, 'product_count_product_cat', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Accessories', 'accessories', 0),
(16, 'Hoodies', 'hoodies', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(26, 15, 0),
(27, 2, 0),
(27, 15, 0),
(28, 2, 0),
(28, 15, 0),
(29, 2, 0),
(29, 8, 0),
(29, 15, 0),
(30, 2, 0),
(30, 16, 0),
(31, 2, 0),
(31, 8, 0),
(31, 16, 0),
(32, 2, 0),
(32, 8, 0),
(32, 16, 0),
(33, 2, 0),
(33, 8, 0),
(33, 16, 0),
(34, 2, 0),
(34, 17, 0),
(35, 2, 0),
(35, 17, 0),
(36, 2, 0),
(36, 17, 0),
(37, 2, 0),
(37, 17, 0),
(54, 18, 0),
(63, 18, 0),
(64, 18, 0),
(65, 18, 0),
(66, 18, 0),
(67, 18, 0),
(68, 18, 0),
(69, 18, 0),
(70, 18, 0),
(87, 18, 0),
(88, 18, 0),
(94, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 12),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 4),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', 'A short category description', 0, 4),
(16, 16, 'product_cat', 'A short category description', 0, 4),
(17, 17, 'product_cat', 'A short category description', 0, 4),
(18, 18, 'nav_menu', '', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'default_password_nag', ''),
(16, 1, 'show_welcome_panel', '1'),
(17, 1, 'session_tokens', 'a:3:{s:64:"b7921ab62ea8a71e6c85bbc80012c548f39508a81b186a9e15abe2541f1204eb";a:4:{s:10:"expiration";i:1513177103;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";s:5:"login";i:1513004303;}s:64:"161db783f223998e19288961079299d839e3730bd236086ec048abda8bf420ab";a:4:{s:10:"expiration";i:1513219585;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1513046785;}s:64:"b25df860d8cde535d13dfdae3192c185cbb976be56b39a50b239e9301e238c2a";a:4:{s:10:"expiration";i:1513305910;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1513133110;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(19, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(21, 1, 'wp_user-settings', 'widgets_access=off&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1513006814'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(25, 2, 'nickname', 'thanhvd84'),
(26, 2, 'first_name', 'Thanh'),
(27, 2, 'last_name', 'Vo'),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(37, 2, 'wp_user_level', '0'),
(38, 2, 'last_update', '1512836953'),
(40, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"4e732ced3463d06de0ca9a15b6153677";a:10:{s:3:"key";s:32:"4e732ced3463d06de0ca9a15b6153677";s:10:"product_id";i:26;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";i:36;s:17:"line_subtotal_tax";i:0;s:10:"line_total";i:36;s:8:"line_tax";i:0;}s:32:"02e74f10e0327ad868d138f2b4fdd6f0";a:10:{s:3:"key";s:32:"02e74f10e0327ad868d138f2b4fdd6f0";s:10:"product_id";i:27;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";i:55;s:17:"line_subtotal_tax";i:0;s:10:"line_total";i:55;s:8:"line_tax";i:0;}}}'),
(42, 1, 'nav_menu_recently_edited', '18'),
(43, 3, 'nickname', 'Vo_Duy_Thanh'),
(44, 3, 'first_name', 'Thanh'),
(45, 3, 'last_name', 'Vo'),
(46, 3, 'description', ''),
(47, 3, 'rich_editing', 'true'),
(48, 3, 'syntax_highlighting', 'true'),
(49, 3, 'comment_shortcuts', 'false'),
(50, 3, 'admin_color', 'fresh'),
(51, 3, 'use_ssl', '0'),
(52, 3, 'show_admin_bar_front', 'true'),
(53, 3, 'locale', ''),
(54, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(55, 3, 'wp_user_level', '0'),
(56, 3, 'wsl_current_provider', 'Facebook'),
(57, 3, 'wsl_current_user_image', 'https://graph.facebook.com/110795879710668/picture?width=150&height=150'),
(60, 3, 'session_tokens', 'a:1:{s:64:"1d010c4fead98f05260982bf7c0213f0d87528f944948ae218133e9ddd062133";a:4:{s:10:"expiration";i:1514105770;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";s:5:"login";i:1512896170;}}'),
(61, 3, 'last_update', '1512896287'),
(62, 3, 'billing_first_name', 'Thanh'),
(63, 3, 'billing_last_name', 'Vo'),
(64, 3, 'billing_address_1', 'Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12'),
(65, 3, 'billing_city', 'Hồ Chí Minh'),
(66, 3, 'billing_postcode', '084'),
(67, 3, 'billing_country', 'VN'),
(68, 3, 'billing_email', 'facebook_user_vo_duy_thanh@example.com'),
(69, 3, 'shipping_first_name', 'Thanh'),
(70, 3, 'shipping_last_name', 'Vo'),
(71, 3, 'shipping_address_1', 'Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12'),
(72, 3, 'shipping_city', 'Hồ Chí Minh'),
(73, 3, 'shipping_postcode', '084'),
(74, 3, 'shipping_country', 'VN'),
(75, 3, 'shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(77, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BnGptf/uf9/bonKIda6EV1g9AYxd3J.', 'admin', 'wpdemo2000@gmail.com', '', '2017-12-08 08:25:07', '', 0, 'admin'),
(2, 'thanhvd84', '$P$BUKHFNZpIOt8sHPD9Z0RDka4YWJyP1.', 'thanhvd84', 'thanhvd84@gmail.com', '', '2017-12-09 16:29:12', '', 0, 'thanhvd84'),
(3, 'Vo_Duy_Thanh', '$P$Bw2aKSk803abjmL9Pz/Yxgg29/TGmQ/', 'vo_duy_thanh', 'facebook_user_vo_duy_thanh@example.com', 'https://www.facebook.com/app_scoped_user_id/110795879710668/', '2017-12-10 08:55:04', '', 0, 'Vo Duy Thanh');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '36'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '18'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '18'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping:1'),
(11, 2, 'cost', '0.00'),
(12, 2, 'total_tax', '0'),
(13, 2, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(14, 2, 'Items', 'Tshirt &times; 1'),
(15, 3, '_product_id', '34'),
(16, 3, '_variation_id', '0'),
(17, 3, '_qty', '1'),
(18, 3, '_tax_class', ''),
(19, 3, '_line_subtotal', '25'),
(20, 3, '_line_subtotal_tax', '0'),
(21, 3, '_line_total', '25'),
(22, 3, '_line_tax', '0'),
(23, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(24, 4, '_product_id', '30'),
(25, 4, '_variation_id', '0'),
(26, 4, '_qty', '1'),
(27, 4, '_tax_class', ''),
(28, 4, '_line_subtotal', '45'),
(29, 4, '_line_subtotal_tax', '0'),
(30, 4, '_line_total', '45'),
(31, 4, '_line_tax', '0'),
(32, 4, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(33, 5, '_product_id', '28'),
(34, 5, '_variation_id', '0'),
(35, 5, '_qty', '1'),
(36, 5, '_tax_class', ''),
(37, 5, '_line_subtotal', '16'),
(38, 5, '_line_subtotal_tax', '0'),
(39, 5, '_line_total', '16'),
(40, 5, '_line_tax', '0'),
(41, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(42, 6, 'method_id', 'free_shipping:1'),
(43, 6, 'cost', '0.00'),
(44, 6, 'total_tax', '0'),
(45, 6, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(46, 6, 'Mặt hàng', 'Long Sleeve Tee &times; 1, Hoodie with Logo &times; 1, Cap &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Tshirt', 'line_item', 52),
(2, 'Free shipping', 'shipping', 52),
(3, 'Long Sleeve Tee', 'line_item', 90),
(4, 'Hoodie with Logo', 'line_item', 90),
(5, 'Cap', 'line_item', 90),
(6, 'Giao hàng miễn phí', 'shipping', 90);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(44, '1', 'a:7:{s:8:"customer";s:670:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:20:"wpdemo2000@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";}', 1513219591),
(55, '2c51b67eb818f8d27cc174b81aa86d7c', 'a:13:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:779:"a:25:{s:2:"id";i:0;s:8:"postcode";s:0:"";s:4:"city";s:3:"HCM";s:9:"address_1";s:30:"Cong Vien Phan Mem Quang Trung";s:7:"address";s:30:"Cong Vien Phan Mem Quang Trung";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:3:"HCM";s:18:"shipping_address_1";s:30:"Cong Vien Phan Mem Quang Trung";s:16:"shipping_address";s:30:"Cong Vien Phan Mem Quang Trung";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:22:"shipping_for_package_0";s:458:"a:2:{s:12:"package_hash";s:40:"wc_ship_41cea3c3c315ea198ee94a914b0a672d";s:5:"rates";a:1:{s:15:"free_shipping:1";O:16:"WC_Shipping_Rate":2:{s:7:"\0*\0data";a:6:{s:2:"id";s:15:"free_shipping:1";s:9:"method_id";s:13:"free_shipping";s:11:"instance_id";i:1;s:5:"label";s:22:"Giao hàng miễn phí";s:4:"cost";s:4:"0.00";s:5:"taxes";a:0:{}}s:12:"\0*\0meta_data";a:1:{s:11:"Mặt hàng";s:68:"Long Sleeve Tee &times; 1, Hoodie with Logo &times; 1, Cap &times; 1";}}}}";s:25:"previous_shipping_methods";s:43:"a:1:{i:0;a:1:{i:0;s:15:"free_shipping:1";}}";s:23:"chosen_shipping_methods";s:33:"a:1:{i:0;s:15:"free_shipping:1";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:21:"chosen_payment_method";s:6:"cheque";s:22:"order_awaiting_payment";N;}', 1513326776),
(41, '3', 'a:1:{s:8:"customer";s:950:"a:25:{s:2:"id";i:3;s:8:"postcode";s:3:"084";s:4:"city";s:14:"Hồ Chí Minh";s:9:"address_1";s:52:"Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12";s:7:"address";s:52:"Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:3:"084";s:13:"shipping_city";s:14:"Hồ Chí Minh";s:18:"shipping_address_1";s:52:"Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12";s:16:"shipping_address";s:52:"Chung cư Thái An, 2920 QL1A, Trung Mỹ Tây, Q.12";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;s:10:"first_name";s:5:"Thanh";s:9:"last_name";s:2:"Vo";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:38:"facebook_user_vo_duy_thanh@example.com";s:19:"shipping_first_name";s:5:"Thanh";s:18:"shipping_last_name";s:2:"Vo";s:16:"shipping_company";s:0:"";}";}', 1513177079);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Vietnam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '', '', '', '0', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464398418106', '-109.81550500000003', '45.950464398418106,-109.81550500000003', 2, '0', 1, 0, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '%', 'px', 1, 0, 1, 2, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wsluserscontacts`
--

CREATE TABLE `wp_wsluserscontacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wslusersprofiles`
--

CREATE TABLE `wp_wslusersprofiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `object_sha` varchar(45) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `profileurl` varchar(255) NOT NULL,
  `websiteurl` varchar(255) NOT NULL,
  `photourl` varchar(255) NOT NULL,
  `displayname` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `age` varchar(10) NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `emailverified` varchar(255) NOT NULL,
  `phone` varchar(75) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(75) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wslusersprofiles`
--

INSERT INTO `wp_wslusersprofiles` (`id`, `user_id`, `provider`, `object_sha`, `identifier`, `profileurl`, `websiteurl`, `photourl`, `displayname`, `description`, `firstname`, `lastname`, `gender`, `language`, `age`, `birthday`, `birthmonth`, `birthyear`, `email`, `emailverified`, `phone`, `address`, `country`, `region`, `city`, `zip`) VALUES
(1, 3, 'Facebook', '316e01773bbc77e783c3d4ba650282af35416b18', '110795879710668', 'https://www.facebook.com/app_scoped_user_id/110795879710668/', '', 'https://graph.facebook.com/110795879710668/picture?width=150&height=150', 'Vo Duy Thanh', '', 'Vo Duy', 'Thanh', 'male', 'vi_VN', '', 0, 0, 0, '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_ds_subscriber`
--
ALTER TABLE `wp_ds_subscriber`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_snippets`
--
ALTER TABLE `wp_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_ds_subscriber`
--
ALTER TABLE `wp_ds_subscriber`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=811;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `wp_snippets`
--
ALTER TABLE `wp_snippets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wsluserscontacts`
--
ALTER TABLE `wp_wsluserscontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wslusersprofiles`
--
ALTER TABLE `wp_wslusersprofiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
