-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2017 at 11:17 AM
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
(3, 90, 'WooCommerce', '', '', '', '2017-12-13 08:38:53', '2017-12-13 08:38:53', 'Đang chờ kiểm tra thanh toán Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Tạm giữ.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 100, 'WooCommerce', '', '', '', '2017-12-14 08:20:27', '2017-12-14 08:20:27', 'Chờ thanh toán chuyển khoản Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Tạm giữ.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(5, 100, 'admin', 'wpdemo2000@gmail.com', '', '', '2017-12-14 08:22:45', '2017-12-14 08:22:45', 'Thông tin đơn hàng được gửi bằng tay tới khách hàng.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(6, 90, 'admin', 'wpdemo2000@gmail.com', '', '', '2017-12-14 08:25:02', '2017-12-14 08:25:02', 'Trạng thái đơn hàng đã được chuyển từ Tạm giữ sang Đã hoàn thành.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

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
-- Table structure for table `wp_es_deliverreport`
--

CREATE TABLE `wp_es_deliverreport` (
  `es_deliver_id` int(10) UNSIGNED NOT NULL,
  `es_deliver_sentguid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_emailid` int(10) UNSIGNED NOT NULL,
  `es_deliver_emailmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_deliverreport`
--

INSERT INTO `wp_es_deliverreport` (`es_deliver_id`, `es_deliver_sentguid`, `es_deliver_emailid`, `es_deliver_emailmail`, `es_deliver_sentdate`, `es_deliver_status`, `es_deliver_viewdate`, `es_deliver_sentstatus`, `es_deliver_senttype`) VALUES
(1, 'alzsyq-bytega-naiefg-xmkwoe-wbgxqr', 2, 'a.example@example.com', '2017-12-14 16:01:38', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(2, 'alzsyq-bytega-naiefg-xmkwoe-wbgxqr', 3, 'vdthanh@tma.com.vn', '2017-12-14 16:01:47', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(3, 'alzsyq-bytega-naiefg-xmkwoe-wbgxqr', 1, 'wpdemo2000@gmail.com', '2017-12-14 16:01:54', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(4, 'vohbea-asgdvn-kfitml-mlckav-qhejdu', 2, 'a.example@example.com', '2017-12-16 04:09:05', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(5, 'vohbea-asgdvn-kfitml-mlckav-qhejdu', 3, 'vdthanh@tma.com.vn', '2017-12-16 04:09:11', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(6, 'vohbea-asgdvn-kfitml-mlckav-qhejdu', 1, 'wpdemo2000@gmail.com', '2017-12-16 04:09:17', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(7, 'ycrlia-eaxynl-gwcukm-fxaysw-kpfenq', 2, 'a.example@example.com', '2017-12-16 04:12:53', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(8, 'ycrlia-eaxynl-gwcukm-fxaysw-kpfenq', 3, 'vdthanh@tma.com.vn', '2017-12-16 04:12:58', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(9, 'ycrlia-eaxynl-gwcukm-fxaysw-kpfenq', 1, 'wpdemo2000@gmail.com', '2017-12-16 04:13:03', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(10, 'srbwgo-mfhlcv-becqus-rydgax-alefnv', 2, 'a.example@example.com', '2017-12-16 04:14:47', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(11, 'srbwgo-mfhlcv-becqus-rydgax-alefnv', 3, 'vdthanh@tma.com.vn', '2017-12-16 04:14:52', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(12, 'srbwgo-mfhlcv-becqus-rydgax-alefnv', 1, 'wpdemo2000@gmail.com', '2017-12-16 04:14:57', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(13, 'hsfivu-phogfr-zobayl-thakpz-vqldmp', 2, 'a.example@example.com', '2017-12-16 17:05:01', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(14, 'hsfivu-phogfr-zobayl-thakpz-vqldmp', 3, 'vdthanh@tma.com.vn', '2017-12-16 17:05:08', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(15, 'hsfivu-phogfr-zobayl-thakpz-vqldmp', 1, 'wpdemo2000@gmail.com', '2017-12-16 17:05:14', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_emaillist`
--

CREATE TABLE `wp_es_emaillist` (
  `es_email_id` int(10) UNSIGNED NOT NULL,
  `es_email_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_emaillist`
--

INSERT INTO `wp_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'wpdemo2000@gmail.com', 'Confirmed', '2017-12-14 03:24:27', '0', 'Public', 'cznajy-exgmtw-atxncj-jvzrua-cfjkin'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2017-12-14 03:24:27', '0', 'Public', 'naumrv-izengf-jexwit-qwpvcf-ztldki'),
(3, 'Thanh', 'vdthanh@tma.com.vn', 'Confirmed', '2017-12-14 03:34:55', '0', 'Public', 'plwzib-opbaqs-rmqhcl-zhrxjn-vsgbtx');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_notification`
--

CREATE TABLE `wp_es_notification` (
  `es_note_id` int(10) UNSIGNED NOT NULL,
  `es_note_cat` text COLLATE utf8mb4_unicode_ci,
  `es_note_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_note_templ` int(10) UNSIGNED NOT NULL,
  `es_note_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_notification`
--

INSERT INTO `wp_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Uncategorized## ', 'Public', 98, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_sentdetails`
--

CREATE TABLE `wp_es_sentdetails` (
  `es_sent_id` int(10) UNSIGNED NOT NULL,
  `es_sent_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_qstring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) UNSIGNED NOT NULL,
  `es_sent_preview` text COLLATE utf8mb4_unicode_ci,
  `es_sent_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately',
  `es_sent_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_sentdetails`
--

INSERT INTO `wp_es_sentdetails` (`es_sent_id`, `es_sent_guid`, `es_sent_qstring`, `es_sent_source`, `es_sent_starttime`, `es_sent_endtime`, `es_sent_count`, `es_sent_preview`, `es_sent_status`, `es_sent_type`, `es_sent_subject`) VALUES
(1, 'alzsyq-bytega-naiefg-xmkwoe-wbgxqr', '0', 'Post Notification', '2017-12-14 16:01:38', '2017-12-14 16:02:01', 3, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG<br /><a href=''http://localhost/wordpress/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong/'' target=''_blank''><img width="800" height="800" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3.jpg" class="attachment-full size-full wp-post-image" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" srcset="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3.jpg 800w, http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-150x150.jpg 150w, http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg 300w, http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-768x768.jpg 768w, http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-180x180.jpg 180w, http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-600x600.jpg 600w" sizes="(max-width: 800px) 100vw, 800px" /></a><br /><br />You can view it from this link : <a href=''http://localhost/wordpress/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong/'' target=''_blank''>http://localhost/wordpress/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong/</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG'),
(2, 'vohbea-asgdvn-kfitml-mlckav-qhejdu', '0', 'Post Notification', '2017-12-16 04:09:04', '2017-12-16 04:09:23', 3, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : Set Roll 1 Pax<br /><a href=''http://localhost/wordpress/set-roll-1-pax/'' target=''_blank''><img width="900" height="603" src="http://localhost/wordpress/wp-content/uploads/2017/12/top1.png" class="attachment-full size-full wp-post-image" alt="Set Roll 1 Pax" srcset="http://localhost/wordpress/wp-content/uploads/2017/12/top1.png 900w, http://localhost/wordpress/wp-content/uploads/2017/12/top1-300x201.png 300w, http://localhost/wordpress/wp-content/uploads/2017/12/top1-768x515.png 768w" sizes="(max-width: 900px) 100vw, 900px" /></a><br /><br />You can view it from this link : <a href=''http://localhost/wordpress/set-roll-1-pax/'' target=''_blank''>http://localhost/wordpress/set-roll-1-pax/</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - Set Roll 1 Pax'),
(3, 'ycrlia-eaxynl-gwcukm-fxaysw-kpfenq', '0', 'Post Notification', '2017-12-16 04:12:53', '2017-12-16 04:13:09', 3, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : Happy Friday<br /><a href=''http://localhost/wordpress/happy-friday/'' target=''_blank''><img width="1200" height="900" src="http://localhost/wordpress/wp-content/uploads/2017/12/top2.jpg" class="attachment-full size-full wp-post-image" alt="Happy Friday" srcset="http://localhost/wordpress/wp-content/uploads/2017/12/top2.jpg 1200w, http://localhost/wordpress/wp-content/uploads/2017/12/top2-300x225.jpg 300w, http://localhost/wordpress/wp-content/uploads/2017/12/top2-768x576.jpg 768w, http://localhost/wordpress/wp-content/uploads/2017/12/top2-1024x768.jpg 1024w" sizes="(max-width: 1200px) 100vw, 1200px" /></a><br /><br />You can view it from this link : <a href=''http://localhost/wordpress/happy-friday/'' target=''_blank''>http://localhost/wordpress/happy-friday/</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - Happy Friday'),
(4, 'srbwgo-mfhlcv-becqus-rydgax-alefnv', '0', 'Post Notification', '2017-12-16 04:14:47', '2017-12-16 04:15:03', 3, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : Menu Combo 220k<br /><a href=''http://localhost/wordpress/menu-combo-220k/'' target=''_blank''><img width="1200" height="900" src="http://localhost/wordpress/wp-content/uploads/2017/12/top3.jpg" class="attachment-full size-full wp-post-image" alt="Menu Combo 220k" srcset="http://localhost/wordpress/wp-content/uploads/2017/12/top3.jpg 1200w, http://localhost/wordpress/wp-content/uploads/2017/12/top3-300x225.jpg 300w, http://localhost/wordpress/wp-content/uploads/2017/12/top3-768x576.jpg 768w, http://localhost/wordpress/wp-content/uploads/2017/12/top3-1024x768.jpg 1024w" sizes="(max-width: 1200px) 100vw, 1200px" /></a><br /><br />You can view it from this link : <a href=''http://localhost/wordpress/menu-combo-220k/'' target=''_blank''>http://localhost/wordpress/menu-combo-220k/</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - Menu Combo 220k'),
(5, 'hsfivu-phogfr-zobayl-thakpz-vqldmp', '0', 'Post Notification', '2017-12-16 17:05:01', '2017-12-16 17:05:20', 3, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG<br /><br /><br />You can view it from this link : <a href=''http://localhost/wordpress/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong/'' target=''_blank''>http://localhost/wordpress/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong/</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG');

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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:208:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:47:"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:42:"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:23:"danh-muc/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:35:"danh-muc/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:17:"danh-muc/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:48:"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:43:"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:24:"tu-khoa/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:36:"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:18:"tu-khoa/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:36:"san-pham/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"san-pham/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"san-pham/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"san-pham/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:29:"san-pham/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:49:"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:44:"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:37:"san-pham/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:44:"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:34:"san-pham/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:40:"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"san-pham/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:25:"san-pham/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"san-pham/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"san-pham/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"slideshow/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"slideshow/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"slideshow/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"slideshow/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"slideshow/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"slideshow/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"slideshow/(.+?)/embed/?$";s:52:"index.php?twoj_slideshow_post=$matches[1]&embed=true";s:28:"slideshow/(.+?)/trackback/?$";s:46:"index.php?twoj_slideshow_post=$matches[1]&tb=1";s:36:"slideshow/(.+?)/page/?([0-9]{1,})/?$";s:59:"index.php?twoj_slideshow_post=$matches[1]&paged=$matches[2]";s:43:"slideshow/(.+?)/comment-page-([0-9]{1,})/?$";s:59:"index.php?twoj_slideshow_post=$matches[1]&cpage=$matches[2]";s:33:"slideshow/(.+?)/wc-api(/(.*))?/?$";s:60:"index.php?twoj_slideshow_post=$matches[1]&wc-api=$matches[3]";s:39:"slideshow/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"slideshow/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"slideshow/(.+?)(?:/([0-9]+))?/?$";s:58:"index.php?twoj_slideshow_post=$matches[1]&page=$matches[2]";s:39:"es_template/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"es_template/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"es_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"es_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"es_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"es_template/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"es_template/([^/]+)/embed/?$";s:44:"index.php?es_template=$matches[1]&embed=true";s:32:"es_template/([^/]+)/trackback/?$";s:38:"index.php?es_template=$matches[1]&tb=1";s:40:"es_template/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?es_template=$matches[1]&paged=$matches[2]";s:47:"es_template/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?es_template=$matches[1]&cpage=$matches[2]";s:37:"es_template/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?es_template=$matches[1]&wc-api=$matches[3]";s:43:"es_template/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"es_template/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"es_template/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?es_template=$matches[1]&page=$matches[2]";s:28:"es_template/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"es_template/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"es_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"es_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"es_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"es_template/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"wcps/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"wcps/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"wcps/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"wcps/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"wcps/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"wcps/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"wcps/([^/]+)/embed/?$";s:37:"index.php?wcps=$matches[1]&embed=true";s:25:"wcps/([^/]+)/trackback/?$";s:31:"index.php?wcps=$matches[1]&tb=1";s:33:"wcps/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?wcps=$matches[1]&paged=$matches[2]";s:40:"wcps/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?wcps=$matches[1]&cpage=$matches[2]";s:30:"wcps/([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?wcps=$matches[1]&wc-api=$matches[3]";s:36:"wcps/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:47:"wcps/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"wcps/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?wcps=$matches[1]&page=$matches[2]";s:21:"wcps/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"wcps/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"wcps/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"wcps/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"wcps/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"wcps/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=24&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:17:{i:0;s:28:"2j-slideshow/2jslideshow.php";i:1;s:31:"code-snippets/code-snippets.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:4;s:39:"email-subscribers/email-subscribers.php";i:5;s:35:"oa-social-login/oa-social-login.php";i:6;s:66:"paypal-currency-converter-basic-for-woocommerce/paypalcc-basic.php";i:7;s:25:"profile-builder/index.php";i:8;s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";i:9;s:52:"theme-customisations-master/theme-customisations.php";i:10;s:34:"woo-product-images-slider/wpis.php";i:11;s:72:"woocommerce-product-payments/woocommerce-payment-gateway-per-product.php";i:12;s:59:"woocommerce-products-slider/woocommerce-products-slider.php";i:13;s:27:"woocommerce/woocommerce.php";i:14;s:31:"wp-google-maps/wpGoogleMaps.php";i:15;s:45:"wp-live-chat-support/wp-live-chat-support.php";i:16;s:21:"wp-reset/wp-reset.php";}', 'yes'),
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
(81, 'uninstall_plugins', 'a:3:{s:29:"easy-wp-smtp/easy-wp-smtp.php";s:22:"swpsmtp_send_uninstall";s:50:"social-media-buttons-toolbar/inc/php/uninstall.php";s:26:"spacexchimp_p005_uninstall";s:15:"chats/chats.php";a:2:{i:0;s:5:"Chats";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:139:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"manage_snippets";b:1;s:13:"wplc_ma_agent";b:1;s:24:"edit_wplc_quick_response";b:1;s:30:"edit_other_wplc_quick_response";b:1;s:27:"publish_wplc_quick_response";b:1;s:24:"read_wplc_quick_response";b:1;s:32:"read_private_wplc_quick_response";b:1;s:26:"delete_wplc_quick_response";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:1:{i:0;s:13:"custom_html-2";}s:8:"footer-2";a:1:{i:0;s:13:"custom_html-3";}s:8:"footer-3";a:1:{i:0;s:19:"email-subscribers-2";}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:7:"content";s:658:"<div class="container">\r\n	<div class="image">\r\n		<a href="/">\r\n			<img src="http://localhost/wordpress/wp-content/themes/deli/images/logo.png" title="" alt=""/>\r\n		</a>\r\n	</div>\r\n	<div class="text">\r\n    <p></p>\r\n		<p>\r\n			<span class="label">ĐỊA CHỈ:</span>215 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1, TP.HCM\r\n		</p>\r\n		<p>\r\n			<span class="label">EMAIL:</span>yadingji@gmail.com\r\n		</p>\r\n		<p>\r\n			<span class="label">PHONE:</span>(028) 38207268\r\n		</p>\r\n		<p>\r\n			<span class="label">FANPAGE:</span>https://www.facebook.com/Yadingji\r\n		</p>\r\n		<p>\r\n			<span class="label">GIỜ MỞ CỬA: </span>11:00 AM - 09:00 PM\r\n		</p>\r\n	</div>\r\n</div>";}i:3;a:2:{s:5:"title";s:0:"";s:7:"content";s:404:"<div class="container">	\r\n	<div class="text">\r\n			<span class="header">THỰC ĐƠN YADINGJI</span>	\r\n	</div>\r\n	<div class="links">\r\n		<p>\r\n			<a href="#">VỊT QUAY</a>&nbsp;/&nbsp; \r\n			<a href="#">CUỐN VỊT QUAY</a>&nbsp;/&nbsp;\r\n			<a href="#">MÀN THẦU VỊT QUAY</a>&nbsp;/&nbsp;\r\n			<a href="#">MÌ XÀO VỊT QUAY</a>&nbsp;/&nbsp;\r\n			<a href="#">CƠM VỊT QUAY</a>\r\n		</p>\r\n	</div>\r\n</div>";}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:9:{i:1513767532;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1513780325;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513787212;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513801510;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513814400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513823525;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513844787;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1514851200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512721729;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(113, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(114, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:6:{s:15:"chats/chats.php";i:1513759438;s:29:"wp-subscribe/wp-subscribe.php";i:1513222578;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:1513218714;s:49:"woocommerce-login-popup-and-shortcodes/plugin.php";i:1513218691;s:42:"wordpress-social-login/wp-social-login.php";i:1513218595;s:67:"woocommerce-simple-registration/woocommerce-simple-registration.php";i:1513218555;}', 'yes'),
(141, 'wc_ppec_version', '1.4.7', 'yes'),
(145, 'woocommerce_store_address', 'Address Example', 'yes'),
(146, 'woocommerce_store_address_2', '', 'yes'),
(147, 'woocommerce_store_city', 'HCM', 'yes'),
(148, 'woocommerce_default_country', 'VN', 'yes'),
(149, 'woocommerce_store_postcode', '700000', 'yes'),
(150, 'woocommerce_allowed_countries', 'all', 'yes'),
(151, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(152, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(153, 'woocommerce_ship_to_countries', '', 'yes'),
(154, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(155, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(156, 'woocommerce_calc_taxes', 'no', 'yes'),
(157, 'woocommerce_demo_store', 'no', 'yes'),
(158, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(159, 'woocommerce_currency', 'VND', 'yes'),
(160, 'woocommerce_currency_pos', 'right', 'yes'),
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
(220, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'yes', 'no'),
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
(263, 'woocommerce_tracker_last_send', '1513396934', 'yes'),
(265, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(266, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:20:"wpdemo2000@gmail.com";}', 'yes'),
(272, '_transient_shipping-transient-version', '1512721723', 'yes'),
(273, 'current_theme', 'Deli', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(274, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512721835;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(275, 'theme_switched', '', 'yes'),
(276, 'storefront_nux_fresh_site', '0', 'yes'),
(277, 'storefront_nux_dismissed', '1', 'yes'),
(285, '_transient_product_query-transient-version', '1513428823', 'yes'),
(288, '_transient_product-transient-version', '1513428633', 'yes'),
(316, 'theme_mods_deli', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:18;}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #ffffff;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #ffffff;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffffff;\n			}\n\n			table th {\n				background-color: #5d513f;\n			}\n\n			table tbody td {\n				background-color: #625644;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #605442;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #b64902;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #b64902;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #b64902;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #2b2b2b;\n			}\n\n			.widget h1 {\n				border-bottom-color: #2b2b2b;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #615d59;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #938f8b;\n			}\n\n			a  {\n				color: #0e7784;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #0e7784;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #0e7784;\n				border-color: #0e7784;\n				color: #ffffff;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #005e6b;\n				border-color: #005e6b;\n				color: #ffffff;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #b64902;\n				border-color: #b64902;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #9d3000;\n				border-color: #9d3000;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #4b3f2d;\n				color: #615d59;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #5d513f;\n			}\n\n			.site-footer {\n				background-color: #2b2b2b;\n				color: #ffffff;\n			}\n\n			.site-footer a:not(.button) {\n				color: #e4decd;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #ffffff;\n			}\n\n			#order_review {\n				background-color: #645846;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #5f5341;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #5a4e3c;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #554937;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #ffffff;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #ffffff;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #a73a00;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #ac3f00;\n				}\n\n				.site-header {\n					border-bottom-color: #a73a00;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #ffffff;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #645846;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #615d59;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #938f8b;\n			}\n\n			.onsale {\n				border-color: #615d59;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #0e7784;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #0e7784;\n			}\n\n			.order_details {\n				background-color: #5d513f;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #483c2a;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#5d513f 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#5d513f 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #615d59;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #0e7784;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #0e7784;\n				color: #ffffff;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #005e6b;\n				border-color: #005e6b;\n				color: #ffffff;\n			}\n\n			.button.loading {\n				color: #0e7784;\n			}\n\n			.button.loading:hover {\n				background-color: #0e7784;\n			}\n\n			.button.loading:after {\n				color: #ffffff;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #ffffff;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:73;}', 'yes'),
(318, 'woocommerce_tracker_ua', 'a:2:{i:0;s:105:"mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/61.0.3163.100 safari/537.36";i:1;s:105:"mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/59.0.3071.115 safari/537.36";}', 'yes'),
(359, 'woo_login_popup_sc_installDate', '2017-12-09 03:51:13', 'yes'),
(361, 'woo_login_popup_sc_settings', 'a:3:{s:5:"popup";s:1:"1";s:10:"background";s:0:"";s:3:"css";s:0:"";}', 'yes'),
(364, '_transient_timeout_wc_shipping_method_count_1_1512721723', '1515427394', 'no'),
(365, '_transient_wc_shipping_method_count_1_1512721723', '2', 'no'),
(387, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(412, 'swpsmtp_options', 'a:7:{s:15:"allowed_domains";s:12:"bG9jYWxob3N0";s:15:"from_name_field";s:14:"Wordpress Demo";s:16:"from_email_field";s:20:"wpdemo2000@gmail.com";s:14:"reply_to_email";s:0:"";s:17:"email_ignore_list";s:0:"";s:13:"smtp_settings";a:7:{s:4:"host";s:14:"smtp.gmail.com";s:15:"type_encryption";s:3:"ssl";s:13:"autentication";s:3:"yes";s:8:"username";s:20:"wpdemo2000@gmail.com";s:8:"password";s:24:"aG9mZ3ZnYmJqdnZrbmZoYQ==";s:12:"enable_debug";b:0;s:4:"port";s:3:"465";}s:19:"enable_domain_check";b:0;}', 'yes'),
(413, 'smtp_test_mail', 'a:3:{s:10:"swpsmtp_to";s:19:"thanhvd84@gmail.com";s:15:"swpsmtp_subject";s:10:"Test Email";s:15:"swpsmtp_message";s:25:"send to admin for testing";}', 'yes'),
(418, 'widget_wppb-login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(419, 'wppb_version', '2.7.2', 'yes'),
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
(568, '_transient_orders-transient-version', '1513239898', 'yes'),
(608, 'photonic_options', 'a:1:{s:14:"disable_editor";s:2:"on";}', 'yes'),
(609, 'widget_twoj_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(611, 'twojSlideshowVersion', '1.3.23', 'yes'),
(628, 'theme_mods_boutique', 'a:6:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:18;}s:17:"storefront_styles";s:5060:"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #ffffff;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #ffffff;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #ffffff;\n			}\n\n			table th {\n				background-color: #292929;\n			}\n\n			table tbody td {\n				background-color: #2e2e2e;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #2c2c2c;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #2b2b2b;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #2b2b2b;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #2b2b2b;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #2b2b2b;\n			}\n\n			.widget h1 {\n				border-bottom-color: #2b2b2b;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #777777;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #a9a9a9;\n			}\n\n			a  {\n				color: #7c7235;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type="button"]:focus,\n			input[type="reset"]:focus,\n			input[type="submit"]:focus {\n				outline-color: #7c7235;\n			}\n\n			button, input[type="button"], input[type="reset"], input[type="submit"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #2b2b2b;\n			}\n\n			button:hover, input[type="button"]:hover, input[type="reset"]:hover, input[type="submit"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #2b2b2b;\n			}\n\n			button.alt, input[type="button"].alt, input[type="reset"].alt, input[type="submit"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #7c7235;\n				border-color: #7c7235;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type="button"].alt:hover, input[type="reset"].alt:hover, input[type="submit"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #63591c;\n				border-color: #63591c;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #171717;\n				color: #777777;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #292929;\n			}\n\n			.site-footer {\n				background-color: #2b2b2b;\n				color: #777777;\n			}\n\n			.site-footer a:not(.button) {\n				color: #111111;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #2b2b2b;\n			}\n\n			#order_review {\n				background-color: #303030;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #2b2b2b;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #262626;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #212121;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #ffffff;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #ffffff;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #1c1c1c;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #212121;\n				}\n\n				.site-header {\n					border-bottom-color: #1c1c1c;\n				}\n			}";s:29:"storefront_woocommerce_styles";s:2283:"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #ffffff;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #303030;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #777777;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #a9a9a9;\n			}\n\n			.onsale {\n				border-color: #777777;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #7c7235;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #7c7235;\n			}\n\n			.order_details {\n				background-color: #292929;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #141414;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#292929 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#292929 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #777777;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #7c7235;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #2b2b2b;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #2b2b2b;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #2b2b2b;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #ffffff;\n				}\n			}";s:39:"storefront_woocommerce_extension_styles";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1513007100;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(637, 'theme_switch_menu_locations', 'a:1:{s:7:"primary";i:18;}', 'yes'),
(638, 'theme_switched_via_customizer', '', 'yes'),
(639, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(687, 'widget_wp_subscribe', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(720, 'spacexchimp_p005_service_info', 'a:3:{s:7:"upgrade";s:4:"0001";s:7:"version";s:4:"4.26";s:11:"old_version";s:1:"0";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(721, 'spacexchimp_p005_settings', 'a:5:{s:5:"media";a:88:{s:8:"facebook";a:3:{s:5:"label";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:7:"content";s:33:"https://www.facebook.com/Yadingji";}s:7:"twitter";a:3:{s:5:"label";s:7:"Twitter";s:4:"slug";s:7:"twitter";s:7:"content";s:26:"http://www.yadingji.com.vn";}s:9:"instagram";a:3:{s:5:"label";s:9:"Instagram";s:4:"slug";s:9:"instagram";s:7:"content";s:0:"";}s:11:"google-plus";a:3:{s:5:"label";s:7:"Google+";s:4:"slug";s:11:"google-plus";s:7:"content";s:26:"http://www.yadingji.com.vn";}s:7:"youtube";a:3:{s:5:"label";s:7:"YouTube";s:4:"slug";s:7:"youtube";s:7:"content";s:0:"";}s:14:"youtube-gaming";a:3:{s:5:"label";s:14:"YouTube Gaming";s:4:"slug";s:14:"youtube-gaming";s:7:"content";s:0:"";}s:11:"google-play";a:3:{s:5:"label";s:11:"Google Play";s:4:"slug";s:11:"google-play";s:7:"content";s:0:"";}s:6:"itunes";a:3:{s:5:"label";s:6:"iTunes";s:4:"slug";s:6:"itunes";s:7:"content";s:0:"";}s:15:"itunes-podcasts";a:3:{s:5:"label";s:15:"iTunes Podcasts";s:4:"slug";s:15:"itunes-podcasts";s:7:"content";s:0:"";}s:11:"apple-music";a:3:{s:5:"label";s:11:"Apple Music";s:4:"slug";s:11:"apple-music";s:7:"content";s:0:"";}s:9:"periscope";a:3:{s:5:"label";s:9:"Periscope";s:4:"slug";s:9:"periscope";s:7:"content";s:0:"";}s:5:"vimeo";a:3:{s:5:"label";s:5:"Vimeo";s:4:"slug";s:5:"vimeo";s:7:"content";s:0:"";}s:7:"blogger";a:3:{s:5:"label";s:7:"Blogger";s:4:"slug";s:7:"blogger";s:7:"content";s:0:"";}s:10:"buzzsprout";a:3:{s:5:"label";s:10:"Buzzsprout";s:4:"slug";s:10:"buzzsprout";s:7:"content";s:0:"";}s:11:"livejournal";a:3:{s:5:"label";s:11:"LiveJournal";s:4:"slug";s:11:"livejournal";s:7:"content";s:0:"";}s:6:"reddit";a:3:{s:5:"label";s:6:"Reddit";s:4:"slug";s:6:"reddit";s:7:"content";s:0:"";}s:8:"linkedin";a:3:{s:5:"label";s:8:"LinkedIn";s:4:"slug";s:8:"linkedin";s:7:"content";s:0:"";}s:8:"diaspora";a:3:{s:5:"label";s:8:"Diaspora";s:4:"slug";s:8:"diaspora";s:7:"content";s:0:"";}s:10:"deviantart";a:3:{s:5:"label";s:10:"DeviantArt";s:4:"slug";s:10:"deviantart";s:7:"content";s:0:"";}s:4:"xing";a:3:{s:5:"label";s:4:"XING";s:4:"slug";s:4:"xing";s:7:"content";s:0:"";}s:9:"pinterest";a:3:{s:5:"label";s:9:"Pinterest";s:4:"slug";s:9:"pinterest";s:7:"content";s:0:"";}s:6:"flickr";a:3:{s:5:"label";s:6:"Flickr";s:4:"slug";s:6:"flickr";s:7:"content";s:0:"";}s:6:"tumblr";a:3:{s:5:"label";s:6:"Tumblr";s:4:"slug";s:6:"tumblr";s:7:"content";s:0:"";}s:8:"snapchat";a:3:{s:5:"label";s:8:"Snapchat";s:4:"slug";s:8:"snapchat";s:7:"content";s:0:"";}s:6:"twitch";a:3:{s:5:"label";s:6:"Twitch";s:4:"slug";s:6:"twitch";s:7:"content";s:0:"";}s:7:"patreon";a:3:{s:5:"label";s:7:"Patreon";s:4:"slug";s:7:"patreon";s:7:"content";s:0:"";}s:4:"imdb";a:3:{s:5:"label";s:4:"IMDb";s:4:"slug";s:4:"imdb";s:7:"content";s:0:"";}s:10:"soundcloud";a:3:{s:5:"label";s:10:"SoundCloud";s:4:"slug";s:10:"soundcloud";s:7:"content";s:0:"";}s:6:"plugdj";a:3:{s:5:"label";s:7:"Plug.dj";s:4:"slug";s:6:"plugdj";s:7:"content";s:0:"";}s:7:"spotify";a:3:{s:5:"label";s:7:"Spotify";s:4:"slug";s:7:"spotify";s:7:"content";s:0:"";}s:8:"bandcamp";a:3:{s:5:"label";s:8:"Bandcamp";s:4:"slug";s:8:"bandcamp";s:7:"content";s:0:"";}s:5:"dloky";a:3:{s:5:"label";s:5:"Dloky";s:4:"slug";s:5:"dloky";s:7:"content";s:0:"";}s:6:"amazon";a:3:{s:5:"label";s:6:"Amazon";s:4:"slug";s:6:"amazon";s:7:"content";s:0:"";}s:7:"bookbub";a:3:{s:5:"label";s:7:"BookBub";s:4:"slug";s:7:"bookbub";s:7:"content";s:0:"";}s:9:"goodreads";a:3:{s:5:"label";s:9:"Goodreads";s:4:"slug";s:9:"goodreads";s:7:"content";s:0:"";}s:8:"meetvibe";a:3:{s:5:"label";s:8:"MeetVibe";s:4:"slug";s:8:"meetvibe";s:7:"content";s:0:"";}s:6:"meetup";a:3:{s:5:"label";s:6:"Meetup";s:4:"slug";s:6:"meetup";s:7:"content";s:0:"";}s:5:"steam";a:3:{s:5:"label";s:5:"Steam";s:4:"slug";s:5:"steam";s:7:"content";s:0:"";}s:5:"mixer";a:3:{s:5:"label";s:5:"Mixer";s:4:"slug";s:5:"mixer";s:7:"content";s:0:"";}s:7:"discord";a:3:{s:5:"label";s:7:"Discord";s:4:"slug";s:7:"discord";s:7:"content";s:0:"";}s:4:"yelp";a:3:{s:5:"label";s:4:"Yelp";s:4:"slug";s:4:"yelp";s:7:"content";s:0:"";}s:11:"stumbleupon";a:3:{s:5:"label";s:11:"StumbleUpon";s:4:"slug";s:11:"stumbleupon";s:7:"content";s:0:"";}s:9:"bloglovin";a:3:{s:5:"label";s:9:"Bloglovin";s:4:"slug";s:9:"bloglovin";s:7:"content";s:0:"";}s:8:"whatsapp";a:3:{s:5:"label";s:8:"WhatsApp";s:4:"slug";s:8:"whatsapp";s:7:"content";s:0:"";}s:6:"medium";a:3:{s:5:"label";s:6:"Medium";s:4:"slug";s:6:"medium";s:7:"content";s:0:"";}s:5:"500px";a:3:{s:5:"label";s:5:"500px";s:4:"slug";s:5:"500px";s:7:"content";s:0:"";}s:7:"behance";a:3:{s:5:"label";s:7:"Behance";s:4:"slug";s:7:"behance";s:7:"content";s:0:"";}s:8:"polyvore";a:3:{s:5:"label";s:8:"Polyvore";s:4:"slug";s:8:"polyvore";s:7:"content";s:0:"";}s:11:"yellowpages";a:3:{s:5:"label";s:12:"Yellow Pages";s:4:"slug";s:11:"yellowpages";s:7:"content";s:0:"";}s:4:"line";a:3:{s:5:"label";s:4:"LINE";s:4:"slug";s:4:"line";s:7:"content";s:0:"";}s:4:"itch";a:3:{s:5:"label";s:4:"itch";s:4:"slug";s:4:"itch";s:7:"content";s:0:"";}s:8:"mastodon";a:3:{s:5:"label";s:8:"Mastodon";s:4:"slug";s:8:"mastodon";s:7:"content";s:0:"";}s:6:"remind";a:3:{s:5:"label";s:6:"Remind";s:4:"slug";s:6:"remind";s:7:"content";s:0:"";}s:7:"trademe";a:3:{s:5:"label";s:8:"Trade Me";s:4:"slug";s:7:"trademe";s:7:"content";s:0:"";}s:4:"vsco";a:3:{s:5:"label";s:4:"VSCO";s:4:"slug";s:4:"vsco";s:7:"content";s:0:"";}s:9:"hireology";a:3:{s:5:"label";s:9:"Hireology";s:4:"slug";s:9:"hireology";s:7:"content";s:0:"";}s:6:"kompoz";a:3:{s:5:"label";s:6:"Kompoz";s:4:"slug";s:6:"kompoz";s:7:"content";s:0:"";}s:10:"soundblend";a:3:{s:5:"label";s:10:"SoundBlend";s:4:"slug";s:10:"soundblend";s:7:"content";s:0:"";}s:9:"vkontakte";a:3:{s:5:"label";s:9:"VKontakte";s:4:"slug";s:9:"vkontakte";s:7:"content";s:0:"";}s:13:"odnoklassniki";a:3:{s:5:"label";s:13:"Odnoklassniki";s:4:"slug";s:13:"odnoklassniki";s:7:"content";s:0:"";}s:8:"telegram";a:3:{s:5:"label";s:8:"Telegram";s:4:"slug";s:8:"telegram";s:7:"content";s:0:"";}s:6:"github";a:3:{s:5:"label";s:6:"GitHub";s:4:"slug";s:6:"github";s:7:"content";s:0:"";}s:9:"wordpress";a:3:{s:5:"label";s:9:"WordPress";s:4:"slug";s:9:"wordpress";s:7:"content";s:0:"";}s:7:"codepen";a:3:{s:5:"label";s:7:"CodePen";s:4:"slug";s:7:"codepen";s:7:"content";s:0:"";}s:5:"askfm";a:3:{s:5:"label";s:5:"ASKfm";s:4:"slug";s:5:"askfm";s:7:"content";s:0:"";}s:4:"ebay";a:3:{s:5:"label";s:4:"eBay";s:4:"slug";s:4:"ebay";s:7:"content";s:0:"";}s:8:"hangouts";a:3:{s:5:"label";s:8:"Hangouts";s:4:"slug";s:8:"hangouts";s:7:"content";s:0:"";}s:5:"houzz";a:3:{s:5:"label";s:5:"Houzz";s:4:"slug";s:5:"houzz";s:7:"content";s:0:"";}s:5:"quora";a:3:{s:5:"label";s:5:"Quora";s:4:"slug";s:5:"quora";s:7:"content";s:0:"";}s:7:"steemit";a:3:{s:5:"label";s:7:"Steemit";s:4:"slug";s:7:"steemit";s:7:"content";s:0:"";}s:11:"theartstack";a:3:{s:5:"label";s:8:"ArtStack";s:4:"slug";s:11:"theartstack";s:7:"content";s:0:"";}s:7:"theknot";a:3:{s:5:"label";s:8:"The Knot";s:4:"slug";s:7:"theknot";s:7:"content";s:0:"";}s:5:"viber";a:3:{s:5:"label";s:5:"Viber";s:4:"slug";s:5:"viber";s:7:"content";s:0:"";}s:4:"etsy";a:3:{s:5:"label";s:4:"Etsy";s:4:"slug";s:4:"etsy";s:7:"content";s:0:"";}s:11:"tripadvisor";a:3:{s:5:"label";s:12:"Trip Advisor";s:4:"slug";s:11:"tripadvisor";s:7:"content";s:0:"";}s:13:"stackoverflow";a:3:{s:5:"label";s:14:"Stack Overflow";s:4:"slug";s:13:"stackoverflow";s:7:"content";s:0:"";}s:13:"stackexchange";a:3:{s:5:"label";s:14:"Stack Exchange";s:4:"slug";s:13:"stackexchange";s:7:"content";s:0:"";}s:9:"bitbucket";a:3:{s:5:"label";s:9:"Bitbucket";s:4:"slug";s:9:"bitbucket";s:7:"content";s:0:"";}s:15:"dailypaintworks";a:3:{s:5:"label";s:16:"Daily Paintworks";s:4:"slug";s:15:"dailypaintworks";s:7:"content";s:0:"";}s:9:"flipboard";a:3:{s:5:"label";s:9:"Flipboard";s:4:"slug";s:9:"flipboard";s:7:"content";s:0:"";}s:3:"gab";a:3:{s:5:"label";s:3:"Gab";s:4:"slug";s:3:"gab";s:7:"content";s:0:"";}s:5:"minds";a:3:{s:5:"label";s:5:"Minds";s:4:"slug";s:5:"minds";s:7:"content";s:0:"";}s:7:"wattpad";a:3:{s:5:"label";s:7:"Wattpad";s:4:"slug";s:7:"wattpad";s:7:"content";s:0:"";}s:5:"skype";a:3:{s:5:"label";s:5:"Skype";s:4:"slug";s:5:"skype";s:7:"content";s:0:"";}s:7:"website";a:3:{s:5:"label";s:16:"Personal website";s:4:"slug";s:7:"website";s:7:"content";s:0:"";}s:5:"email";a:3:{s:5:"label";s:5:"Email";s:4:"slug";s:5:"email";s:7:"content";s:27:"mailto:wpdemo2000@gmail.com";}s:9:"telephone";a:3:{s:5:"label";s:9:"Telephone";s:4:"slug";s:9:"telephone";s:7:"content";s:20:"tel://(028) 38207268";}s:8:"rss-feed";a:3:{s:5:"label";s:8:"RSS Feed";s:4:"slug";s:8:"rss-feed";s:7:"content";s:0:"";}}s:9:"icon-size";s:2:"48";s:12:"margin-right";s:2:"10";s:9:"alignment";s:6:"center";s:7:"caption";s:0:"";}', 'yes'),
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
(764, 'wpgmza_stats', 'a:3:{s:14:"settings_basic";a:3:{s:5:"views";i:4;s:13:"last_accessed";s:19:"2017-12-13 07:09:32";s:14:"first_accessed";s:19:"2017-12-13 04:37:28";}s:15:"list_maps_basic";a:3:{s:5:"views";i:3;s:13:"last_accessed";s:19:"2017-12-14 09:26:10";s:14:"first_accessed";s:19:"2017-12-13 04:44:02";}s:9:"dashboard";a:3:{s:5:"views";i:9;s:13:"last_accessed";s:19:"2017-12-14 09:38:51";s:14:"first_accessed";s:19:"2017-12-14 09:26:12";}}', 'yes'),
(765, 'wpgmza_google_maps_api_key', 'AIzaSyBwC16OOqDvPi6n80Yr0F83h3LADTQmyxI', 'yes'),
(766, 'WPGMZA_FIRST_TIME', '6.4.06', 'yes'),
(779, 'widget_dreamshop_contact_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(780, 'theme_mods_dreamshop', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(781, 'wpis_options', 'a:5:{s:5:"arrow";s:4:"true";s:6:"carrow";s:5:"false";s:4:"zoom";s:4:"true";s:5:"popup";s:4:"true";s:8:"autoplay";s:4:"true";}', 'yes'),
(808, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1513154686;s:7:"version";s:5:"4.9.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(846, 'wc_gateway_ppce_bootstrap_warning_message', 'WooCommerce Gateway PayPal Express Checkout requires WooCommerce to be activated', 'yes'),
(852, 'woocommerce_version', '3.2.6', 'yes'),
(853, 'woocommerce_db_version', '3.2.6', 'yes'),
(855, 'oa_social_login_settings', 'a:7:{s:22:"api_connection_handler";s:4:"curl";s:24:"api_connection_use_https";i:1;s:13:"api_subdomain";s:12:"app-744403-1";s:23:"asynchronous_javascript";i:1;s:7:"api_key";s:36:"ba7b9383-9061-4483-bb82-6c5e6a797f50";s:10:"api_secret";s:36:"58d5f06f-742d-44b2-8b1c-67a4f7544fd8";s:9:"providers";a:2:{s:8:"facebook";i:1;s:6:"google";i:1;}}', 'yes'),
(858, 'oa_social_login_api_settings_verified', '1', 'yes'),
(866, 'email-subscribers', '2.9', 'yes'),
(867, 'ig_es_fromname', 'YADINGJI', 'yes'),
(868, 'ig_es_fromemail', 'wpdemo2000@gmail.com', 'yes'),
(869, 'ig_es_emailtype', 'WP HTML MAIL', 'yes'),
(870, 'ig_es_notifyadmin', 'YES', 'yes'),
(871, 'ig_es_adminemail', 'wpdemo2000@gmail.com', 'yes'),
(872, 'ig_es_admin_new_sub_subject', 'YADINGJI - New email subscription', 'yes'),
(873, 'ig_es_admin_new_sub_content', 'Hi Admin,\r\n\r\nCongratulations! You have a new subscriber.\r\n\r\nName : {{NAME}}\r\nEmail: {{EMAIL}}\r\nGroup: {{GROUP}}\r\n\r\nHave a nice day :)\r\nYADINGJI', 'yes'),
(874, 'ig_es_welcomeemail', 'YES', 'yes'),
(875, 'ig_es_welcomesubject', 'YADINGJI - Welcome!', 'yes'),
(876, 'ig_es_welcomecontent', 'Hi {{NAME}},\r\n\r\nThank you for subscribing to YADINGJI.\r\n\r\nWe are glad to have you onboard.\r\n\r\nBest,\r\nYADINGJI\r\n\r\nGot subscribed to YADINGJI by mistake? Click <a href=''{{LINK}}''>here</a> to unsubscribe.', 'yes'),
(877, 'ig_es_optintype', 'Double Opt In', 'yes'),
(878, 'ig_es_confirmsubject', 'YADINGJI - Please confirm your subscription', 'yes'),
(879, 'ig_es_confirmcontent', 'Hi {{NAME}},\r\n\r\nWe have received a subscription request from this email address. Please confirm it by <a href=''{{LINK}}''>clicking here</a>.\r\n\r\nIf you still cannot subscribe, please copy this link and paste it in your browser :\r\n{{LINK}} \r\n\r\nThank You\r\nYADINGJI', 'yes'),
(880, 'ig_es_optinlink', 'http://localhost/wordpress/?es=optin&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(881, 'ig_es_unsublink', 'http://localhost/wordpress/?es=unsubscribe&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(882, 'ig_es_unsubcontent', 'No longer interested in emails from YADINGJI?. Please <a href=''{{LINK}}''>click here</a> to unsubscribe', 'yes'),
(883, 'ig_es_unsubtext', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'yes'),
(884, 'ig_es_successmsg', 'You have been successfully subscribed.', 'yes'),
(885, 'ig_es_suberror', 'Oops.. Your request couldn''t be completed. This email address seems to be already subscribed / blocked.', 'yes'),
(886, 'ig_es_unsuberror', 'Oops.. There was some technical error. Please try again later or contact us.', 'yes'),
(887, 'ig_es_sample_data_imported', 'yes', 'yes'),
(890, 'widget_email-subscribers', 'a:2:{i:2;a:4:{s:8:"es_title";s:17:"NHẬN THÔNG TIN";s:7:"es_desc";s:0:"";s:7:"es_name";s:2:"NO";s:8:"es_group";s:6:"Public";}s:12:"_multiwidget";i:1;}', 'yes'),
(891, 'ig_es_sync_wp_users', 's:4:"b:0;";', 'yes'),
(892, 'current_sa_email_subscribers_db_version', '3.4.0', 'yes'),
(893, 'ig_es_update_v_3_3_4_date', '2017-12-14', 'yes'),
(894, 'ig_es_post_image_size', 'full', 'yes'),
(895, 'ig_es_sentreport', 'Hi Admin,\n\nEmail has been sent successfully to {{COUNT}} email(s). Please find the details below:\n\nUnique ID: {{UNIQUE}}\nStart Time: {{STARTTIME}}\nEnd Time: {{ENDTIME}}\nFor more information, login to your dashboard and go to Reports menu in Email Subscribers.\n\nThank You.', 'yes'),
(896, 'ig_es_sentreport_subject', 'Your email has been sent', 'yes'),
(897, 'ig_es_cronurl', 'http://localhost/wordpress/?es=cron&guid=seizcp-xuzrvn-scvjxt-cpemzd-ombuas', 'yes'),
(898, 'ig_es_cron_mailcount', '50', 'yes'),
(899, 'ig_es_cron_adminmail', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on {{DATE}} for the email {{SUBJECT}}. And it sent email to {{COUNT}} recipient(s).\r\n\r\nBest,\r\nYADINGJI', 'yes'),
(910, 'wpppayment_version', '2.3', 'yes'),
(911, 'softsdev_selected_cats', '19,31', 'yes'),
(912, 'sdwpp_plugin_settings', 'a:1:{s:15:"default_payment";s:0:"";}', 'yes'),
(914, '_transient_timeout_wc_shipping_method_count_0_1512721723', '1515828365', 'no'),
(915, '_transient_wc_shipping_method_count_0_1512721723', '2', 'no'),
(916, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:28:"Chuyển khoản ngân hàng";s:11:"description";s:226:"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.";s:12:"instructions";s:0:"";s:15:"account_details";s:0:"";}', 'yes'),
(917, 'woocommerce_bacs_accounts', 'a:2:{i:0;a:6:{s:12:"account_name";s:12:"Vo Duy Thanh";s:14:"account_number";s:13:"0441003746264";s:9:"bank_name";s:11:"Vietcombank";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}i:1;a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(919, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:35:"Trả tiền mặt khi nhận hàng";s:11:"description";s:33:"Trả tiền mặt khi giao hàng";s:12:"instructions";s:33:"Trả tiền mặt khi giao hàng";s:18:"enable_for_methods";a:1:{i:0;s:13:"free_shipping";}s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(923, 'woocommerce_product_apply', 'a:0:{}', 'yes'),
(932, 'ppcc-options', 'a:5:{s:15:"target_currency";s:3:"USD";s:15:"conversion_rate";s:1:"1";s:10:"oer_api_id";N;s:10:"cur_api_id";N;s:13:"api_selection";s:5:"yahoo";}', 'yes'),
(959, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(1003, 'WPGMZA_SETTINGS', 'a:10:{s:24:"map_default_starting_lat";s:17:"10.78952042625972";s:24:"map_default_starting_lng";s:18:"106.69724434254694";s:18:"map_default_height";s:3:"400";s:17:"map_default_width";s:3:"100";s:16:"map_default_zoom";i:16;s:20:"map_default_max_zoom";i:1;s:16:"map_default_type";i:1;s:21:"map_default_alignment";i:1;s:22:"map_default_width_type";s:2:"\\%";s:23:"map_default_height_type";s:2:"px";}', 'yes'),
(1005, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(1011, 'category_children', 'a:0:{}', 'yes'),
(1054, '_transient_timeout_external_ip_address_::1', '1513931443', 'no'),
(1055, '_transient_external_ip_address_::1', '103.199.7.209', 'no'),
(1081, 'ig_es_current_version_date_details', 'a:2:{s:18:"es_current_version";s:5:"3.4.5";s:15:"es_current_date";s:19:"2017-12-16 04:04:30";}', 'yes'),
(1345, 'product_cat_children', 'a:0:{}', 'yes'),
(1347, '_transient_timeout_wc_featured_products', '1516020635', 'no'),
(1348, '_transient_wc_featured_products', 'a:4:{i:0;i:32;i:1;i:33;i:2;i:31;i:3;i:29;}', 'no'),
(1377, '_transient_timeout_wc_loop0e711513428823', '1516020825', 'no'),
(1378, '_transient_wc_loop0e711513428823', 'a:0:{}', 'no'),
(1379, '_transient_timeout_wc_term_counts', '1516020834', 'no'),
(1380, '_transient_wc_term_counts', 'a:26:{i:15;s:1:"0";i:31;s:1:"7";i:16;s:1:"0";i:40;s:0:"";i:19;s:2:"11";i:41;s:1:"1";i:17;s:1:"0";i:20;s:1:"1";i:21;s:1:"1";i:22;s:1:"1";i:23;s:1:"1";i:24;s:1:"1";i:25;s:1:"1";i:26;s:1:"1";i:27;s:1:"1";i:28;s:1:"1";i:29;s:1:"1";i:30;s:1:"1";i:32;s:1:"1";i:33;s:1:"1";i:34;s:1:"1";i:35;s:1:"1";i:36;s:1:"1";i:37;s:1:"1";i:38;s:1:"1";i:39;s:1:"1";}', 'no'),
(1381, '_transient_timeout_wc_loopa47f1513428823', '1516020825', 'no'),
(1382, '_transient_wc_loopa47f1513428823', 'a:4:{i:0;i:124;i:1;i:144;i:2;i:126;i:3;i:146;}', 'no'),
(1386, '_transient_timeout_wc_low_stock_count', '1516030370', 'no'),
(1387, '_transient_wc_low_stock_count', '0', 'no'),
(1388, '_transient_timeout_wc_outofstock_count', '1516030370', 'no'),
(1389, '_transient_wc_outofstock_count', '0', 'no'),
(1401, '_site_transient_timeout_browser_06fdd3e0f178ba6aec43dc3e36dea840', '1514048868', 'no'),
(1402, '_site_transient_browser_06fdd3e0f178ba6aec43dc3e36dea840', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"61.0.3163.100";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(1429, '_site_transient_timeout_browser_2091071f72f8ef11d33bd2f87d23a086', '1514362312', 'no'),
(1430, '_site_transient_browser_2091071f72f8ef11d33bd2f87d23a086', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(1431, '_transient_timeout_wc_report_sales_by_date', '1513845643', 'no'),
(1432, '_transient_wc_report_sales_by_date', 'a:16:{s:32:"091fc7ba260d323ffb7587d202ad6d1c";a:2:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"1";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":2:{s:5:"count";s:1:"1";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"3a8cce718ed33f29a11d2860cf5c085b";a:0:{}s:32:"2dd0b5877cf2c623aff51c453f82b539";a:2:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"1";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"3";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"3ef8bc64dcf13a308ba1b013cc52d81d";N;s:32:"58cbeccf07bb68d794d8516192377100";a:2:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:2:"18";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":5:{s:11:"total_sales";s:2:"86";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"76476affe42e28b746ebd6e251bf3bf4";a:0:{}s:32:"309dce0f91315aff75524fc01204cd53";a:0:{}s:32:"e68d4850d5cf66876283286033337aa5";a:0:{}s:32:"7ef790dcb76edc0656055a6c9cdd41ac";a:2:{i:0;O:8:"stdClass":2:{s:5:"count";s:1:"1";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":2:{s:5:"count";s:1:"1";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"caaf858a9f8ae226b6f67793e25ccc89";a:0:{}s:32:"7131c12a802a2c66fcfc71011a54a584";a:2:{i:0;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"1";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":2:{s:16:"order_item_count";s:1:"3";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"367cb653913e824761d6150d989b4f0b";N;s:32:"cc5d2f4b6a6c0d1a4011e4bba585155c";a:2:{i:0;O:8:"stdClass":5:{s:11:"total_sales";s:2:"18";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":5:{s:11:"total_sales";s:2:"86";s:14:"total_shipping";s:1:"0";s:9:"total_tax";s:1:"0";s:18:"total_shipping_tax";s:1:"0";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"db5c7b7d65c520dfc9bf886427feadff";a:0:{}s:32:"d6ac3edfa938359eeb6b977dfa00b53e";a:0:{}s:32:"2a9024c9cf54a83f24d50392f688ff0a";a:0:{}}', 'no'),
(1433, '_transient_timeout_wc_admin_report', '1513843913', 'no'),
(1434, '_transient_wc_admin_report', 'a:2:{s:32:"5a2c027922a63ed66dfb562d7e504ae0";a:2:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:2:"18";s:9:"post_date";s:19:"2017-12-10 08:58:08";}i:1;O:8:"stdClass":2:{s:15:"sparkline_value";s:2:"86";s:9:"post_date";s:19:"2017-12-13 08:38:40";}}s:32:"8f22805b2207b5056d99f3063792e11f";a:1:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:2:"36";s:15:"sparkline_value";s:1:"1";s:9:"post_date";s:19:"2017-12-10 08:58:08";}}}', 'no'),
(1435, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1513800716', 'no'),
(1436, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no'),
(1437, '_transient_timeout_feed_5336548cfc49bd1a34a51b2a9fc5fda3', '1513800718', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1438, '_transient_feed_5336548cfc49bd1a34a51b2a9fc5fda3', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"Blog – tiếng Việt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:24:"https://vi.wordpress.org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:34:"\n	Wed, 06 Dec 2017 07:45:02 +0000	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"vi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=5.0-alpha-42412";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"December 2017 – Saigon WordPress Meetup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:82:"https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Dec 2017 09:11:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:6:"Meetup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=439";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:348:"Mời các bạn tham gia buổi meetup tháng 12/2016 diễn ra tại Sài Gòn dành cho cộng đồng những người yêu WordPress tại Việt Nam. Nội dung chính Đầu tiên chúng ta sẽ cùng nhau nhìn lại một năm thành công nữa của WordPress và sự chuyển mình tích cực của cộng đồng #WP Việt [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"khoipro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2060:"<p>Mời các bạn tham gia buổi meetup tháng 12/2016 diễn ra tại Sài Gòn dành cho cộng đồng những người yêu WordPress tại Việt Nam.<span id="more-439"></span></p>\n<h2>Nội dung chính</h2>\n<ul>\n<li>Đầu tiên chúng ta sẽ cùng nhau nhìn lại một năm thành công nữa của WordPress và sự chuyển mình tích cực của cộng đồng #WP Việt Nam trên cả ba miền và chuẩn bị cho năm tiếp theo.</li>\n<li>Tiếp theo chúng ta có Jamie đến từ WC Vendors cùng chúng ta tìm hiểu về những thay đổi đáng chú ý của WooCommerce 3.0, hãy chờ xem những thay đổi này ảnh hưởng tích cực như thế nào đến lợi ích của chúng ta.</li>\n<li>Chủ đề rất đáng chờ đợi đến từ anh Trần Quốc Huy &#8211; Project Manager tại EngineThemes chia sẻ kinh nghiệm để xây dựng theme premium đúng cách.</li>\n</ul>\n<p><strong>Thời gian:</strong> Sài Gòn, 9h – 12h sáng Chủ Nhật ngày 16/12/2017<br />\n<strong>Địa điểm:</strong> Officience Vietnam &#8211; 16A Lê Hồng Phong, Phường 12, Quận 10.<br />\n<em>Xin cảm ơn Officience Vietnam đã luôn đồng hành và hỗ trợ địa điểm cho meetup.</em></p>\n<p>Bạn có thể theo dõi sự kiện qua:</p>\n<ul>\n<li>Meetup: <a href="https://www.meetup.com/Saigon-WordPress/events/245631257/" target="_blank" rel="noopener">https://www.meetup.com/Saigon-WordPress/events/245631257/</a></li>\n<li>Facebook: <a href="https://www.facebook.com/events/132171540791890/" target="_blank" rel="noopener">https://www.facebook.com/events/132171540791890/</a></li>\n</ul>\n<h2>Hướng dẫn địa điểm</h2>\n<p>Vì Officience Vietnam đổi sang địa điểm mới ở Lê Hồng Phong và việc tìm văn phòng hơi khó nên mình xin hướng dẫn để các bạn tìm cho tiện: Các bạn quẹo vô Lê Hồng Phong -&gt; đi qua cổng nhà hàng tiệc cưới Kỳ Hòa -&gt; gởi xe -&gt; đi thẳng vào trong sẽ thấy văn phòng Officience.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:79:"https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"Hoàn thành bản dịch tiếng Việt của plugin Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://vi.wordpress.org/2017/11/11/hoan-thanh-ban-dich-tieng-viet-cua-plugin-contact-form-7/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:101:"https://vi.wordpress.org/2017/11/11/hoan-thanh-ban-dich-tieng-viet-cua-plugin-contact-form-7/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Nov 2017 08:24:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Tin tức";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=414";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:340:"Với sự đóng góp tích cực của các thành viên trong cộng đồng WordPress Việt Nam, bản dịch tiếng Việt dành cho Contact Form 7, một trong các plugin cung cấp form liên hệ với hơn 5 triệu website sử dụng đã ra mắt vào chiều hôm nay. Tổng quan chung Bản dịch tiếng Việt [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"khoipro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4468:"<p><img class="aligncenter wp-image-419" src="https://vi.wordpress.org/files/2017/11/contact-form-7-screen.png" alt="" width="550" height="258" srcset="https://vi.wordpress.org/files/2017/11/contact-form-7-screen.png 995w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-300x141.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-768x360.png 768w" sizes="(max-width: 550px) 100vw, 550px" />Với sự đóng góp tích cực của các thành viên trong cộng đồng WordPress Việt Nam, bản dịch tiếng Việt dành cho <a href="https://vi.wordpress.org/plugins/contact-form-7/" target="_blank" rel="noopener">Contact Form 7</a>, một trong các plugin cung cấp form liên hệ với hơn 5 triệu website sử dụng đã ra mắt vào chiều hôm nay.<span id="more-414"></span></p>\n<h2>Tổng quan chung</h2>\n<p>Bản dịch tiếng Việt dành cho Contact Form 7 cung cấp các khái niệm dễ hiểu, dễ sử dụng bởi bất kì người dùng nào tại Việt Nam. WordPress Việt Nam team xin gửi tới các bạn những hình ảnh đầu tiên của giao diện Việt hoá thân thiện này:</p>\n<figure id="attachment_415" style="max-width: 178px" class="wp-caption aligncenter"><img class="size-full wp-image-415" src="https://vi.wordpress.org/files/2017/11/contact-form-7-menu-chinh.png" alt="" width="178" height="133" /><figcaption class="wp-caption-text">Menu chính được hiển thị cực kì dễ hiểu</figcaption></figure>\n<p>&nbsp;</p>\n<figure id="attachment_416" style="max-width: 550px" class="wp-caption aligncenter"><img class="wp-image-416" src="https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor.png" alt="" width="550" height="443" srcset="https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor.png 1007w, https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor-300x242.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-main-editor-768x619.png 768w" sizes="(max-width: 550px) 100vw, 550px" /><figcaption class="wp-caption-text">Giao diện và các nút được chú thích cụ thể</figcaption></figure>\n<p>&nbsp;</p>\n<figure id="attachment_417" style="max-width: 550px" class="wp-caption aligncenter"><img class="wp-image-417" src="https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message.png" alt="" width="550" height="302" srcset="https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message.png 1013w, https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message-300x165.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-notice-message-768x422.png 768w" sizes="(max-width: 550px) 100vw, 550px" /><figcaption class="wp-caption-text">Toàn bộ các thông báo hiển thị ngoài website đều đã có sẵn tiếng Việt.</figcaption></figure>\n<p>&nbsp;</p>\n<figure id="attachment_418" style="max-width: 550px" class="wp-caption aligncenter"><img class="wp-image-418" src="https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper.png" alt="" width="550" height="201" srcset="https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper.png 1473w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper-300x109.png 300w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper-768x280.png 768w, https://vi.wordpress.org/files/2017/11/contact-form-7-screen-helper-1024x373.png 1024w" sizes="(max-width: 550px) 100vw, 550px" /><figcaption class="wp-caption-text">Phần Trợ giúp người dùng nay đã dễ hiểu hơn rất nhiều.</figcaption></figure>\n<h2>Phát hành</h2>\n<ul>\n<li>Các website đang sử dụng WordPress tiếng Việt với tính năng tự động nâng cấp gói ngôn ngữ, sẽ được cập nhật trong ngày hôm nay, 11/11/2017.</li>\n<li>Các website khác muốn sử dụng, có thể tải gói ngôn ngữ <a href="https://translate.wordpress.org/projects/wp-plugins/contact-form-7/dev/vi/default" target="_blank" rel="noopener">tại đây</a>.</li>\n</ul>\n<p>Một lần nữa, xin cảm ơn sự đóng góp của các thành viên tích cực <a href=''https://profiles.wordpress.org/thup90/'' class=''mention''><span class=''mentions-prefix''>@</span>thup90</a> và <a href=''https://profiles.wordpress.org/khoipro/'' class=''mention''><span class=''mentions-prefix''>@</span>khoipro</a> vì sự ra mắt của phiên bản tiếng Việt hoàn chỉnh dành cho plugin Contact Form 7.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:98:"https://vi.wordpress.org/2017/11/11/hoan-thanh-ban-dich-tieng-viet-cua-plugin-contact-form-7/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Nâng cấp bảo mật phiên bản WordPress 4.8.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://vi.wordpress.org/2017/11/01/nang-cap-bao-mat-phien-ban-wordpress-4-8-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:87:"https://vi.wordpress.org/2017/11/01/nang-cap-bao-mat-phien-ban-wordpress-4-8-3/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Nov 2017 02:47:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:17:"Bản nâng cấp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=406";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:330:"Bản vá bảo mật WordPress 4.8.3 đã được phát hành. Chúng tôi xin lưu ý các bạn cần nâng cấp càng nhanh càng tốt để đảm bảo an toàn cho website của mình. Mô tả về lỗi bảo mật WordPress 4.8.2 và các phiên bản cũ hơn Các phiên bản WordPress 4.8.2 và cũ hơn [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"khoipro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1518:"<p>Bản vá bảo mật WordPress 4.8.3 đã được phát hành. Chúng tôi xin lưu ý các bạn cần nâng cấp càng nhanh càng tốt để đảm bảo an toàn cho website của mình.<span id="more-406"></span></p>\n<h2>Mô tả về lỗi bảo mật WordPress 4.8.2 và các phiên bản cũ hơn</h2>\n<p>Các phiên bản WordPress 4.8.2 và cũ hơn bị ảnh hưởng bởi lỗi tại <code>$wpdb-&gt;prepare()</code> có thể tạo ra một query (thực thi) không an toàn tiềm ẩn chứa lỗi SQL Injection (SQLi).</p>\n<p>Tuy nhiên, lỗi này không đến từ WordPress core. Bản vá sẽ ngăn chặn việc thực thi các query này trên plugin và giao diện.</p>\n<p>Người phát hiện ra lỗi: <a href="https://twitter.com/ircmaxell">Anthony Ferrara</a>.</p>\n<p>Trong bản nâng cấp WordPress này cũng bao gồm cả nâng cấp function <code>esc_sql</code>, tuy vậy hầu hết sẽ không có ảnh hưởng gì đáng kể tới người dùng và các lập trình viên WordPress.</p>\n<p>Xin cảm ơn các bạn đã tham gia thông báo lỗi trong <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/" target="_blank" rel="noopener">responsible disclosure</a>.</p>\n<h2>Tải WordPress mới nhất 4.8.3</h2>\n<p><a href="https://vi.wordpress.org/download/">Tải về WordPress 4.8.3</a> hoặc truy cập trang quản trị và click vào mục &#8220;Nâng cấp&#8221; để nâng cấp tự động.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:84:"https://vi.wordpress.org/2017/11/01/nang-cap-bao-mat-phien-ban-wordpress-4-8-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Giới thiệu WordPress 4.9 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://vi.wordpress.org/2017/10/06/wordpress-4-9-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://vi.wordpress.org/2017/10/06/wordpress-4-9-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 Oct 2017 01:13:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Tin tức";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=376";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:349:"Vào ngày 05/10/2017, WordPress ra mắt phiên bản 4.9 Beta 1 nhằm mục đích kiểm thử một số tính năng trước khi phát hành chính thức vào giữa tháng 11. Hãy cùng WordPress Việt Nam tìm hiểu xem những điểm gì khác trong phiên bản này nhé. Nâng cấp Tuỳ chỉnh (Customizer) Có lẽ sau [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"khoipro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4971:"<p>Vào ngày 05/10/2017, WordPress ra mắt phiên bản 4.9 Beta 1 nhằm mục đích kiểm thử một số tính năng trước khi phát hành chính thức vào giữa tháng 11. Hãy cùng WordPress Việt Nam tìm hiểu xem những điểm gì khác trong phiên bản này nhé.<span id="more-376"></span></p>\n<h2>Nâng cấp Tuỳ chỉnh (Customizer)</h2>\n<p>Có lẽ sau phiên bản phát hành nâng cấp Customize từ đầu năm 2017, rất nhiều lập trình viên vẫn còn khá ngỡ ngàng và chưa tận dụng hết thế mạnh của Customizer. Cũng bởi điều đó, những cập nhật và thêm nhiều tính năng đã được đưa vào.</p>\n<h3>Chức năng Bản nháp và Dự kiến</h3>\n<p><img class="aligncenter wp-image-377" src="https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-1024x609.jpg" alt="" width="500" height="297" srcset="https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-1024x609.jpg 1024w, https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-300x178.jpg 300w, https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column-768x457.jpg 768w, https://vi.wordpress.org/files/2017/10/Customizer-Publish-panel-full-column.jpg 1343w" sizes="(max-width: 500px) 100vw, 500px" /></p>\n<p>Chức năng này nhằm mục đích chỉnh sửa Customizer, song không công bố ngay lập tức mà dự kiến thời gian (ví dụ ngày mai), hoặc lưu bản nháp cho tới khi chỉnh sửa hoàn tất.</p>\n<p>Ngoài ra, Customize nay còn có thể lưu lại các bản nháp (revisions) tương tự các bài viết thông thường. Khá hữu ích nếu bạn chỉnh sửa Customize dẫn tới website bị hỏng và cần khôi phục lại trạng thái ban đầu.</p>\n<h3>Khởi tạo menu</h3>\n<p>Chức năng này đã nhận được feedback từ nhiều người dùng và thay đổi để ngay trong Customize khi bạn thêm menu sẽ rất nhanh và gọn.</p>\n<h3>Thêm giao diện thông báo, chú ý</h3>\n<p>Các phần thông báo trong quá trình Customize đang mở đã được sắp xếp gọn gàng và có logic hơn.</p>\n<p><img class="aligncenter wp-image-380" src="https://vi.wordpress.org/files/2017/10/colors-section-notifications.png" alt="" width="250" height="373" srcset="https://vi.wordpress.org/files/2017/10/colors-section-notifications.png 604w, https://vi.wordpress.org/files/2017/10/colors-section-notifications-201x300.png 201w" sizes="(max-width: 250px) 100vw, 250px" /></p>\n<p>Khi bạn thực hiện lưu Customize, một giao diện phủ đầy màn hình Customize sẽ hiện ra để người dùng tiện theo dõi.</p>\n<h2>Widgets phong phú và mạnh mẽ hơn!</h2>\n<h3>Text widgets</h3>\n<p>Text Widgets vốn dĩ rất đơn độc khi bạn phải nhập tay dữ liệu mà không có phần soạn thảo. Tuy vây, phiên bản 4.9 Beta 1 cung cấp thêm tuỳ chọn Thêm video, ảnh và cả TinyMCE để sẵn sàng nhập dữ liệu theo kiểu WYSIWYG (tương tự như sửa post/page bình thường).</p>\n<p><img class="aligncenter wp-image-378" src="https://vi.wordpress.org/files/2017/10/text-widget-with-media-621x1024.png" alt="" width="250" height="412" srcset="https://vi.wordpress.org/files/2017/10/text-widget-with-media-621x1024.png 621w, https://vi.wordpress.org/files/2017/10/text-widget-with-media-182x300.png 182w, https://vi.wordpress.org/files/2017/10/text-widget-with-media-768x1266.png 768w, https://vi.wordpress.org/files/2017/10/text-widget-with-media.png 892w" sizes="(max-width: 250px) 100vw, 250px" /></p>\n<p>Shortcode cũng sẽ hoạt động trong Text Widgets.</p>\n<h3>Widget mới: Gallery</h3>\n<p>Trông đơn giản, nhưng sẽ giúp rất nhiều người mới làm quen tận dụng Gallery tốt hơn.</p>\n<p><img class="aligncenter wp-image-379" src="https://vi.wordpress.org/files/2017/10/gallery-widget-populated.png" alt="" width="250" height="288" srcset="https://vi.wordpress.org/files/2017/10/gallery-widget-populated.png 810w, https://vi.wordpress.org/files/2017/10/gallery-widget-populated-260x300.png 260w, https://vi.wordpress.org/files/2017/10/gallery-widget-populated-768x886.png 768w" sizes="(max-width: 250px) 100vw, 250px" /></p>\n<h3>Xác nhận xoá widget</h3>\n<p>Ngay khi bạn xoá widget, sẽ hiện ra 1 thông báo yêu cầu xác nhận giúp tránh nhầm lẫn.</p>\n<h2>Các nâng cấp đáng chú ý khác</h2>\n<p><strong>Tối ưu hoá Menu</strong><br />\nKhi bạn chuyển đổi giao diện, Menu chính sẽ được cập nhật và đồng bộ sang giao diện mới.</p>\n<p><strong>Media Caption</strong> sẽ được set <code>max-width</code> mặc định.</p>\n<p>Rất nhiều tính năng và nâng cấp khác các bạn có thể xem thêm <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/" target="_blank" rel="noopener">tại đây</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:62:"https://vi.wordpress.org/2017/10/06/wordpress-4-9-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Điểm tin tháng 09/2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://vi.wordpress.org/2017/10/05/diem-tin-thang-09-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://vi.wordpress.org/2017/10/05/diem-tin-thang-09-2017/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 Oct 2017 00:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Tin tức";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=371";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:365:"Hãy cùng WordPress Việt Nam điểm qua các tin tức có liên quan đến WordPress trong tháng 9 vừa qua. Câu chuyện sử dụng JavaScript Framework với WordPress Đầu tháng này, Matt Mullenweg đã thông báo rằng WordPress sẽ từ bỏ React như là thư viện JavaScript WordPress Core. Đây là phản ứng được đưa [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"khoipro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5975:"<p>Hãy cùng WordPress Việt Nam điểm qua các tin tức có liên quan đến WordPress trong tháng 9 vừa qua.<span id="more-371"></span></p>\n<h2>Câu chuyện sử dụng JavaScript Framework với WordPress</h2>\n<p>Đầu tháng này, Matt Mullenweg đã thông báo rằng WordPress sẽ từ bỏ React như là thư viện JavaScript WordPress Core. Đây là phản ứng được đưa ra sau quyết định của Facebook về việc giữ bản quyền React khiến việc sử dụng React không còn dễ dàng nữa.</p>\n<p>Một vài ngày sau đó, Facebook đã thay đổi quyết định và cho phép React có thể sử dụng cùng với WordPress. Tuy nhiên, nhóm WordPress Core đang đưa ra các phương án khác nhằm xử lý vấn đề này, bao gồm cả việc thay thế các framework nếu cần mà không ảnh hưởng tới WordPress.</p>\n<p>Đây là một sự cải tiến sẽ khiến cho WordPress trở nên linh hoạt hơn và cũng sẽ bảo vệ nền tảng tạo dựng website lớn nhất thế giới khỏi những thay đổi trong tương lai.</p>\n<p>Bạn có thể tham gia vào cuộc thảo luận bằng JavaScript bằng cách tham gia kênh <a href="https://make.wordpress.org/chat/" rel="noopener" target="_blank">#core-js</a> trong nhóm Làm WordPress Slack và theo blog phát triển WordPress Core.</p>\n<h2>Sáng kiến cộng đồng để tăng tính tương tác trong WordCamp</h2>\n<p>Một thành viên trong cộng đồng WordPress, Ines van Essen, đã bắt đầu một sáng kiến phi lợi nhuận mới nhằm hỗ trợ tài chính cho các thành viên trong cộng đồng tham dự WordCamp. <a href="https://donatewc.org/" rel="noopener" target="_blank">DonateWC</a> đã bắt đầu với chiến dịch tài trợ dành cho người tham gia WordCamp để hỗ trợ chi phí trong quá trình tham gia.</p>\n<p>Mặc dù việc gây quỹ đã bắt đầu, Ines dự định thành lập một tổ chức phi lợi nhuận và sử dụng sự đóng góp từ các nhà tài trợ để giúp mọi người trên khắp thế giới tham dự và phát biểu trong WordCamp.</p>\n<h2>Phát hành phiên bản bảo mật WordPress 4.8.2</h2>\n<p>Vào ngày 19/09/2017 vừa qua, phiên bản WordPress 4.8.2 đã ra mắt. Đây là phiên bản bảo mât với 9 lỗi được sửa trong WordPress để đảm bảo nền tảng hoạt động ổn định và an toàn hơn cho mọi người.</p>\n<h2>Thư viện SWFUpload ngừng sử dụng từ phiên bản WordPress 4.9</h2>\n<p>Theo <a href="https://make.wordpress.org/core/2017/09/07/removing-swfupload/" rel="noopener" target="_blank">thông báo</a> từ nhóm quản lý thư viện Plugin, thư viện SWFUpload (dùng để tải file lên) sẽ ngừng sử dụng trong phiên bản 4.9. Ngoại trừ việc bạn đang sử dụng nó trong các plugin bảo mật, các plugin cần thiết để nâng cấp và thay thế bằng Plupload.</p>\n<h2>Thêm người hỗ trợ plugin</h2>\n<p>Nhóm quản lý thư viện plugin cũng thông báo về việc cho phép tác giả của plugin thêm các tài khoản phục vụ việc hỗ trợ người dùng trên diễn đàn của WordPress. Tuy nhiên, những supporter này chỉ có badge &#8220;Plugin Support&#8221; kèm theo quyền để xoá, đóng và truy cập vào ticket trong diễn đàn WordPress, mà không có quyền truy xuất vào trực tiếp plugin.</p>\n<h2>Phiên bản Editor thử nghiệm mới 1.0.2</h2>\n<p>Sau một vài tuần chậm tiến độ và tranh cãi xoay quanh chuyện bản quyền React, phiên bản Editor mới Gutenberg v1.2 tiếp tục <a href="https://make.wordpress.org/core/2017/09/27/whats-new-in-gutenberg-1-2-1/" rel="noopener" target="_blank">ra mắt</a> với giao diện tốt hơn.</p>\n<h2>WordPress Việt Nam: Giao diện trang chủ mới</h2>\n<p>Thay vì giao diện cũ và không có nhiều thông tin, WordPress Việt Nam trong tuần qua đã cập nhật giao diện, hình ảnh và bổ sung nhiều thông tin hữu ích hơn. Chúng tôi vẫn luôn mong muốn cải tiến để mọi thứ dễ dàng tiếp cận bởi nhiều người dùng hơn. Đừng quên comment với thông tin, hỗ trợ bạn muốn xuất hiện trên vi.wordpress.org nhé!</p>\n<h2>WordPress Việt Nam: Ra mắt fanpage trên Facebook</h2>\n<p>Nhóm hỗ trợ WordPress Việt Nam cũng ra mắt fanpage Facebook tại địa chỉ <a href="https://www.facebook.com/wpvnteam" rel="noopener" target="_blank">facebook.com/wpvnteam</a> hoặc truy cập <a href="http://wpvn.team" rel="noopener" target="_blank">wpvn.team</a>. Tại đây sẽ cập nhật các thông tin mới nhất về sự kiện, hoạt động tại WordPress.</p>\n<h2>Kết quả từ ngày Dịch thuật WordPress</h2>\n<p>Với sự hỗ trợ của cộng đồng, WordPress Việt Nam đã phối hợp tổ chức vào ngày 30/09/2017 vừa qua tại Hà Nội và Sài Gòn. Trong ngày này, nhiều bạn đã cùng tham gia dịch trực tuyến WooCommerce (tăng từ 78% lên 86% số từ đã dịch), phát hành bản dịch Rosetta (giúp hoàn chỉnh 100% tiếng Việt cho trang chủ vi.wordpress.org). Hi vọng rằng phiên bản dịch của WooCommerce hoàn chỉnh sẽ được phát hành trong thời gian sớm nhất.</p>\n<p>Nếu bạn muốn tham gia dịch WooCommerce plugin, hãy <strong><a href="https://translate.wordpress.org/projects/wp-plugins/woocommerce/dev/vi/default" rel="noopener" target="_blank">bắt đầu</a></strong> tại đây nhé!</p>\n<p>Lược dịch từ <a href="https://wordpress.org/news/2017/10/the-month-in-wordpress-september-2017/" rel="noopener" target="_blank">bản tin WordPress tháng 9</a> bởi <a href=''https://profiles.wordpress.org/khoipro/'' class=''mention''><span class=''mentions-prefix''>@</span>khoipro</a></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:64:"https://vi.wordpress.org/2017/10/05/diem-tin-thang-09-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"Ngày Dịch thuật WordPress Toàn cầu lần thứ ba";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://vi.wordpress.org/2017/09/28/ngay-dich-thuat-wordpress-toan-cau-lan-thu-ba/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:90:"https://vi.wordpress.org/2017/09/28/ngay-dich-thuat-wordpress-toan-cau-lan-thu-ba/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 28 Sep 2017 04:35:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"Sự kiện";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=245";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:347:"Vào ngày 30 tháng 9 năm 2017, WordPress Polyglots Team &#8211; team phụ trách dịch WordPress sang các ngôn ngữ khác &#8211; sẽ tổ chức Ngày Dịch thuật WordPress Toàn cầu lần thứ ba, diễn ra trong suốt 24 giờ đồng hồ dành riêng cho việc dịch thuật và đóng góp vào sức mạnh của [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"khoipro";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5994:"<p>Vào ngày 30 tháng 9 năm 2017, WordPress Polyglots Team &#8211; team phụ trách dịch WordPress sang các ngôn ngữ khác &#8211; sẽ tổ chức Ngày Dịch thuật WordPress Toàn cầu lần thứ ba, diễn ra trong suốt 24 giờ đồng hồ dành riêng cho việc dịch thuật và đóng góp vào sức mạnh của WordPress, vốn chiếm 28% website trên toàn cầu. <strong>Tại Việt Nam, sự kiện đã diễn ra tại các địa điểm ở Hà Nội, Nha Trang và Sài Gòn.</strong><span id="more-245"></span></p>\n<p><img class="aligncenter size-large wp-image-233" src="https://vi.wordpress.org/files/2017/09/wp-translation-day-1024x411.png" alt="" width="692" height="278" srcset="https://vi.wordpress.org/files/2017/09/wp-translation-day-1024x411.png 1024w, https://vi.wordpress.org/files/2017/09/wp-translation-day-300x120.png 300w, https://vi.wordpress.org/files/2017/09/wp-translation-day-768x308.png 768w" sizes="(max-width: 692px) 100vw, 692px" /></p>\n<h2>Tại sao cần dịch WordPress?</h2>\n<p>Quá trình dịch sang ngôn ngữ khác cho phép WordPress và tất cả các sản phẩm liên quan đến WordPress (như giao diện và plugin) có sẵn bằng các ngôn ngữ của mỗi nước, do đó cải thiện khả năng tiếp cận và sử dụng của họ và tạo điều kiện cho nhiều người tận dụng nền tảng miễn phí và dịch vụ sẵn có.</p>\n<h2>Sự kiện dành cho cộng đồng dịch thuật WordPress</h2>\n<p>Trong một sự trùng hợp ngẫu nhiên, ngày 30 tháng 9 cũng đã được tuyên bố là &#8220;Ngày dịch quốc tế&#8221; của Liên hợp quốc, để tôn vinh các dịch giả tuyệt vời trên khắp thế giới.</p>\n<p>Sự kiện này sẽ giới thiệu một loạt các bài giới thiệu và chia sẻ bằng nhiều ngôn ngữ (các buổi đào tạo, hướng dẫn, lịch sử ra đời, &#8230;) sẽ được chiếu trực tuyến, bắt đầu từ múi giờ 0 tại Úc và kết thúc ở múi giờ GMT cuối cùng tại Mỹ.</p>\n<p>Trong cùng một khoảng thời gian 24 giờ, những cộng tác viên dịch thuật trên toàn thế giới sẽ tụ họp và gặp gỡ tại các địa điểm sự kiện, tham gia trao đổi về việc dịch thuật (dĩ nhiên là vui vẻ và cởi mở), trong khi những người không thể đến tham dự có thể quan sát từ xa.</p>\n<p>Một bữa tiệc lớn, vui vẻ, thú vị và khai ngộ và sự kết hợp đáng yêu của sự phát triển, cho, học tập và giảng dạy, để trao quyền, và tu luyện, và tỏa sáng.</p>\n<p>Đây quả là cơ hội tốt và hữu ích để tham dự một bữa tiệc lớn trong sự vui vẻ, mở rộng sự phát triển của WordPress.</p>\n<h2>Những sự kiện đã diễn ra trước đây</h2>\n<p>Dưới đây là một số thống kê thú vị về hai sự kiện đầu tiên đã diễn ra:</p>\n<p><strong>Ngày Dịch thuật WordPress Toàn cầu lần thứ nhất</strong></p>\n<ul>\n<li>448 người dịch tham dự trên toàn thế giới</li>\n<li>50 sự kiện được tổ chức</li>\n<li>54 địa điểm</li>\n<li>40350 chuỗi dịch mới trong 597 dự án</li>\n</ul>\n<p><strong>Ngày Dịch thuật WordPress Toàn cầu lần thứ hai</strong></p>\n<ul>\n<li>780 người dịch tham dự trên toàn thế giới</li>\n<li>67 sự kiện được tổ chức</li>\n<li>133 địa điểm</li>\n<li>60426 chuỗi dịch trong 590 dự án</li>\n</ul>\n<h2>Tại Việt Nam, bạn cũng có thể tham gia!!!</h2>\n<p>Đừng quên tham gia các sự kiện sẽ diễn ra trong ngày <strong>Thứ Bảy, 30/09/2017</strong> tại các địa điểm sau nhé:</p>\n<p><strong>Hà Nội</strong><br />\nTrung tâm Đào tạo SEO VietMoz &#8211; Tầng 2, Số 18 ngõ 11 Thái Hà<br />\nTừ 9 đến 11h</p>\n<p><img class="aligncenter wp-image-361" src="https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi.jpg" alt="" width="690" height="518" srcset="https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi.jpg 960w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi-300x225.jpg 300w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi-768x576.jpg 768w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-hanoi-440x330.jpg 440w" sizes="(max-width: 690px) 100vw, 690px" /></p>\n<p><strong>Sài Gòn</strong> &#8211; xem trên <a href="https://www.facebook.com/events/917193078437572/" target="_blank" rel="noopener">Facebook event</a> hoặc <a href="https://www.meetup.com/Saigon-WordPress/events/243292079/" target="_blank" rel="noopener">Meetup</a><br />\nOfficience Vietnam &#8211; 16A Lê Hồng Phong, Phường 12, Quận 10<br />\nTừ 9h đến 12h</p>\n<p><img class="aligncenter size-large wp-image-362" src="https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-1024x768.jpg" alt="" width="692" height="519" srcset="https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-1024x768.jpg 1024w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-300x225.jpg 300w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-768x576.jpg 768w, https://vi.wordpress.org/files/2017/09/wp-global-translation-day-saigon-440x330.jpg 440w" sizes="(max-width: 692px) 100vw, 692px" /></p>\n<p><strong>Nha Trang</strong> &#8211; xem trên <a href="https://www.meetup.com/Nha-Trang-WordPress/events/243163880/" target="_blank" rel="noopener">Meetup</a><br />\nTrường Đại Học Thông Tin Liên Lạc &#8211; 101 Mai Xuân Thưởng, Nha Trang<br />\nTừ 9h sáng đến 11h</p>\n<p>Lược dịch: <a href=''https://profiles.wordpress.org/khoipro/'' class=''mention''><span class=''mentions-prefix''>@</span>khoipro</a> từ <a href="https://wordpress.org/news/2017/09/global-wordpress-translation-day-3/">wp.org</a></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:87:"https://vi.wordpress.org/2017/09/28/ngay-dich-thuat-wordpress-toan-cau-lan-thu-ba/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Tháng qua trong WordPress: Tháng 8 – 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"https://vi.wordpress.org/2017/09/13/thang-qua-trong-wordpress-thang-8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:79:"https://vi.wordpress.org/2017/09/13/thang-qua-trong-wordpress-thang-8/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Sep 2017 05:09:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Tin tức";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=222";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:347:"Trong khi chưa có sự kiện lớn trong cộng đồng WordPress vào tháng vừa qua,việc phát triển một tương lai bền vững cho WordPress đã được quan tâm hơn . Đọc tiếp để tìm hiểu thêm về điều này cũng như các tin tức đáng chú ý khác trong tháng 8 vừa qua. WordPress Foundation [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dat Hoang";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7152:"<p>Trong khi chưa có sự kiện lớn trong cộng đồng WordPress vào tháng vừa qua,việc phát triển một tương lai bền vững cho WordPress đã được quan tâm hơn . Đọc tiếp để tìm hiểu thêm về điều này cũng như các tin tức đáng chú ý khác trong tháng 8 vừa qua.<span id="more-222"></span></p>\n<h2>WordPress Foundation bắt đầu chương trình Đào tạo Mã nguồn mở Toàn Cầu</h2>\n<p>WordPress Foundation là một tổ chức phi lợi nhuận có nhiệm vụ tổ chức các sự kiện mang tính giáo dục và hỗ trợ cho các hackathon, hỗ trợ cho thế giới web mở, và nâng cao sự đa dạng trong cộng đồng mã nguồn mở toàn cầu.</p>\n<p>Để đạt được các mục tiêu này, tổ chức này cung cấp sự hỗ trợ cho các cộng đồng muốn tổ chức các buổi thực hành đào tạo về mã nguồn mở. Rất nhiều cộng đồng đã nộp đơn để tham gia sáng kiến này, và WordPress Foundation sẽ chọn ra hai cộng đồng trong các tuần sắp tới.</p>\n<h2>Những bước tiếp theo trong việc tập trung phát triển PHP của WordPress Core</h2>\n<p>Sau khi đẩy mạnh sự tập trung vào sự phát triển PHP của WordPress core trong tháng trước, nhiều sáng kiến mới đã được đưa ra và thực thi. Sáng kiến đầu tiên trong những sáng kiến này là mở một trang mới trên WordPress.org để giải thích cho người dùng các lợi ích của việc nâng cấp PHP. Hiện tại trang vẫn đang trong quá trình phát triển, <a href="https://github.com/WordPress/servehappy" target="_blank" rel="noopener">bạn có thể theo dõi và đóng góp trên GitHub</a>.</p>\n<p>Cùng với việc này, các nhà phát triển plugin đã có thể đặt ra <a href="https://make.wordpress.org/plugins/2017/08/29/minimum-php-version-requirement/">yêu cầu về phiên bản tối thiểu của PHP cho các plugin</a> của họ. Phiên bản này sẽ được hiển thị trên trang <a href="https://vi.wordpress.org/plugins/">Thư mục Plugin</a>, nhưng vẫn chưa phải điều kiện bắt buộc cho việc người dùng cài đặt plugin.</p>\n<p>Đổi mới tiếp theo là làm cho yêu cầu về phiên bản PHP tối thiểu trở thành bắt buộc, như vậy plugin chỉ chạy khi máy chủ đáp ứng được yêu cầu. Bạn có thể hỗ trợ công việc này bằng cách đóng góp ý kiến của bạn hoặc tham gia đóng góp <a href="https://core.trac.wordpress.org/ticket/40934">ở ticket này</a>.</p>\n<p>Như mọi khi, các cuộc thảo luận xung quanh sự thực hiện của PHP trong WordPress core đang được diễn ra trong kênh #core-php trong <a href="https://make.wordpress.org/chat/">nhóm Slack</a>.<br />\n<img class="aligncenter wp-image-234 size-full" src="https://vi.wordpress.org/files/2017/09/wp-gutenberg-preview.png" alt="" width="640" height="260" srcset="https://vi.wordpress.org/files/2017/09/wp-gutenberg-preview.png 640w, https://vi.wordpress.org/files/2017/09/wp-gutenberg-preview-300x122.png 300w" sizes="(max-width: 640px) 100vw, 640px" /></p>\n<h2>Tiếp tục phát triển trình soạn thảo mới</h2>\n<p>Trong vài tháng nay, đội core vẫn đang làm việc trên Gutenberg, trình soạn thảo mới cho WordPress core. Trong khi Gutenberg vẫn đang được phát triển và vẫn còn phải tốn nhiều thời gian trước khi sẵn sàng, nhiều cải tiến đã được thêm vào. Thực tế, <a href="https://make.wordpress.org/core/2017/08/29/whats-new-in-gutenberg-august-29/">v1.0.0 của Gutenberg</a> đã được phát hành trong tuần này.</p>\n<p>Trình soạn thảo mới đã có thể được tải về <a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">dùng thử như một plugin</a> và <a href="https://make.wordpress.org/core/2017/08/11/revised-suggested-roadmap-for-gutenberg-and-customization/">kế hoạch đã được đề ra</a> là sẽ nhập chung trình soạn thảo này vào core vào đầu năm 2018. Bạn có thể tham gia vào việc phát triển Gutenberg bằng cách tham gia kênh #core-editor trong <a href="https://make.wordpress.org/chat/">nhóm Slack</a> và theo dõi <a href="https://make.wordpress.org/core/">blog phát triển của nhóm WordPress Core</a>.</p>\n<h2>Đọc thêm:</h2>\n<ul>\n<li>Trong chủ đề Gutenberg, <a href="https://ma.tt/2017/08/we-called-it-gutenberg-for-a-reason/" target="_blank" rel="noopener">Matt Mullenweg</a> đã có một bài viết nhìn nhận các vấn đề mà cộng đồng đã phản ánh về công cụ soạn thảo mới.</li>\n<li>Một trào lưu mới đã được bắt đầu trong cộng đồng WordPress Ấn Độ tên là <a href="http://hookrefineandtinker.com/2017/08/jaiwp-an-alternative-project-to-wordcamp-india/" target="_blank" rel="noopener">JaiWP</a> &#8212; những nhà tổ chức đang tìm kiếm sự tập hợp và động viên các cộng đồng địa phương trong nước.</li>\n<li><a href="https://richtabor.com/merlin-wp/">Merlin WP</a> là một plugin mới cung cấp cho các nhà phát triển giao diện một giải pháp dễ dàng để chào đón người dùng mới của họ.</li>\n<li>Ryan McCue đăng <a href="https://make.wordpress.org/core/2017/08/23/rest-api-roadmap/">một kế hoạch tham vọng</a> cho tương lai của WordPress Rest API, tuy vậy vẫn cần nhiều đóng góp trong cộng đồng để đạt tới mục tiêu này.</li>\n<li>Muốn biết thêm về những gì bạn có thể trông chờ từ phiên bản chính tiếp theo của WordPress? <a href="https://make.wordpress.org/core/2017/08/11/wordpress-4-9-goals/">Đây là kế hoạch</a> mà đội core đang đề ra cho phiên bản 4.9.</li>\n<li>Để làm giảm khó khăn mà Trac đem đến cho các nhà đóng góp WordPress Core, Ryan McCue đã tạo một nền tảng thay thế mang tên <a href="https://github.com/rmccue/not-trac" target="_blank" rel="noopener">Not Trac</a>.</li>\n<li><a href="https://make.wordpress.org/cli/2017/08/08/version-1-3-0-released/">WP-CLI phiên bản v1.3.0</a> đã được phát hành đầu tháng này, thêm rất nhiều tính năng mới vào công cụ tiện lợi này.</li>\n</ul>\n<hr />\n<p><a href=''https://profiles.wordpress.org/thup90/'' class=''mention''><span class=''mentions-prefix''>@</span>thup90</a> dịch.<br />\n<a href=''https://profiles.wordpress.org/htdat/'' class=''mention''><span class=''mentions-prefix''>@</span>htdat</a>, <a href=''https://profiles.wordpress.org/khoipro/'' class=''mention''><span class=''mentions-prefix''>@</span>khoipro</a>, <a href=''https://profiles.wordpress.org/nguyenvanduocit/'' class=''mention''><span class=''mentions-prefix''>@</span>nguyenvanduocit</a> chỉnh sửa.<br />\nBài viết gốc được đăng ở <a href="https://wordpress.org/news/2017/09/the-month-in-wordpress-august-2017/">The Month in WordPress: August 2017</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:75:"https://vi.wordpress.org/2017/09/13/thang-qua-trong-wordpress-thang-8/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Tháng qua trong WordPress: tháng 7 – 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://vi.wordpress.org/2017/08/18/thang-qua-trong-wordpress-thang-7-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:83:"https://vi.wordpress.org/2017/08/18/thang-qua-trong-wordpress-thang-7-2017/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Aug 2017 15:22:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Tin tức";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=213";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:338:"Sau một tháng 6 đặc biệt bận rộn, mọi thứ đã ổn hơn trong thế giới WordPress — sự ra mắt của WordPress 4.8 diễn ra rất thuận lợi, cho phép đội Core hình thành nên một số cơ sở hạ tầng cộng đồng xung quanh việc phát triển. Đọc tiếp để biết thêm các [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dat Hoang";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7345:"<p>Sau một <a href="https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/">tháng 6</a> đặc biệt bận rộn, mọi thứ đã ổn hơn trong thế giới WordPress — sự ra mắt của WordPress 4.8 diễn ra rất thuận lợi, cho phép đội Core hình thành nên một số cơ sở hạ tầng cộng đồng xung quanh việc phát triển. Đọc tiếp để biết thêm các tin thú vị trong thế giới WordPress trong tháng 7.<span id="more-213"></span></p>\n<h2>Họp mặt mỗi tuần cho những người đóng góp core mới</h2>\n<p>Hướng dẫn những người đóng góp mới vẫn luôn là vấn đề nhức nhối cho hầu hết các team Trong khi các team đều nhiệt tình chào đón các contributor, đôi khi rất khó cho những người mới có thể tìm được cách tham gia.</p>\n<p>Tháng này, đội Core đã thực hiện một vài sáng kiến mới tuyệt vời: <a href="https://make.wordpress.org/core/2017/06/30/announcing-a-weekly-new-contributors-meeting/">họp mặt mỗi tuần dành cho những người đóng góp mới</a> như là một cách để khuyến khích sự tham gia và tạo ra những đóng góp mới mẻ. Những cuộc họp không chỉ chú trọng vào các lỗi (bug) phù hợp cho những người đóng góp lần đầu, nó còn tạo không gian cho những người đóng góp giàu kinh nghiệm giúp đỡ những cá nhân còn mới trong việc phát triển WordPress core.</p>\n<p>Cuộc họp được tổ chức Thứ Tư hàng tuần vào 19:00 UTC trong kênh #core trong <a href="https://make.wordpress.org/chat/">nhóm Slack Making WordPress</a>.</p>\n<h2>Tăng cường tập trung vào các PHP practices trong WordPress core</h2>\n<p>Nhằm giúp mọi người cùng nhau phát triển WordPress core, một kênh mới trong <a href="https://make.wordpress.org/chat/">nhóm Slack Making WordPress</a> tên là #core-php được thiết kế để tập trung vào việc phát triển PHP trong dự án.</p>\n<p>Cùng với sự tập trung nâng cao vào PHP, một <a href="https://make.wordpress.org/core/2017/07/06/announcement-for-weekly-php-meetings/">cuộc họp hàng tuần mới đang được tổ chức</a> vào mỗi Thứ Hai vào 18:00 UTC trong #core-php để nâng cao kỹ năng PHP trong WordPress core.</p>\n<h2>Tăng mạnh số lượng các meetup</h2>\n<p>Widget sự kiện trong bảng điều khiển trong WordPress 4.8 hiển thị các sự kiện WordPress xung quanh sắp diễn ra cho người dùng đã đăng nhập. Những sự kiện được đăng trong widget này được lấy từ <a href="https://www.meetup.com/pro/wordpress/">chương trình chương mục gặp mặt</a>, cũng như từ <a href="https://central.wordcamp.org/schedule/">Lịch WordCamp</a>.</p>\n<p>Widget này cung cấp khả năng hiển thị lớn hơn cho các sự kiện WordPress chính thức, và khuyến khích sự tham gia của cộng đồng trong những sự kiện này. Có thể khẳng định rằng widget đã đạt được mục đích một cách đáng khâm phục — kể từ khi WordPress 4.8 được phát hành khoảng hơn một tháng trước, 31 meetup mới đã được hình thành với 15.647 thành viên mới xuyên suốt cả chương trình. Chúng ta có thể so sánh với 19 meetup mới và chỉ 7.071 thành viên mới trong cùng một thời điểm năm ngoái.</p>\n<p>Bạn có thể tìm thấy một meetup xung quanh để tham gia <a href="https://www.meetup.com/pro/wordpress/">trên meetup.com</a>, và nếu bạn muốn tham gia tổ chức sự kiện cho cộng đồng của bạn, bạn có thể xem thêm về chương trình này <a href="https://make.wordpress.org/community/meetups/">trên trang Đội Cộng đồng</a> hoặc bằng cách tham gia kênh #community-events trên <a href="https://make.wordpress.org/chat/">nhóm Slack Making WordPress</a>.</p>\n<h2>WordPress 4.8.1 sẽ được ra mắt sớm</h2>\n<p>Bản bảo trì đầu tiên của WordPress 4.8 sẽ được phát hành vào tuần tới, sau khi 4.8 đã được phát hành hơn một tháng. Bản ra mắt này sửa một vài lỗi quan trọng trong WordPress core và hầu hết các người dùng sẽ thấy trang web của họ tự động cập nhật lên bản này.</p>\n<p>Nếu bạn muốn giúp đỡ bằng cách dùng thử phiên bản này trước khi nó phát hành, bạn có thể theo dõi <a href="https://make.wordpress.org/core/handbook/testing/beta/">hướng dẫn thử nghiệm bản beta</a> cho WordPress core. Để đóng góp trong việc xây dựng WordPress core, hãy tham gia kênh #core trong <a href="https://make.wordpress.org/chat/">nhóm Slack Making WordPress</a>, và theo dõi <a href="https://make.wordpress.org/core/">blog của đội Core</a>.</p>\n<h2>Đọc thêm:</h2>\n<ul>\n<li>Các ứng dụng WordPress trên di động đã được cập nhật với <a href="https://en.blog.wordpress.com/2017/07/24/a-brand-new-editor-for-the-wordpress-mobile-apps/">công cụ chỉnh sửa text mới</a>.</li>\n<li>Để khuyến khích các người dùng WordPress nâng cấp phiên bản PHP của họ, hai tính năng đã được đề xuất &#8211; một <a href="https://core.trac.wordpress.org/ticket/41191">để cung cấp thông báo đến người dùng</a> và một để <a href="https://core.trac.wordpress.org/ticket/40934">cho phép xuất hiện các yêu cầu phiên bản PHP được xác định bởi plugin và theme</a>.</li>\n<li>John Maeda viết <a href="https://make.wordpress.org/design/2017/07/14/whywordpress2/">một bài viết tuyệt vời</a> về sự tự do mà WordPress mang lại.</li>\n<li>Gutenberg, công cụ chỉnh sửa mới cho WordPress, vẫn <a href="https://make.wordpress.org/core/2017/07/28/whats-new-in-gutenberg-28th-july/">trong quá trình tiếp tục phát triển</a> — mọi người đều được mời <a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">dùng thử</a>.</li>\n<li>Đội Meta WordPress đang bắt đầu <a href="https://make.wordpress.org/meta/2017/07/26/experiment-wordcamp-org-bug-scrubs/">một sáng kiến mới</a> đưa cộng đồng đến với nhau để cùng tập trung sửa lỗi xuyên suốt mạng lưới WordCamp.org.</li>\n<li>WordCamp US đang <a href="https://make.wordpress.org/meta/2017/07/26/experiment-wordcamp-org-bug-scrubs/">kêu gọi người tham gia tình nguyện</a>.</li>\n</ul>\n<p>Nếu bạn có câu chuyện mà chúng tôi nên đưa vào trong bài viết <em>&#8220;Tháng qua trong WordPress”</em> tiếp theo, hãy <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">gửi lên đây</a>.</p>\n<hr />\n<ul>\n<li><a href=''https://profiles.wordpress.org/thup90/'' class=''mention''><span class=''mentions-prefix''>@</span>thup90</a> dịch và <a href=''https://profiles.wordpress.org/htdat/'' class=''mention''><span class=''mentions-prefix''>@</span>htdat</a> chỉnh sửa.</li>\n<li>Bài viết gốc được đăng ở <a href="https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/">The Month in WordPress: June 2017</a>.</li>\n</ul>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:80:"https://vi.wordpress.org/2017/08/18/thang-qua-trong-wordpress-thang-7-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Tháng qua trong WordPress: Tháng 6 – 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:83:"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 14 Aug 2017 05:57:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Tin tức";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=208";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:328:"Chúng tôi đã bắt đầu một tính năng thông dụng trên blog này hôm nay. Chúng tôi muốn cập nhật mọi người về các vấn đề xung quanh dự án mã nguồn mở WordPress và nêu ra các điểm chủ yếu các bạn có thể tham gia đóng góp, nên chúng tôi sẽ đăng một [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dat Hoang";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:11438:"<p>Chúng tôi đã bắt đầu một tính năng thông dụng trên blog này hôm nay. Chúng tôi muốn cập nhật mọi người về các vấn đề xung quanh dự án mã nguồn mở WordPress và nêu ra các điểm chủ yếu các bạn có thể tham gia đóng góp, nên chúng tôi sẽ đăng một tóm tắt tất cả những tin chính về WordPress vào mỗi cuối tháng.<span id="more-208"></span></p>\n<p>Bên cạnh các tin chung khác, tháng 6 có ba sự kiện lớn là sự ra mắt bản WordPress 4.8, WordCamp Europe 2017, và Hội nghị Thượng đỉnh Cộng đồng WordPress. Đọc tiếp để biết thêm về những điều này và những câu chuyện hấp dẫn khác nữa xung quanh thế giới WordPress.</p>\n<h2>WordPress 4.8</h2>\n<p>Vào ngày 8 tháng 6, một tuần trước khi Hội nghị Thượng đỉnh Cộng đồng và WordCamp Châu Âu, <a href="https://wordpress.org/news/2017/06/evans/">WordPress 4.8 được ra mắt</a>. Bạn có thể đọc <a href="https://make.wordpress.org/core/2017/05/26/wordpress-4-8-field-guide/">Hướng dẫn Thay đổi </a>để biết chi tiết về tất cả các tính năng của phiên bản này (widget Tin tức và Sự kiện trong bảng điều khiển là một trong những trọng điểm lớn nhất).</p>\n<p>Hầu hết ai cũng đều tự động cập nhật phiên bản, hoặc công ty hosting tự cập nhật cho họ. Phần còn lại, cập nhật đều suôn sẻ mà chưa có báo cáo lỗi lớn gì.</p>\n<p>Phiên bản WordPress này có sự đóng góp từ 346 cá nhân; bạn có thể tìm thấy tên họ trong <a href="https://wordpress.org/news/2017/06/evans/">bài viết công bố</a>. Để đóng góp xây dựng WordPress core, hãy tham gia vào kênh #core trong <a href="https://make.wordpress.org/chat/">nhóm Slack Tạo nên WordPress</a>, và theo dõi <a href="https://make.wordpress.org/core/">blog đội Core</a>.</p>\n<h2>WordCamp Châu Âu 2017</h2>\n<p><a href="https://2017.europe.wordcamp.org">WordCamp Châu Âu 2017</a> được tổ chức ở Paris vào ngày 15 -17 tháng 6. Sự kiện bắt đầu với một Ngày Người Đóng góp, nối tiếp bởi hai ngày thuyết trình và sinh hoạt cộng đồng. Các bài thuyết trình được truyền trực tiếp, nhưng bạn vẫn có thể xem tất cả các bản ghi lại trên<a href="http://wordpress.tv/event/wordcamp-europe-2017/"> WordPress.tv</a>. Các nhà tổ chức còn công bố <a href="https://2017.europe.wordcamp.org/2017/06/30/wordcamp-europe-2017-in-paris-its-a-wrap/">bế mạc sự kiện</a>.</p>\n<p>WordCamp Châu Âu tồn tại để tụ hợp cộng đồng WordPress từ khắp các lục địa, cũng như để truyền cảm hứng cho các cộng đồng địa phương khắp nơi tổ chức sự kiện riêng của họ — vì điều đó, sự kiện là một thắng lợi lớn, và là nguyên nhân các nhóm họp mặt đã xuất hiện trong các tuần qua sau WordCamp Châu Âu.</p>\n<p>Công việc mà những người tham gia Ngày Người Đóng góp đã đạt được là khác biệt và đáng giá, bao gồm tất cả các phương diện của dự án WordPress — xem qua các <a href="https://make.wordpress.org">blog về khâu tổ chức</a> để đọc các cập nhật từ mỗi đội.</p>\n<p>Cuối cùng, chúng tôi cũng biết được qua sự kiện là <a href="https://2017.europe.wordcamp.org/2017/06/17/belgrade-serbia-to-host-wordcamp-europe-2018/">WordCamp Châu Âu 2018 sẽ được tổ chức ở Belgrade, Serbia</a>, để nối tiếp truyền thống mở rộng địa điểm và cộng đồng xuyên suốt lục địa.</p>\n<h2>Hội nghị Thượng đỉnh Cộng đồng WordPress</h2>\n<p>Hội nghị Thượng đỉnh Cộng đồng WordPress lần thứ tư diễn ra trong vòng hai ngày nối tiếp WordCamp Châu Âu 2017. Sự kiện này là một vô hội nghị chỉ dành cho khách mời mà mọi người từ cộng đồng WordPress tụ họp để thảo luận về các vấn đề khó khăn trong cộng đồng, và lên kế hoạch cho năm tới trong mỗi đội đóng góp.</p>\n<p>Hội nghị Thượng đỉnh được thiết kế làm nơi an toàn cho tất cả các người tham dự, các ghi chú từ mỗi cuộc thảo luận trong quá trình được làm ẩn danh trước khi công bố lên<a href="https://make.wordpress.org/summit/"> blog Hội nghị Thượng đỉnh </a>(chờ nhé &#8211; chúng sẽ xuất hiện trong vòng vài tuần nữa).</p>\n<p>Bạn có thể thấy một danh sách cuối cùng các chủ đề được đề nghị tới sự kiện <a href="https://make.wordpress.org/summit/2017/06/10/community-summit-2017-final-list-of-topic/">ở đây</a> (mặc dù có một vài đã được thêm vào trong vòng hai ngày Hội nghị diễn ra).</p>\n<h2>Tiếp tục thúc đẩy nhanh chóng tiếp thị WordPress</h2>\n<p>Là một phần của sự thúc đẩy toàn cầu hoá trong tiếp thị cho WordPress (như trong <a href="https://wordpress.tv/2016/12/07/matt-mullenweg-state-of-the-word-2016/">State of Word vào năm 2016</a> của Matt Mullenweg), đội Tiếp thị đã đưa ra hai trọng điểm để lấy thêm thông tin về người dùng WordPress và thông tin đó có thể hình thành tầm nhìn và nỗ lực truyền đạt thông tin của chúng ta.</p>\n<p><a href="https://make.wordpress.org/marketing/2017/06/15/wordpress-case-studies-and-usage-survey/">Đội đang tìm các case study về WordPress</a> và đang hỏi các người dùng, công ty, và người làm tự do làm một bài khảo sát sử dụng WordPress. Điều này sẽ có lợi lâu dài cho việc hình thành nên một cơ sở tiếp thị cho WordPress như một nền tảng và một cộng đồng — và nhiều người trong cộng đồng đang mong chờ điều này phát triển sâu hơn.</p>\n<p>Để đóng góp vào đội Tiếp thị WordPress, bạn có thể ghé thăm <a href="https://make.wordpress.org/marketing/">blog của đội</a>.</p>\n<h2>Ra mắt bản dùng thử công cụ chỉnh sửa Gutenberg mới</h2>\n<p>Đã được một thời gian rồi, đội Core đã làm việc hăng say để cho ra một công cụ chỉnh sửa mới tinh cho WordPress — dự án này gọi là “Gutenberg”. Mục tiêu chính của dự án là để thay thế công cụ chỉnh sửa TinyMCE đã có, nhưng bây giờ nó đang trong thời gian thử nghiệm và cho phép thử nghiệm công khai — <a href="https://wordpress.org/plugins/gutenberg/">bạn có thể tải nó về như một plugin ở đây</a> và cài đặt nó lên bất kỳ trang WordPress nào.</p>\n<p>Tính năng này vẫn trong giai đoạn thử nghiệm, nên chúng tôi không khuyến khích bạn sử dụng nó trên một trang web chính thức. Nếu bạn dùng thử, bạn sẽ thấy nó là một trải nghiệm hoàn toàn khác với những gì bạn đã quen trong WordPress. Nó là một công cụ được sắp xếp hợp lý hơn, và có hướng “clean” cho một trải nghiệm công cụ chỉnh sửa hơn những gì chúng ta có từ trước, và là một cái gì đó nhiều người vui mừng. Matt Mullenweg đã thảo luận về mục đích chi tiết của Gutenberg thông qua <a href="https://wordpress.tv/2017/07/01/interview-and-qanda-with-matt-mullenweg/">buổi hỏi đáp của anh ấy ở WordCamp Châu Âu</a>.</p>\n<p>Đã có một vài nhận xét từ  <a href="https://kinsta.com/blog/gutenberg-wordpress-editor/">Brian Jackson từ Kinsta</a>, <a href="https://daily.jorb.in/2017/06/random-thoughts-on-gutenberg/">Aaron Jorbin</a>, và <a href="https://www.mattcromwell.com/gutenberg-first-impressions/">Matt Cromwell</a> (và những người khác). Hãy chú ý rằng dự án đang tiến hoá liên tục trong giai đoạn này; khi cuối cùng nó có thể được liệt vào WordPress core (có thể là bản v5.0), nó có thể nhìn rất khác so với phiên bản bây giờ — đó chính là lý do vì sao giai đoạn beta và kiểm thử người dùng là rất quan trọng.</p>\n<p>Để đóng góp vào việc hình thành tương lai cho Gutenberg, <a href="https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/">hãy dùng thử nó</a>, và tham gia vào kênh #core-editor của <a href="https://make.wordpress.org/chat/">nhóm Slack Tạo nên WordPress</a>. Bạn cũng có thể ghé thăm <a href="https://github.com/WordPress/gutenberg">kho Github của dự án này</a> để báo cáo lỗi và đóng góp vào nền tảng mã.</p>\n<h2>Đọc thêm:</h2>\n<ul>\n<li>Bridget Willard <a href="https://make.wordpress.org/community/2017/06/21/proposed-wordcamp-editorial-calendar/">gửi lên lịch biên tập</a> giúp các nhà tổ chức WordCamp đăng nội dung cho sự kiện của họ.</li>\n<li>Một kiểu WordCamp theo chủ đề mới, <a href="https://2017-denver.journalist.wordcamp.org">WordCamp cho các Nhà xuất bản ở Denver</a>, đã mở bán vé.</li>\n<li>Ứng dụng WordPress trên iOS đã được cập nhật với <a href="https://en.blog.wordpress.com/2017/06/21/an-all-new-media-library-for-the-wordpress-ios-app/">một thư viện media mới</a> tháng này.</li>\n<li>Có vẻ như Underscores, theme khởi đầu nổi tiếng của WordPress, <a href="https://themeshaper.com/2017/06/26/the-future-of-underscores-and-a-new-committer/">có một tương lai tươi sáng</a>, với tầm nhìn đổi mới và người bảo trợ mới.</li>\n<li>Người luôn truyền cảm hứng Tom McFarlin <a href="https://tommcfarlin.com/simple-autoloader-for-wordpress">đã công bố một công cụ tự tải đơn giản thật sự hữu dụng cho WordPress</a>.</li>\n<li>Sau cuộc trao đổi ngắn trên Twitter về sự khác biệt giữa WordPress.org, WordPress.com, và Jetpack, <a href="https://helen.wordpress.com/2017/06/21/restaurant-vs-meal-kit-vs-grocery-shopping-or-wordpress-com-vs-jetpack-vs-wordpress-org/">Helen Hou-Sandí đã nghĩ ra một phép loại suy tuyệt vời</a> và một bài viết thú vị về nó.</li>\n<li>Nếu bạn quan tâm đến đóng góp đặc biệt về mảng Javascript hay PHP của nền tảng mã của WordPress core, thì các kênh #core-js và #core-php mới trên <a href="https://make.wordpress.org/chat/">nhóm Slack Tạo nên WordPress</a> là dành cho bạn.</li>\n</ul>\n<p>Nếu bạn có câu chuyện mà chúng tôi nên đưa vào trong bài viết &#8220;Tháng qua trong WordPress” tiếp theo, hãy <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">gửi lên đây</a>.</p>\n<hr />\n<ul>\n<li><a href=''https://profiles.wordpress.org/thup90/'' class=''mention''><span class=''mentions-prefix''>@</span>thup90</a> dịch và <a href=''https://profiles.wordpress.org/htdat/'' class=''mention''><span class=''mentions-prefix''>@</span>htdat</a> chỉnh sửa.</li>\n<li>Bài viết gốc được đăng ở <a href="https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/">The Month in WordPress: June 2017</a>.</li>\n</ul>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:80:"https://vi.wordpress.org/2017/08/14/thang-qua-trong-wordpress-thang-6-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"100% WordPress 4.8 đã được dịch sang tiếng Việt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://vi.wordpress.org/2017/06/14/100-wordpress-4-8-da-duoc-dich-sang-tieng-viet/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:92:"https://vi.wordpress.org/2017/06/14/100-wordpress-4-8-da-duoc-dich-sang-tieng-viet/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Jun 2017 10:33:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"Thông báo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://vi.wordpress.org/?p=201";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:418:"Nhóm WordPress tiếng Việt rất vui mừng được thông báo phiên bản WordPress 4.8 đã được dịch sang tiếng Việt hoàn chỉnh. Đây là công sức rất lớn của những thành viên đã tham gia dịch phiên bản 4.8 này @dinhtungdu, @dinhquochan96, @kenboy2304, @ledoannam, @luanvn, @tutv95, @minhhieu, @tranhoangquoc, @truongwp, @zou272937. Chúng tôi cũng xin được [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Tung Du";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2496:"<p>Nhóm WordPress tiếng Việt rất vui mừng được thông báo phiên bản WordPress 4.8 đã được dịch sang tiếng Việt hoàn chỉnh.<span id="more-201"></span></p>\n<p>Đây là công sức rất lớn của những thành viên đã tham gia dịch phiên bản 4.8 này <a href=''https://profiles.wordpress.org/dinhtungdu/'' class=''mention''><span class=''mentions-prefix''>@</span>dinhtungdu</a>, <a href=''https://profiles.wordpress.org/dinhquochan96/'' class=''mention''><span class=''mentions-prefix''>@</span>dinhquochan96</a>, <a href=''https://profiles.wordpress.org/kenboy2304/'' class=''mention''><span class=''mentions-prefix''>@</span>kenboy2304</a>, <a href=''https://profiles.wordpress.org/ledoannam/'' class=''mention''><span class=''mentions-prefix''>@</span>ledoannam</a>, <a href=''https://profiles.wordpress.org/luanvn/'' class=''mention''><span class=''mentions-prefix''>@</span>luanvn</a>, <a href=''https://profiles.wordpress.org/tutv95/'' class=''mention''><span class=''mentions-prefix''>@</span>tutv95</a>, <a href=''https://profiles.wordpress.org/minhhieu/'' class=''mention''><span class=''mentions-prefix''>@</span>minhhieu</a>, <a href=''https://profiles.wordpress.org/tranhoangquoc/'' class=''mention''><span class=''mentions-prefix''>@</span>tranhoangquoc</a>, <a href=''https://profiles.wordpress.org/truongwp/'' class=''mention''><span class=''mentions-prefix''>@</span>truongwp</a>, <a href=''https://profiles.wordpress.org/zou272937/'' class=''mention''><span class=''mentions-prefix''>@</span>zou272937</a>.</p>\n<p>Chúng tôi cũng xin được thông báo một tin mừng khác: WordPress tiếng Việt nay đã được tự động build mỗi khi chúng ta hoàn thành việc dịch thuật cho release mới nhất. Giờ đây thì khi hoàn thành 100% việc dịch thuật, phiên bản WordPress mới nhất kèm tiếng Việt cũng sẽ được cập nhật tự động lên vi.wordpress.org.</p>\n<h2>Bạn cũng có thể tham gia đóng góp cùng với nhóm WordPress.org Việt Nam!</h2>\n<p>Có rất nhiều công việc ở phía trước cần sự hỗ trợ của các bạn. Ví dụ: nâng cao chất lượng bản dịch hiện tại và <a href="https://github.com/wpvi/todos/issues">các to-do list ở đây</a>.</p>\n<p>Để tham gia, bạn có thể tìm hiểu thêm ở trang <a href="https://vi.wordpress.org/team/">team WordPress.org Việt Nam</a>, hoặc <a href="https://vi.wordpress.org/team/slack-wordpress-viet-nam/">tham gia nhóm Slack</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:88:"https://vi.wordpress.org/2017/06/14/100-wordpress-4-8-da-duoc-dich-sang-tieng-viet/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:35:"https://vi.wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:9:"\n	hourly	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:4:"\n	1	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Wed, 20 Dec 2017 08:11:57 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Fri, 06 Oct 2017 04:45:19 GMT";s:4:"link";s:61:"<https://vi.wordpress.org/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}}s:5:"build";s:14:"20171220075406";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1439, '_transient_timeout_feed_mod_5336548cfc49bd1a34a51b2a9fc5fda3', '1513800718', 'no'),
(1440, '_transient_feed_mod_5336548cfc49bd1a34a51b2a9fc5fda3', '1513757518', 'no'),
(1441, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1513800719', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1442, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"HeroPress: WordPress allowed me to have a Dream Job";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2357";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:128:"https://heropress.com/essays/wordpress-allowed-dream-job/#utm_source=rss&utm_medium=rss&utm_campaign=wordpress-allowed-dream-job";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:13913:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/121917-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: You know that you should never stop dreaming, right?" /><p>I was always interested in computers but I did not know I would become a developer. As a kid, a dream job, was playing and reviewing video games. I believe, many kids had a similar dream job. I guess, that’s where I started seeing a dream job would be a job where you would be happy to go to and maybe even sad when going from it.</p>\n<p>Today, I see myself as having a dream job. Let me tell you how I got to my current situation.</p>\n<h3>Programming was not for me</h3>\n<p>While going to high school, I was introduced to programming. We did some Turbo C++ and I could not understand a thing. Even a simple for-loop was hard for me. I would rather play Counter-Strike with friends who attended that class. After that, as I did not understand programming, I chose not to follow such career path. I did not want my parents to pay for my college expenses since I would have to go to another city. Especially since I realised I don’t understand how to code.</p>\n<p>Since I live in Croatia, I did not have access to a high speed internet. At that time, a high speed internet was an ADSL with a download speed of 200kb/s.</p>\n<blockquote><p>I was using the 56k modem which was too expensive so I had only 2 hours per week to spend on it.</p></blockquote>\n<p>I used those 2 hours for playing games instead of learning.</p>\n<p>Once I got the ADSL, somewhere near the end of high school, I was able to get my hands on Photoshop and learned how to manipulate images. After high school, I went to the Maritime College but soon after I knew I did not want to spend years and years working on ships, not seeing my family or friends. That was not my dream job.</p>\n<h3>Second Try</h3>\n<p>I decided to give another chance to programming, but with a different learning path. Since I already knew how to use Photoshop, I realized there was an option “Slice for Web..”. That was my first introduction to web development.</p>\n<p>I knew having a web page composed of images from Photoshop was not how it should be done. I was used to 56k modem and I knew how a page like that would take long to load.</p>\n<p>The luck was on my side now since I had ADSL and I could spend hours and hours weekly search the Internet. I searched how to slice images and prepare them for web pages by reading PSD Tuts+. Back then there were only PSD and Net TutsPlus sites in their network.</p>\n<p>I learned a lot on PSD to HTML and how to use CSS to style your web sites. After that, I wanted to learn how do blogging sites work. How do they show those articles. I mean, it couldn’t be that for each article, they would open one HTML file and edit it. That’s just too much work. So, I found about PHP and MySQL and got some courses on Lynda on that.</p>\n<p>I learned about creating a blog using PHP and MySQL. I also learned a little on advanced coding and I was really happy with my knowledge. All that was just a month or two from where I knew nothing on programming.</p>\n<h3>Looking for a CMS</h3>\n<p>With my knowledge, I knew how to build various types of sites. I asked other businesses if I could build a site for them in return of a favour or even product. Some of them were up to that. I didn’t want to charge since I knew I still had a lot to learn.</p>\n<p>After a while, I was a bit tired (read: lazy) of building SQL tables and all the base functions for each project. I wanted to see if there are some tools I could use for a faster development. Something that would give me a starting point with basic functionalities such as content, users, settings etc.</p>\n<p>After reading a lot of tutorials on PHP, I also read about Joomla, WordPress and similar. So I went for both. I was so confused by Joomla and how everything I wanted to do required me several clicks. After that, I tried WordPress. I loved it. Joomla had articles, which you could set as pages. WordPress had Posts and Pages. I really loved how everything was so easy to setup. At that time, there were no custom post types or featured images, but I did not need them yet. I was just beginning my journey with WordPress.</p>\n<p>From there forward I downloaded many themes and plugins just to read their code and learn how they’ve been developed.</p>\n<h3>The First Breadcrumbs &amp; Disappointments</h3>\n<p>Even though I did not know too much, I did know how to develop something, how to use a library and integrate it into my own and so on.</p>\n<blockquote><p>The first time I realised that WordPress could help me have a dream job is when I created a simple Dropbox plugin for my own needs.</p></blockquote>\n<p>Once I’ve built it and scanned through CodeCanyon, I saw there was nothing like that (now there are several). So I went and uploaded it there. It went live after a week or so.</p>\n<p>I did not expect much from it. I could gather around $300 from it after several months. As a college student who didn’t work on a side job, such income was really great for me.</p>\n<p>That is where it all started for me. I decided to use WordPress for any new projects and build custom ones to learn more.</p>\n<p>Don’t get me wrong. It was not so easy to get new projects. I did get a job as a student which was a failure in the sense that I did not get paid for it. I also had another freelancing experience that was not good. But that did not let me down.</p>\n<p>You WILL get those clients from hell. It is something I think most of us get to know. But in time, you will learn how to identify such clients and pass on such projects.</p>\n<p>Fast forward a year and I got a job where I did not use WordPress. But I did not intend to leave it. I joined Elance (now Upwork) so I could earn some side money using WordPress.</p>\n<p>I did not earn anything on Elance and on my daily job, for a year, I was getting only 60% of the monthly paycheck because the Company did not have enough money. Somehow they did get the other 40% by the end of the month.</p>\n<p>But can you imagine how stressful was that? You can never know if you can travel or save some money. I could not afford purchasing a course which could improve my knowledge.</p>\n<p>I had a job where I liked to work, but the money situation was really stressful and I did not want to rely just on the company. WordPress to the rescue!</p>\n<h3>WordPress Community</h3>\n<p>Not long after, I learned about WordPress Croatia. Before that, I never used social media for such discussions and networking. That Facebook group was the first group I joined to discuss about WordPress and help each other.</p>\n<p>That was really a great experience. I learned about WordCamps and Meetups and that group pushed me into making my first eBook on WordPress. Another product I was able to earn some side money which involved WordPress. My mindset started to change.</p>\n<blockquote><p>By helping others through teaching and discussion, I can also help the WordPress Community.</p></blockquote>\n<p>My first experience on public speaking was on a WordPress Meetup in Zagreb. I would never go if I was not invited by Emanuel Blagonić. A great guy who with his brother Lucijan and several other folks really started a WordPress movement in Croatia.</p>\n<p>I never seen anything like that before. People helping each others, going so much to take their own free time to fix or at least investigate a bug on someone else’s site. I really liked it and wanted to be a part of such a community.</p>\n<p>Even if such a community does not help you directly to land a job or get a new gig, it really does help you indirectly with all the knowledge that is shared (from development to business).</p>\n<h3>Teaching &amp; Job Opportunities</h3>\n<p>Because of the WordPress community in Croatia, I wanted to help by teaching others. So I also started a site where I have written a lot of tutorials on WordPress development. That site was in Croatian so people can start much sooner (even if they don’t know English).</p>\n<p>I used to sleep only for 2 to 3 hours so I could get up much earlier and start to write tutorials or make videos. I did not have a microphone at first, so I used a webcam as a microphone. You can imagine how awful the audio was. Even if it’s in Croatian, you can check the quality of it on <a href="https://www.youtube.com/channel/UCzcRclnBSnJRPM5h4PfnqWw">YouTube</a>.</p>\n<blockquote><p>But I was really happy I could help someone who knows less than me.</p></blockquote>\n<p>By teaching, I have learned a lot and I am so thankful to the community which was one of the reasons I kept going like that. I also got invited to several WordPress projects just because people saw me as someone who understands WordPress.</p>\n<h3>WordCamps &amp; WebCamps</h3>\n<p>You can make friends there. Seems a bit odd maybe, but you can. Due to the community I made some friends such as Ana &amp; Marko from <a href="https://www.anarieldesign.com/">anarieldesign.com</a> and Goran Jakovljević from <a href="https://www.anarieldesign.com/">wpgens.com</a>.</p>\n<p>We have become friends through the community on social media. I’ve met them all just after a year or so on WordCamp Zagreb 2017. But we talked as if we were friends for years and years. I’ve seen how people from all over the world talk to each other and how a friendly and welcoming this WordPress Community is.</p>\n<p>Even today, I frequently talk to all of them and we help each other as we can. That is something that you can’t have everywhere.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/codeable.png"><img class="alignleft size-medium wp-image-2359" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/codeable-300x270.png" alt="Codeable sticker on a ski helmet" width="300" height="270" /></a>My dream job progress came after WebCamp Zagreb 2016 where I met other people from the IT community. I got introduced to Toptal and just a month from it, I joined Toptal. Codeable was also something I wanted to try and I did. As if those platform communicated together, I got invited into <a href="https://codeable.io/">Codeable</a> a week after I joined <a href="https://www.toptal.com/">Toptal</a>.</p>\n<p>That is where it all has started getting real to me. I was able to freelance as much as I wanted and when I wanted. It was the first time I could go do my hobbies without worrying about money.</p>\n<h3>The Dream Job we all seek</h3>\n<p>My definition of a dream job is the feeling when you’re waking up happy and not sad because you have to go to work. Such job should also challenge you so you learn something new. Sometimes it may even get you out of your comfort zone, but you’ll be a better person because of it.</p>\n<p>I still have an occupied day, working on a daily job and then working with my own clients. It may not suit all. But I am finally able to feel somehow financially free, going happy to work and making friends while doing it. Even if I don’t have any side projects, I am working on my plugins and writing tutorials on my own site (I love it).</p>\n<p>Today, for the first time, I am planning to go to a WordCamp outside Croatia.</p>\n<p><strong>That is all thanks to WordPress.</strong></p>\n<p>You know that you should never stop dreaming, right?</p>\n<p>I guess, I wanted to let you know that WordPress can help you get a dream job! It can be something totally different, but as long as it involves Internet, I think WordPress can help you with it.</p>\n<p><strong>WordPress would not be where it is today if it was not to the whole WordPress Community. So, thanks to all involved in it!</strong></p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: WordPress allowed me to have a Dream Job" class="rtsocial-twitter-button" href="https://twitter.com/share?text=WordPress%20allowed%20me%20to%20have%20a%20Dream%20Job&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-allowed-dream-job%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: WordPress allowed me to have a Dream Job" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-allowed-dream-job%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-allowed-dream-job%2F&title=WordPress+allowed+me+to+have+a+Dream+Job" rel="nofollow" target="_blank" title="Share: WordPress allowed me to have a Dream Job"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/wordpress-allowed-dream-job/&media=https://heropress.com/wp-content/uploads/2017/12/121917-150x150.jpg&description=WordPress allowed me to have a Dream Job" rel="nofollow" target="_blank" title="Pin: WordPress allowed me to have a Dream Job"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/wordpress-allowed-dream-job/" title="WordPress allowed me to have a Dream Job"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/wordpress-allowed-dream-job/">WordPress allowed me to have a Dream Job</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Dec 2017 07:00:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Igor Benić";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Akismet: Version 4.0.2 of the Akismet WordPress Plugin Is Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1982";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"https://blog.akismet.com/2017/12/18/version-4-0-2-of-the-akismet-wordpress-plugin-is-now-available/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1161:"<p>Version 4.0.2 of <a href="http://wordpress.org/plugins/akismet/">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.2 contains a few helpful changes:</p>\n<ul>\n<li class="p1"><span class="s1">Fixed a bug that could cause Akismet to recheck a comment that has already been manually approved or marked as spam.</span></li>\n<li class="p1"><span class="s1">Fixed a bug that could cause Akismet to claim that some comments are still waiting to be checked when no comments are waiting to be checked.</span></li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1982/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1982/" /></a> <img alt="" border="0" src="https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1982&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 18 Dec 2017 16:56:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Stephane Daury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"WPTavern: Jetpack 5.6.1 Increases Security of the Contact Form Module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=77061";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://wptavern.com/jetpack-5-6-1-increases-security-of-the-contact-form-module";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:575:"<p>Jetpack has <a href="https://jetpack.com/2017/12/14/jetpack-5-6-1/">released version 5.6.1</a> which hardens the Contact Form module by improving permissions checking when updating a form&#x27;s settings. In addition to security fixes, the character count for when Publicize publishes content to Twitter has been increased to 280. </p>\n\n\n\n<p>This release also fixes a bug that disabled the ability to save widgets after removing a Widget Visibility rule. Users are encouraged to update as soon as possible, especially if you make heavy use of the Contact Form module. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 15 Dec 2017 22:49:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: WPWeekly Episode 297 – WordCamp US 2017 Recap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=77042&preview=true&preview_id=77042";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wptavern.com/wpweekly-episode-297-wordcamp-us-2017-recap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2715:"<p>In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I are joined by <a href="https://mor10.com/">Morten Rand-Hendriksen</a>. We have an engaging conversation about WordCamp US 2017, Gutenberg, and what it&#8217;s going to take for it to succeed. Rand-Hendriksen shared what he thinks are <a href="https://mor10.com/gutenberg-and-the-future-of-wordpress-conditions-for-success/">the three conditions</a> that need to be met before Gutenberg can be shipped.</p>\n<p>Near the end of the show, we discuss the possible impacts Gutenberg&#8217;s timeline may have on the WordPress economy. Jacoby and I round out the show by reviewing the 2017 State of the Word and our picks of the week.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/storify-to-close-may-16-2018-wordpress-plugin-discontinued">Storify to Close May 16, 2018, WordPress Plugin Discontinued</a><br />\n<a href="https://wptavern.com/gutenberg-and-the-wordpress-of-tomorrow-by-morten-rand-hendriksen" rel="bookmark">Gutenberg and the WordPress of Tomorrow by Morten Rand-Hendriksen</a><br />\n<a href="https://bridgetwillard.com/economic-impact-timeline-gutenberg-rollout/">The Economic Impact of the Timeline of the Gutenberg Rollout</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://www.copytrans.net/copytransheic/">CopyTrans</a> is a plugin for Windows to view HEIC files. In iOS 11, Apple started using HEIC/HEIF. HEIF stands for High Efficiency Image Format, and, as the name suggests, is a more streamlined way to store image files. It allows digital photographs to be created in smaller files sizes while retaining higher image quality than its JPEG alternative. The image format is currently not supported in Windows 7, 8, and 10.</p>\n<p>CopyTrans HEIC for Windows is a simple Windows plugin that allows you to open HEIC files using Windows Photo Viewer. This format is also <a href="https://core.trac.wordpress.org/ticket/42775">not compatible with WordPress.</a></p>\n<p><a href="http://github.com/10up/wpsnapshots">WP Snapshots</a> is a command line interface (CLI) tool by 10Up that empowers engineering teams to quickly share WordPress projects, including files and the database.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 20th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p><strong>Listen To Episode #297:</strong> </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Dec 2017 00:59:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"HeroPress: Finding My Way Out Of My Comfort Zone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2341";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:122:"https://heropress.com/essays/finding-way-comfort-zone/#utm_source=rss&utm_medium=rss&utm_campaign=finding-way-comfort-zone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:20331:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/121317-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: As web developers, programmers, people who speak English, people who have internet access to read this article, are incredibly, very, very, very lucky." /><p>I don&#8217;t remember when we had a computer for the first time. I practically grew up with them. Hungary was a communist country when I was born in &#8217;84, so while everyone had a job, no one could really do their own thing. Everything was state owned.</p>\n<p>In 1989-1990 there was a change of regime which followed the collapse of the Berlin wall, and suddenly the country became a democracy, and people were free to start and own companies. Yes, the era also had other problems, like 35% inflation at one point, but at least we were &#8220;free&#8221;.</p>\n<p>My parents started out by importing computers from Hong Kong. That was a huge thing. We had one of the first of those, a 286 with a whopping speed of 8 Mhz which went up to 16 if I pressed the Turbo button! I had no idea what that meant though besides the number being higher.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/young_gabor.jpg"><img class="aligncenter size-large wp-image-2343" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/young_gabor-1024x576.jpg" alt="Gabor about age 3, at a computer" width="960" height="540" /></a></p>\n<p>It was a good time of Sim City, Prince of Persia, and Sokoban.</p>\n<h3>Finding the Web</h3>\n<p>My first &#8220;website&#8221; was one my grandmother asked me to make for her Quaker group. I was 12. I created it with tables and inline styling (CSS wasn&#8217;t a thing back then), but never got it live &#8211; hosting wasn&#8217;t something I really knew about.</p>\n<p>Fast forward to 2003 when I started university studying architecture in Budapest. It was fun, I loved physics, I loved drawing, I loved math, I <em>especially</em> loved descriptive geometry! The latter is pretty much &#8220;how to represent a 3d thing on a sheet of paper&#8221;. Incidentally that brought me my first high paying consulting job. As a student in 2nd year I coached a student in first year in descriptive geometry &#8211; he had broken his leg so couldn&#8217;t actually make the classes, but he had to pass that subject to advance. So every week I would go to their house and spend about 3 hours helping him draw and figure out how to draw what to draw and why to draw those things that way. That experience taught him everything he needed to know to pass with a 4 (on a scale of 5, 5 being best), which translates to around 80%. I had my first satisfied customer. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f642.png" alt="🙂" class="wp-smiley" /></p>\n<p>It also taught me two very important things:</p>\n<ol>\n<li>if you&#8217;re good at it, they will overlook the fact that you&#8217;re not actually &#8220;qualified&#8221; to do the thing (I wasn&#8217;t a TA / lecturer. I was merely another student in an upper class. An upperclassman. 先輩)</li>\n<li>if you&#8217;re good at it, you can charge people a lot more than you otherwise think. I got paid about 3x the standard hourly wage of adults working the majority of hourly jobs, and as a student, that was awesome!</li>\n</ol>\n<p>For context though, there is no tuition fee for your first degree (i.e.: it&#8217;s paid for by the government for you which gets that money from taxes).</p>\n<p>The second formative experience was between 2004-2006. I joined an extracurricular architecture club. Basically students who don&#8217;t just want to bumble through the university but actually get good! Like, REALLY GOOD. We pitched to host EASA &#8211; European Architecture Students&#8217; Assembly &#8211; in Budapest in 2006. For that we needed a website, both an internal forum, and a public facing site for sponsors / attendees / workshops / visitors / everyone.</p>\n<p>I knew nothing besides basic html.</p>\n<p>So naturally I volunteered.</p>\n<h3>Leveling up</h3>\n<p>I learned PHP, MySQL, and Flash from books: learn php in 24 hours, PHP 4 reference, learn mysql in 24 hours, learn flash in 24 hours, etc. I had one guy over the internet who helped me figure out things in PHP, but other than that I was all alone. Stack Overflow wasn&#8217;t a thing either. Wild times. From memory I could probably exploit that engine in one of 284 ways today. I&#8217;m glad it&#8217;s not online any more. The flash site is, it&#8217;s somewhat broken, but here you go: <a href="https://javorszky.github.io/ancientflashsite/" rel="nofollow">https://javorszky.github.io/ancientflashsite/</a></p>\n<p>I built a forum engine and a full actionscript site. We also had a requirement that whoever applies to host whatever workshop, we need to judge the workshop on its own merit, not on who submits it, so I built the submit form in such a way that it took the files, and renamed them, scrubbed the email addresses that reached the judging committee, and we made it a rule that if there&#8217;s any identifying information ON the pdf, it&#8217;s immediately disqualified. The year is 2005.</p>\n<p>Looking back, I realized two things:</p>\n<ol>\n<li>learn to learn on the job, and learn to enjoy not knowing stuff. Nobody does, really</li>\n<li>biases are real. Mitigate them. Even the ones you don&#8217;t know about. Especially the ones you don&#8217;t know about! Or at least have a framework by which you acknowledge if you&#8217;re called out</li>\n</ol>\n<h3>Moving On</h3>\n<p>I then decided to not continue my studies there. I was failed in one class where I expected a strong pass. We were split into 12 groups, and groups 1 and 2 got mostly failed, and groups 3-12 got overwhelmingly passed. Something wasn&#8217;t right, I spoke up, but I was a student, and they were faculty. I left because I didn&#8217;t feel like fighting and losing my soul over it.</p>\n<blockquote><p>Something wasn&#8217;t right, I spoke up, but I was a student, and they were faculty. I left because I didn&#8217;t feel like fighting and losing my soul over it.</p></blockquote>\n<p>I continued making websites for myself and got introduced to WordPress around this time. I don&#8217;t remember my first project. I <em>think</em> it was a site I built for myself in 8 hours for a competition which led me to my first paying website job, which I totally screwed up.</p>\n<p>In 2010 I decided to move countries with 3 friends I went to university with, at the time I was studying International Tourism Management, and I could transfer to Oxford Brookes University (not the one you heard about).</p>\n<p>I missed the application deadline.</p>\n<p>Which meant that I had to find work. When I bought my plane ticket I decided that whatever it takes, I will make it work. Staying in Hungary was not an option for me: I didn&#8217;t like the politics, I didn&#8217;t like where the country was heading economically, and I longed for a more cheerful society to surround me. Movement rights and language I can speak and other people going the same way helped me decide on the UK.</p>\n<h3>Restarting</h3>\n<p>So I made it work: I accepted the first full time job that I got offered. I worked as a wait staff at the restaurant of one of the luxury hotels in the city. It had very little to do with computers, but I had income, I could pay back the help I got from my friends (and by extension, their families), and I could actually take control of my own life instead of just bumping into furniture.</p>\n<blockquote><p>It had very little to do with computers, but I had income, I could pay back the help I got from my friends (and by extension, their families), and I could actually take control of my own life [&#8230;]</p></blockquote>\n<p>I&#8217;ve learned a lot from working there. Chef taught me that literally no one cares WHY there was a mistake at that time in putting through an order &#8211; what&#8217;s important is what the error was, what&#8217;s needed to correct it. Everything else is wasting everyone&#8217;s time. Of course we&#8217;d go through these after the service.</p>\n<p>I&#8217;ve learned that to work in hospitality, you have to leave your ego at the door. Doesn&#8217;t mean you should take abuse, but there you&#8217;re part of a &#8211; hopefully &#8211; finely tuned, oiled machinery, and keeping the whole thing operating is the number one goal. Turns out that&#8217;s also applicable to working in teams in general.</p>\n<p>A year goes by, and we need to move out of the house we&#8217;re renting. In a break between morning and evening shifts I look at the job postings in the local newspaper: someone&#8217;s looking for a developer! It was a Wednesday. I got an interview for Friday, and started on Monday. I had to talk to my supervisor to move me to evening-only shifts because I have a second desk job. My days: 9am &#8211; 4:45pm developer, 5pm &#8211; 2am (ish, whenever we finished) waiting tables. Rinse and repeat.</p>\n<p>Working 60-80 hours could only go on for so long. After about 3 months I had a very sharp chest pain while on shift at the restaurant. Had to walk home (normally I cycle), and then made my way to the emergency room where after having waited 5 hours, I got an X-ray, and EKG, and the doctor determined there&#8217;s nothing wrong, so here&#8217;s some Ibuprofen (3&#215;1) and some Paracetamol (1&#215;1).</p>\n<blockquote><p>Kids, don&#8217;t work 60-80 hours a week.</p></blockquote>\n<p>&#8220;Uh, which one should I take on a day?&#8221; &#8220;Oh&#8230; both!&#8221;</p>\n<p>I went home, took the first dose, and slept for 22 hours. I handed in my resignation 2 days later at the restaurant because I needed to not work that much. My manager pleaded me to stay at least on part time, which I did, because they were genuinely lovely people.</p>\n<p>Kids, don&#8217;t work 60-80 hours a week.</p>\n<h3>Back to the web with full steam</h3>\n<p>After a year at the development agency + restaurant combo, I got hired to a WordPress agency through recruiters. My new boss asked me why I haven&#8217;t applied to them directly, even though I saw their ad, why I waited to go through a recruiter. I said I didn&#8217;t think I was good enough. That decision ended up costing him a few thousand pounds in recruitment fees.</p>\n<p>I quit my restaurant job for good. I also learned a lesson to actually trust myself.</p>\n<p>Something that during the 2,5 years with them I would question a lot of times. There have been instances when I made mistakes that were incredibly easy to avoid had I just taken 5 more minutes to think. But every time it was something we could correct fairly fast (shoutout to hospitality experience!) and then I had a postmortem, and changed the way I work to avoid similar problems.</p>\n<p>I had the privilege to work on some seriously challenging WordPress sites while with them. That was my first actual commercial experience with it. We built blogs from Oxford University (the one you heard about) to eCommerce site migrations from Magento using Jigoshop and later WooCommerce.</p>\n<p>I&#8217;ve had to disassemble how WooCommerce worked fairly fast because of some of the client requirements, and I got pretty good at it.</p>\n<p>In November 2014 I got hired to one of the product companies around WooCommerce and spent a year and a half with them maintaining their plugins, answering customer queries and helping them fix their sites occasionally. That was my first help desk experience.</p>\n<p>I got access to some incredibly large eCommerce stores and I quickly discovered where the bottlenecks were in our plugins, WordPress, and WooCommerce itself. Some of the customers had access to New Relic, which I could use to help me find what&#8217;s taking so long.</p>\n<p>From then on it was just a case of finding what&#8217;s slow, following it back, reading the documentation and code on why it&#8217;s slow, and coming up with ideas on how to fix it.</p>\n<p>I got really good at this.</p>\n<h3>The Freelance Days</h3>\n<p>At the end of July 2016 our ways parted, and I had a buffer of about 3 months when I didn&#8217;t need to worry about having to find another job. While trying to figure out what to do, where next, I started getting requests to work on some projects. They asked me my hourly rate. I said a number I was slightly uncomfortable with, they said yeah, and off I went.</p>\n<blockquote><p>[&#8230;] I started getting requests to work on some projects. They asked me my hourly rate. I said a number I was slightly uncomfortable with, they said yeah [&#8230;]</p></blockquote>\n<p>It also helped that I was at the time known for my love of hard problems and actually figuring out why things break and fixing them.</p>\n<p>I thought &#8220;hey, if I can command that much hourly rate, I could make this work!&#8221;</p>\n<p>I took on clients, and managed to make things work for&#8230; a surprisingly long time. Having GREAT accountants is a must for self employment.</p>\n<p>I suddenly also had time to pursue some of my other interests: I learned how to ride a motorcycle.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/gabor_motorcycle.jpg"><img class="aligncenter size-large wp-image-2344" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/gabor_motorcycle-1024x576.jpg" alt="Gabor standing by a sporty motorcycle" width="960" height="540" /></a></p>\n<p>I started learning Japanese! I got back onto the slackline.</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/gabor_slackline.jpg"><img class="aligncenter size-large wp-image-2345" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/gabor_slackline-1024x768.jpg" alt="Gabor balancing on a narrow strap hung between two trees" width="960" height="720" /></a></p>\n<p>I got to speak at WordCamp Brighton in 2017!</p>\n<p><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/gabor_wordcamp.jpg"><img class="aligncenter wp-image-2346 size-large" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/gabor_wordcamp-1024x683.jpg" alt="Gabor, on stage at WordCamp Brighton" width="960" height="640" /></a></p>\n<p>Until very recently, it was a game of &#8220;how long can I be self employed before I need to look for a job?&#8221; Turns out I couldn&#8217;t answer this, because an opportunity came up to join Mindsize as a lead backend developer.</p>\n<p>When I heard about them starting up a few months prior, I had two thoughts:</p>\n<ol>\n<li>they are probably the only company I would stop doing freelance work for</li>\n<li>I&#8217;m not good enough to work with them yet</li>\n</ol>\n<p>Statement 1 was true :).</p>\n<h3>Catching up with the present</h3>\n<p>This brings us into the very recent present. It&#8217;s maybe a month old development at the time of publication. Since then I&#8217;ve been working really hard to reclaim my time of about 40 hours worked a week. With the holiday push of the clients I had as a freelancer, there was a transition phase where I had to work 60-80 hours.</p>\n<p>Don&#8217;t work 60-80 hours a week, kids!</p>\n<p>Looking back it was incredibly humbling experience so far, but also exciting, and full of challenges, and learnings. I&#8217;ve made a lot of excellent friends, and luckily very few enemies. I am grateful for each and every one of them.</p>\n<p>I don&#8217;t know where life takes me. For the foreseeable future I&#8217;ll be with Mindsize and will make eCommerce sites awesome, and will make awesome eCommerce sites. But I&#8217;ll also try and pass on some of the things I&#8217;ve learned by helping people new to the industry.</p>\n<p>There are a lot more things I could say, but they aren&#8217;t necessarily part of my journey, so I&#8217;ll save them for some other time.</p>\n<h3>On privilege</h3>\n<blockquote><p>We, as web developers, programmers, people who speak English, people who have internet access to read this article, are incredibly, very, very, very lucky.</p></blockquote>\n<p>Except for one thing. When I worked at the WordPress agency, Twitter, and by extension, society, started the &#8220;check your privilege&#8221; trend. It took a while to understand what it was all about, but it&#8217;s something I wish everyone did.</p>\n<p>We, as web developers, programmers, people who speak English, people who have internet access to read this article, are incredibly, very, very, very lucky. I&#8217;ve realized that my journey wouldn&#8217;t have been possible had I been born to less fortunate circumstances:</p>\n<p>If my parents didn&#8217;t make the decision to start teaching me English when I was 3.</p>\n<p>If I didn&#8217;t have the financial stability in my family to be able to just explore what I like to do.</p>\n<p>If I didn&#8217;t have the financial stability to just drop out of university after 3 years because &#8220;I didn&#8217;t like it&#8221;. And another one after a semester. And never finish my Tourism Management course.</p>\n<p>If I didn&#8217;t live in a developed nation with easy access and high standards of living.</p>\n<p>This brings into mind one of my favorite tweets:</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Your job, lucky person, is to help others less lucky than you to improve their odds.</p>\n<p>&mdash; Dylan Wilbanks, Human Grumpy Cat (@dylanw) <a href="https://twitter.com/dylanw/status/522060876304486400?ref_src=twsrc%5Etfw">October 14, 2014</a></p></blockquote>\n<p></p>\n<p>Not everyone has these opportunities and every day I am conscious of it.</p>\n<p>Humans are hard. Interpersonal skills are hard. Treating each other with dignity, respect, and grace is hard if you haven&#8217;t been brought up with those values as a kid. It&#8217;s been a challenge for me to shed the &#8220;boys will be boys&#8221; upbringing I was carrying.</p>\n<p>Let&#8217;s use our power and means and help the less fortunate walk their own paths. Let&#8217;s lessen marginalization with the view of ending it. Let&#8217;s be excellent to each other!</p>\n<p>And don&#8217;t use &#8220;guys&#8221; to mean everyone!</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Finding My Way Out Of My Comfort Zone" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Finding%20My%20Way%20Out%20Of%20My%20Comfort%20Zone&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-way-comfort-zone%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Finding My Way Out Of My Comfort Zone" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-way-comfort-zone%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-way-comfort-zone%2F&title=Finding+My+Way+Out+Of+My+Comfort+Zone" rel="nofollow" target="_blank" title="Share: Finding My Way Out Of My Comfort Zone"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/finding-way-comfort-zone/&media=https://heropress.com/wp-content/uploads/2017/12/121317-150x150.jpg&description=Finding My Way Out Of My Comfort Zone" rel="nofollow" target="_blank" title="Pin: Finding My Way Out Of My Comfort Zone"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/finding-way-comfort-zone/" title="Finding My Way Out Of My Comfort Zone"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/finding-way-comfort-zone/">Finding My Way Out Of My Comfort Zone</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Dec 2017 08:00:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gabor Javorszky";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WPTavern: Storify to Close May 16, 2018, WordPress Plugin Discontinued";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76992";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/storify-to-close-may-16-2018-wordpress-plugin-discontinued";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2906:"<p><a href="https://storify.com/">Storify</a>, a service that launched in 2010 and opened to the public in 2013 has announced that it is shutting down version one of its service on May 16th, 2018. Concurrently, its WordPress plugin that is actively installed on more than 2,000 sites has been <a href="https://wordpress.org/plugins/storify/">discontinued</a>. </p>\n\n\n\n<img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/12/StorifyPluginDiscontinued.png?w=627&ssl=1" />\n    Storify Plugin is Discontinued\n\n\n\n\n<p>Storify enabled journalists and others to build stories and timelines similar to Twitter and other social networks. The service <a href="https://techcrunch.com/2013/09/09/livefyre-acquires-storify/">was acquired</a> by <a href="http://www.livefyre.com">Livefyre</a> in 2013 and became part of Adobe when it <a href="https://techcrunch.com/2016/05/03/adobe-acquires-livefyre/">acquired Livefyre</a> in 2016. </p>\n\n\n\n<p>Storify has disabled new accounts from being created and will delete stories and accounts on May 16th, 2018. Existing users who want to move to Storify 2, a paid feature of Livefyre, will need to purchase a license. The service has <a href="https://storify.com/faq-eol">published a FAQ</a> that includes directions on how to export content. </p>\n\n\n\n<h2>New Plugin Opportunity</h2>\n\n\n\n<p>According to some users, the export process is cumbersome, providing an excellent opportunity for a prospecting developer to create a WordPress plugin that makes the process easier. A search of the WordPress plugin directory for Storify Export produces zero results. <br /></p>\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">A fantastic <a href="https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw">#WordPress</a> dev opportunity: <a href="https://twitter.com/Storify?ref_src=twsrc%5Etfw">@Storify</a> just announced its "End of Life" for May 2018. The export is kinda lame. If I could import a story from Storify into a WordPress Post/Page that would be fabulous! I have a few stories that I wouldn''t want to lose. <a href="https://twitter.com/hashtag/biz?src=hash&ref_src=twsrc%5Etfw">#biz</a></p>&mdash; Birgit Pauli-Haack (@bph) <a href="https://twitter.com/bph/status/940706045449703424?ref_src=twsrc%5Etfw">December 12, 2017</a></blockquote>\n\n\n\n\n\n    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">I have a lot of Storify stories I''d hate to lose, too. If you hear of someone doing this, I''d love to know about it.</p>&mdash; Deborah Edwards-Onoro (@redcrew) <a href="https://twitter.com/redcrew/status/940729186469253120?ref_src=twsrc%5Etfw">December 12, 2017</a></blockquote>\n\n\n\n\n<p>If you know of any methods or plugins that eases the process of exporting content from Storify and importing it to WordPress, please share them in the comments. Also feel free to let us know if you create a plugin that performs this task. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Dec 2017 07:30:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: Gutenberg and the WordPress of Tomorrow by Morten Rand-Hendriksen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76959";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wptavern.com/gutenberg-and-the-wordpress-of-tomorrow-by-morten-rand-hendriksen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1054:"<p>While attending WordCamp US 2017, there were a number of sessions that stood out to me. <a href="https://wordpress.tv/2017/12/10/morten-rand-hendriksen-gutenberg-and-the-wordpress-of-tomorrow/">Gutenberg and the WordPress of Tomorrow</a> by Morten Rand-Hendriksen was one of them. </p>\n\n\n\n<p>Hendriksen explains the state of WYSIWYG in WordPress and how it doesn&#x27;t really exist but Gutenberg provides opportunities to change that. He explores developing sites without being confined to a small view port. He also performs a live demo of Gutenberg showing off its capabilities.</p>\n\n\n\n<p>An interesting outcome from his presentation is the amount of optimism and excitement it generated from the audience. During the question and answer session, a member of the audience commented on how far Gutenberg has advanced in the last three months and that it looks cool to use now. </p>\n\n\n\n<p>To gain insight into how Gutenberg can moonshot WordPress over its competition, watch Hendriksen&#x27;s presentation. </p>\n\n\n\n\n    <div class="embed-wrap"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Dec 2017 20:57:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Matt: Post-Verbal Language";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47705";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://ma.tt/2017/12/post-verbal-language/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1800:"<p>James Beshara has a <a href="https://jjbeshara.com/2017/12/09/a-post-verbal-world/">really interesting read on how communication will change and evolve in a post-verbal world</a>, namely one where human/brain interfaces like <a href="https://waitbutwhy.com/2017/04/neuralink.html">Neuralink</a> can more directly transmit thought between people than the medium of language allows today. </p>\n\n\n\n<p>After reading the essay I wonder if people&#x27;s thoughts or the neural pathways they activate, if they could be directly transmitted into another brain, would actually make any sense to someone else with a unique internal set of pathways and framework for parsing and understanding the world. The essay assumes we&#x27;d understand and have more empathy with each other, but that seems like a leap. It seems likely the neural link would need it own set of abstractions, perhaps even unique per person, similar to how <a href="https://www.newscientist.com/article/2114748-google-translate-ai-invents-its-own-language-to-translate-with/">Google Translate AI invented its own meta-language</a>. </p>\n\n\n\n<p>Today <a href="https://www.economist.com/news/leaders/21730871-facebook-google-and-twitter-were-supposed-save-politics-good-information-drove-out">idea-viruses that cause outrage (outrageous?) in today&#x27;s discourse  have been weaponized by algorithms optimizing for engagement</a>, and directly brain-transmitted memes seem especially risky for appealing to our base natures or causing <a href="https://en.wikipedia.org/wiki/Amygdala_hijack">amygdala hijack</a>. But perhaps a feature of these neural interface devices could counteract that, with a command like "tell me this piece of news but suppress my confirmation bias and tribal emotional reactions while I&#x27;m taking it in."</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Dec 2017 03:09:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Matt: iPhone Fast Charging";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47682";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:38:"https://ma.tt/2017/12/iphone-charging/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:382:"<p>I love USB, cables, and charging things. <a href="https://www.macrumors.com/guide/iphone-x-fast-charging-speeds-compared/">So MacRumors comparison of different wired and wireless charging options and speed for the iPhone X is my catnip</a>. tl; dr: USB-C + USB-C-to-Lightning cable gives you far and away the fastest times. I&#x27;ve found this true for the iPad Pro as well.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 07 Dec 2017 16:51:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Matt: State of the Word, 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47687";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://ma.tt/2017/12/state-of-the-word-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:524:"<p>I really enjoyed connecting with the WordPress community in Nashville this previous weekend. On Saturday I delivered the State of the Word presentation alongside <a href="https://choycedesign.com/">Mel</a>, <a href="https://weston.ruter.net/">Weston</a>, and <a href="https://matiasventura.com/">Matías</a>. There&#x27;s always a post-event buzz but I definitely noticed a change in tenor of people&#x27;s thoughts on Gutenberg after the presentation and demo. The video is above, check it out when you get a chance.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Dec 2017 23:38:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"HeroPress: Remote Work Brings Freedom";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2324";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:126:"https://heropress.com/essays/remote-work-brings-freedom/#utm_source=rss&utm_medium=rss&utm_campaign=remote-work-brings-freedom";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:21046:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/120617-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: WordPress is not just a CMS, it''s a Community of lovely people!" /><p><a href="http://heropress.com/feed/#gujarati">આ નિબંધ ગુજરાતીમાં પણ ઉપલબ્ધ છે</a></p>\n<p>First of all, I want to say thank you to HeroPress for reaching out and letting so many people share their stories. I am a follower of HeroPress and read new stories every week! A few months ago my friend <a href="https://heropress.com/essays/wordpress-good-indian-women/">Juhi Patel shared her great WordPress story</a>, and I was inspired by her to share my own and how it has changed my way of working.</p>\n<blockquote><p>I am that guy who hates theory and loves to do practical programming.</p></blockquote>\n<p>After completing my bachelor of engineering with Information Technology in 2013, I was looking for a job. I found that there were many different kinds of programming language jobs that were available. I was really not sure which one I needed or wanted to choose. After getting advice from a senior, I started training for PHP because it was easy and quick to learn. A few days before I had completed Training, I got selected in small company (5 Employees) as a PHP Developer. I was making websites there using PHP codeigniter framework.</p>\n<p>I was belong from a small town, and everyday it took me around 3 hours to travel to my job. After about 2 months, I applied for a job at another big company and was selected as Web Developer. There I was working on CMS Framework (not WordPress <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f600.png" alt="😀" class="wp-smiley" /> ) for website projects. After a few days, I made my personal site using WordPress in my free time.</p>\n<blockquote><p>At that time, I was not aware of themes and plugins. I was just playing with theme files and editor to make changes on my website! <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f61c.png" alt="😜" class="wp-smiley" /></p></blockquote>\n<p>After a month, my team leader got to know about that I was interested in WordPress. I got the opportunity to learn WordPress. I learned and explored WordPress with some demo projects by understanding how plugins and themes work. After 3 weeks of learning WordPress, I worked on my first WordPress project. This project took around 4 months to complete <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f600.png" alt="😀" class="wp-smiley" /> After this successful project, the whole CMS Team migrated to WordPress.</p>\n<blockquote><p>I realized that, WordPress is so easy to learn, get help and work on it!</p></blockquote>\n<p>After around 1 year and 3 months of working with that company, I was told to work after working hours due to heavy requirements from our projects. I felt really stressed and frustrated at work and during that time…</p>\n<blockquote><p>I got to know about “Remote” work. But I didn’t know what that was or how it works?</p></blockquote>\n<p>I explored about remote work and found that this is a career that you can work from your home, workplace or anywhere you like. I saw that many people in world are doing remote work happily. I decided to switch my job from Office Job to Remote Job. My parents, family and relatives advised me to not leave office job because they believed Remote Job is not as secure as an Office Job. But I stuck with my decision. In March 2015, I resigned from my job without notice period with the condition of no experience letter would be provided to me of this job.</p>\n<blockquote><p>At the initial stage it was hard to be freelancer. But I was trying and trying to get that started.</p></blockquote>\n<p>I had registered in one popular freelancer marketplace. After 1 week of trying very hard I got my first project. It was just for $5 to make an HTML page with a countdown timer. I did it successfully and got the best review. After that I had also completed many projects successfully. That’s it! I was done with my decision. Within the first few weeks I made a website for one US Client. They were impressed by my work and hired me as Full time Web Developer for their company in April 2015. I am remotely working with them happily still today from my home!</p>\n<blockquote><p>Everything is going smoothly. I am enjoying Work from Home, Freedom and Quality time with Family.</p></blockquote>\n<p>In October 2016, I learned about WordCamp. I attended my first WordCamp Nashik 2016. I met many WordPress Developers, Freelancers, Professionals, Users and many other people at this WordCamp. After that, I became a fan of WordCamp. We started organizing Meetups in our City. Within the last year, I have attended, volunteered and contributed as a friend and sponsor at more than 6 WordCamps. Currently I am active member of Ahmedabad WordPress Community.</p>\n<blockquote><p>I am a WordCamp Lover. WordCamp is a way to meet new people, learn and share knowledge!</p></blockquote>\n<p>In October 2017, we successfully organized WordCamp in our city. I have been speaking about how remote job can be a good opportunity as a career to students and newbie in panel discussion of WordCamp Ahmedabad.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/wcahmedabad-panel-discussion.jpg"><img class="size-large wp-image-2325" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/12/wcahmedabad-panel-discussion-1024x683.jpg" alt="4 men on a couch at the front of a room." width="960" height="640" /></a>Panel Discussion &#8211; WordCamp Ahmedabad 2017 (PC. Meher Bala)\n<blockquote><p>WordPress is not just a CMS, It&#8217;s a community of lovely people!</p></blockquote>\n<hr />\n<h1 id="gujarati">રિમોટ કામ સ્વતંત્રતા લાવે છે.</h1>\n<blockquote><p>“મને હીરોપ્રેસ સ્ટોરીમાં ભાગ લેવામાં કેવી રીતે પ્રેરણા મળી?”</p></blockquote>\n<p>સૌ પ્રથમ, ઘણા લોકો સુધી પહોંચીને અને તેમની વાર્તાઓ કહેવા માટે હું હીરોપ્રેસનો ખુબ જ આભાર માનું છું. હું હિરોપ્રેસનો અનુયાયી છું અને દર અઠવાડિયે નવી વાર્તાઓ વાંચું છું! થોડા મહિના પહેલા મારી મિત્ર જુહી પટેલે તેની વર્ડપ્રેસની રસપ્રદ વાર્તા હીરોપ્રેસ પર કહી હતી. તે વાંચીને મને, મારા પોતાની વાર્તા, મારા કામ કરવાની રીત કઇ રીતે બદલાઈ તે કહેવા માટે પ્રેરણા મળી હતી.</p>\n<blockquote><p>&#8220;હું તે વ્યક્તિ છું જે થિયોરીને નફરત કરે છે અને પ્રાયોગિક પ્રોગ્રામિંગ કરવા માટે પ્રેમ કરે છે. &#8220;</p></blockquote>\n<p>2013 માં ઇન્ફોર્મેશન ટેકનોલોજી સાથે મારી સ્નાતક એન્જિનિયરિંગ પૂર્ણ કર્યા પછી, હું નોકરી શોધી રહ્યો હતો ત્યારે મેં જોયું કે અહીં ઘણી બધી પ્રોગ્રામિંગ ભાષાની નોકરીઓ ઉપલબ્ધ છે. ત્યારે હું ચોક્કસ ન હતો કે મારે કઈ પ્રોગ્રામિંગ ભાષા પસંદ કરવાની જરૂર છે? વરિષ્ઠ પાસેથી સલાહ મેળવ્યા પછી, મેં PHP માટે તાલીમ શરૂ કરી, કારણ કે તે શીખવા માટે સરળ અને ઝડપી હતી. તાલીમ પૂર્ણ થયાના થોડા દિવસો પહેલાં, મારી નાની કંપની (5 કર્મચારીઓ) માં PHP ડેવલપર તરીકે પસંદગી થઇ. હું PHP Codeigniter ફ્રેમવર્કનો ઉપયોગ કરીને ત્યાં વેબસાઇટ્સ બતાવતો હતો.</p>\n<p>હું એક નાનકડા શહેરમાંથી આવતો હતો, અને દરરોજ મને મારી નોકરી પર મુસાફરી કરવા માટે 3 કલાક જેવા થતા હતા. લગભગ 2 મહિના પછી, મેં બીજી મોટી કંપનીમાં નોકરી માટે અરજી કરી હતી અને ત્યાં મારી વેબ ડેવલપર તરીકે પસંદગી કરવામાં આવી હતી. ત્યાં હું વેબસાઇટ સંબંધિત પ્રોજેક્ટ્સ માટે સીએમએસ ફ્રેમવર્ક (વર્ડપ્રેસ સિવાયની <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f600.png" alt="😀" class="wp-smiley" />) પર કામ કરતો હતો. થોડા દિવસો પછી, મેં મારી વ્યક્તિગત વેબસાઈટને મારા સ્વતંત્ર સમય દરમિયાન વર્ડપ્રેસની મદદથી બનાવી.</p>\n<blockquote><p>&#8220;તે સમયે, હું થીમ્સ અને પ્લગિન્સથી વાકેફ ન હતો. હું મારી વેબસાઇટ પર ફેરફારો કરવા માટે માત્ર થીમ ફાઇલો અને એડિટર સાથે રમી રહ્યો હતો! <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f61c.png" alt="😜" class="wp-smiley" />&#8221;</p></blockquote>\n<p>એક મહિના પછી, મારી ટીમના આગેવાનને જાણવા મળ્યું કે મને વર્ડપ્રેસમાં રસ હતો. ત્યારે મને વર્ડપ્રેસ શીખવાની તક મળી. વર્ડપ્રેસ થીમ્સ અને પ્લગીંસ કેવી રીતે કામ કરે છે એ સમજવા, મેં જાતે શીખીને કેટલાક ડેમો પ્રોજેક્ટસ બનાવ્યા. વર્ડપ્રેસ શીખવાના 3 અઠવાડિયા પછી, મેં મારા પ્રથમ વર્ડપ્રેસ લાઈવ પ્રોજેક્ટ પર કામ કર્યું હતું. આ પ્રોજેક્ટ પૂર્ણ કરવા માટે મને લગભગ 4 મહિના લાગ્યા હતા <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f600.png" alt="😀" class="wp-smiley" /> આ સફળ પ્રોજેક્ટ પછી, સમગ્ર સીએમએસ ટીમ વર્ડપ્રેસમાં જોડાઈ ગઈ.</p>\n<blockquote><p>&#8220;મેં અનુભવ કર્યો કે, વર્ડપ્રેસ શીખવું, સહાય મેળવવી અને તેના પર કાર્ય કરવુ ખૂબ જ સરળ છે!&#8221;</p></blockquote>\n<p>લગભગ 1 વર્ષ અને 3 મહિના તે કંપની સાથે કામ કર્યા પછી, મને અમારા પ્રોજેક્ટ્સની ભારે આવશ્યકતાના કારણે કામના કલાકો પછી પણ વધારે રોકાઈને કામ કરવા કહેવામાં આવતું હતું અને તે 2 સપ્તાહથી વધુ ચાલુ રહ્યું. ત્યારે મને કામ કરવું ખરેખર ભારયુક્ત અને નિરાશાજનક લાગવા લાગ્યું, તે સમય દરમિયાન ..</p>\n<blockquote><p>&#8220;મને &#8220;રિમોટ&#8221; કામ વિશે જાણવા મળ્યું. પરંતુ મને ખબર નહોતી કે તે કે તે કેવી રીતે કાર્ય કરે છે?&#8221;</p></blockquote>\n<p>મેં રિમોટ કામ વિશે તપાસ કરી અને જાણવા મળ્યું કે આ એક કારકિર્દી છે જે તમે તમારા ઘર, કાર્યસ્થળ અથવા તમને પસંદ હોય એ જગ્યાએથી કામ કરી શકો છો. મેં જોયું કે દુનિયામાં ઘણા લોકો રિમોટ કામ ખુબ જ ખુશીથી કરી રહ્યા હતા. મેં ઑફિસ જોબ છોડીને રિમોટ કામ કરવાનું નક્કી કર્યું. મારા માતાપિતા, કુટુંબીજનો અને સંબંધીઓએ મને ઓફિસની નોકરી ના છોડવાની સલાહ આપી કારણ કે તેઓ માનતા હતા કે રિમોટ કામ એ ઓફિસ જોબ જેટલું સુરક્ષિત નથી. પરંતુ હું મારા નિર્ણય સાથે જોડાઈ રહ્યો. માર્ચ 2015 માં, મેં નોટિસના સમયગાળા વગર મારા કામમાંથી રાજીનામું આપ્યું હતું અને શરત હતી કે આ નોકરીનો કોઈપણ અનુભવ પત્ર મને પૂરો પાડવામાં આવશે નહીં.</p>\n<blockquote><p>&#8220;પ્રારંભિક તબક્કે ફ્રીલાન્સર બનવું મુશ્કેલ હતું. પરંતુ હું તે ગમે તેમ કરીને શરૂ કરવાનો ખુબ જ પ્રયાસ કરી રહ્યો હતો.&#8221;</p></blockquote>\n<p>મેં એક લોકપ્રિય ફ્રીલાન્સર માર્કેટપ્લેસમાં રજીસ્ટર કર્યું હતું. 1 અઠવાડિયાના સખત પ્રયાસ કાર્ય પછી મને પહેલો પ્રોજેક્ટ મળ્યો. આ પ્રોજેક્ટ કાઉન્ટડાઉન ટાઈમર સાથે એક HTML પેજ બનાવવા માટે મને માત્ર $5 મળ્યા હતા. મેં એ પ્રોજેક્ટ સફળતાપૂર્વક પૂરો કર્યો અને શ્રેષ્ઠ રિવ્યૂ મેળવ્યો. તે પછી મેં ઘણા પ્રોજેક્ટ્સ પણ સફળતાપૂર્વક પૂર્ણ કર્યા હતા. બસ આ જ! મને મારો નિર્ણય સાચો પુરવાર થયો. પ્રથમ થોડા અઠવાડિયાની અંદર મેં એક યુએસ ક્લાયન્ટ માટે વેબસાઇટ બનાવી. તેઓ મારા કામથી પ્રભાવિત થયા હતા અને એપ્રિલ 2015 માં મને તેમની કંપની માટે સંપૂર્ણ સમય માટે વેબ ડેવલપર તરીકે નિયુક્ત કર્યો. હું આજે પણ તેમની સાથે ખુબ જ ખુશીપૂર્વક મારા ઘરેથી રિમોટ કામ કરું છું!</p>\n<blockquote><p>&#8220;બધું સરળતાપૂર્વક જઈ રહ્યું છે. હું ઘરેથી કામ કરીને સ્વતંત્રતા અને પરિવાર સાથે ગુણવત્તાભર્યો સમય પસાર કરવાનો આનંદ અનુભવું છું.&#8221;</p></blockquote>\n<p>ઑક્ટોબર 2016 માં, મને વર્ડકેમ્પ વિશે જાણવા મળ્યું. મેં મારી પહેલી વર્ડકેમ્પ નાસિક 2016 માં હાજરી આપી હતી. હું ઘણા વર્ડપ્રેસ ડેવલપર્સ, ફ્રીલાન્સર્સ, પ્રોફેશનલ્સ, યુઝર્સ અને ઘણા અન્ય લોકોને આ વર્ડકેમ્પ પર મળ્યો હતો. તે પછી, હું વર્ડકેમ્પ નો ચાહક બની ગયો. અમે અમારા શહેરમાં મીટપનું નું આયોજન કરવાનું શરૂ કર્યું. છેલ્લા વર્ષમાં, 6 થી વધુ વર્ડકેમ્પ પર મેં હાજરી આપીને, સ્વયંસેવક અને મિત્ર સ્પોન્સર તરીકે ફાળો આપ્યો છે. હાલમાં હું અમદાવાદ વર્ડપ્રેસ સમુદાયનો સક્રિય સભ્ય છું</p>\n<blockquote><p>&#8220;હું વર્ડકેમ્પનો પ્રેમી છું. વર્ડકેમ્પ નવા લોકોને મળવાનો, પોતાના જ્ઞાનની આપ-લે કરવાનો એક માર્ગ છે!&#8221;</p></blockquote>\n<p>ઓક્ટોબર 2017 માં, અમે અમારા શહેરમાં સફળતાપૂર્વક વર્ડકૅમ્પનું આયોજન કર્યું હતું. વર્ડકૅમ્પ અમદાવાદની પેનલ ચર્ચામાં મેં વિદ્યાર્થીઓ અને વપરાશકર્તાઓ માટે રિમોટ કામ કેવી રીતે સારી કારકિર્દી હોઈ શકે તે વિશે ચર્ચા કરી હતી.</p>\n<blockquote><p>&#8220;વર્ડપ્રેસ ફક્ત સીએમએસ નથી, પણ તે શ્રેષ્ઠ લોકોનો સમુદાય છે.&#8221;</p></blockquote>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Remote Work Brings Freedom" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Remote%20Work%20Brings%20Freedom&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fremote-work-brings-freedom%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Remote Work Brings Freedom" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fremote-work-brings-freedom%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fremote-work-brings-freedom%2F&title=Remote+Work+Brings+Freedom" rel="nofollow" target="_blank" title="Share: Remote Work Brings Freedom"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/remote-work-brings-freedom/&media=https://heropress.com/wp-content/uploads/2017/12/120617-150x150.jpg&description=Remote Work Brings Freedom" rel="nofollow" target="_blank" title="Pin: Remote Work Brings Freedom"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/remote-work-brings-freedom/" title="Remote Work Brings Freedom"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/remote-work-brings-freedom/">Remote Work Brings Freedom</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Dec 2017 02:30:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Chetan Prajapati";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: WordCamp US 2017 is Livestreaming All Sessions for Free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76937";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wptavern.com/wordcamp-us-2017-is-livestreaming-all-sessions-for-free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2781:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/04/wordcamp-us-nashville.jpeg?ssl=1"><img /></a></p>\n<p>WordCamp US is kicking off this morning. If you couldn&#8217;t make the journey to Nashville, you can still follow along at home or wherever you are in the world. <a href="https://2017.us.wordcamp.org/tickets/" rel="noopener" target="_blank">Livestream Tickets</a> are free on the event&#8217;s website. Once you&#8217;ve registered for a ticket, head on over to <a href="https://2017.us.wordcamp.org/live-stream/" rel="noopener" target="_blank">2017.us.wordcamp.org/live-stream/</a> and you&#8217;ll be able to tune in to the Fiddle Track, Banjo Track, Guitar Track, and the State of the Word (scheduled for Saturday, December 2, at 4PM CST).</p>\n<p>WordCamp US will be running three tracks simultaneously for both days of the conference and all sessions will be livestreamed. Check out the <a href="https://2017.us.wordcamp.org/schedule/" rel="noopener" target="_blank">schedule</a> to find sessions you want to attend from home. Volunteers will also include captions, which will be embedded within the live stream video. If you have any problems with the stream, the event has a page dedicated to <a href="https://2017.us.wordcamp.org/live-stream/attendee-test/" rel="noopener" target="_blank">livestream attendees</a> with a backup stream, as well as a troubleshooting page for <a href="https://2017.us.wordcamp.org/live-stream/support/" rel="noopener" target="_blank">livestream support</a>.</p>\n<p>If you&#8217;re following along on Twitter, the <a href="https://twitter.com/wordcampus" rel="noopener" target="_blank">WCUS Twitter</a> volunteers will be providing threaded coverage of sessions. This should keep your Twitter stream a little tidier with a kickoff tweet for each session, followed by live coverage threaded under each as replies.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Want to follow along with WCUS coverage at home? It will be easy by following our threaded coverage.  Each session will start with a tweet that looks like this, All coverage of that session will be threaded to that kick-off tweet. <a href="https://t.co/J0M6jo6GEi">pic.twitter.com/J0M6jo6GEi</a></p>\n<p>&mdash; WordCamp US (@WordCampUS) <a href="https://twitter.com/WordCampUS/status/936595172485468160?ref_src=twsrc%5Etfw">December 1, 2017</a></p></blockquote>\n<p></p>\n<p>Want to see WCUS hosted near you in 2019/2020? <a href="https://wordcampcentral.polldaddy.com/s/wcus-2019-2020" rel="noopener" target="_blank">Applications for host cities</a> opened today. If you want to be part of the team that makes WCUS happen in your city, talk to your local WordPress community organizers about filling out an application for the next host city.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Dec 2017 15:34:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Dev Blog: The Month in WordPress: November 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5290";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2017/12/the-month-in-wordpress-november-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4162:"<p>The WordPress project recently released WordPress 4.9, “Tipton” — a new major release named in honor of musician and band leader Billy Tipton. Read on to find out more about this and other interesting news from around the WordPress world in November.</p>\n<hr class="wp-block-separator" />\n<h2>WordPress 4.9 “Tipton”</h2>\n<p>On November 16, <a href="https://wordpress.org/news/2017/11/tipton/">WordPress 4.9 was released</a> with new features for publishers and developers alike. Release highlights include design locking, scheduling, and previews in the Customizer, an even more secure and usable code editing experience, a new gallery widget, and text widget improvements.</p>\n<p>The follow up security and maintenance, v4.9.1, <a href="https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/">has now been released</a> to tighten up the security of WordPress as a whole.</p>\n<p>To get involved in building WordPress Core, jump into the #core channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>, and follow<a href="https://make.wordpress.org/core/"> the Core team blog</a>.</p>\n<h2>Apply to Speak At WordCamp Europe 2018</h2>\n<p>The next edition of WordCamp Europe takes place in June, 2018. While the organizing team is still in the early stages of planning, <a href="https://2018.europe.wordcamp.org/2017/11/15/are-you-ready-to-speak-at-the-largest-wordpress-event-in-europe/">they are accepting speaker applications</a>.</p>\n<p>WordCamp Europe is the largest WordCamp in the world and, along with WordCamp US, one of the flagship events of the WordCamp program — speaking at this event is a great way to give back to the global WordPress community by sharing your knowledge and expertise with thousands of WordPress enthusiasts.</p>\n<h2>Diversity Outreach Speaker Training Initiative</h2>\n<p>To help WordPress community organizers offer diverse speaker lineups, <a href="https://make.wordpress.org/community/2017/11/13/call-for-volunteers-diversity-outreach-speaker-training/">a new community initiative has kicked off</a> to use existing <a href="https://make.wordpress.org/training/handbook/speaker-training/">speaker training workshops</a> to demystify speaking requirements and help participants gain confidence in their ability to share their WordPress knowledge in a WordCamp session.</p>\n<p>The working group behind this initiative will be meeting regularly to discuss and plan how they can help local communities to train speakers for WordCamps and other events.</p>\n<p>To get involved in this initiative, you can join the meetings at 5pm UTC every other Wednesday in the #community-team channel of the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>.</p>\n<hr class="wp-block-separator" />\n<h2>Further Reading:</h2>\n<ul>\n<li><a href="https://2017.us.wordcamp.org/">WordCamp US 2017</a> is happening on December 1-3 in Nashville, with the annual State of the Word talk happening on Saturday afternoon — <a href="https://2017.us.wordcamp.org/live-stream/">the live stream of the entire event is available to view for free</a>.</li>\n<li><a href="https://xwp.co/tide-a-path-to-better-code-across-the-wordpress-ecosystem/">Tide</a>, a new service from XWP designed to help users make informed plugin choices, is due to launch at WordCamp US.</li>\n<li>Gutenberg development is continuing rapidly, with <a href="https://make.wordpress.org/core/2017/11/28/whats-new-in-gutenberg-28th-november/">a packed new release</a> and a focus on <a href="https://make.wordpress.org/test/2017/11/22/testing-flow-in-gutenberg/">usability testing</a>.</li>\n<li>After some discussion among the community, <a href="https://make.wordpress.org/community/2017/11/10/discussion-micro-regional-wordcamps/">a new type of micro-regional WordCamp</a> is going to be introduced into the global WordCamp program.</li>\n</ul>\n<p><em></em></p>\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>\n<p><em></em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Dec 2017 11:00:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"BuddyPress: BuddyPress 2018 Survey";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=269296";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://buddypress.org/2017/12/buddypress-2018-survey/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:630:"<p>What would you like BuddyPress to focus on in 2018? The core team has ideas of where BuddyPress can expand on and your input is important to harness the time and resources of an all-volunteer crew.</p>\n<p>The survey will take 10-15 minutes to complete. Be assured that we will not publish your name, email address, nor IP address when we post the results of this survey at BuddyPress.org.</p>\n<p>Thank you for your time and cooperation. Your feedback will help us improve BuddyPress for you.</p>\n<p>=&gt;  <strong><a href="https://mercime.polldaddy.com/s/buddypress-2018-survey">Take the 2018 BuddyPress Survey</a></strong></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Dec 2017 10:26:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"@mercime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: Gutenberg 1.8 Adds Greater Extensibility for Plugin Developers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76855";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wptavern.com/gutenberg-1-8-adds-greater-extensibility-for-plugin-developers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3668:"<p><a href="https://make.wordpress.org/core/2017/11/28/whats-new-in-gutenberg-28th-november/" rel="noopener" target="_blank">Gutenberg 1.8</a> was released this week with several notable improvements that will give plugin developers more flexibility in extending the editor. It introduces <a href="https://github.com/WordPress/gutenberg/pull/3668" rel="noopener" target="_blank">block templates</a>, which developers can use when registering a new custom post type. The block templates define a set of pre-configured blocks that will initialize when a user creates a new post. In the example below, Gutenberg lead engineer Matias Ventura demonstrates what a block template for a book custom post type might look like.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/block-template-book.gif?ssl=1"><img /></a></p>\n<p>This release also <a href="https://github.com/WordPress/gutenberg/pull/3456" rel="noopener" target="_blank">improves the design of the tools menu</a> (toggled by the ellipses at the top of the editor) to have a more lightweight UI that will lend itself better to displaying items added by extensions in the future. The new design displays multiple menu items as a radio group where the selected item shows a checkmark, an approach that Gutenberg designers found to be more intuitive after some research.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-29-at-10.02.09-PM.png?ssl=1"><img /></a></p>\n<p>Version 1.8 adds the ability for developers to <a href="https://github.com/WordPress/gutenberg/pull/3577" rel="noopener" target="_blank">filter allowed block types</a> by specifying an array of type names that can be shown in the inserter component. This capability paves the way for block nesting where developers can define allowed children types. It also allows custom post types to specify which blocks are allowed or restricted, which will be useful for keeping CPTs lean as Gutenberg already has a large number of block types.</p>\n<p>The release also <a href="https://github.com/WordPress/gutenberg/pull/3554" rel="noopener" target="_blank">improves meta box compatibility</a> with a fallback to the classic editor if Gutenberg detects that the meta box is unsupported. Plugin authors can now explicitly declare Gutenberg incompatibility when registering meta boxes, which will trigger a warning to the end user that explains which meta boxes have caused the fallback to the classic editor.</p>\n<p>In addition to all the improvements for extending Gutenberg, version 1.8 makes many small design tweaks, including <a href="https://github.com/WordPress/gutenberg/pull/3054" rel="noopener" target="_blank">updated color pickers</a> with color indications and collapsible panels, <a href="https://github.com/WordPress/gutenberg/pull/3563" rel="noopener" target="_blank">updated icon and tooltip</a> for table of contents menu, and a new <a href="https://github.com/WordPress/gutenberg/pull/3483" rel="noopener" target="_blank">contrast checker</a> for paragraph color options. It also <a href="https://github.com/WordPress/gutenberg/pull/3632" rel="noopener" target="_blank">puts block actions back on the block level</a> for the default, while still preserving the option to change it to a fixed toolbar at the top of the screen.</p>\n<p>For a full list of all the changes in version 1.8, check out the <a href="https://make.wordpress.org/core/2017/11/28/whats-new-in-gutenberg-28th-november/" rel="noopener" target="_blank">release post</a> and the <a href="https://wordpress.org/plugins/gutenberg/#developers" rel="noopener" target="_blank">changelog</a> on WordPress.org.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Nov 2017 17:23:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WPTavern: WPWeekly Episode 296 – Gutenberg, Telemetry, Calypso, and More With Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=76917&preview=true&preview_id=76917";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"https://wptavern.com/wpweekly-episode-296-gutenberg-telemetry-calypso-and-more-with-matt-mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1249:"<p>In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I are joined by <a href="https://ma.tt/">Matt Mullenweg</a>, co-creator of the WordPress project and CEO of Automattic. We discussed a wide range of topics including, his role on the board of directors at GitLab, Telemetry or data-usage gathering in WordPress, and the WordPress Growth Council.</p>\n<p>We learned what&#8217;s happening with the Mobile teams inside Automattic, the future of Calypso, and the role of Pressable as a testing bed. Last but not least, we find out how beneficial joining HackerOne has been for WordPress and why WordPress.com finally allowed the installation of third-party themes and plugins through its Business Plan.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 13th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p><strong>Listen To Episode #296:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Nov 2017 04:40:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WPTavern: WordPress 4.9.1 Released, Fixes Page Template Bug";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76879";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/wordpress-4-9-1-released-fixes-page-template-bug";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1473:"<p>WordPress 4.9.1 <a href="https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/">is available</a> for download and is a maintenance and security release. This release addresses four security issues in WordPress 4.9 and below that could potentially be used as part of a multi-vector attack. According to the release notes, the following changes have been made to WordPress to protect against these vulnerabilities.</p>\n<ol>\n<li>Use a properly generated hash for the <code>newbloguser</code> key instead of a determinate substring.</li>\n<li>Add escaping to the language attributes used on <code>html</code> elements.</li>\n<li>Ensure the attributes of enclosures are correctly escaped in RSS and Atom feeds.</li>\n<li>Remove the ability to upload JavaScript files for users who do not have the <code>unfiltered_html</code> capability.</li>\n</ol>\n<p><a href="https://twitter.com/0x62626262">Rahul Pratap Singh</a> and John Blackbourn are credited with responsibly disclosing the vulnerabilities. In addition to the changes above, 4.9.1 fixes eleven bugs, including the Page Template issue <a href="https://wptavern.com/workarounds-for-the-page-template-bug-in-wordpress-4-9">we wrote about</a> last week. Many sites have already updated to 4.9.1 automatically. To see a list of detailed changes, check out <a href="https://make.wordpress.org/core/2017/11/28/wordpress-4-9-1-scheduled-for-november-29th/">this post</a> on Make WordPress Core.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Nov 2017 04:07:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:96:"WPTavern: Distributor Plugin Now in Beta: A New WordPress Content Syndication Solution from 10up";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76871";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wptavern.com/distributor-plugin-now-in-beta-a-new-wordpress-content-syndication-solution-from-10up";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6117:"<p>10up published a <a href="https://10up.com/blog/2017/distributor-plugin/" rel="noopener" target="_blank">preview of its Distributor plugin</a> today, a new solution for syndicating content across WordPress multisite networks and the web. The <a href="https://distributorplugin.com/" rel="noopener" target="_blank">plugin</a>, which the company plans to release for free, is currently in final closed beta. It enables content managers to either &#8220;push&#8221; or &#8220;pull&#8221; content to/from sites where they have permission to publish.</p>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/distributor-push-screenshot.jpg?ssl=1"><img /></a>image credit: <a href="https://10up.com/blog/2017/distributor-plugin/">10up</a>\n<p>Distributor includes the ability for editors to make changes to the original post and have linked copies automatically inherit the changes. This includes post content, post meta (custom fields), and taxonomy terms. It also ensures that content is SEO-friendly by providing canonical links that prevent duplicate content issues.</p>\n<p>The plugin differs from many <a href="https://wordpress.org/plugins/search/syndicate/" rel="noopener" target="_blank">existing content syndication solutions</a>, which traditionally make use of RSS or XML/RPC, in that it is built using the <a href="https://developer.wordpress.org/rest-api/" rel="noopener" target="_blank">REST API</a>.</p>\n<p>&#8220;The main technical advantage of the REST API is that it’s a &#8216;standard&#8217; inside core for sharing information across sites,&#8221; 10up President Jake Goldman said. &#8220;Outside of multisite, we never even considered another approach. It is worth saying that you do need Distributor installed on both &#8216;ends&#8217; for all of its features to work across the REST API &#8211; we need to extend the REST API a bit to get everything to pull across (plus the handling of &#8216;linked&#8217; copies).&#8221;</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/distributor-pull-screenshot.jpg?ssl=1"><img /></a></p>\n<p>Goldman said that although &#8220;syndication&#8221; means many different things to different people, the &#8220;classic&#8221; use case of simply pulling from a source, such as ingesting content from a newswire, is not exactly the use case for Distributor. He said the team behind the plugin is perhaps more excited about the &#8220;push&#8221; implementation. In building their own solution, 10up also incorporated its trademark lean/streamlined UI, as many existing solutions are more complicated to use.</p>\n<p>&#8220;We’re definitely aware that there are other takes at a good content sharing workflow,&#8221; Goldman said. &#8220;We even helped Automattic refactor their solution a few years ago, which they use on VIP. We took a bit of inspiration from that project, including the modular &#8216;connection&#8217; types. In earnest, when trying to help our clients find solutions that were intuitive, extensible, and engineered to an enterprise grade, we just couldn’t endorse any of the options we found. It’s more a UX problem &#8211; clunky workflows, overwhelming interfaces, feature overload (I prefer a certain simplicity) &#8211; than anything, though we also have concerns about how modular / customizable some of the other solutions are.&#8221;</p>\n<h3>10up Plans to Release Distributor on WordPress.org Following the Closed Beta</h3>\n<p>10up currently has several clients using Distributor, including large publishers with several properties/magazines/newspapers, as well as large technology businesses using it for their news and media features across a network of sites. The plugin is in final closed beta but 10up is granting early access to those with interesting use cases.</p>\n<p>&#8220;We’re casting a pretty broad net in terms of &#8216;appropriate&#8217; use cases for the beta; in fact, we’re hoping that broader beta testing will open our eyes to great use cases within the scope of its purpose that we hadn’t  considered,&#8221; Goldman said. &#8220;We’ve already heard from some very large publishers, some smaller digital publishers, universities, public school systems, some enterprises with multiple properties, agencies interested in staging content, and just engineers who own multiple sites that share content &#8211; we’re excited about all of these use cases!&#8221;</p>\n<p>Goldman said his team is most curious to see Distributor applied to use cases that aren&#8217;t simply &#8220;news and publishing,&#8221; including CRMs and product businesses with multiples sites that share content. 10up has not yet tested specific plugins for full compatibility with Distributor, but Goldman said pre-version 1.0, it should work with any plugin that adds custom post types and fields/taxonomies &#8220;the WordPress way.&#8221;</p>\n<p>&#8220;In fact, Distributor checks to see which sites support the same post type and terms before it offers a list of sites you can &#8216;distribute&#8217; content to (so you can’t &#8216;distribute&#8217; a WooCommerce product to a site not running WooCommerce),&#8221; he said. Selling the same products across multiple stores, with automatically updating inventory and price changes, is just one of the many interesting use cases for Distributor.</p>\n<p>Goldman said the team anticipates taking the plugin out of beta and putting it on WordPress.org by mid to late Q1 of 2018, in approximately 2-3 months, depending on feedback from testers. 10up does not currently have a plan to monetize the plugin.</p>\n<p>&#8220;I never want to rule out that there are &#8216;eventually&#8217; opportunities for commercialization, but I can honestly say that isn’t anywhere on our roadmap or consideration set at the moment,&#8221; Goldman said.</p>\n<p>Those who want to get in on the Distributor beta before it is publicly available can <a href="https://distributorplugin.com/" rel="noopener" target="_blank">sign up on the plugin&#8217;s website </a>with a quick explanation of your use case. 10up will send a copy of the plugin for testing.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 23:19:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"Dev Blog: WordPress 4.9.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5215";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2017/11/wordpress-4-9-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4220:"<p>WordPress 4.9.1 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.9 and earlier are affected by four security issues which could potentially be exploited as part of a multi-vector attack. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.1:</p>\n<ol>\n<li>Use a properly generated hash for the <code>newbloguser</code> key instead of a determinate substring.</li>\n<li>Add escaping to the language attributes used on <code>html</code> elements.</li>\n<li>Ensure the attributes of enclosures are correctly escaped in RSS and Atom feeds.</li>\n<li>Remove the ability to upload JavaScript files for users who do not have the <code>unfiltered_html</code> capability.</li>\n</ol>\n<p>Thank you to the reporters of these issues for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible security disclosure</a>: <a href="https://twitter.com/0x62626262">Rahul Pratap Singh</a> and John Blackbourn.</p>\n<p>Eleven other bugs were fixed in WordPress 4.9.1. Particularly of note were:</p>\n<ul>\n<li>Issues relating to the caching of theme template files.</li>\n<li>A MediaElement JavaScript error preventing users of certain languages from being able to upload media files.</li>\n<li>The inability to edit theme and plugin files on Windows based servers.</li>\n</ul>\n<p><a href="https://make.wordpress.org/core/2017/11/28/wordpress-4-9-1-scheduled-for-november-29th/">This post has more information about all of the issues fixed in 4.9.1 if you&#x27;d like to learn more</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.9.1</a> or venture over to Dashboard → Updates and click "Update Now." Sites that support automatic background updates are already beginning to update automatically.</p>\n<p>Thank you to everyone who contributed to WordPress 4.9.1:</p>\n<p><a href="https://profiles.wordpress.org/schlessera/">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/la-geek/">Angelika Reisiger</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/bobbingwide/">bobbingwide</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/edo888/">edo888</a>, <a href="https://profiles.wordpress.org/erich_k4wp/">Erich Munz</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/mista-flo/">Florian TIAR</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/ibenic/">Igor Benic</a>, <a href="https://profiles.wordpress.org/jfarthing84/">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyescott/">jeremyescott</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnpgreen/">johnpgreen</a>, <a href="https://profiles.wordpress.org/ryelle/">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/lenasterg/">lenasterg</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mariovalney/">Mário Valney</a>, <a href="https://profiles.wordpress.org/natacado/">natacado</a>, <a href="https://profiles.wordpress.org/odysseygate/">odyssey</a>, <a href="https://profiles.wordpress.org/precies/">precies</a>, <a href="https://profiles.wordpress.org/stodorovic/">Saša</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 20:33:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"John Blackbourn";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: Four Things I’d Like to See in This Year’s State of the Word";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76830";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/four-things-id-like-to-see-in-this-years-state-of-the-word";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2724:"<p>This weekend, WordPressers from far and wide will descend upon Nashville, TN, for WordCamp US. One of the highlights of the event is Matt Mullenweg&#8217;s <a href="https://ma.tt/2016/12/state-of-the-word-2016/">State of the Word</a>. Last year, Mullenweg shared a variety of statistics, made a few announcements, and plotted a new course for WordPress development.</p>\n<p>As the event draws near, here are some things I&#8217;d like to see addressed in this year&#8217;s State of the Word.</p>\n<h2>Will There Be A Renewed Effort to Make Calypso Plugin Aware?</h2>\n<p>During the 2016 State of the Word, Mullenweg announced that Calypso became plugin aware.</p>\n<img />Plugin Aware Calypso\n<p>The idea was that plugins that are actively installed on more than 1 million sites could participate in an experimental program that would add meta box support and other plugin specific features to Calypso. To this day, this has not materialized and I&#8217;d like to know what happened and if there will be a renewed effort in 2018.</p>\n<h2>An Update on WordPress Foundation Supported Initiatives</h2>\n<p>Last year, we learned that WordCamp Central became its own Public Benefit Corporation while the WordPress Foundation maintained its non-profit status. In addition, the Foundation announced support for like-minded non-profits such as, Hack the Hood, Internet Archive, and Black Girls CODE.</p>\n<p>I&#8217;d like to know how much money the Foundation has contributed to these causes and if any progress has been made on providing educational workshops in underdeveloped countries.</p>\n<h2>An Update on WordPress&#8217; Development/Release Strategy</h2>\n<p>A year into WordPress&#8217; new development and release strategy, I&#8217;d like to know what challenges he and the team have faced and overcome. I&#8217;d also like to know if the results he has seen thus far warrant continuing the experiment in 2018.</p>\n<h2>Take an Opportunity to Explain What Gutenberg Really Is</h2>\n<p>Last year, Mullenweg surprised the community by announcing that the WordPress post editor would be revamped. Since then, we&#8217;ve learned that the project&#8217;s <a href="https://ma.tt/2017/08/we-called-it-gutenberg-for-a-reason/">name is Gutenberg</a> and it&#8217;s about more than just the editor. I&#8217;d like to see Mullenweg take this unique opportunity to provide a deeper explanation into what the project is and why it&#8217;s pivotal for WordPress&#8217; continued success.</p>\n<hr />\n<p>This year&#8217;s State of the Word will be presented on Saturday, December 2nd, at 4PM Eastern. If you can&#8217;t see it in-person, you can <a href="https://2017.us.wordcamp.org/live-stream/">watch it for free</a> via the livestream.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 17:38:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"HeroPress: WordPress Gave Me the Perfect Identity";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2294";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:136:"https://heropress.com/essays/wordpress-gave-perfect-identity/#utm_source=rss&utm_medium=rss&utm_campaign=wordpress-gave-perfect-identity";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:18339:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/112917-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: I have fallen head over heels in love with WordPress and I am excited." /><h3>How it all began…</h3>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/myself.jpg"><img class="size-medium wp-image-2305" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/myself-225x300.jpg" alt="" width="225" height="300" /></a>I just love this picture of myself..hehehe\n<p>I remember when cybercafés started trending in Nigeria; I had just finished high school and was awaiting my results for admittance into the university. I would spend not less than 10 hours surfing the internet every day, all my pocket money went into buying bulk time at cafes. My first email was opened in 2002 on my 1st attempt to surf the internet. Spending my day at cafes continued till I left the university after which I bought a desktop computer and a modem. You can imagine my excitement as being a proud owner of a PC even though it was a desktop PC.</p>\n<p>You see, my first degree was in Philosophy. I remember my dad asking me if I was sure about that course because prior to my senior school leaving exams I had always said I was going to study business administration. What business administration was, to be honest, I had no idea, I only wanted it because I had the impression it was a cool course and I would be a corporate employee in a big firm strutting around in my skirt suit looking all glamorous.</p>\n<h3><a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-in-skirts2.jpg"><img class="size-medium wp-image-2310 aligncenter" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-in-skirts2-300x300.jpg" alt="" width="300" height="300" /></a>Funny right?</h3>\n<p>Anyway i always had a thing for Philosophy so you can imagine my enthusiasm when I discovered Philosophy was a course of study, of course I opted to study Philosophy in 2004 and graduated in 2008. However my love for the internet did not reduce by the way. I not only surfed the internet but I spent a lot of time freelancing and testing my skills as a ghost writer on different freelancing sites. I also went into blogging as well in 2009. I tried using blogger, hubpages and WordPress, but oh my, I found WordPress so complicated for me because I did not understand how it worked so I stuck with blogger and hubpages.</p>\n<h3>Growing up as a Timid but Curious Cat&#8230;</h3>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-and-my-lil-brother.jpg"><img class="wp-image-2306 size-medium" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-and-my-lil-brother-225x300.jpg" alt="" width="225" height="300" /></a>I and my little brother. Haa of course we all grown now. Haha\n<p>During my younger years and even up to two years ago I was always a shy person deep down in my mind, but alas quite a number of people thought I was bold. This might be because 99.9% of my friends were males, or maybe not. Perhaps this could also be because I grew up with 3 brothers and no sister. It’s quite shocking though that they thought that way because it is only quite recent that I cultivated the courage to speak my mind. Prior to a year ago (2016), expressing my feelings by speaking the words out was a <em>herculean task</em>; this was what led me to starting a personal blog around 2009. I needed to let out my feelings and since I dared not speak them out, I blogged them.</p>\n<p>Blogging gave me a voice and a medium to express my thoughts and I became a better writer with each passing script. After my one year government mandated youth service in 2010 which is required of every Nigerian citizen after a bachelor’s degree, I bought an HP Mini Laptop. Can you imagine my excitement at owning a personalized computer? This I could carry around, my happiness knew no bounds.</p>\n<p>In 2010 thanks to the social network Facebook I met an Uncle of mine and we became BFF’s {Best Friends Forever} even though we had never met physically before. He was in Rome at the period we met studying Media and Communication. He came back home in 2012 but his job as a Salesian Brother took him to Ghana. Of course I made sure to keep a date with him when he came back home briefly in 2012 before heading to resume in Ghana. We had cake and ice cream at my favourite café that day.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-and-bff-unc-sam.jpg"><img class="size-medium wp-image-2303" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-and-bff-unc-sam-300x225.jpg" alt="" width="300" height="225" /></a>I and my BFF Uncle..Hehe\n<h3>Rediscovering WordPress…</h3>\n<p>Then came 2015, I ended a horrid relationship and i lost my best friend female; I mean I thought I was in love, but alas I had loved the idea of loving a person. I was not happy and I wanted a breath of fresh air and a change of environment. At that period, I had obtained a postgraduate diploma in mass communication and I had started a Masters Degree in Information Management and my required 3 months internship was coming up that summer. I decided to volunteer in Ghana at the headquarters of the <a href="https://sdbafw.org" target="_blank" rel="noopener">Salesians of Don Bosco in West Africa {SDBAFW}</a> where my Uncle was. My time there was beyond awesome and a new beautiful story in my life chapter.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/at-sdbafw-in-ashaiman.jpeg"><img class="size-medium wp-image-2309" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/at-sdbafw-in-ashaiman-300x300.jpeg" alt="" width="300" height="300" /></a>I met a lot of amazing people and made new friends within the SDB community in Ashaiman, Ghana\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-and-volunteers-at-kakum.jpg"><img class="size-medium wp-image-2308" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/i-and-volunteers-at-kakum-300x199.jpg" alt="" width="300" height="199" /></a>i and other volunteers and great friends at Kakum National Park in Cape Coast, Ghana\n<p>I worked in the communications department at the SDBAFW province. My Uncle knew how much I loved blogging and he had been my writing tutor for a while, so one day he asked why I was not blogging on WordPress. Of course I went on about how difficult and complicated the platform was, he sighed, told me their organization website was built on WordPress and he gave me a folder with tutorial videos made by <a href="https://twitter.com/mor10">Morten Rand-Hendriksen</a> for beginners to go watch.</p>\n<p>After two weeks of watching those videos, my life changed. You see prior to 2015 I treated my time online as a purely personal affair because I was just passionate about being online right, exploring, freelancing and discovering. I never thought it would become something I could make a full time career out of. I was still pursuing a career in Human Resources since managing people was another thing I was great at. In late 2015 I had joined a series of online Facebook groups and I was wowed by one in particular run by John Obidi (<a href="https://web.facebook.com/groups/smartbcamp" target="_blank" rel="noopener">SmartBCamp</a>) because I saw a lot of people earning an income from things I did and knew for the fun of it. I found myself asking what planet I had been living on and why I had not made my passion my business.</p>\n<p>Hence I made a decision in 2016 to make my passion my business, I decided to move to Lagos since I was done with my Master’s coursework and focus on this new journey of mine. Meanwhile in December of 2015, a woman had contacted me saying she loved how my blog UX on WordPress looked and if I could work on hers.</p>\n<blockquote><p>As at then I didn’t even know the difference between wordpress.com and wordpress.org so I started googling which is something I’m also great at.</p></blockquote>\n<p>I took on the task of redesigning her website and I started troubleshooting all the current issues she had on her site, I read up a lot, I visited the WordPress.Org/showcase and was wowed with all the good things I could do with WordPress.org, I especially loved Snoop Doggs website and told myself my goal would be to be able to make a project that would look like that one day. But of course the first few sites I designed were horrible, when I look back at them now I wonder what was going on in my head when I designed them.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/my-typical-day-in-gh.jpg"><img class="size-medium wp-image-2302" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/my-typical-day-in-gh-300x225.jpg" alt="" width="300" height="225" /></a>A typical day for me in front of my PC\n<p>Alas I had great online plans for the year 2016 but up until the middle of year 2016, I had a series of bad experiences that sent me back to the stone age and my parents house; I blogged about it <a href="https://mojispeaks.com/2017/01/09/my-2016-in-retrospect/">here</a>. They were bad experiences alright, but a lot of good came out of them. I got saved bit by bit and found my rhythm again. Meanwhile I was already <em><strong>falling in love with WordPress</strong></em> so I decided to look for ways to give back. That&#8217;s when I stumbled upon make.wordpress.org and discovered there were so many ways to give back. I was not a programmer alright so what will I go to do in Core or CLI or any other similar place, I automatically went for the community.</p>\n<h3>Building the Nigerian WordPress Community…</h3>\n<p>In November 2016 I made one of the best decisions that turned my life around. I was fed up because the entire year had not turned out in any way I had planned in December 2015 of the previous year. So I made an interesting decision to turn off my data and go to sleep by 10pm. Trust me this was a big decision for me before I would usually freak out if my data wasn’t functioning or if my phone battery died. Anyway during this period I had moved back to my parents’ right and I needed to work in a quiet room because I so much needed to focus.</p>\n<p>Also by now I had discovered there was a WordPress Meetup community in Lagos but when I applied I did so for Ogun which is my state, but during my conversations with WordPress Global they had requested if I would be willing to join the Lagos WordPress Group, at first I was a little hesitant because Lagos is an hour drive from my town, I don’t have a car, so that adds another one hour. Surely you can&#8217;t live in Lagos and not know Lagos and traffic are best buddies so that adds another hour to my trip. Without thinking too much about it I agreed. Looking back today I do not regret it one bit.</p>\n<blockquote><p>This started my journey as a WordPress Lagos Community Co-organizer and a Community Deputy.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/600_455477788.jpeg"><img class="size-medium wp-image-2317" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/600_455477788-300x225.jpeg" alt="" width="300" height="225" /></a>the first meetup i had as a Lagos co-organizer</blockquote>\n<p>This is 2017 right, I must not fail to mention it to you that my income in the last one year has come solely from WordPress Web Design. Today the Nigerian WordPress has grown, still growing definitely, the Lagos WordPress Meetup group has also grown and we have had 8 Meetups this year. I have made great friends and co-organizers in the community who are dedicated to building and sharing their WordPress knowledge with the community like I am. We are hosting the very first Nigerian <a href="https://2018.lagos.wordcamp.org/">WordCamp in Lagos</a> on March 10 2018 at the Civic Centre in Victoria Island, Lagos. I must not forget to mention that we also now have an Ijebu WordPress Community; that’s my town alright <span class="ttfmake-icon mceNonEditable fa"></span> .</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/3rd-wp-lagos-meetup-2017.jpg"><img class="wp-image-2312 size-full" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/3rd-wp-lagos-meetup-2017.jpg" alt="" width="299" height="224" /></a>this was our 4th meetup event this year\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/first-wp-lagos-meetup-2018.jpg"><img class="wp-image-2313 size-medium" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/first-wp-lagos-meetup-2018-300x169.jpg" alt="" width="300" height="169" /></a>this was our first meetup event this year\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/600_463289287.jpeg"><img class="wp-image-2316 size-medium" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/600_463289287-300x225.jpeg" alt="" width="300" height="225" /></a>our third meetup early this year\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/WPlagos-30th-Sept-Meetup-Photo-1.jpg"><img class="size-medium wp-image-2318" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/WPlagos-30th-Sept-Meetup-Photo-1-300x199.jpg" alt="" width="300" height="199" /></a>WPlagos 30th Sept Meetup (5th meetup this year)\n<p>We recently created a <a href="https://photos.app.goo.gl/VNx047kS0Bj8u7z63" target="_blank" rel="noopener">google photos for our past meetups, click here to view them. </a>So tell me why I shouldn’t be grateful? Why I shouldn’t fall in love with WordPress? Because this is all that has happened to me since I met WordPress, <em><strong>I have fallen head over heels in love with WordPress and I am excited.</strong></em></p>\n<h3>What have i gained from WordPress?</h3>\n<ol>\n<li>I overcame my stage fright fully because i have to get in front of the crowd at every meetup to do the introductions and introduce the WordPress communities.</li>\n<li>I attended my first WordCamp in Cape Town, South Africa. <a href="https://youtu.be/PE6k8-PLKVk" target="_blank" rel="noopener">Click here to see my picture story</a>. Coincidentally this was also my first time outside West Africa. I had never been in an aircraft for more than one hour before my trip.</li>\n<li>I have made money from WordPress Web Design Projects, enough to sustain me during my learning period. Still learning everyday.</li>\n<li>I jumped off <a href="https://mojispeaks.com/2017/11/19/i-did-jump-off-a-hill-my-wordcamp-cape-town-story/" target="_blank" rel="noopener">Signal Hill in Cape Town, find post here</a>; next up, sky diving.</li>\n</ol>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/DSC_0246-1.jpg"><img class="size-medium wp-image-2314" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/DSC_0246-1-300x200.jpg" alt="" width="300" height="200" /></a>At a WordCamp Cape Town session\n<p><strong>My advice to you from my experience so far…</strong></p>\n<p>Always seek to understand the basics of whatever knowledge you seek&#8230;never jump in too fast, wanting to spiral to the top while ignoring the learning curve. You will crash down effortlessly if you do so and would have learnt nothing.</p>\n<a href="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/WordPress-Gave-Me-the-Perfect-Identity.png"><img class="size-medium wp-image-2315" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/WordPress-Gave-Me-the-Perfect-Identity-300x225.png" alt="" width="300" height="225" /></a>WordPress Gave Me the Perfect Identity Indeed&#8230;I no longer roam the internet..hehehe\n<blockquote>\n<p>The End&#8230;?<br />\nI Don’t Think So&#8230;<br />\nMy Story has Just Begun. <strong>Stay Tuned&#8230;.!</strong></p>\n</blockquote>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: WordPress Gave Me the Perfect Identity" class="rtsocial-twitter-button" href="https://twitter.com/share?text=WordPress%20Gave%20Me%20the%20Perfect%20Identity&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-gave-perfect-identity%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: WordPress Gave Me the Perfect Identity" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-gave-perfect-identity%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-gave-perfect-identity%2F&title=WordPress+Gave+Me+the+Perfect+Identity" rel="nofollow" target="_blank" title="Share: WordPress Gave Me the Perfect Identity"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/wordpress-gave-perfect-identity/&media=https://heropress.com/wp-content/uploads/2017/11/112917-150x150.jpg&description=WordPress Gave Me the Perfect Identity" rel="nofollow" target="_blank" title="Pin: WordPress Gave Me the Perfect Identity"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/wordpress-gave-perfect-identity/" title="WordPress Gave Me the Perfect Identity"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/wordpress-gave-perfect-identity/">WordPress Gave Me the Perfect Identity</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 12:00:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"Mary Job";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: WordCamp Albuquerque Gears Up for 5th Edition in January 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76845";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wptavern.com/wordcamp-albuquerque-gears-up-for-5th-edition-in-january-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3644:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-28-at-8.15.51-PM-e1511921930548.png?ssl=1"><img /></a></p>\n<p><a href="https://2018.albuquerque.wordcamp.org/" rel="noopener" target="_blank">WordCamp Albuquerque</a> is gearing up for its 5th edition January 19-21, 2018, following events held in 2011, 2012, 2013, and 2016. An all-new organizing team is ready to invigorate the Southwestern WordPress community with an exciting array of world-class speakers and educational opportunities for both new and experienced users.</p>\n<p>Lead organizer Alonso Indacochea said the team is expecting to host 300 attendees. Many of them will be coming from New Mexico, Southern Colorado, West Texas, and Arizona.</p>\n<p>&#8220;The southwestern community is interesting because there are a lot of developers doing really interesting tech work, but a lot of it happens in silos due to government secrecy,&#8221; speaker wrangler Sam Hotchkiss said. &#8220;New Mexico has a rich history of technology, from the Manhattan Project and the creation of the first nuclear weapons to the formation of Microsoft, which was founded in Albuquerque in 1975.</p>\n<p>&#8220;We’re trying to pull together that community to connect with each other, and also establish Albuquerque as a WordCamp with consistently high-quality speakers of global renown.&#8221;</p>\n<p>In pursuit of this goal, Hotchkiss has recruited a healthy crop of top quality speakers from the WordPress community. During the Saturday afternoon session, <a href="http://chrislema.com/" rel="noopener" target="_blank">Chris Lema</a>, Vice President of Products and Innovation at <a href="https://www.liquidweb.com/" rel="noopener" target="_blank">Liquid Web</a>, will be interviewing a diverse group of speakers in the main hall, including the following:</p>\n<ul>\n<li>Ashleigh Axios, former Creative Director for the Obama White House and AIGA Board Member</li>\n<li>Sakin Shrestha, Founder of Catch Themes and the main drive behind the vibrant WordPress community in Nepal</li>\n<li>John Maeda, Global Head, Computational Design and Inclusion at Automattic</li>\n<li>Jon Brown, WordPress Nomad</li>\n<li>Alonso Indacochea, WordCamp lead organizer, who had no serious software development experience 5 years ago, went through a local boot camp, and is now CEO of the fastest growing digital agency in New Mexico</li>\n</ul>\n<p>This year WordCamp Albuquerque will feature multiple tracks sorted by topic, beginning with a WordPress Fundamentals track on Friday, January 19.</p>\n<p>&#8220;Foundation Friday is something I’ve seen be really successful at other camps,&#8221; Hotchkiss said. &#8220;It gives people who are new to WP a base of knowledge so that they can go into Saturday feeling confident and ready to learn. Each class on Friday will build on the one before it. Starting from scratch? Show up at 9. Already have a site, but need help handling the layout?  Come at 10:30.&#8221;</p>\n<p>Saturday&#8217;s program will include sessions in the Business, Design, and Development tracks throughout the day, in addition to the planned interviews. A contributor day session is planned for Sunday. The event&#8217;s organizers are still <a href="https://2018.albuquerque.wordcamp.org/speakers/" rel="noopener" target="_blank">accepting speaker applications</a> until midnight on Monday, December 4. They plan to finalize the schedule next week. <a href="https://2018.albuquerque.wordcamp.org/attendees/" rel="noopener" target="_blank">Tickets</a> are on sale now and attendees can elect to purchase one for whatever combination of days they wish to attend.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Nov 2017 02:30:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WPTavern: Practicing the Pac-Man Rule at WordCamp US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76857";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wptavern.com/practicing-the-pac-man-rule-at-wordcamp-us";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1750:"<p>With more than 2,000 attendees expected, WordCamp US is one of the largest conferences devoted to WordPress. It&#8217;s a great opportunity to meet a lot of new faces and catch up with familiar ones. If you&#8217;re standing in the hallway at WordCamp US speaking with a group of people and want to encourage others to say hi or be part of the conversation, try this tip <a href="https://www.facebook.com/GreatSmokyMountainsAssociation/videos/10155628004363673/">shared by</a> Jason Cosper called the <a href="http://ericholscher.com/blog/2017/aug/2/pacman-rule-conferences/">Pac-Man rule</a> written by Eric Holscher.</p>\n<img />photo credit: rbatina <a href="http://www.flickr.com/photos/27988337@N00/12081061246">Random Phone Shots</a> <a href="https://creativecommons.org/licenses/by-nc-nd/2.0/">(license)</a>\n<p>The rule is simple. When standing in a circle, provide an opening for someone to join the group. By standing in an open circle, it gives a passersby explicit permission to join the group and limits the appearance of cliques. I didn&#8217;t realize how standing in a closed circle can be off-putting to those wanting to introduce themselves or chime in until learning about this rule.</p>\n<p>In addition to the Pac-Man rule, <a href="https://twitter.com/bobWP/status/935576711252533248">Bob Dunn suggests</a> using eye contact to invite people to the group. <a href="https://twitter.com/mor10/status/935582280164065280">Morten Rand-Hendriksen suggests</a> that if you&#8217;re looking to start a conversation with someone new, start with groups of two people as they likely know each other and want to talk to new people. I&#8217;ll be practicing the Pac-Man rule this weekend and I encourage other attendees to do so as well.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 28 Nov 2017 21:06:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: Gutenberg Team Is Ramping Up Usability Testing at WordCamp US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76807";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wptavern.com/gutenberg-team-is-ramping-up-usability-testing-at-wordcamp-us";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4848:"<p>The Gutenberg Team will have a usability testing station set up at WordCamp US where attendees can participate in a round of pre-set tests that focus on the writing flow. Testers will answer a short survey that includes their prior WordPress experience level, age, and device used. Volunteers will get participants set up with a testing site and will start the screen recording app.</p>\n<p>Testers will be asked to create a post based on the content shown in an image. There are three different images, which require the user to perform actions such as adding images, embedding media, creating unordered lists, adding quotes, and other basic content creation tasks. In order to segment results, the usability tests have been divided into <a href="https://drive.google.com/file/d/0B4BHP7ZnNw32RWJRa2diODFXVGs/view" rel="noopener" target="_blank">beginner</a>, <a href="https://drive.google.com/file/d/0B4BHP7ZnNw32bVpyd2xaaFVVMWM/view" rel="noopener" target="_blank">intermediate</a>, and <a href="https://drive.google.com/file/d/0B4BHP7ZnNw32R3U0ZkJRVXBySWM/view" rel="noopener" target="_blank">advanced</a> level images.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-27-at-10.23.35-PM.png?ssl=1"><img /></a>Advanced level task image for Gutenberg usability testing\n<p>After completing the test, participants will be asked to answer a few followup questions, such as &#8220;Did the task take longer or shorter than you expected?&#8221; and &#8220;Are you more or less likely to use the Gutenberg editor in the future?&#8221;</p>\n<p>&#8220;This is the second round of usability testing scripts — we tried out the first batch of scripts at WordCamp Milano, and made some adjustments for clarity,&#8221; Gutenberg design lead Tammie Lister said. &#8220;As a result of testing, we moved the toolbar on blocks to not be fixed and back to the block. At Milano, we tested the tests.&#8221;</p>\n<p>As the result of these tests and other prior feedback, Lister <a href="https://github.com/WordPress/gutenberg/issues/3570" rel="noopener" target="_blank">recommended the default position of the toolbar to be fixed to the block</a>.</p>\n<p>Anna Harrison, UX lead at Ephox (the makers of tinyMCE), has been instrumental in helping with the efforts around testing and writing scripts. She also offered <a href="https://github.com/WordPress/gutenberg/issues/3570#issuecomment-345879950" rel="noopener" target="_blank">feedback on the ticket</a>, referencing comments from the previous discussion on the issue:</p>\n<blockquote><p>A fixed [docked to top] toolbar solution has several complications. Firstly, we break accessibility. I won&#8217;t reiterate the discussion, as it&#8217;s well articulated above. Secondly, we break things independent of accessibility &#8211; I ran user tests on something quite similar to this last year, and we discovered that <a href="https://go.tinymce.com/blog/from-the-ux-desk-road-testing-inline-image-editing/" rel="noopener" target="_blank">disconnecting the toolbar from the point of action resulted in 100% user test fails</a>.</p></blockquote>\n<p>Gutenberg version 1.8 will change the default back to displaying block actions on the block level, although the option to change it to a fixed toolbar at the top of the screen will still be available. This change is one example of how usability testing is shaping Gutenberg&#8217;s development. WordCamp US is an opportunity for the team to collect a host of new testing data in one place.</p>\n<p>Lister said all the data that is collected will be processed by volunteers on the make/test team, but the team is still small and they could use more volunteers to work on this effort.</p>\n<p>&#8220;The turnaround time on processing the data we collect really depends on how many volunteers are available to work on it,&#8221; Lister said. &#8220;It also depends on if it’s a bug reported &#8211; bugs are easier to get fixed right away. If the data indicates an area where we need to investigate more, we’ll do that. The results of the testing will be published on make.wordpress.org/test.&#8221;</p>\n<p>Lister said the team is hoping to reach a wider variety of WordPress users at WCUS this year, from all backgrounds and careers. The testing booth offers an opportunity for anyone to contribute to the future of WordPress, regardless of your experience level or familiarity with the software. The team is also eager to broaden its testing field by recruiting non-WordPress users as well. If you can&#8217;t make it to WordCamp US, you can still <a href="https://make.wordpress.org/test/2017/11/22/testing-flow-in-gutenberg/" rel="noopener" target="_blank">contribute to Gutenberg by taking and administering usability tests</a> on your own with the help of the instructions posted on the make.wordpress.org/test site.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 28 Nov 2017 16:55:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:102:"WPTavern: Delete Me WordPress Plugin Assists Website Owners in Granting the GDPR Right to be Forgotten";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76474";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:113:"https://wptavern.com/delete-me-wordpress-plugin-assists-website-owners-in-granting-the-gdpr-right-to-be-forgotten";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4080:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/eraser.jpg?ssl=1"><img /></a>photo credit: pj_vanf <a href="http://www.flickr.com/photos/48066826@N02/5006945413">to err is human</a> &#8211; <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>\n<p>With the EU GDPR compliance deadline just <a href="http://www.gdprcountdownclock.com/" rel="noopener" target="_blank">178 days away</a>, many WordPress site owners are looking for tools that will help them meet the requirements. The regulation expands existing rights of data subjects in several key ways, including (but not limited to) the right to be notified of data breaches, the right to access personal data, the right to be forgotten, and the right to data portability.</p>\n<p>A plugin called <a href="https://wordpress.org/plugins/delete-me/" rel="noopener" target="_blank">Delete Me</a>, by Clinton Caldwell, is one that may be helpful in addressing the Right to be Forgotten. The <a href="https://www.eugdpr.org" rel="noopener" target="_blank">GDPR.org</a> website breaks it down as follows:</p>\n<blockquote><p>Also known as Data Erasure, the right to be forgotten entitles the data subject to have the data controller erase his/her personal data, cease further dissemination of the data, and potentially have third parties halt processing of the data. The conditions for erasure, as outlined in article 17, include the data no longer being relevant to original purposes for processing, or a data subjects withdrawing consent. It should also be noted that this right requires controllers to compare the subjects&#8217; rights to &#8220;the public interest in the availability of the data&#8221; when considering such requests.</p></blockquote>\n<p>The Delete Me plugin takes this one step further for site owners who are comfortable allowing users to delete their own data without having to create a request for it. By default, the delete button displays on the profile.php screen in the admin, but administrators can elect to use a shortcode to display it somewhere else on the frontend.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-27-at-4.54.42-PM.png?ssl=1"><img /></a></p>\n<p>The plugin will delete the users&#8217; posts, links, and even comments (optional) after the user confirms. The confirmation screen could stand to include more information about what data is being deleted so that the user knows what to expect. However, administrators do have the option to specify this within the JavaScript confirmation dialog. After deletion the user is dumped back out to the homepage by default, but the redirect URL can be configured in the plugin&#8217;s settings page.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-27-at-4.54.21-PM.png?ssl=1"><img /></a></p>\n<p>Additional configurable settings include the ability to select specific WordPress roles to allow to delete themselves, specify class and style attributes of delete link, enable or disable JavaScript confirm for Shortcode, specify button text, and send an email notification when users delete themselves.</p>\n<p>Delete Me also supports network activation and single site activation for multisite installations. By default, users can only delete themselves and their content from a single site, while other networked sites where they are registered will not be affected. The plugin does include a “Delete From Network” checkbox that administrators can enable to allow users to delete themselves from all sites on the network.</p>\n<p><a href="https://wordpress.org/plugins/delete-me/" rel="noopener" target="_blank">Delete Me</a> is available for free on WordPress.org. I tested the plugin and have confirmed that it works with WordPress 5.0-alpha. It is currently active on more than 2,000 sites. By no means does it satisfy the full requirements of the GDPR, but it provides a decent starting point for site owners who want to make this option available to their users without having to manually fulfill their requests.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 28 Nov 2017 00:08:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:99:"WPTavern: WPWeekly Episode 295 – Turkey With A Side of Gutenberg and Giving Thanks to Open Source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=76789&preview=true&preview_id=76789";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wptavern.com/wpweekly-episode-295-turkey-with-a-side-of-gutenberg-and-giving-thanks-to-open-source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3233:"<p>I apologize for the delay in getting this episode out to you. In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I discussed a range of topics, including a caching bug introduced in WordPress 4.9 that causes Page Templates not to display for an hour. We talk about the possibilities of using Gutenberg with WooCommerce and how it could impact product management.</p>\n<p>As is tradition, near the end of the show, we shared what we&#8217;re thankful for. We also shared what listeners are <a href="https://twitter.com/jeffr0/status/933101857039200258">thankful for</a> regarding open source.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://core.trac.wordpress.org/ticket/42573">This bug</a> is causing some theme developers to rip their hair out. Weston Ruter <a href="https://core.trac.wordpress.org/ticket/42573#comment:57">explains</a> why the change was implemented.<br />\n<a href="https://wptavern.com/woocommerce-explores-the-possibilities-and-challenges-for-e-commerce-in-the-gutenberg-era">WooCommerce Explores the Possibilities and Challenges for E-Commerce in the Gutenberg Era</a><br />\n<a href="https://wptavern.com/tailor-page-builder-plugin-discontinued-owners-cite-funding-gutenberg-and-competition">Tailor Page Builder Plugin Discontinued, Owners Cite Funding, Gutenberg, and Competition</a><br />\n<a href="https://wptavern.com/wordcamp-europe-2018-speaker-applications-now-open">WordCamp Europe 2018 Speaker Applications Now Open</a><br />\n<a href="https://wptavern.com/github-launches-security-alerts-for-javascript-and-ruby-projects-python-support-coming-in-2018">GitHub Launches Security Alerts for JavaScript and Ruby Projects, Python Support Coming in 2018</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://wordpress.org/plugins/trigger-happy/">Trigger Happy</a> developed by Hotsource is a visual scripting tool for WordPress, allowing you to connect plugins and events together using a simple user interface. It currently supports core WordPress functionality, WooCommerce, and Ninja Form.</p>\n<p><a href="https://github.com/boogah/big-dummy">Big dummy</a> is a project for folks who need to emulate an established blog with plenty of content while doing WordPress benchmarking and performance testing.</p>\n<p>There are 2495 posts, 6197 comments, 231 tags, 26 categories, and 10 pages worth of WordPress dummy data, fully ready to import. That&#8217;s 3 (simulated) years worth of content. <i>Note:</i> There are ~1.6 GB of images (courtesy of<a href="https://unsplash.com"> Unsplash</a>) attached to these posts. It&#8217;s a very good idea to import everything <i>but</i> the media in order to avoid timeouts or errors with the WordPress Importer.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, November 29th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>\n<p><strong>Listen To Episode #295:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Nov 2017 07:54:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WPTavern: Workarounds for the Page Template Bug in WordPress 4.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76785";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wptavern.com/workarounds-for-the-page-template-bug-in-wordpress-4-9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2105:"<p>WordPress 4.9 &#8220;Tipton&#8221; <a href="https://wptavern.com/wordpress-4-9-released-with-major-improvements-to-customizer-workflow-updated-code-editors-and-new-core-gallery-widget">was released</a> last week and although it&#8217;s largely trouble-free, there is one particular issue <a href="https://wordpress.org/support/topic/updated-to-4-9-wont-detect-page-template/">users</a> and <a href="https://core.trac.wordpress.org/ticket/42573#comment:75">developers</a> are running into that&#8217;s causing frustration. In 4.9, custom page templates that are created fail to display in the Template drop-down menu. The issue is related to changes made to the <a href="https://core.trac.wordpress.org/changeset/41806">file editor</a>.</p>\n<p>Previous versions of WordPress listed files 2-levels deep in the editor. In 4.9, the entire directory tree for a theme is listed regardless of its depth. Caching was added to help limit the performance impacts of loading large WordPress themes. &#8220;An unintended side effect of the caching is that the same directory listing function <tt>get_files</tt> is used both for the theme editor and for gathering page templates,&#8221; Weston Ruter, Co-Release Lead for WordPress 4.9 <a href="https://core.trac.wordpress.org/ticket/42573#comment:57">said</a>.</p>\n<p>Within the <a href="https://core.trac.wordpress.org/ticket/42573">trac ticket</a>, developers suggests that a button be added that flushes all caches or disabling the cache if <tt>WP_DEBUG</tt> is set to true. Neither suggestion turned into a patch committed to core. Instead, Ruter has <a href="https://gist.github.com/westonruter/6c2ca0e5a4da233bf4bd88a1871dd950">released a plugin</a> as a workaround that flushes the template cache. Other workarounds include, bumping the theme&#8217;s version, running the <tt>wp cache flush</tt> command in WP CLI, or waiting 60 minutes for the cache to expire.</p>\n<p>The ticket is marked as a high priority but because of the upcoming holidays in the US and WordCamp US next weekend, it could be at least a few weeks before WordPress 4.9.1 is released.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Nov 2017 00:42:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Tide Project Aims to Audit and Score WordPress Themes and Plugins based on Code Quality";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76652";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:108:"https://wptavern.com/tide-project-aims-to-audit-and-score-wordpress-themes-and-plugins-based-on-code-quality";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8526:"<p>Last week XWP dropped an intriguing <a href="https://xwp.co/tide-a-path-to-better-code-across-the-wordpress-ecosystem/" rel="noopener" target="_blank">preview of a new project called Tide</a> that aims to improve code quality across the WordPress plugin and theme ecosystems. The company has been working with the support of Google, Automattic, and WP Engine, on creating a new service that will help users make better plugin decisions and assist developers in writing better code.</p>\n<p>XWP&#8217;s marketing manager Rob Stinson summarized the project&#8217;s direction so far:</p>\n<blockquote><p>Tide is a service, consisting of an API, Audit Server, and Sync Server, working in tandem to run a series of automated tests against the WordPress.org plugin and theme directories. Through the Tide plugin, the results of these tests are delivered as an aggregated score in the WordPress admin that represents the overall code quality of the plugin or theme. A comprehensive report is generated, equipping developers to better understand how they can increase the quality of their code.</p></blockquote>\n<p>The XWP announcement also included a screenshot of how this data might be presented in the WordPress plugin directory:</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/jetpack-tide-plugin-score.jpg?ssl=1"><img /></a></p>\n<p>XWP plans to unveil the service at WordCamp US in Nashville at the Google booth where they will be inviting the community to get involved. Naturally, a project with the potential to have this much impact on the plugin ecosystem raises many questions about who is behind the vision and what kind of metrics will be used.</p>\n<p>I contacted Rob Stinson and Luke Carbis at XWP, who are both contributors to the project, to get an inside look at how it started and where they anticipate it going.</p>\n<p>&#8220;Tide was started at XWP about 12 months ago when one of our service teams pulled together the idea, followed up by a proof of concept, of a tool that ran a series of code quality tests against a package of code (WordPress plugin) and returned the results via an API,&#8221; Stinson said. &#8220;We shortly after came up with the name Tide, inspired by the proverb &#8216;A rising tide lifts all boats,&#8217; thinking that if a tool like this could lower the barrier of entry to good quality code for enough developers, it could lift the quality of code across the whole WordPress ecosystem.&#8221;</p>\n<p>Stinson said XWP ramped up its efforts on Tide during the last few months after beginning to see its potential and sharing the vision with partners.</p>\n<p>&#8220;Google, Automattic and WP Engine have all helped resource (funds, infrastructure, developer time, advice etc) the project recently as well,&#8221; Stinson said. &#8220;Their support has really helped us build momentum. Google have been a big part of this since about August. We had been working with them on other projects and when we shared with them the vision for Tide, they loved it and saw how in line it is with the vision they have for a better performant web.&#8221;</p>\n<p>The Tide service is not currently active but a beta version will launch at WordCamp US with a WordPress plugin to follow shortly thereafter. Stinson said the team designed the first version to present the possibilities of Tide and encourage feedback and contribution from the community.</p>\n<p>&#8220;We realize that Tide will be its best if its open sourced,&#8221; he said. &#8220;There are many moving parts to it and we recognize that the larger the input from the community, the better it will represent and solve the needs of the community around code quality.&#8221;</p>\n<p>At this phase of the project, nothing has been set in stone. The Tide team is continuing to experiment with different ways of making the plugin audit data available, as well as refining how that data is weighed when delivering a Tide score.</p>\n<p>&#8220;The star rating is just an idea we have been playing with,&#8221; Stinson said. &#8220;The purpose of it will be to aggregate the full report that is produced by Tide into a simple and easy to understand metric that WordPress users can refer to when making decisions about plugins and themes. We know we haven’t got this metric and how it is displayed quite right. We’ve had some great feedback from the community already.&#8221;</p>\n<p>The service is not just designed to output scores but also to make it easy for developers to identify weaknesses in their code and learn how to fix them.</p>\n<p>&#8220;Lowering the barrier of entry to writing good code was the original inspiration for the idea,&#8221; Stinson said.</p>\n<h3>Tide Project Team Plans to Refine Metrics Used for Audit Score based on Community Feedback</h3>\n<p>The Tide project website, <a href="http://wptide.org" rel="noopener" target="_blank">wptide.org</a>, will launch at WordCamp US and will provide developers with scores, including specifics like line numbers and descriptions of failed sniffs. Plugin developers will be able to use the site to improve their code and WordPress users will be able to quickly check the quality of a plugin. XWP product manager Luke Carbis explained how the Tide score is currently calculated.</p>\n<p>&#8220;Right now, Tide runs a series of code sniffs across a plugin / theme, takes the results, applies some weighting (potential security issues are more important than tabs vs. spaces), and then averages the results per line of code,&#8221; Carbis said. &#8220;The output of this is a score out of 100, which is a great indicator of the quality of a plugin or theme. The &#8216;algorithm&#8217; that determines the score is basically just a series of weightings.&#8221;</p>\n<p>The weightings the service is currently using were selected as a starting point, but Carbis said the team hopes the WordPress community will help them to refine it.</p>\n<p>&#8220;If it makes sense, maybe one day this score could be surfaced in the WordPress admin (on the add new plugin page),&#8221; Carbis said. &#8220;Or maybe it could influence the search results (higher rated plugins ranked first). Or maybe it just stays on wptide.org. That’s really up to the community to decide.&#8221;</p>\n<p>In addition to running codesniffs, the Tide service will run two other scans. A <a href="https://developers.google.com/web/tools/lighthouse/" rel="noopener" target="_blank">Lighthouse</a> scan, using Google&#8217;s open-source, automated tool for improving the quality of web pages, will be performed on themes, which Carbis says is a &#8220;huge technological accomplishment.&#8221;</p>\n<p>&#8220;For every theme in the directory, we’re spinning up a temporary WordPress install, and running a Lighthouse audit in a headless chrome instance,&#8221; Carbis said. &#8220;This means we get a detailed report of the theme’s <em>front end output</em> quality, not just the code that powers it.&#8221;</p>\n<p>The second scan Tide will perform measures PHP compatibility and will apply to both plugins and themes.</p>\n<p>&#8220;Tide can tell which versions of PHP a plugin or theme will work with,&#8221; Carbis said. &#8220;For users, this means we could potentially hide results that we <em>know</em> won’t work with their WordPress install (or at least show a warning). For hosts, this means they can easily check the PHP compatibility before upgrading an install to PHP 7 (we think this will cause <em>many</em> more installs to be upgraded – the net effect being a noticeable speed increase, which we find really exciting and motivating).&#8221;</p>\n<p>Carbis said that the team is currently working in the short term to get the PHP Compatibility piece into the WordPress.org API, which he says could start influencing search results without any changes to WordPress core.</p>\n<p>&#8220;We’d also like to start engaging with the community to find out whether surfacing a Code Quality score to WordPress users is helpful, and if it is, what does that look like? (e.g. score out of 100, 5 star rating, A/B/C/D, etc.),&#8221; Carbis said. &#8220;We will release our suggestion for what this <em>could</em> look like as a plugin shortly after WordCamp US.&#8221;</p>\n<p>More specific information about the metrics Tide is currently using and how it applies to plugins and themes will be available after the service launches in beta. If you are attending WordCamp US and have some suggestions or feedback to offer the team, make sure to stop by the Google sponsorship booth.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Nov 2017 21:21:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Matt: Adam Robinson on Understanding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47663";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://ma.tt/2017/11/adam-robinson-on-understanding/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5921:"<p>This is a long quote/excerpt from <a href="https://twitter.com/iamadamrobinson">Adam Robinson</a> I&#8217;ve been holding onto for a while, from <a href="https://tribeofmentors.com/">Tribe of Mentors</a>. Worth considering, especially if you strive to work in a data-informed product organization.</p>\n<blockquote><p>Virtually all investors have been told when they were younger — or implicitly believe, or have been tacitly encouraged to do so by the cookie-cutter curriculums of the business schools they all attend — that the more they understand the world, the better their investment results. It makes sense, doesn’t it? The more information we acquire and evaluate, the “better informed” we become, the better our decisions. Accumulating information, becoming “better informed,” is certainly an advantage in numerous, if not most, fields.</p>\n<p>But not in the eld of counterintuitive world of investing, where accumulating information can hurt your investment results.</p>\n<p>In 1974, Paul Slovic — a world-class psychologist, and a peer of Nobel laureate Daniel Kahneman — decided to evaluate the effect of information on decision-making. This study should be taught at every business school in the country. Slovic gathered eight professional horse handicappers and announced, “I want to see how well you predict the winners of horse races.” Now, these handicappers were all seasoned professionals who made their livings solely on their gambling skills.</p>\n<p>Slovic told them the test would consist of predicting 40 horse races in four consecutive rounds. In the first round, each gambler would be given the five pieces of information he wanted on each horse, which would vary from handicapper to handicapper. One handicapper might want the years of experience the jockey had as one of his top five variables, while another might not care about that at all but want the fastest speed any given horse had achieved in the past year, or whatever.</p>\n<p>Finally, in addition to asking the handicappers to predict the winner of each race, he asked each one also to state how confident he was in his prediction. Now, as it turns out, there were an average of ten horses in each race, so we would expect by blind chance — random guessing — each handicapper would be right 10 percent of the time, and that their confidence with a blind guess to be 10 percent.</p>\n<p>So in round one, with just five pieces of information, the handicappers were 17 percent accurate, which is pretty good, 70 percent better than the 10 percent chance they started with when given zero pieces of information. And interestingly, their confidence was 19 percent — almost exactly as confident as they should have been. They were 17 percent accurate and 19 percent confident in their predictions.</p>\n<p>In round two, they were given ten pieces of information. In round three, 20 pieces of information. And in the fourth and final round, 40 pieces of information. That’s a whole lot more than the five pieces of information they started with. Surprisingly, their accuracy had flatlined at 17 percent; they were no more accurate with the additional 35 pieces of information. Unfortunately, their confidence nearly doubled — to 34 percent! So the additional information made them no more accurate but a whole lot more confident. Which would have led them to increase the size of their bets and lose money as a result.</p>\n<p>Beyond a certain minimum amount, additional information only feeds — leaving aside the considerable cost of and delay occasioned in acquiring it — what psychologists call “confirmation bias.” The information we gain that conflicts with our original assessment or conclusion, we conveniently ignore or dismiss, while the information that confirms our original decision makes us increasingly certain that our conclusion was correct.</p>\n<p>So, to return to investing, the second problem with trying to understand the world is that it is simply far too complex to grasp, and the more dogged our at- tempts to understand the world, the more we earnestly want to “explain” events and trends in it, the more we become attached to our resulting beliefs — which are always more or less mistaken — blinding us to the financial trends that are actually unfolding. Worse, we think we understand the world, giving investors a false sense of confidence, when in fact we always more or less misunderstand it.<br />\nYou hear it all the time from even the most seasoned investors and financial “experts” that this trend or that “doesn’t make sense.” “It doesn’t make sense that the dollar keeps going lower” or “it makes no sense that stocks keep going higher.” But what’s really going on when investors say that something makes no sense is that they have a dozen or whatever reasons why the trend should be moving in the opposite direction.. yet it keeps moving in the current direction. So they believe the trend makes no sense. But what makes no sense is their model of the world. That’s what doesn’t make sense. The world always makes sense.</p>\n<p>In fact, because financial trends involve human behavior and human beliefs on a global scale, the most powerful trends won’t make sense until it becomes too late to profit from them. By the time investors formulate an understanding that gives them the confidence to invest, the investment opportunity has already passed.</p>\n<p>So when I hear sophisticated investors or financial commentators say, for example, that it makes no sense how energy stocks keep going lower, I know that energy stocks have a lot lower to go. Because all those investors are on the wrong side of the trade, in denial, probably doubling down on their original decision to buy energy stocks. Eventually they will throw in the towel and have to sell those energy stocks, driving prices lower still.</p></blockquote>\n<p>&nbsp;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Nov 2017 16:33:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"HeroPress: Finding WordPress in Cameroon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2286";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:126:"https://heropress.com/essays/finding-wordpress-cameroon/#utm_source=rss&utm_medium=rss&utm_campaign=finding-wordpress-cameroon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5922:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2018/11/112217-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: The more I share knowledge with someone the more I gain in return." /><p>My name is Michaël Nde Tabefor, I reside in Cameroon. I grew up in the economic capital of the country surrounded by so much diversity and culture.</p>\n<p>Yet I was still very young when I developed an interest in technology, back in Primary school I had a PC at home I used to play around, most especially Spider Solitaire hahaha. Well that game sound crazy but it’s educative, it built up my reflex with the mouse and yeah it worth it. When I arrived in Secondary school I quickly picked up the subject.</p>\n<p>I began educating myself on the trend of Technology and how they work. I developed a great interest for organisations such as Google, what they doing for humanity not just about technology. So I understood that no matter the position I get, I must always contribute to Humanity by volunteering.</p>\n<p>When I got to the University back in 2014 as a Freshman, I enrolled into Software engineering program where I began excelling and widening my thinking and reflex, met with other enthusiasts of technology.</p>\n<h3>Taking Another Path</h3>\n<p>Unlike other students I decided to go in for an internship at my first year (am one of those who believe university is good but it contribute to just about 10 &#8211; 20% of what builds up skill, people must be passionate about what the do, that passion alone will get you have the skills and be able to learn more and more).</p>\n<p>On my first day of internship, my internship coordinator gave me a task to go and install WordPress on my computer and create with the use of an external template (not there default themes) the website of my university.</p>\n<blockquote><p>Let me make this point, I didn’t know about WordPress. Had no idea of what it’s meant for. Completely blank.</p></blockquote>\n<p>I went back to my university, I met one of my professors, explained it to him, he redirected me to a senior student who once did internship and had to use WordPress.</p>\n<p>I went home, got my environment set up and called my senior, She did the guiding all through the installation on phone, till installing the template, my curiosity did the rest of the job hahaha, end of story. The next day I went back to the office, my coordinator didn’t expect me that soon Lol.</p>\n<h3>Diving Deeper</h3>\n<p>So I worked on some tutorial on building themes and plugin from scratch from Lynda.com but I took a break from building cuz I didn’t have much skills in PHP, in first year we didn’t do web technologies, I began hacking on PHP on my own, basic’ly I learnt almost every skill on my own via research and practice.</p>\n<p>I worked on several sites that used WordPress and began installing for others. My coordinator told me it would be interesting to start a WordPress Community so others could benefit from it. Actually the more I share knowledge with someone I gain 100% in return too, it builds up my mastery and ability to debug and resolve issues.</p>\n<blockquote><p>I began our local community and everyday I kept understanding WordPress more and more.</p></blockquote>\n<p>After a couple of months I officially joined the WordPress Volunteer Community in doing more reach outs in (November 2015 &#8211; via Rocio Valdiva) and on April 15, 2017 I organized <a href="https://2017.buea.wordcamp.org/">the very first WordCamp in the whole of Central Africa</a> that brought together over 240 persons. Complete gallery on <a href="https://www.flickr.com/photos/144827169@N08/">Flickr</a>, Video on <a href="https://youtu.be/nnUgqhveB00">YouTube</a>.</p>\n<p>After the WordCamp I later on built a Mobile Money Payment Gateway with a local Network Operator web payment API using WooCommerce.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Finding WordPress in Cameroon" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Finding%20WordPress%20in%20Cameroon&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-wordpress-cameroon%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Finding WordPress in Cameroon" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-wordpress-cameroon%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Ffinding-wordpress-cameroon%2F&title=Finding+WordPress+in+Cameroon" rel="nofollow" target="_blank" title="Share: Finding WordPress in Cameroon"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/finding-wordpress-cameroon/&media=https://heropress.com/wp-content/uploads/2018/11/112217-150x150.jpg&description=Finding WordPress in Cameroon" rel="nofollow" target="_blank" title="Pin: Finding WordPress in Cameroon"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/finding-wordpress-cameroon/" title="Finding WordPress in Cameroon"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/finding-wordpress-cameroon/">Finding WordPress in Cameroon</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Nov 2017 15:45:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Michaël Nde Tabefor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WPTavern: Envato Elements Adds Unlimited WordPress Theme and Plugin Downloads to Subscription Plan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76604";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wptavern.com/envato-elements-adds-unlimited-wordpress-theme-and-plugin-downloads-to-subscription-plan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4096:"<p>Envato has added <a href="https://envato.com/blog/announcing-wordpress-themes-on-envato-elements/" rel="noopener" target="_blank">unlimited WordPress theme and plugin downloads</a> to its Elements digital assets subscription service. The company is including a curated collection of <a href="https://elements.envato.com/wordpress/themes/sort-by-latest" rel="noopener" target="_blank">210 WordPress themes</a> and <a href="https://elements.envato.com/wordpress/plugins/sort-by-latest" rel="noopener" target="_blank">100 plugins</a> along with 400,000 other design assets already offered through the service.</p>\n<p>Envato is the largest WordPress theme marketplace on the web with 39,102 themes and website templates for sale. Last year the company <a href="https://wptavern.com/envato-celebrates-10-years-in-business" rel="noopener" target="_blank">celebrated 10 years in business</a> and reported that the community earned more than $40 million, with a significant portion of that revenue coming from WordPress products.</p>\n<p>The new &#8220;all you can eat&#8221; style package for WordPress themes on Envato Elements was introduced to boost the value of the service&#8217;s annual subscription plan and is not available to monthly subscribers. For $228/year, annual subscribers can change themes as often as they choose, which is the chief selling point of the new addition. However, the subscription service does not provide direct item support for the themes, as they are submitted by independent designers.</p>\n<p>Current Elements subscribers have the option to change their payment plans from monthly to annual to gain access to the unlimited WordPress products. Several disgruntled customers have taken to Twitter to express their dissatisfaction with the WordPress additions being withheld from existing monthly subscribers and perceive it to be heavy-handed a tactic for locking in more annual subscribers before raising the price.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Not cheeky ask at all, your roadmap did not say anything about this price change, but got people signed up at $19 per month with the understanding this was going to be an added edition. Shocking way to treat loyal customers. <a href="https://twitter.com/hashtag/moneyhungry?src=hash&ref_src=twsrc%5Etfw">#moneyhungry</a></p>\n<p>&mdash; TVBanterUK <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f4ad.png" alt="💭" class="wp-smiley" /> (@TVBanterUK) <a href="https://twitter.com/TVBanterUK/status/930943546693226501?ref_src=twsrc%5Etfw">November 15, 2017</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Why hold monthly subscribers ransom by only allowing annual subscribers access? Feels somewhat unfair to long term subs!</p>\n<p>&mdash; Paul Charlton (@ipixel_design) <a href="https://twitter.com/ipixel_design/status/931203052765433862?ref_src=twsrc%5Etfw">November 16, 2017</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Yes we were on the understanding us early day loyal subscribers signed up would get what the roadmap said, it’s such a sneaky way to get people locked in to the annual plan which you will then increase in year 2, seen it all before.</p>\n<p>&mdash; TVBanterUK <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f4ad.png" alt="💭" class="wp-smiley" /> (@TVBanterUK) <a href="https://twitter.com/TVBanterUK/status/931097713579610112?ref_src=twsrc%5Etfw">November 16, 2017</a></p></blockquote>\n<p></p>\n<p>An Envato support representative offered some background on the decision in response to monthly subscribers who do not appreciate being excluded from additions to the service.</p>\n<p>&#8220;We chose this pricing model because we think it creates the fairest platform for both our subscribers and our authors,&#8221; the representative said. &#8220;A huge amount of time and dedication goes into creating and maintaining WordPress themes and plugin so this allows us to help protect the earnings of the authors who provide our community with premium assets.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Nov 2017 04:01:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Matt: Tribe of Mentors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47661";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:39:"https://ma.tt/2017/11/tribe-of-mentors/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1004:"<p>Tim Ferriss&#8217;s new book <a href="https://tribeofmentors.com/">Tribe of Mentors is out</a>. I have finished it already, and can say it&#8217;s really excellent and I even liked it more than Tools of Titans even though I&#8217;m not in this one. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f642.png" alt="🙂" class="wp-smiley" /> As I said in a message to Tim:</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">Curious how Tribe of Mentors is different from Tools of Titans? Here''s a text to me from Matt Mullenweg (<a href="https://twitter.com/photomatt?ref_src=twsrc%5Etfw">@photomatt</a>, CEO Automattic)&#8230; <a href="https://t.co/D9kvA2rFFC">pic.twitter.com/D9kvA2rFFC</a></p>\n<p>&mdash; Tim Ferriss (@tferriss) <a href="https://twitter.com/tferriss/status/919729467244863488?ref_src=twsrc%5Etfw">October 16, 2017</a></p></blockquote>\n<p></p>\n<p>I learned a lot from it, took a ton of notes to follow up on, and wrote down about twenty more books I have to read.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 21 Nov 2017 23:55:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WPTavern: Tailor Page Builder Plugin Discontinued, Owners Cite Funding, Gutenberg, and Competition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76599";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wptavern.com/tailor-page-builder-plugin-discontinued-owners-cite-funding-gutenberg-and-competition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6385:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/tailor-e1510853958841.png?ssl=1"><img /></a></p>\n<p><a href="https://www.enclavely.io/" rel="noopener" target="_blank">Enclavely, Inc.</a>, the owners of the <a href="https://wordpress.org/plugins/tailor/" rel="noopener" target="_blank">Tailor Page Builder plugin</a>, have announced that they will be <a href="https://www.tailorwp.com/discontinued/" rel="noopener" target="_blank">discontinuing its development</a> effective immediately.</p>\n<p><a href="http://andrewworsfold.com/" rel="noopener" target="_blank">Andrew Worsfold</a>, the original developer, launched Tailor in April 2016 and the plugin received an enthusiastic reception from the WordPress community. After performing <a href="https://wptavern.com/pippin-williamson-shakes-up-page-builder-plugins-with-critical-review" rel="noopener" target="_blank">a critical review of the major page builders</a> available to users in September 2016, Pippin Williamson found only three that he could happily recommend to his customers: Tailor, Pootle Page Builder, and Beaver Builder. This recommendation was based primarily on code quality, usability, and compatibility with other plugins.</p>\n<p>The plugin <a href="https://www.tailorwp.com/tailor-page-builder-under-new-management/" rel="noopener" target="_blank">came under new management in July 2017</a> after the original developer no longer had enough time to dedicate to the project. Worsfold sold it to Enclavely, whose owners were early and enthusiastic users of the plugin, for what he said was &#8220;a nominal amount.&#8221; Three months later, the new owners cite the cost of keeping up with Gutenberg and other competitors as the primary reason for <a href="https://www.tailorwp.com/discontinued/" rel="noopener" target="_blank">discontinuing its development</a>:</p>\n<blockquote><p>Gutenberg is going to be bundled with WordPress itself. That’s definitely going to give a tough time to all 3rd party page builders and even that is not the case there are some really big players around like Elementor, Divi, Beaver Builder, and others which are going to be hard for us to compete with, being a completely free project and providing almost all the great features in free version&#8230;</p>\n<p>So the main reason for us to discontinue Tailor is due to finances, which Tailor needs to keep on its development and marketing to compete with all the big players and especially Gutenberg.</p></blockquote>\n<p>This instance seems to be more of a case of the new management running out of funds, rather than Gutenberg preemptively killing off a page builder. Enclavely was no longer willing to invest in developing a product that could compete against some of the more widely used page builders.</p>\n<p>&#8220;Tailor needs a lot of effort and money, which was much more than we estimated,&#8221; an Enclavely representative said when I contacted the company. &#8220;And even if we continue to put effort and money in this project, we all know that Gutenberg is going to smash this space soon and we won&#8217;t be able to survive, and so will be the case with some other page builders. This is why we decided to end this now.&#8221;</p>\n<p>Tailor currently has more than 3,000 active installations, according to WordPress.org. Fans of the plugin commented on the <a href="https://medium.com/tailor-page-builder/end-of-tailor-rise-of-gutenberg-6b4c59431f99" rel="noopener" target="_blank">announcement</a>, asking if the original developer might be able to pick the project back up again.</p>\n<p>When I contacted the company, they said the original developer was no longer involved with the project.</p>\n<p>&#8220;The original developer has parted ways since the acquisition,&#8221; an Enclavely representative said. &#8220;He was involved with some stuff in the start but not that much, thus the decision is mainly taken by us based on the issues we were facing in maintaining this project.&#8221;</p>\n<p>However, Worsfold&#8217;s account of his involvement with Tailor following the acquisition differs greatly from Enclavely&#8217;s report.</p>\n<p>&#8220;I handed over control of the project in July, although all releases since then were also written by me and deployed on their behalf,&#8221; Worsfold said. &#8220;Given that I haven&#8217;t been asked to help with anything recently, and there have been no further releases, it looks like development has already ended.&#8221;</p>\n<p>The plugin is <a href="https://wordpress.org/plugins/tailor/" rel="noopener" target="_blank">available free on WordPress.org</a> and licensed under the GPL, so anyone who wants to can fork it. Worsfold doesn&#8217;t anticipate having the time to maintain the project himself and said he was under the impression that Enclavely is attempting to sell it.</p>\n<p>&#8220;I made the decision to hand over control of Tailor as work and other commitments meant that I couldn&#8217;t dedicate enough time to the project,&#8221; Worsfold said. &#8220;I had hoped that the new team would continue development, provide support, and ensure the needs of existing users were met. However after just three months they&#8217;ve decided to give up. That&#8217;s obviously very disappointing.&#8221;</p>\n<p>Worsfold said that when he sold it to them, it was with the understanding that they would continue to develop and maintain it. He doesn&#8217;t anticipate being able to re-adopt it due to a lack of time to dedicate to the project.</p>\n<p>&#8220;I&#8217;m in much the same situation I was in before and it seems they are wanting to on-sell it themselves, so I can&#8217;t imagine I will be able to readopt it,&#8221; Worsfold said. &#8220;I have mixed feelings about the whole situation. Ultimately I see Gutenberg doing most of what page builders currently do, but in a better, more standardized, way. Hopefully, whatever&#8217;s left (custom blocks, styles, functionality etc.) will build on the framework and serve to reduce the amount of fragmentation in the ecosystem.&#8221;</p>\n<p>Worsfold is still limited on free time but said he would be willing to contribute to the project  if someone decided to fork it and keep it alive.</p>\n<p>&#8220;It would be a shame to see something I built, and that people use, simply die,&#8221; he said. &#8220;Hopefully someone will either fork it or take over development.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 21 Nov 2017 00:15:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:105:"WPTavern: GitHub Launches Security Alerts for JavaScript and Ruby Projects, Python Support Coming in 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76663";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:115:"https://wptavern.com/github-launches-security-alerts-for-javascript-and-ruby-projects-python-support-coming-in-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1873:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2015/04/github-octocat.jpg?ssl=1"><img /></a></p>\n<p>Last month <a href="https://wptavern.com/github-launches-new-dependency-graph-feature-with-security-alerts-coming-soon" rel="noopener" target="_blank">GitHub launched its Dependency Graph feature</a> that tracks a repository&#8217;s dependencies and sub-dependencies under the Insights tab. This week the company rolled out an expansion of the feature and will now <a href="https://github.com/blog/2470-introducing-security-alerts-on-github" rel="noopener" target="_blank">identify known vulnerabilities and send notifications</a> with suggested fixes from the GitHub community.</p>\n<p>Dependency graphs and security alerts are automatically enabled for public repositories, provided the repository owner has defined the dependencies in <a href="https://help.github.com/articles/listing-the-packages-that-a-repository-depends-on" rel="noopener" target="_blank">one of the supported manifest file types</a>, such as package.json or Gemfile. (Private repo owners have to opt in.) The vulnerability alerts are not public &#8211; they will only be shown to those who have been granted access to the vulnerability alerts.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/11/github-dependency-vulnerability.png?ssl=1"><img /></a></p>\n<p>GitHub uses data from the <a href="https://nvd.nist.gov/" rel="noopener" target="_blank">National Vulnerability Database</a> to alert repository owners about publicly disclosed vulnerabilities that have <a href="https://cve.mitre.org/" rel="noopener" target="_blank">CVE IDs</a>. Vulnerability detection is currently limited to JavaScript and Ruby projects but Python support is next on the roadmap for 2018. PHP, which is a bet less widely used in projects on GitHub, is likely further down the list.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 18 Nov 2017 00:25:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: WordCamp Europe 2018 Speaker Applications Now Open";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76608";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wptavern.com/wordcamp-europe-2018-speaker-applications-now-open";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3019:"<p>WordCamp Europe 2018 has opened the <a href="https://2018.europe.wordcamp.org/2017/11/15/are-you-ready-to-speak-at-the-largest-wordpress-event-in-europe/" rel="noopener" target="_blank">call for speakers</a> and will be accepting applications through January 15. The organizing team recommends that speakers already have some experience ahead of applying to speak at the largest WordPress event in Europe, but a dedicated Content Team will also be available with resources for helping speakers create a successful presentation.</p>\n<p>The 2017 event received a total of 235 speaker applications and 43 were selected for the main event. Organizers plan to stick to the same format and are calling for 40-minute talks (30 min + 10 min Q&amp;A) as well as 10-minute lightning talks. This year the event will experiment with hosting community workshops and organizers plan to open a separate call for workshop leaders next week.</p>\n<p>The Content Team put out a specific call for more technical talks at the 2018 event after a <a href="https://2018.europe.wordcamp.org/2017/11/10/how-your-feedback-will-help-us-shape-the-next-wordcamp-europe/" rel="noopener" target="_blank">community survey</a> showed that more developer-oriented talks are what the audience is looking for. More than half of those surveyed identified themselves as developers (54%), with business owners (12%) the next largest demographic.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-17-at-11.44.21-AM.png?ssl=1"><img /></a></p>\n<p>The survey also showed that 37% of respondents have been working with WordPress for more than 9 years and roughly 90% of attendees have been using WordPress for 4-9+ years. Advanced development was the most highly requested topic for presentations, selected by 53% of respondents, followed by design (45%).</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-17-at-11.54.06-AM.png?ssl=1"><img /></a></p>\n<p>The survey results offer some insight about which topics might fare well at WCEU in 2018. Organizers have also compiled an extensive <a href="https://apply.wp-europe.org/ideas" rel="noopener" target="_blank">list of ideas and topics</a> to inspire speaker applicants.</p>\n<p>A batch of 1,000 Early Bird tickets recently <a href="https://wptavern.com/wordcamp-europe-2018-early-bird-tickets-now-on-sale" rel="noopener" target="_blank">went on sale</a> and there are still 680 available. Attendees who purchase a ticket before December 31, 2017, will receive a limited-edition swag item. The organizing team plans to release tickets in batches, as in previous years, but will not be setting specific expectations on sales this year, according to PR representative Letizia Barbi. The Sava Center venue, an international congress and cultural center, is the largest audience hall in Serbia and will accommodate all who want to attend WCEU 2018. Barbi said it should also scale down nicely in case of a smaller turn out.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Nov 2017 19:19:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:99:"WPTavern: WooCommerce Explores the Possibilities and Challenges for E-Commerce in the Gutenberg Era";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76597";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:110:"https://wptavern.com/woocommerce-explores-the-possibilities-and-challenges-for-e-commerce-in-the-gutenberg-era";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4350:"<p>The next release of WordPress (5.0) will introduce the new Gutenberg editor and contributors plan to keep it rolling towards the eventual goal of providing a full site building experience. Nearly every WordPress theme and plugin developer will be impacted by the change and many are starting to look ahead to how their products may interact with Gutenberg in the future.</p>\n<p>What will e-commerce look like in the Gutenberg era? The WooCommerce design team has published <a href="https://woocommerce.com/2017/11/woocommerce-gutenberg/" rel="noopener" target="_blank">a preview of some of their &#8220;Wootenberg&#8221; experiments</a>, along with a gif demonstrating what a block-based editing experience may look like in the context of working with products. The team sees a lot of potential for putting the power of visual product editing into the hands of users.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/wootenberg.gif?ssl=1"><img /></a></p>\n<p>The example shows a quick exploration of page layout with product blocks and the team also posted an idea of what basic product authoring may look like with a predefined product template that includes the featured image, product title, description, and price as new Gutenberg blocks. But will it be possible to have complex product creation fit into a block-based editor? The WooCommerce team admits in the post that they don&#8217;t yet know how this will work.</p>\n<p>&#8220;One thing that isn’t yet 100% clear is how complex plugins like WooCommerce will work with Gutenberg,&#8221; Automattic designer/developer James Koster said. &#8220;A simple product with a description, a price, and a category is one thing. But a product with variations, for each of which you want to upload a different image, and need to manage/track stock is quite another. Imagining a WYSIWYG editing experience for that kind of data is a little fuzzier.&#8221;</p>\n<p>Koster referenced Gutenberg&#8217;s newly merged support for meta boxes, the first step in making product authoring possible. However, the Gutenberg team is still experimenting and isn&#8217;t yet set on a solution for implementing meta boxes.</p>\n<p>&#8220;How this works with WooCommerce in the long term is unclear,&#8221; Koster said. &#8220;But you can rest assured it’s something we’ll be dedicating more time to investigating as WordPress approaches the 5.0 release.&#8221; Koster concludes the post by asking readers if visual product editing, with the flexibility to rearrange product/shop layouts, is something that interests them.</p>\n<p>&#8220;If there’s one thing that WooCommerce should perhaps learn from Shopify’s rapid growth, it’s that many &#8216;would-be&#8217; shop owners don’t care to spend hours upon hours tweaking the layout of their shop, and that pre-built easy-to-use software that looks good and feels good, but can still be extended in complex ways, is what attracts many users,&#8221; Jesse Nickles commented on the post. &#8220;While this may be the underlying goal of Gutenberg, it perhaps doesn’t crossover clearly to the e-commerce world.&#8221;</p>\n<p>Koster said he agrees that users don&#8217;t always need visual editing experiences and that simple things like price changes should be quick and painless.</p>\n<p>&#8220;How we present data-driven editing alongside the Gutenberg experience will ultimately determine the success of the project from a WooCommerce perspective,&#8221; Koster said.</p>\n<p>Support for meta boxes is one the most challenging aspects of the Gutenberg project that the team has yet to solve. Exploring the possibilities of flexible page layouts for products is exciting, but even the WooCommerce team is left wondering how this is all going to work with more complex CMS data. Smaller product teams without the collective knowledge and resources of WooCommerce may have a more difficult time finding the bandwidth to experiment and rebuild their products in time for WordPress 5.0.</p>\n<p>The WooCommerce team invites any users interested in Gutenberg-related UX changes to join the plugin&#8217;s <a href="https://woocommerce.com/design-feedback/" rel="noopener" target="_blank">design feedback group</a>, as they continue to explore how the new editor will work in the context of complex e-commerce product creation and display.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Nov 2017 04:30:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:113:"WPTavern: GDPR for WordPress Project Gains Momentum, Proposal Receives Positive Response from Developer Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76484";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:123:"https://wptavern.com/gdpr-for-wordpress-project-gains-momentum-proposal-receives-positive-response-from-developer-community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5743:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/WP-GDPR-Compliance.png?ssl=1"><img /></a></p>\n<p>Community feedback on the new <a href="https://www.gdprwp.com" rel="noopener" target="_blank">GDPR for WordPress project</a>, created by WordCamp Denmark organizer Kåre Mulvad Steffensen and WP Pusher creator Peter Suhm, has started rolling in after the two launched a survey for developers. The project aims to provide an industry standard for getting plugins compliant with EU General Data Protection Regulation (GDPR) legislation ahead of the May 2018 deadline.</p>\n<p>Steffensen <a href="https://www.gdprwp.com/status-the-gdpr-interface/" rel="noopener" target="_blank">published</a> some initial results of the survey after having it open for two weeks. So far, 90% of respondents have answered that they would consider implementing a GDPR &#8220;file&#8221; types solution for their plugins if a standard was available. Only 4.9% of the 40 developers who responded said they have a plan for making their plugins GDPR compliant and 43.9% said they do not currently have a plan. The remaining 24.4% were developers of plugins that do not handle personal data.</p>\n<p>&#8220;Our talks with Paul Sieminski from <a href="https://automattic.com/" rel="noopener" target="_blank">Automattic</a> and Dovy Paukstys from the <a href="https://reduxframework.com/" rel="noopener" target="_blank">Redux options framework</a> have reassured us that we still do have a need for a GDPR structure which can help the community establish a basis for handling GDPR compliance,&#8221; Steffensen said.</p>\n<p>Steffensen and Suhm created a <a href="https://github.com/GDPRWP/standard" rel="noopener" target="_blank">GitHub repository</a> where they have outlined their proposal for a PHP object interface that plugin developers could add to their codebases as a standard way of indicating how their plugins work with personal data.</p>\n<p>&#8220;The nature of such an interface puts some responsibility in the hands of the developer to identify any place personal data is stored,&#8221; Steffensen said. &#8220;What kind of data it is, and for what purpose as well as how it should be handled upon deletion. The Interface approach will allow a community-wide adoption, without setting limitations on how plugin developers choose to work with their data – something we obviously can’t control.&#8221;</p>\n<p>The idea is that plugin developers could then build other tools on top of this framework using specific functions that correspond to GDPR requirements, such as functions that allow users to access their data, implement the right to be forgotten, report data breaches, and delete and anonymize data. Developers could also build plugins that offer a plain language description of what personal data a plugin collects and how it is handled.</p>\n<p>In speaking with Dovy Paukstys on how this could work with Redux, Steffensen said the options framework may be able to facilitate compliance for the 500,000+ sites where it is active and the developers who use it to build plugins.</p>\n<p>&#8220;Dovy from Redux has a coder&#8217;s view on this,&#8221; Steffensen said. &#8220;Our object interface (PHP) would be something his framework could provide an easy way to utilize for the many developers using Redux.  The redux users (developers) could essentially do this themselves also, but since Redux is a framework it makes sense to see if they can build something that will make it near instant for developers to provide compliance for the GDPR.&#8221;</p>\n<p>Steffensen said the team is aware that the first version of the interface will not render plugins, and by extension their sites, instantly compliant. The interface they are proposing is not one that could be held legally accountable, but the goal is to make it possible for developers to build accountable systems on top of it.</p>\n<h3>GDPR for WordPress Project Founders Consider Accepting Sponsorships</h3>\n<p>With 189 <a href="http://www.gdprcountdownclock.com/" rel="noopener" target="_blank">days remaining before the GDPR goes into effect</a>, the team will need to work quickly to make a solution available with enough time for interested developers to incorporate it into their plugins. They have not yet set up a way to accept donations but are considering it.</p>\n<p>&#8220;We aren&#8217;t actively seeking funding, but would love any funds that would help us allocate the time needed to keep the momentum going,&#8221; Steffensen said. &#8220;We&#8217;re lucky that the <a href="https://wptavern.com/gdpr-for-wordpress-project-seeks-to-provide-a-standard-for-plugin-compliance" rel="noopener" target="_blank">WP Tavern article</a> brought attention to our GDPR approach and have caught the eyes of some of the key players in the ecosystem. One such company is Mailpoet that was the first to raise the idea of sponsoring our work.&#8221;</p>\n<p>Steffensen works at <a href="http://Peytz.dk" rel="noopener" target="_blank">Peytz.dk</a>, a Danish WordPress agency that wants to support the community and has allocated some of his time to work on the project. He said any funding/donations they receive would be spent on pushing the roadmap forward, investing time in coding, and possibly seeking further advice from people who they cannot expect to be in it for free.</p>\n<p>In addition to looking at ways to receive donations, the team plans to keep the survey open for developers for awhile longer to try to make more connections in the community. Steffensen said they hope respondents will help them gain insight on the developer community&#8217;s readiness and also enable them to reach out to any plugin owners who could play a key role in a wider adoption.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 20:58:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: Consultants Are WordPress’ Boots on the Ground";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76619";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wptavern.com/consultants-are-wordpress-boots-on-the-ground";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1173:"<blockquote><p>A business can’t survive without strong sales &amp; customer service, two competencies that are arguably the lifeblood of a company.</p>\n<p>Many of you reading this fill that exact gap for the open source WordPress project. I don’t mean this as a slight to the thousands of wonderful people who build the software, document it, and support it in the forums, but that consultants (doing it right or wrong) are also fueling this locomotive too.</p>\n<p>There are no official sales or customer service channels at WordPress.org and us consultants bear the brunt of it — for better or worse — and that’s where our job comes in. Just as you trust a core contributor to spot-check her code and ensure that we’ve <em>sanitized all the things! </em></p>\n<p><em>Consultants are the boots on the ground, and as you’ll see below in my feedback section, represent a disproportionate ratio of launching many more websites than an individual website owner. &#8211; Matt Medeiros<br />\n</em></p></blockquote>\n<p>From <a href="https://mattreport.com/growth-of-wordpress/">The blue-collar WordPress worker and the 2,500+ websites built to grow the CMS</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 20:07:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: WPWeekly Episode 294 – HeroPress, Community, and WinningWP With Topher DeRosia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=76578&preview=true&preview_id=76578";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://wptavern.com/wpweekly-episode-294-heropress-community-and-winningwp-with-topher-derosia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2958:"<p>In this episode, <a href="https://jjj.blog/">John James Jacoby</a> and I are joined by <a href="https://topher1kenobe.com/">Topher DeRosia</a>, founder of <a href="https://heropress.com/">HeroPress</a>. DeRosia provides an update on HeroPress and explains his new role creating <a href="https://www.youtube.com/channel/UCt8Sa48zWN_WcordE7TaUBg">WordPress training videos</a> for <a href="https://winningwp.com/">WinningWP</a>. Jacoby and I discussed the news of the week including, Press This removed in WordPress 4.9, Meta box support in Gutenberg, and WP-SpamShield removed from the directory.</p>\n<p>Near the end of the show, we discuss whether or not consultants, agencies, and site builders have been left out of the discussion and not factored into WordPress&#8217; growth over the years.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/press-this-removed-from-wordpress-4-9-in-favor-of-a-plugin">Press This Removed from WordPress 4.9 in Favor of a Plugin</a><br />\n<a href="https://wptavern.com/bianca-welds-awarded-kim-parsell-travel-scholarship">Bianca Welds Awarded Kim Parsell Travel Scholarship</a><br />\n<a href="https://wptavern.com/wordcamp-europe-2018-early-bird-tickets-now-on-sale">WordCamp Europe 2018 Early Bird Tickets Now on Sale</a><br />\n<a href="https://wptavern.com/gutenberg-contributors-explore-alternative-to-using-iframes-for-meta-boxes">Gutenberg Contributors Explore Alternative to Using iframes for Meta Boxes</a><br />\n<a href="https://wptavern.com/wp-spamshield-plugin-removed-from-wordpress-org-author-plans-to-pull-all-plugins-from-the-directory">WP-SpamShield Plugin Removed from WordPress.org, Author Plans to Pull All Plugins from the Directory</a><br />\n<a href="https://mattreport.com/growth-of-wordpress/?utm_content=bufferee910&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer">The blue-collar WordPress worker and the 2,500+ websites built to grow the CMS</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href="https://wptavern.com/how-to-whitelist-comments-in-wordpress">How to Whitelist Comments in WordPress</a></p>\n<p><a href="https://wordpress.org/plugins/dark-mode/">Dark Mode</a> is an experimental feature plugin that darkens the colors of the WordPress backend.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, November 22nd 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank" rel="noopener">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #294:</strong><br />\n</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 03:13:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:130:"WPTavern: WordPress 4.9 Released with Major Improvements to Customizer Workflow, Updated Code Editors, and New Core Gallery Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76391";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:139:"https://wptavern.com/wordpress-4-9-released-with-major-improvements-to-customizer-workflow-updated-code-editors-and-new-core-gallery-widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5359:"<p><a href="https://wordpress.org/news/2017/11/tipton/" rel="noopener" target="_blank">WordPress 4.9</a> &#8220;Tipton&#8221; was released today, named for Oklahoma-born jazz musician <a href="https://en.wikipedia.org/wiki/Billy_Tipton" rel="noopener" target="_blank">William Lee Tipton</a>, a gifted pianist and saxophonist. This update introduces major improvements to the design and collaboration workflow in the Customizer, improves WordPress&#8217; built-in code editor, and enhances core text and media widgets.</p>\n<h4>Draft, Schedule, and Preview Changes in the Customizer</h4>\n<p>Prior to 4.9, users could get a live preview of their sites in the Customizer but any changes they made would need to be saved immediately or discarded. This update makes it possible to draft and schedule changes in the Customizer, and even share a preview link to collaborate on changes before making them live. Users can now stage content, such as new pages, a new set of widgets, a different combination of menu items, and schedule it all to publish at a future date.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/customizer-publish-settings-schedule-e1510636315310.png?ssl=1"><img /></a></p>\n<p>This release also brings the ability to search, browse, and preview themes directly in the Customizer. The search interface includes filters for subject, features, and layout, just like the ones on the &#8220;Add Themes&#8221; screen in wp-admin. It does not yet include the featured, popular, latest, or favorites tabs, so users will need to navigate back to the admin if they want to browse those categories.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/11/theme-browser-customizer.png?ssl=1"><img /></a></p>\n<p>The menu creation process has also been updated in the Customizer to be less confusing with a rethink of the UI and revised copy.</p>\n<h4>Syntax Highlighting and Error Checking Added to the Code Editors</h4>\n<p>WordPress 4.9 brings syntax highlighting, linting, and auto-completion to the built-in code editors by incorporating the <a href="https://codemirror.net/">CodeMirror</a> library. These long-awaited improvements are now available in the theme and plugin editors as well as the custom HTML widget and additional CSS box in the Customizer. The feature comes with <a href="https://wptavern.com/wordpress-4-9-protects-users-from-fatal-errors-created-in-the-theme-and-plugin-editors" rel="noopener" target="_blank">prominent warnings</a> about directly editing themes and plugins and protection against saving code that would cause a fatal error.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/11/editor-css-error-e1510640427941.png?ssl=1"><img /></a></p>\n<h4>New Core Gallery Widget and Support for Shortcodes and Embedded Media in the Text Widget</h4>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/09/core-gallery-widget.png?ssl=1"><img /></a><a href="https://wptavern.com/new-core-gallery-widget-targeted-for-wordpress-4-9" rel="noopener" target="_blank">WordPress 4.9 adds a new gallery widget</a> to the collection of core media widgets (audio, image, and video) that were introduced in 4.8. It brings the same gallery-creation features to widgets that have long been available in the post and page editors.</p>\n<p>These incremental changes will help users get ready for Gutenberg&#8217;s block-based interface. The plan is to eventually transition widgets over to blocks after Gutenberg is in core and the plugin already has support for a gallery block, as well as a Custom HTML block.</p>\n<p>As of 4.9, users can now embed media in the Text widget, including images, video, and audio by clicking the &#8220;Add Media&#8221; button. In order to make this possible, WordPress contributors also needed to <a href="https://wptavern.com/wordpress-4-9-will-support-shortcodes-and-embedded-media-in-the-text-widget" rel="noopener" target="_blank">add shortcode support to widgets</a>, a feature that users have requested for nearly a decade. With this now built into core, hundreds of thousands of WordPress sites will no longer need additional code from plugins and themes to use shortcodes in widgets.</p>\n<p>Widgets have also been improved to offer a better migration experience with updated logic for mapping widgets between two themes’ widget areas.</p>\n<h4>On Towards Gutenberg</h4>\n<p>WordPress 4.9 also includes a notice in the about.php page of the admin, inviting users to help test or contribute to Gutenberg. It is the first time a feature plugin has been highlighted so prominently on the page users see after they update to the latest version.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-15-at-4.33.01-PM-e1510785254925.png?ssl=1"><img /></a></p>\n<p>The Gutenberg project has been getting a lot of attention over the past few months as the WordPress community looks ahead to the 5.0 release that will introduce the new editor to the world. Meanwhile, contributors to 4.9 have been working in tandem to make significant improvements to existing features, enabling users to do more with widgets and overall site design than ever before. This release was led by Weston Ruter and Mel Choyce with help from 443 contributors, 42% (185) of them contributing to WordPress for the first time.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 01:24:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Dev Blog: WordPress 4.9 “Tipton”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4968";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2017/11/tipton/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:41239:"<h2>Major Customizer Improvements, Code Error Checking, and More!&nbsp;🎉</h2>\n<img src="https://i1.wp.com/wordpress.org/news/files/2017/11/banner.png?fit=2400%2C1200&ssl=1" alt="" />\n<p>Version 4.9 of WordPress, named “Tipton” in honor of jazz musician and band leader Billy Tipton, is available for download or update in your WordPress dashboard. New features in 4.9 will smooth your design workflow and keep you safe from coding errors.</p>\n<p>Featuring design drafts, scheduling, and locking, along with preview links, the Customizer workflow improves collaboration for content creators. What’s more, code syntax highlighting and error checking will make for a clean and smooth site building experience. Finally, if all that wasn’t pretty great, we’ve got an awesome new Gallery widget and improvements to theme browsing and switching.</p>\n<hr class="wp-block-separator" />\n<h2>Customizer Workflow Improved </h2>\n<img src="https://i0.wp.com/wordpress.org/news/files/2017/11/customizer-workflow-improved-small.png?w=632&ssl=1" alt="" />\n<h3>Draft and Schedule Site Design Customizations</h3>\n<p>Yes, you read that right. Just like you can draft and revise posts and schedule them to go live on the date and time you choose, you can now tinker with your site’s design and schedule those design changes to go live as you please.</p>\n<h3>Collaborate with Design Preview Links</h3>\n<p>Need to get some feedback on proposed site design changes? WordPress 4.9 gives you a preview link you can send to colleagues and customers so that you can collect and integrate feedback before you schedule the changes to go live. Can we say collaboration++?</p>\n<h3>Design Locking Guards Your Changes</h3>\n<p>Ever encounter a scenario where two designers walk into a project and designer A overrides designer B’s beautiful changes? WordPress 4.9’s design lock feature (similar to post locking) secures your draft design so that no one can make changes to it or erase all your hard work.</p>\n<h3>A Prompt to Protect Your Work</h3>\n<p>Were you lured away from your desk before you saved your new draft design? Fear not, when you return, WordPress 4.9 will politely ask whether or not you’d like to save your unsaved changes.</p>\n<hr class="wp-block-separator" />\n<h2>Coding Enhancements</h2>\n<img src="https://i2.wp.com/wordpress.org/news/files/2017/11/coding-enhancements-small.png?w=632&ssl=1" alt="" />\n<h3>Syntax Highlighting and Error Checking? Yes, Please!</h3>\n<p>You’ve got a display problem but can’t quite figure out exactly what went wrong in the CSS you lovingly wrote. With syntax highlighting and error checking for CSS editing and the Custom HTML widget introduced in WordPress 4.8.1, you’ll pinpoint coding errors quickly. Practically guaranteed to help you scan code more easily, and suss out &amp; fix code errors quickly.</p>\n<h3>Sandbox for Safety</h3>\n<p>The dreaded white screen. You’ll avoid it when working on themes and plugin code because WordPress 4.9 will warn you about saving an error. You’ll sleep better at night.</p>\n<h3>Warning: Potential Danger Ahead!</h3>\n<p>When you edit themes and plugins directly, WordPress 4.9 will politely warn you that this is a dangerous practice and will recommend that you draft and test changes before updating your file. Take the safe route: You’ll thank you. Your team and customers will thank you.</p>\n<hr class="wp-block-separator" />\n<h2>Even More Widget Updates </h2>\n<img src="https://i1.wp.com/wordpress.org/news/files/2017/11/even-more-widget-updates-small.png?w=632&ssl=1" alt="" />\n<h3>The New Gallery Widget</h3>\n<p>An incremental improvement to the media changes hatched in WordPress 4.8, you can now add a gallery via this new widget. Yes!</p>\n<h3>Press a Button, Add Media</h3>\n<p>Want to add media to your text widget? Embed images, video, and audio directly into the widget along with your text, with our simple but useful Add Media button. Woo!</p>\n<hr class="wp-block-separator" />\n<h2>Site Building Improvements </h2>\n<img src="https://i1.wp.com/wordpress.org/news/files/2017/11/site-building-improvements-small.png?w=632&ssl=1" alt="" />\n<h3>More Reliable Theme Switching</h3>\n<p>When you switch themes, widgets sometimes think they can just move location. Improvements in WordPress 4.9 offer more persistent menu and widget placement when you decide it’s time for a new theme. </p>\n<h3>Find and Preview the Perfect Theme</h3>\n<p>Looking for a new theme for your site? Now, from within the Customizer, you can search, browse, and preview over 2600 themes before deploying changes to your site. What’s more, you can speed your search with filters for subject, features, and layout.</p>\n<h3>Better Menu Instructions = Less Confusion</h3>\n<p>Were you confused by the steps to create a new menu? Perhaps no longer! We’ve ironed out the UX for a smoother menu creation process. Newly updated copy will guide you.</p>\n<hr class="wp-block-separator" />\n<h2>Lend a Hand with Gutenberg 🤝</h2>\n<img src="https://i2.wp.com/wordpress.org/news/files/2017/11/gutenberg-1.png?w=632&ssl=1" alt="" />\n<p>WordPress is working on a new way to create and control your content and we’d love to have your help. Interested in being an <a href="https://wordpress.org/plugins/gutenberg/">early tester</a> or getting involved with the Gutenberg project? <a href="https://github.com/WordPress/gutenberg">Contribute on GitHub</a>.</p>\n<p>(PS: this post was written in Gutenberg!)</p>\n<hr class="wp-block-separator" />\n<h2>Developer Happiness 😊</h2>\n<h3><a href="https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/">Customizer JS API Improvements</a></h3>\n<p>We’ve made numerous improvements to the Customizer JS API in WordPress 4.9, eliminating many pain points. (Hello, default parameters for constructs! Goodbye repeated ID for constructs!) There are also new base control templates, a date/time control, and section/panel/global notifications to name a few. <a href="https://make.wordpress.org/core/2017/11/01/improvements-to-the-customize-js-api-in-4-9/">Check out the full list.</a></p>\n<h3><a href="https://make.wordpress.org/core/2017/10/22/code-editing-improvements-in-wordpress-4-9/">CodeMirror available for use in your themes and plugins</a></h3>\n<p>We’ve introduced a new code editing library, CodeMirror, for use within core. CodeMirror allows for syntax highlighting, error checking, and validation when creating code writing or editing experiences within your plugins, like CSS or JavaScript include fields.</p>\n<h3><a href="https://make.wordpress.org/core/2017/10/30/mediaelement-upgrades-in-wordpress-4-9/">MediaElement.js upgraded to 4.2.6</a></h3>\n<p>WordPress 4.9 includes an upgraded version of MediaElement.js, which removes dependencies on jQuery, improves accessibility, modernizes the UI, and fixes many bugs.</p>\n<h3><a href="https://make.wordpress.org/core/2017/10/15/improvements-for-roles-and-capabilities-in-4-9/">Roles and Capabilities Improvements</a></h3>\n<p>New capabilities have been introduced that allow granular management of plugins and translation files. In addition, the site switching process in multisite has been fine-tuned to update the available roles and capabilities in a more reliable and coherent way.</p>\n<hr class="wp-block-separator" />\n<h2>The Squad</h2>\n<p>This release was led by <a href="https://choycedesign.com/">Mel Choyce</a> and <a href="https://weston.ruter.net/">Weston Ruter</a>, with the help of the following fabulous folks. There are 443 contributors with props in this release, with 185 of them contributing for the first time. Pull up some Billy Tipton on your music service of choice, and check out some of their profiles:</p>\n<p><a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abrightclearweb">abrightclearweb</a>, <a href="https://profiles.wordpress.org/ibachal">Achal Jain</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/acmethemes">Acme Themes</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adammacias">adammacias</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/ahmadawais">ahmadawais</a>, <a href="https://profiles.wordpress.org/airesvsg">airesvsg</a>, <a href="https://profiles.wordpress.org/ajoah">ajoah</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/akshayvinchurkar">akshayvinchurkar</a>, <a href="https://profiles.wordpress.org/schlessera">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/ironpaperweight">Alex Hon</a>, <a href="https://profiles.wordpress.org/alex27">alex27</a>, <a href="https://profiles.wordpress.org/allancole">allancole</a>, <a href="https://profiles.wordpress.org/arush">Amanda Rush</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andrewp-2">Andreas Panag</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/kelderic">Andy Mercer</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/aniketpant">Aniket Pant</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/ahortin">Anthony Hortin</a>, <a href="https://profiles.wordpress.org/antisilent">antisilent</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/apokalyptik">apokalyptik</a>, <a href="https://profiles.wordpress.org/artoliukkonen">artoliukkonen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/attitude">attitude</a>, <a href="https://profiles.wordpress.org/backermann">backermann</a>, <a href="https://profiles.wordpress.org/b-07">Bappi</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/quasel">Bernhard Gronau</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/binarymoon">binarymoon</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornw">BjornW</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/boblinthorst">boblinthorst</a>, <a href="https://profiles.wordpress.org/boboudreau">boboudreau</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="https://profiles.wordpress.org/brainstormforce">Brainstorm Force</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianhogg">Brian Hogg</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/bronsonquick">Bronson Quick</a>, <a href="https://profiles.wordpress.org/sixhours">Caroline Moore</a>, <a href="https://profiles.wordpress.org/caseypatrickdriscoll">Casey Driscoll</a>, <a href="https://profiles.wordpress.org/caspie">Caspie</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/cheeserolls">cheeserolls</a>, <a href="https://profiles.wordpress.org/chesio">chesio</a>, <a href="https://profiles.wordpress.org/ketuchetan">chetansatasiya</a>, <a href="https://profiles.wordpress.org/choongsavvii">choong</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chredd">chredd</a>, <a href="https://profiles.wordpress.org/chrisjean">Chris Jean</a>, <a href="https://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="https://profiles.wordpress.org/chris_d2d">Chris Smith</a>, <a href="https://profiles.wordpress.org/chrisvanpatten">Chris Van Patten</a>, <a href="https://profiles.wordpress.org/chriswiegman">Chris Wiegman</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="https://profiles.wordpress.org/christian1012">Christian Chung</a>, <a href="https://profiles.wordpress.org/cwpnolen">Christian Nolen</a>, <a href="https://profiles.wordpress.org/needle">Christian Wach</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/clarionwpdeveloper">Clarion Technologies</a>, <a href="https://profiles.wordpress.org/claudiosmweb">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiosanches">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiolabarbera">ClaudioLaBarbera</a>, <a href="https://profiles.wordpress.org/codemovementpk">codemovement.pk</a>, <a href="https://profiles.wordpress.org/coderkevin">coderkevin</a>, <a href="https://profiles.wordpress.org/codfish">codfish</a>, <a href="https://profiles.wordpress.org/coreymcollins">coreymcollins</a>, <a href="https://profiles.wordpress.org/curdin">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/cgrymala">Curtiss Grymala</a>, <a href="https://profiles.wordpress.org/cdog">Cătălin Dogaru</a>, <a href="https://profiles.wordpress.org/danhgilmore">danhgilmore</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber </a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/danielpietrasik">Daniel Pietrasik</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dllh">Daryl L. L. Houston (dllh)</a>, <a href="https://profiles.wordpress.org/davepullig">Dave Pullig</a>, <a href="https://profiles.wordpress.org/goto10">Dave Romsey (goto10)</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/turtlepod">David Chandra Purnama</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dglingren">David Lingren</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/davidbhayes">davidbhayes</a>, <a href="https://profiles.wordpress.org/folletto">Davide ''Folletto'' Casali</a>, <a href="https://profiles.wordpress.org/deeptiboddapati">deeptiboddapati</a>, <a href="https://profiles.wordpress.org/delphinus">delphinus</a>, <a href="https://profiles.wordpress.org/deltafactory">deltafactory</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/pcfreak30">Derrick Hammer</a>, <a href="https://profiles.wordpress.org/derrickkoo">Derrick Koo</a>, <a href="https://profiles.wordpress.org/dimchik">dimchik</a>, <a href="https://profiles.wordpress.org/dineshc">Dinesh Chouhan</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipeshkakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dotancohen">Dotan Cohen</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/doughamlin">doughamlin</a>, <a href="https://profiles.wordpress.org/dreamon11">DreamOn11</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/duncanjbrown">duncanjbrown</a>, <a href="https://profiles.wordpress.org/dungengronovius">dungengronovius</a>, <a href="https://profiles.wordpress.org/dylanauty">DylanAuty</a>, <a href="https://profiles.wordpress.org/hurtige">Eddie Hurtig</a>, <a href="https://profiles.wordpress.org/oso96_2000">Eduardo Reveles</a>, <a href="https://profiles.wordpress.org/chopinbach">Edwin Cromley</a>, <a href="https://profiles.wordpress.org/electricfeet">ElectricFeet</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elyobo">elyobo</a>, <a href="https://profiles.wordpress.org/enodekciw">enodekciw</a>, <a href="https://profiles.wordpress.org/enshrined">enshrined</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/pushred">Eric Lanehart</a>, <a href="https://profiles.wordpress.org/eherman24">Evan Herman</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fencer04">Fencer04</a>, <a href="https://profiles.wordpress.org/florianbrinkmann">Florian Brinkmann</a>, <a href="https://profiles.wordpress.org/mista-flo">Florian TIAR</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/fomenkoandrey">fomenkoandrey</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/frankiet">Frankie</a>, <a href="https://profiles.wordpress.org/fjarrett">Frankie Jarrett</a>, <a href="https://profiles.wordpress.org/akeif">Fred</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/fuscata">fuscata</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/goranseric">Goran &#352;erić</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/grantderepas">Grant Derepas</a>, <a href="https://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hiddenpearls">hiddenpearls</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hristo-sg">Hristo Pandjarov</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianedington">Ian Edington</a>, <a href="https://profiles.wordpress.org/idealien">idealien</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/implenton">implenton</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/ivdimova">ivdimova</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jakept">Jacob Peattie</a>, <a href="https://profiles.wordpress.org/whyisjake">Jake Spurlock</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/jamesacero">jamesacero</a>, <a href="https://profiles.wordpress.org/japh">Japh</a>, <a href="https://profiles.wordpress.org/jaredcobb">Jared Cobb</a>, <a href="https://profiles.wordpress.org/jayarjo">jayarjo</a>, <a href="https://profiles.wordpress.org/jdolan">jdolan</a>, <a href="https://profiles.wordpress.org/jdoubleu">jdoubleu</a>, <a href="https://profiles.wordpress.org/jblz">Jeff Bowen</a>, <a href="https://profiles.wordpress.org/jbpaul17">Jeff Paul</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jimt">jimt</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/jmusal">jmusal</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelcj91">Joel James</a>, <a href="https://profiles.wordpress.org/johanmynhardt">johanmynhardt</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/zyphonic">John Dittmar</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/johnpgreen">johnpgreen</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jonathanbardo">Jonathan Bardo</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/daggerhart">Jonathan Daggerhart</a>, <a href="https://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/jonnyauk">jonnyauk</a>, <a href="https://profiles.wordpress.org/jordesign">jordesign</a>, <a href="https://profiles.wordpress.org/jorritschippers">JorritSchippers</a>, <a href="https://profiles.wordpress.org/joefusco">Joseph Fusco</a>, <a href="https://profiles.wordpress.org/jjeaton">Josh Eaton</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshcummingsdesign">joshcummingsdesign</a>, <a href="https://profiles.wordpress.org/joshkadis">joshkadis</a>, <a href="https://profiles.wordpress.org/joyously">Joy</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jrgould">JRGould</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/nukaga">Junko Nukaga</a>, <a href="https://profiles.wordpress.org/justinbusa">Justin Busa</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/jshreve">Justin Shreve</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/kacperszurek">kacperszurek</a>, <a href="https://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="https://profiles.wordpress.org/kalenjohnson">KalenJohnson</a>, <a href="https://profiles.wordpress.org/codebykat">Kat Hagan</a>, <a href="https://profiles.wordpress.org/kkoppenhaver">Keanan Koppenhaver</a>, <a href="https://profiles.wordpress.org/keesiemeijer">keesiemeijer</a>, <a href="https://profiles.wordpress.org/kellbot">kellbot</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="https://profiles.wordpress.org/koenschipper">koenschipper</a>, <a href="https://profiles.wordpress.org/kokarn">kokarn</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kouratoras">Konstantinos Kouratoras</a>, <a href="https://profiles.wordpress.org/kuchenundkakao">kuchenundkakao</a>, <a href="https://profiles.wordpress.org/kuldipem">kuldipem</a>, <a href="https://profiles.wordpress.org/laurelfulford">Laurel Fulford</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leobaiano">Leo Baiano</a>, <a href="https://profiles.wordpress.org/littlebigthing">LittleBigThings (Csaba)</a>, <a href="https://profiles.wordpress.org/lucasstark">Lucas Stark</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/lgedeon">Luke Gedeon</a>, <a href="https://profiles.wordpress.org/lukepettway">Luke Pettway</a>, <a href="https://profiles.wordpress.org/lyubomir_popov">lyubomir_popov</a>, <a href="https://profiles.wordpress.org/mariovalney">M&#225;rio Valney</a>, <a href="https://profiles.wordpress.org/mageshp">mageshp</a>, <a href="https://profiles.wordpress.org/mahesh901122">Mahesh Waghmare</a>, <a href="https://profiles.wordpress.org/mangeshp">Mangesh Parte</a>, <a href="https://profiles.wordpress.org/manishsongirkar36">Manish Songirkar</a>, <a href="https://profiles.wordpress.org/mantismamita">mantismamita</a>, <a href="https://profiles.wordpress.org/mbootsman">Marcel Bootsman</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J.</a>, <a href="https://profiles.wordpress.org/mbelchev">Mariyan Belchev</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mrwweb">Mark Root-Wiley</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/markshep">markshep</a>, <a href="https://profiles.wordpress.org/matrixik">matrixik</a>, <a href="https://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="https://profiles.wordpress.org/mattking5000">Matt King</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/jaworskimatt">Matt PeepSo</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="https://profiles.wordpress.org/maximeculea">Maxime Culea</a>, <a href="https://profiles.wordpress.org/mayukojpn">Mayo Moriyama</a>, <a href="https://profiles.wordpress.org/mckernanin">mckernanin</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mhowell">mhowell</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michalzuber">michalzuber</a>, <a href="https://profiles.wordpress.org/stubgo">Miina Sikk</a>, <a href="https://profiles.wordpress.org/mauteri">Mike Auteri</a>, <a href="https://profiles.wordpress.org/mihai2u">Mike Crantea</a>, <a href="https://profiles.wordpress.org/mdgl">Mike Glendinning</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikelittle">Mike Little</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mikeviele">Mike Viele</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/modemlooper">modemlooper</a>, <a href="https://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="https://profiles.wordpress.org/deremohan">Mohan Dere</a>, <a href="https://profiles.wordpress.org/monikarao">Monika Rao</a>, <a href="https://profiles.wordpress.org/morettigeorgiev">morettigeorgiev</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/mrbobbybryant">mrbobbybryant</a>, <a href="https://profiles.wordpress.org/nnaimov">Naim Naimov</a>, <a href="https://profiles.wordpress.org/natereist">Nate Reist</a>, <a href="https://profiles.wordpress.org/natewr">NateWr</a>, <a href="https://profiles.wordpress.org/nathanrice">nathanrice</a>, <a href="https://profiles.wordpress.org/nazgul">Nazgul</a>, <a href="https://profiles.wordpress.org/greatislander">Ned Zimmerman</a>, <a href="https://profiles.wordpress.org/krstarica">net</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey </a>, <a href="https://profiles.wordpress.org/nikeo">Nicolas GUILLAUME</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/nikv">Nikhil Vimal</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/noplanman">noplanman</a>, <a href="https://profiles.wordpress.org/nullvariable">nullvariable</a>, <a href="https://profiles.wordpress.org/odie2">odie2</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/hideokamoto">Okamoto Hidetaka</a>, <a href="https://profiles.wordpress.org/orvils">orvils</a>, <a href="https://profiles.wordpress.org/oskosk">oskosk</a>, <a href="https://profiles.wordpress.org/ottok">Otto Kek&#228;l&#228;inen</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/imnok">Pantip Treerattanapitak (Nok)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/patilvikasj">patilvikasj</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/sirbrillig">Payton Swick</a>, <a href="https://profiles.wordpress.org/pdufour">pdufour</a>, <a href="https://profiles.wordpress.org/piewp">Perdaan</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/phh">phh</a>, <a href="https://profiles.wordpress.org/php">php</a>, <a href="https://profiles.wordpress.org/delawski">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pippinsplugins">pippinsplugins</a>, <a href="https://profiles.wordpress.org/pjgalbraith">pjgalbraith</a>, <a href="https://profiles.wordpress.org/pkevan">pkevan</a>, <a href="https://profiles.wordpress.org/pratikchaskar">Pratik</a>, <a href="https://profiles.wordpress.org/pressionate">Pressionate</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/procodewp">procodewp</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/superpoincare">Ramanan</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/ramiabraham">ramiabraham</a>, <a href="https://profiles.wordpress.org/ranh">ranh</a>, <a href="https://profiles.wordpress.org/redsand">Red Sand Media Group</a>, <a href="https://profiles.wordpress.org/youknowriad">Riad Benguella</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/iamjolly">Robert Jolly</a>, <a href="https://profiles.wordpress.org/rnoakes3rd">Robert Noakes</a>, <a href="https://profiles.wordpress.org/d4z_c0nf">Rocco Aliberti</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/fronaldaraujo">Ronald Ara&#250;jo</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/guavaworks">Roy Sivan</a>, <a href="https://profiles.wordpress.org/ryankienstra">Ryan Kienstra</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ryanplas">Ryan Plas</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/samikeijonen">Sami Keijonen</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/sandesh055">Sandesh</a>, <a href="https://profiles.wordpress.org/smyoon315">Sang-Min Yoon</a>, <a href="https://profiles.wordpress.org/sanketparmar">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/pollyplummer">Sarah Gooding</a>, <a href="https://profiles.wordpress.org/sayedwp">Sayed Taqui</a>, <a href="https://profiles.wordpress.org/schrapel">schrapel</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scrappyhuborg">scrappy@hub.org</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/seancjones">seancjones</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/sgr33n">Sergio De Falco</a>, <a href="https://profiles.wordpress.org/sfpt">sfpt</a>, <a href="https://profiles.wordpress.org/shayanys">shayanys</a>, <a href="https://profiles.wordpress.org/shazahm1hotmailcom">shazahm1</a>, <a href="https://profiles.wordpress.org/shprink">shprink</a>, <a href="https://profiles.wordpress.org/simonlampen">simonlampen</a>, <a href="https://profiles.wordpress.org/skippy">skippy</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/snacking">snacking</a>, <a href="https://profiles.wordpress.org/solal">solal</a>, <a href="https://profiles.wordpress.org/soean">Soren Wrede</a>, <a href="https://profiles.wordpress.org/sstoqnov">Stanimir Stoyanov</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/sharkomatic">Steph</a>, <a href="https://profiles.wordpress.org/sswells">Steph Wells</a>, <a href="https://profiles.wordpress.org/sillybean">Stephanie Leary</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stevenlinx">stevenlinx</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/swapnild">swapnild</a>, <a href="https://profiles.wordpress.org/szaqal21">szaqal21</a>, <a href="https://profiles.wordpress.org/takahashi_fumiki">Takahashi Fumiki</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tapsboy">tapsboy</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/team">team</a>, <a href="https://profiles.wordpress.org/tg29359">tg29359</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/the">the</a>, <a href="https://profiles.wordpress.org/themeshaper">themeshaper</a>, <a href="https://profiles.wordpress.org/thenbrent">thenbrent</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/tierra">tierra</a>, <a href="https://profiles.wordpress.org/tnash">Tim Nash</a>, <a href="https://profiles.wordpress.org/timmydcrawford">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/timph">timph</a>, <a href="https://profiles.wordpress.org/tkama">Tkama</a>, <a href="https://profiles.wordpress.org/tnegri">tnegri</a>, <a href="https://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="https://profiles.wordpress.org/tjnowell">Tom J Nowell</a>, <a href="https://profiles.wordpress.org/tomdxw">tomdxw</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/transl8or">transl8or</a>, <a href="https://profiles.wordpress.org/traversal">traversal</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/trishasalas">Trisha Salas</a>, <a href="https://profiles.wordpress.org/tristangemus">tristangemus</a>, <a href="https://profiles.wordpress.org/truongwp">truongwp</a>, <a href="https://profiles.wordpress.org/tsl143">tsl143</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/valeriutihai">Valeriu Tihai</a>, <a href="https://profiles.wordpress.org/zuige">Viljami Kuosmanen</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/vrundakansara-1">Vrunda Kansara</a>, <a href="https://profiles.wordpress.org/webbgaraget">webbgaraget</a>, <a href="https://profiles.wordpress.org/webmandesign">WebMan Design &#124; Oliver Juhas</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/williampatton">williampatton</a>, <a href="https://profiles.wordpress.org/wolly">Wolly aka Paolo Valenti</a>, <a href="https://profiles.wordpress.org/wraithkenny">WraithKenny</a>, <a href="https://profiles.wordpress.org/yale01">yale01</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/yogasukma">Yoga Sukma</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, <a href="https://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>, <a href="https://profiles.wordpress.org/zhildzik">zhildzik</a>, and <a href="https://profiles.wordpress.org/zsusag">zsusag</a>.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.9. Their efforts bring WordPress 4.9 fully translated to 43 languages at release time, with more on the way.</p>\n<p>Do you want to report on WordPress 4.9? <a href="https://s.w.org/images/core/4.9/wp-4-9_press-kit.zip">We&#x27;ve compiled a press kit featuring information about the release features, and some media assets to help you along</a>.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Thanks for choosing WordPress!</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Nov 2017 01:16:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Mel Choyce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:108:"WPTavern: Gutenberg 1.7 Adds Multi-Block Transform Functionality, Drops iframes Implementation of Meta Boxes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76552";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:118:"https://wptavern.com/gutenberg-1-7-adds-multi-block-transform-functionality-drops-iframes-implementation-of-meta-boxes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4469:"<p><a href="https://make.wordpress.org/core/2017/11/15/whats-new-in-gutenberg-15th-november/" rel="noopener" target="_blank">Gutenberg 1.7</a> was released today, two weeks after version 1.6, with a fresh round of new features, design updates, and the groundwork for nested blocks and block extensibility.</p>\n<p>Last week contributors began exploring <a href="https://wptavern.com/gutenberg-contributors-explore-alternative-to-using-iframes-for-meta-boxes" rel="noopener" target="_blank">an alternative to using iframes for meta boxes</a>. This experiment has landed in 1.7 so that the plugin now <a href="https://github.com/WordPress/gutenberg/pull/3345" rel="noopener" target="_blank">renders meta boxes inline</a>. Gutenberg engineer Riad Benguella, who wrote and merged the code, said that it doesn&#8217;t fix all the meta box issues and might create some new ones, but it &#8220;gets us closer to where we want to go.&#8221; Pre-rendering meta boxes and creating a migration path for existing ones is next on the agenda.</p>\n<p>One of the most exciting new features in 1.7 is the <a href="https://github.com/WordPress/gutenberg/pull/3357" rel="noopener" target="_blank">multi-block transform functionality</a> that allows users to select multiple blocks and instantly transform them into other block types. It works like a little bit of Gutenberg magic. By default, users can select multiple paragraphs and transform them into a list or select multiple images and transform them into a gallery.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-15-at-2.50.25-PM-e1510779367673.png?ssl=1"><img /></a></p>\n<p>After selecting two or more blocks, the user can click on the block&#8217;s settings in the toolbar to transform them. They can also be easily changed back to single blocks. The multi-block transform functionality has been added to the Blocks API so that developers can set isMultiBlock to true to specify blocks that can be transformed.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-15-at-3.31.49-PM-e1510781927286.png?ssl=1"><img /></a></p>\n<p>Version 1.7 introduces a new toggle that the team is testing for <a href="https://github.com/WordPress/gutenberg/pull/3311" rel="noopener" target="_blank">switching between the top fixed toolbar and the contextual toolbars attached to each block</a>. It provides an easy way for users to test both types of toolbar styles, but may be temporary as the pull request was submitted as a suggestion for an A/B test.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-15-at-4.03.38-PM.png?ssl=1"><img /></a></p>\n<p>Gutenberg 1.7 <a href="https://github.com/WordPress/gutenberg/pull/2743" rel="noopener" target="_blank">paves the way for nested blocks</a> in the data structure. It also adds <a href="https://github.com/WordPress/gutenberg/pull/3318" rel="noopener" target="_blank">hooks for block extensibility</a> and contributors are currently testing how these work internally.</p>\n<p>A few other notable features in this release include the following:</p>\n<ul>\n<li>Added <a href="https://github.com/WordPress/gutenberg/pull/2896" rel="noopener" target="_blank">@-mention autocomplete for users</a> in a site</li>\n<li>Allow <a href="https://github.com/WordPress/gutenberg/pull/2792" rel="noopener" target="_blank">pasting standalone images</a> and uploading them (also supports pasting base64 encoded images)</li>\n<li>Full <a href="https://github.com/WordPress/gutenberg/pull/3401" rel="noopener" target="_blank">design update to focus styles</a> around the UI</li>\n<li>Placed <a href="https://github.com/WordPress/gutenberg/pull/3459" rel="noopener" target="_blank">&#8220;table of contents&#8221; button in the header area</a>, disabled when there are no blocks in the content, added paragraph count</li>\n</ul>\n<p>Gutenberg&#8217;s documentation has also been <a href="https://github.com/WordPress/gutenberg/pull/3381" rel="noopener" target="_blank">moved</a> to <a href="https://wordpress.org/gutenberg/handbook/" rel="noopener" target="_blank">https://wordpress.org/gutenberg/handbook/</a>, signaling the project is getting closer to becoming part of WordPress. The new editor will be included in WordPress 5.0, which will ship when Gutenberg is ready. A notice in the 4.9 about.php page invites users to start testing the feature plugin ahead of its inclusion in core.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Nov 2017 23:57:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Matt: Post Status Interview";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47650";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"https://ma.tt/2017/11/post-status-interview/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:676:"<p>In the lead-up <a href="https://2017.us.wordcamp.org/">to WordCamp US</a> we&#x27;re in right now <a href="https://poststatus.com/interview-matt-mullenweg-wordpress-ecosystem-draft-podcast/">I chatted with Brian Krogsgard at Post Status in an hour podcast</a> and we spoke about the core releases this year, Gutenberg, React, WooCommerce, and WordPress.org. On the 29th I&#x27;ll be <a href="https://wptavern.com/">talking to WP Tavern</a>, so tune in then as well. For something completely different, I was on the <a href="https://offrcrd.com/episodes/matt-mullenweg/">new OFF RCRD podcast with Cory Levy about the earliest days at Automattic and entrepreneurship</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Nov 2017 17:06:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"HeroPress: My journey to WordPress taught me that my talents are best used elsewhere.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2269";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:178:"https://heropress.com/essays/journey-wordpress-taught-talents-best-used-elsewhere/#utm_source=rss&utm_medium=rss&utm_campaign=journey-wordpress-taught-talents-best-used-elsewhere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:10351:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/11/111517-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Together we''ll create the future of WordPress." /><p>My first website was built using Frontpage. Then I discovered Geocities, which at the time made it easy to break and fix code and have it instantly live for others to find on the world wide web. It was an optimal learning environment for me. I learned HTML and CSS by copying, pasting, and then tweaking every which way until it was doing something absurd like flashing hot pink text. It was the Wild West and there were no real rules yet except for those in this new language.</p>\n<blockquote><p>Like any language, I was learning little by little in search of ways to bend the rules and “speak” like a native.</p></blockquote>\n<p>I only coded for fun, but many years later, I made a website for a job. I used Dreamweaver because I was told all professionals used Dreamweaver. I found it easy to use, much easier than Frontpage, especially for building a larger more complex website. I started learning how to read PHP and doing a lot of what was needed in the metadata and the code for basic SEO.</p>\n<h3>Finding WordPress</h3>\n<p>Fast forward another few years. I set up several free sites for nonprofits using Webs, Weebly, other page builders whose names I can’t recall, Joomla, and then, one day I stumbled upon WordPress. I wasn’t sure if I liked it at first because the out of the box theme was ugly and I couldn’t figure out how to manipulate it. Then, I found a theme on Themeforest that installed the styles and the demo content. This was worth the $30. This gave me the ability to tweak the theme because I knew enough HTML and CSS to change things in the file editor. I was still coding like I did in my Geocities days, only my aesthetics had improved.</p>\n<p>I cringe relaying that experience now. I knew enough to be really dangerous. I didn’t do any form of version control, I didn’t do any backups, I didn’t vet my plugins, or even know how to properly vet my plugins.</p>\n<blockquote><p>I am so lucky nothing went terribly wrong.</p></blockquote>\n<p>On one hand, WordPress gave me an easy way to dive right in and do everything on my own. On the other hand, it made it too easy for me to download bad plugins, edit things I probably should not have been touching, and in the end, I guess that’s okay because when I was serious about maintaining a website, I did take the time to learn more about what I needed to know.</p>\n<h3>Finding What I Needed</h3>\n<p>What I know today is that I am not a developer. I’m not even a designer. I have fun with the creation process, but there are other people who are much more talented and efficient in those processes and I’m happy to pay them for their expertise. I have learned what I need to know about the framework and can talk to designers and developers about what I’m looking for and ensure they know what they’re doing. I can pick out reliable themes and plugins. I can advise our clients, who are mostly nonprofits and social enterprises, on the best path for a sustainable website. I understand the need for disaster recovery, backups, and security. I understand the value of paid premium licenses and ongoing support.</p>\n<p>These are all things that in my days of starting out I didn’t know I needed. Even if someone tried to explain it to me, I probably wouldn’t have felt that I needed them. Sometimes I can be stubborn and I need to experience the pain points myself before I buy into what everyone else is saying. I used to learn best from failure.</p>\n<blockquote><p>I still learn from failure, but when it comes to WordPress, I have also surrounded myself with a community who help me grow and learn.</p></blockquote>\n<p>In 2013, I started attending the Fort Worth WordPress meetup. The group was still pretty small at the time, but they were very inviting. I picked up some new tips and tricks that I used right away. While my eyes glazed over at some of the more advanced details, I understood the possibilities and that the work was beyond my capabilities. I learned how to ask for help with those things. Remember, I’m not a designer or a developer, so this meant hiring for those skills from the network of people I met in the WordPress community.</p>\n<p>Over the last 4 ½ years I’ve been able to sell numerous WordPress projects and some of them are incredibly custom and complex. In return, I’ve been able to provide freelance work for members of my community; I’ve been able to give back via WordCamps sharing my experience with project scoping, sales, and negotiations. We all have something of value to share. No matter your area of expertise, you can give something back to the community.</p>\n<h3>The Real Value</h3>\n<p>The best thing about WordPress is not the tool itself. It’s the people who use it or are wanting to try it. The WordPress community is what makes WordPress and WordCamps really great. My hope is that as a community we can help WordPress evolve and adapt and that we can leverage technology, including WordPress, for the greater good.</p>\n<p>We’ve already done this and that’s why WordPress powers almost 30% of the web. We’ve been doing it for years, but the technology landscape is changing rapidly. Are we keeping up?</p>\n<p>A few weeks ago, Chris Lema asked me and a group of other WordPressers, “What could destroy WordPress, and how would you fix it?” We answered this a number of ways and you’ve probably come up with your own answer. My answer? I think that the evolution of technology could destroy WordPress.</p>\n<p>To fix that we would need to evolve, dream big, and create the innovative changes that would keep WordPress alive. We can’t wait until the changes are already in place. It would take far too long for such a large ecosystem to catch up, and in the meantime, it would start to disappear. Look at Kodak; my kids don’t even know what a Kodak moment is. That’s just sad.</p>\n<h3>What is our dream as a community?</h3>\n<p>Will people talk about WordPress in the past tense or will we find ways to help it thrive?</p>\n<p>Even as we work towards the same dream, there are still complex challenges to overcome. We’ll likely fail many times as we try to innovate. This is actually good; we’ll learn from those mistakes, but we might become jaded. We’ll certainly have moments of frustration. We might even try another framework, and the grass might actually be greener on the other side. Yet, the fact that we are such a close knit community sets us apart.</p>\n<blockquote><p>Imagine what could happen if a community this large banded together towards one dream.</p></blockquote>\n<p>We could pave a path towards something really great. It feels like a huge undertaking. It’s something that could paralyze us if we tried to get it “right” before we started. The key is to set common goals, but to individually start working and living on purpose. Then, we can come together in a more meaningful way.</p>\n<p>In my recent keynote at WordCamp DFW I shared a bit of my heritage and my life story so that people could understand my passion for social impact. Everyone has a story that makes them a unique fit to tackle different challenges. When we put our collective skills together, we can make a difference.</p>\n<p>John F. Kennedy said, “One person can make difference, and everyone should try,” and Nelson Mandela said, “It is in our hands to make a difference.”</p>\n<p>Many paths have been paved so that we could live in a different world. Now, our dreams pave the way for future. Together we’ll create the future of WordPress.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: My journey to WordPress taught me that my talents are best used elsewhere." class="rtsocial-twitter-button" href="https://twitter.com/share?text=My%20journey%20to%20WordPress%20taught%20me%20that%20my%20talents%20are%20best%20used%20elsewhere.&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-wordpress-taught-talents-best-used-elsewhere%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: My journey to WordPress taught me that my talents are best used elsewhere." class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-wordpress-taught-talents-best-used-elsewhere%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fjourney-wordpress-taught-talents-best-used-elsewhere%2F&title=My+journey+to+WordPress+taught+me+that+my+talents+are+best+used+elsewhere." rel="nofollow" target="_blank" title="Share: My journey to WordPress taught me that my talents are best used elsewhere."></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/journey-wordpress-taught-talents-best-used-elsewhere/&media=https://heropress.com/wp-content/uploads/2017/11/111517-150x150.jpg&description=My journey to WordPress taught me that my talents are best used elsewhere." rel="nofollow" target="_blank" title="Pin: My journey to WordPress taught me that my talents are best used elsewhere."></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/journey-wordpress-taught-talents-best-used-elsewhere/" title="My journey to WordPress taught me that my talents are best used elsewhere."></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/journey-wordpress-taught-talents-best-used-elsewhere/">My journey to WordPress taught me that my talents are best used elsewhere.</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Nov 2017 12:10:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Sheryle Gillihan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Dev Blog: WordPress 4.9 Release Candidate 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5184";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4080:"<p>The third release candidate for WordPress 4.9 is now available.</p>\n<p>A release candidate (RC) means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. In fact, we did miss some things in RC1 and RC2. This third release candidate was not originally scheduled, but due a number of defects uncovered through your testing of RC2 (thank you!), we are putting out another 4.9 release candidate.</p>\n<p>We hope to ship WordPress 4.9 on <strong>Tuesday, November 14</strong> (that&#8217;s <em>tomorrow</em>) at 23:00 UTC, but we still need your help to get there. If you haven’t tested 4.9 yet, now is the time! If there are additional defects uncovered through testing between now and the release time, we may delay the 4.9 release to the following day.</p>\n<p>To test WordPress 4.9, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.9-RC3.zip">download the release candidate here</a> (zip).</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/branches/4.9?action=stop_on_copy&mode=stop_on_copy&rev=42178&stop_rev=42133">just over 20 changes</a> since releasing RC2 last week (as we did between RC1 and RC2). For more details about what’s new in version 4.9, check out the <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/">Beta 4</a>, <a href="https://wordpress.org/news/2017/10/wordpress-4-9-release-candidate/">RC1</a>, and <a href="https://wordpress.org/news/2017/11/wordpress-4-9-release-candidate-2/">RC2</a> blog posts. A few specific areas to test in RC3:</p>\n<ul>\n<li>Switching between the Visual and Text tabs of the editor, and the syncing of the cursor between those two tabs.</li>\n<li>Overriding linting errors in the Customizer&#8217;s Additional CSS editor.</li>\n<li>Adding nav menu items for Custom Links in the Customizer.</li>\n<li>Scheduling customization drafts (stubbed posts/pages) for publishing in the Customizer.</li>\n<li>Autosave revisions for changes in the Customizer.</li>\n<li>About page styling.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.9 and update your plugin’s <em>Tested up to</em> version in the readme to 4.9. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release — we work hard to avoid breaking things. Please see the summative <a href="https://make.wordpress.org/core/2017/11/07/wordpress-4-9-field-guide/">field guide</a> to the 4.9 <a href="https://make.wordpress.org/core/tag/4.9+dev-notes/">developer notes</a> on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>Didn&#8217;t squash them all <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png" alt="🐛" class="wp-smiley" /></em><br />\n<em>We want to release Tuesday</em><br />\n<em>New features not bugs <img src="https://s.w.org/images/core/emoji/2.3/72x72/2728.png" alt="✨" class="wp-smiley" /></em></p>\n<p>Thanks for your continued help testing out the latest versions of WordPress.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Nov 2017 06:53:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Weston Ruter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:77:"WPTavern: iA Writer 5 for iOS Released, Web Collaboration Version Coming Soon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76417";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wptavern.com/ia-writer-5-for-ios-released-web-collaboration-version-coming-soon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4453:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-13-at-3.40.57-PM.png?ssl=1"><img /></a></p>\n<p><a href="https://ia.net/writer/blog/95-keyboard-ia-writer-5/" rel="noopener" target="_blank">iA Writer 5 for iOS</a> was released last week, nearly a year after <a href="https://ia.net/writer/blog/ia-writer-4/" rel="noopener" target="_blank">version 4</a>. This update is free for those who purchased version 4 from the iOS App Store. iA Writer 5 for Mac is still in the works. The free Android version of the app is receiving incremental improvements that will bring it to parity with version 5 in the near future.</p>\n<p>iA Writer is a plain text writing and editing app that is popular with authors, academics, and long-form writers. It&#8217;s also a favorite among WordPress users who look to third-party apps for to provide a more focused, distraction-free writing environment. In April 2016, version 3.1.4 for Mac and iOS introduced publishing drafts to WordPress.com and Jetpack-powered sites.</p>\n<p>Version 5 focuses on making everything accessible through the keyboard by bringing the Open Quickly feature in iA Writer for Mac to iOS. The app&#8217;s creators said the goal of the design process was to &#8220;allow the writer to do everything without leaving the keyboard, including file handling, export, and all commands.&#8221; The new Quick Search feature is now built into the keyboard bar along with with a fully configurable keyboard. This allows users to quickly do things like create new files, switch to night mode, and export to PDF without leaving the keyboard.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-12-at-11.20.56-PM.png?ssl=1"><img /></a></p>\n<p>This release adds new organization features that allow users to select multiple files and folders and move, rename, or delete them from the Library. It also introduces Smart Folders which can be created based on a set of rules. Version 5 <a href="https://ia.net/writer/blog/files-in-ios11/" rel="noopener" target="_blank">adds support for iOS11’s Files system</a>, allowing users to open and edit text files from any storage provider that works with Files. Support for Dropbox, Google Drive, and Box is already available with more providers coming soon.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/11/Screen-Shot-2017-11-13-at-12.54.33-PM.png?ssl=1"><img /></a></p>\n<p>The makers of iA Writer are interested in <a href="https://ia.net/writer/blog/ia-writer-5-forging-the-hammer/" rel="noopener" target="_blank">exploring other platforms</a> if there is sufficient interest, including the possibility of creating a Windows version. Demand doesn&#8217;t seem to be very high, as the writing app&#8217;s fans are primarily Apple-only users.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">How badly do you want a Windows version of iA Writer?</p>\n<p>&mdash; iA Writer (@iAWriter) <a href="https://twitter.com/iAWriter/status/920297492280852480?ref_src=twsrc%5Etfw">October 17, 2017</a></p></blockquote>\n<p></p>\n<p>However, users across multiple platforms have requested a web version of iA Writer, and the company confirmed in September that they are already working on it. After releasing a big Material Design <a href="https://ia.net/writer/blog/turbocharged-ia-writer-for-android/" rel="noopener" target="_blank">update to the iA for Android app </a>in October, the creators said Android users will be the first to have access to the web version:</p>\n<blockquote><p>The biggest request from you was collaboration, in other words, iA Writer for Web. iA Writer for Android will stay free and you will be able to connect and subscribe to the Web version via the app, if you wish to. If you could tell us what you’d expect to pay for it, that would be very helpful&#8230;As part of our commitment to continually improve iA Writer on all platforms, Android will likely be the first to gain access to the upcoming Web collaboration.</p></blockquote>\n<p>The upcoming web version should provide a sort of bridge for users on other desktop platforms without an iA Writer app.</p>\n<p>There&#8217;s no target release date for iA Writer 5 for Mac but iA Inc has <a href="https://twitter.com/iA/status/917679399008215041" rel="noopener" target="_blank">confirmed</a> that it will also be a free update for those who have purchased the previous version.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Nov 2017 22:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: Watch the State of the Woo! After You Give WooCommerce Your Name and Email Address";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76497";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"https://wptavern.com/watch-the-state-of-the-woo-after-you-give-woocommerce-your-name-and-email-address";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1557:"<p>If you didn&#8217;t watch the live stream or attend <a href="https://wooconf.com/">WooConf</a> in-person, you&#8217;re in luck as videos from the event are starting to come online. The first talk highlights is the <a href="https://wptavern.com/woocommerce-stores-on-track-to-surpass-10b-in-sales-this-year">State of the Woo</a> by Todd Wilkens, Head of WooCommerce. Wilkens shares stats, provides an overview of projects the team is working on, what to expect in new versions, and explains the relationship between WooCommerce and Jetpack.</p>\n<p></p>\n<p>The video is available to watch for free, but viewers must provide their first and last name as well as an email address. Clicking the play button without entering this information displays a message that says Please enter your full name. This is a classic technique used by many internet marketers.</p>\n<p>Although you can provide fake information in order to watch the video for free, I feel it&#8217;s an unnecessary burden. The WooCommerce team could obtain the same information with a form in the post. An alternative to watching the video is reading the company&#8217;s<a href="https://woocommerce.com/2017/11/wooconf-state-of-the-woo/?utm_campaign=coschedule&utm_source=twitter&utm_medium=WooCommerce&utm_content=WooConf%3A%20State%20of%20the%20Woo"> great overview</a> of Wilkens&#8217; session. The team plans to publish other talks from WooConf in the coming weeks.</p>\n<p><strong>Updated November 14th: </strong>An Automattic employee has removed the email form and made it skippable.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Nov 2017 21:25:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Matt: Product and Process";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://ma.tt/2017/11/product-and-process/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:726:"<blockquote class="wp-block-quote blocks-quote-style-1">\n    <p>When I look back over the last 25 years, in some ways what seems most precious is not what we have made but how we have made it and what we have learned as a consequence of that. I always think that there are two products at the end of a programme; there is the physical product or the service, the thing that you have managed to make, and then there is all that you have learned. The power of what you have learned enables you to do the next thing and it enables you to do the next thing better. — Jony Ive<br /></p>\n</blockquote>\n\n\n\n<p>From the <a href="https://www.wallpaper.com/design/jony-ive-apple-park">Wallpaper article on the new Apple campus</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Nov 2017 05:01:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:110:"WPTavern: WP-SpamShield Plugin Removed from WordPress.org, Author Plans to Pull All Plugins from the Directory";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76434";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:120:"https://wptavern.com/wp-spamshield-plugin-removed-from-wordpress-org-author-plans-to-pull-all-plugins-from-the-directory";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6048:"<p>The <a href="https://wordpress.org/plugins/WP-SpamShield/" rel="noopener" target="_blank">WP-SpamShield</a> plugin was removed from the WordPress.org directory this week due to what the Plugin Review Team has deemed a violation of the guidelines and a possible miscommunication.</p>\n<p>Two weeks ago, the author of WP-SPamShield and the author of the Plugin Organizer plugin exchanged contentious remarks in a <a href="https://wordpress.org/support/topic/please-remove-code-that-maliciously-disables-wp-spamshield/" rel="noopener" target="_blank">support forum thread</a> where each accused the other of targeting each others&#8217; plugins. This resulted in both parties adding code that disabled the others&#8217; plugins, and both were asked by the Plugin Team to remove the code.</p>\n<p>WP-SpamShield&#8217;s author, Scott Allen, has <a href="https://www.redsandmarketing.com/blog/wp-spamshield-removed-wordpress-org-directory-without-cause/" rel="noopener" target="_blank">published an account of his interactions with the Plugin Team</a> with updates for users who are monitoring the status of the plugin. Although the team rarely discloses why a plugin was removed, representative Mika Epstein <a href="https://wordpress.org/support/topic/plugin-removed-from-repository-6/page/2/#post-9671552" rel="noopener" target="_blank">responded</a> to Allen when he said he had not received an answer about what guideline the plugin had violated:</p>\n<blockquote><p>Sorry, I thought it was clear that it’s issues regarding the <a href="https://wordpress.org/support/guidelines/" rel="noopener" target="_blank">forum guidelines</a> and rule #9:<br />\n <em>Intentionally attempting to exploit loopholes in the guidelines</em>.</p>\n<p>To whit, you were asked to make a change and did so incompletely. If this was not intentional, then I apologize.</p>\n<p>I’ve sent you a followup email, trying to clarify what we would accept as solutions to the issue (I came up with 3 options, but I’m open to hearing more).</p>\n<p>I understand why you’re angry and we will respect any decision you make regarding this. Nothing that has happened thus far is insurmountable or permanent.</p></blockquote>\n<p>In the post Allen published, he said his experiences with the Plugin Team over the past 10 years have caused him to decide to move his plugins off of WordPress.org. When I contacted him to see if he plans to update his code according to the Plugin Team&#8217;s suggestions, he said he doesn&#8217;t agree with the solutions the team is offering, nor their assessment of the situation.</p>\n<p>&#8220;They really were not solutions,&#8221; Allen said. &#8220;It was just rehashing the same issues we&#8217;d already discussed. Unfortunately, neither Otto nor Mika have the security expertise to be making the dictates they were making, so there were no realistic solutions.&#8221;</p>\n<p>Allen also claimed that Epstein&#8217;s report about him making a change and it being incomplete was not accurate and that the Plugin Team did not seem to be on the same page:</p>\n<blockquote><p>We literally did exactly what they asked and made the changes. Two weeks ago Mika had emailed me and indicated things were good. (No code updates since then.) Then two weeks of silence, and then angry email from Otto out of the blue yesterday telling us it was booted. The issue he brought up was different code.</p>\n<p>The two of them cannot make up their minds on what is acceptable, and what is not. The arbitrary removal was the last straw though. WordPress.org is the only venue that would do that. We repeatedly asked them what rule we broke, to no answer. Only after I called Mika out on the forum did she come up with something &#8211; Rule 9 &#8211; exploiting a loophole in the rules. Seriously? It&#8217;s impossible for developers to comply with rules that are constantly changing.</p></blockquote>\n<p>Allen confirmed that his team at Red Sand Media Group plans to pull all seven of its plugins from WordPress.org as the result of the incident but will continue maintaining and hosting them elsewhere.</p>\n<p>&#8220;Developers cannot operate like that,&#8221; Allen said. &#8220;People depend on us. While it might hurt a bit in the short term, in the long term, we have to do it. There really need to be some major reforms to the way plugins are handled.&#8221;</p>\n<p>WP-SpamShield was installed on more than 100,000 WordPress sites before it was removed. There is currently no standard way to notify users why a plugin was removed from the directory, but the original dispute between the WP-SpamShield and Plugin Organizer authors is public, as well as a few exchanges between Allen and the Plugin Team. Allen said he is still working out the details of how to notify users that his plugins will be hosted elsewhere from now on.</p>\n<p>&#8220;We&#8217;ll come up with a good plan in the next few days,&#8221; he said. &#8220;Some people have been notified already because WordFence let them know yesterday that WPSS was removed. (They knew before I did.)&#8221;</p>\n<p>Samuel &#8220;Otto&#8221; Wood said the Plugin Team is still willing to put Allen&#8217;s plugins back up if he removes the code in question and that the team is not offended by a plugin developer being angry over a decision. At this time Allen appears to be unwilling to comply with the team&#8217;s most recent requests.</p>\n<p>In the meantime, users who know that WP-SpamShield was been removed are waiting to hear if they need to begin looking for a replacement. Allen said that users shouldn&#8217;t need to replace the plugin, since the it will continue to work as before. However, some users are not comfortable installing free plugins hosted outside of WordPress.org. Allen&#8217;s team is figuring out a plan for how they will deliver updates to the plugin and will post more information for users on the <a href="https://www.redsandmarketing.com/blog/wp-spamshield-removed-wordpress-org-directory-without-cause/" rel="noopener" target="_blank">Red Sand Marketing blog</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 11 Nov 2017 04:19:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:103:"WPTavern: Weglot Passes €44K in Monthly Revenue, Plans to Expand into More CMS and E-commerce Markets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=76296";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:111:"https://wptavern.com/weglot-passes-e44k-in-monthly-revenue-plans-to-expand-into-more-cms-and-e-commerce-markets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5746:"<p><a href="https://wordpress.org/plugins/weglot/" rel="noopener" target="_blank">Weglot</a>, a SaaS-based multilingual plugin that entered the WordPress market last year, has <a href="http://blog.weglot.com/21000-44000-euro-monthly-company-rises/" rel="noopener" target="_blank">passed €44,000 in monthly revenue</a>. The company received <a href="https://wptavern.com/weglot-multilingual-plugin-closes-450k-in-seed-funding" rel="noopener" target="_blank">€450K in seed funding</a> in May 2017 and has nearly doubled its user base in the past six months. Co-founder Rémy Berda reports that the plugin is approaching 20,000 users and that more than 20,000 websites are connected to the Weglot API, if you include the company&#8217;s Shopify product and those using the JS script directly.</p>\n<p>WordPress customers currently represent 75% of Weglot&#8217;s revenue with Shopify at 25%, but Berda says the two markets are growing at the same rate. In May, the company&#8217;s customer distribution was primarily in the US and France, which made sense as the product&#8217;s founders are French and Weglot was first marketed to the French WordPress community. Weglot&#8217;s customer distribution has become more global over the past six months and the US has now overtaken France as the strongest market for the multilingual plugin. Canada has also passed Germany, and Berda said he thinks the distribution will eventually align progressively with global WordPress usage.</p>\n<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/11/chart-1.png?ssl=1"><img /></a>Weglot customer distribution as of November 2017\n<p>Despite having only recently entered the WordPress community in a niche with well-established competitors, Weglot&#8217;s cofounders are confident their SaaS approach is the road to success for becoming the best multilingual solution for WordPress. The team is aiming for its product to become the highest rated multilingual plugin in the WordPress directory within the next six months.</p>\n<p><a href="https://wpml.org/" rel="noopener" target="_blank">WPML</a>, a purely commercial product and the most widely used, has been in business since 2009 and is active on more than 500K sites. <a href="https://wordpress.org/plugins/polylang/" rel="noopener" target="_blank">Polylang</a>, a popular free plugin with a commercial option, is installed on more than 300,000 sites and has a 4.7-star rating on WordPress.org. <a href="https://wordpress.org/plugins/qtranslate-x/" rel="noopener" target="_blank">qTranslate X</a> is also a formidable competitor with more than 100,000 active installs and a 4.7-star rating.</p>\n<p>&#8220;For now the two biggest plugins in terms of active installs are WPML and Polylang,&#8221; Berda said. &#8220;Both don&#8217;t have a SaaS approach. Polylang recently released the PRO version (it was only free previously) but it is still sold as a piece of software, not a SaaS. We are convinced that SaaS is the right approach as it allows us to be in constant relation with users and make the product evolve faster. It&#8217;s also healthier in terms of business.&#8221;</p>\n<p>Although he has no precise statistics on how many, Berda said he sees a lot of former WPML and Polylang users (freelancers and agencies) in their support center who have opted to use Weglot on their new projects. This indicates that Weglot may not so much be whittling away at the existing customer base of other plugins but is finding success at attracting customers who are starting new projects.</p>\n<p>In their efforts to stake a claim in the WordPress ecosystem, the Weglot team has found that being active in the community is important to having a successful product.</p>\n<p>&#8220;WordPress is really huge so there is no magical formula for marketing,&#8221; Berda said. &#8220;I think what is important is to accept that it takes time. You must keep improving your product forever while being active in the community and do it not only with high intensity but for a long time.&#8221;</p>\n<p>The €450K in seed funding Weglot received earlier this year has helped the team to expand its support and development team, but it has also made it possible for the company to invest more in the community. They have now sponsored a dozen WordCamps across the world, including WordCamp Europe in Paris.</p>\n<p>Berda&#8217;s advice to other WordPress entrepreneurs who are looking for funding is to consider the option carefully and understand how it will impact the company&#8217;s future and ability to act independently.</p>\n<p>&#8220;My recommendation would be to think twice about raising money as it takes time,&#8221; Berda said. &#8220;It changes your governance and it temporarily distracts you from your number one focus &#8211; your users. Raise only if you are sure you will have a return with the money invested. Not every business need to raise money.&#8221;</p>\n<p>Fueled by their success in the WordPress market, Weglot plans to expand into other CMS and e-commerce markets, including BigCommerce and Jimdo, followed by Drupal, Magento, and Joomla. Berda said the company also plans to release an open version of the API for developers to integrate their non-CMS websites built on technologies like Symfony and Laravel.</p>\n<p>&#8220;In 2018, we will be adding many things: We will start using machine learning to improve the quality of automatic translations,&#8221; Berda said. &#8220;We will also leverage the fact that we are SaaS to add some insights about language usage for the users so they can see what languages are performing better. Finally, we will add extra features to manage multilingual SEO. In terms of monthly recurring revenue, we aim to reach €70,000 in 6 months.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 10 Nov 2017 20:04:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Wed, 20 Dec 2017 08:11:59 GMT";s:12:"content-type";s:8:"text/xml";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Wed, 20 Dec 2017 07:45:10 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20171220075406";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1443, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1513800720', 'no'),
(1444, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1513757520', 'no'),
(1445, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1513800720', 'no'),
(1446, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://vi.wordpress.org/2017/12/04/december-2017-saigon-wordpress-meetup/''>December 2017 – Saigon WordPress Meetup</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://heropress.com/essays/wordpress-allowed-dream-job/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=wordpress-allowed-dream-job''>HeroPress: WordPress allowed me to have a Dream Job</a></li><li><a class=''rsswidget'' href=''https://blog.akismet.com/2017/12/18/version-4-0-2-of-the-akismet-wordpress-plugin-is-now-available/''>Akismet: Version 4.0.2 of the Akismet WordPress Plugin Is Now Available</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/jetpack-5-6-1-increases-security-of-the-contact-form-module''>WPTavern: Jetpack 5.6.1 Increases Security of the Contact Form Module</a></li></ul></div>', 'no'),
(1449, '_transient_timeout__woocommerce_helper_updates', '1513800722', 'no'),
(1450, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1513757522;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(1451, '_transient_timeout_plugin_slugs', '1513850989', 'no'),
(1452, '_transient_plugin_slugs', 'a:19:{i:0;s:28:"2j-slideshow/2jslideshow.php";i:1;s:19:"akismet/akismet.php";i:2;s:31:"code-snippets/code-snippets.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:5;s:39:"email-subscribers/email-subscribers.php";i:6;s:9:"hello.php";i:7;s:66:"paypal-currency-converter-basic-for-woocommerce/paypalcc-basic.php";i:8;s:25:"profile-builder/index.php";i:9;s:35:"oa-social-login/oa-social-login.php";i:10;s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";i:11;s:52:"theme-customisations-master/theme-customisations.php";i:12;s:27:"woocommerce/woocommerce.php";i:13;s:72:"woocommerce-product-payments/woocommerce-payment-gateway-per-product.php";i:14;s:59:"woocommerce-products-slider/woocommerce-products-slider.php";i:15;s:34:"woo-product-images-slider/wpis.php";i:16;s:31:"wp-google-maps/wpGoogleMaps.php";i:17;s:45:"wp-live-chat-support/wp-live-chat-support.php";i:18;s:21:"wp-reset/wp-reset.php";}', 'no'),
(1461, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.1.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1513759470;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(1463, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513764709;s:7:"checked";a:7:{s:8:"boutique";s:6:"2.0.11";s:4:"deli";s:6:"2.0.10";s:9:"dreamshop";s:5:"1.0.0";s:10:"storefront";s:5:"2.2.5";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(1478, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1513769726', 'no'),
(1479, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4414;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2523;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2475;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2383;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1851;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1619;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1614;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1440;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1370;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1370;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1356;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1284;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1281;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1163;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1073;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1055;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1005;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:973;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:846;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:838;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:817;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:787;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:781;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:681;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:675;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:675;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:670;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:665;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:652;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:640;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:640;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:620;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:619;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:600;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:595;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:593;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:591;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:583;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:572;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:570;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:550;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:542;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:530;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:526;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:513;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:505;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:505;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:498;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:485;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:482;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:480;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:474;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:461;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:459;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:458;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:451;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:451;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:447;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:429;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:417;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:417;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:416;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:410;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:406;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:402;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:402;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:391;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:386;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:379;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:359;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:354;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:353;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:347;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:338;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:337;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:336;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:333;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:331;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:331;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:328;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:325;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:324;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:324;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:319;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:309;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:306;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:299;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:299;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:299;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:293;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:288;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:288;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:286;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:284;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:282;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:281;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:281;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:279;}}', 'no'),
(1485, 'widget_wpadm_chats_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1486, 'chats_site_key', '6258b534aefc63a64eeb82976ace1263', 'yes'),
(1488, 'chats_options-cloudflare-ips-v4', 'a:2:{s:12:"expires_time";i:1513845652;s:4:"file";s:217:"103.21.244.0/22\n103.22.200.0/22\n103.31.4.0/22\n104.16.0.0/12\n108.162.192.0/18\n131.0.72.0/22\n141.101.64.0/18\n162.158.0.0/15\n172.64.0.0/13\n173.245.48.0/20\n188.114.96.0/20\n190.93.240.0/20\n197.234.240.0/22\n198.41.128.0/17\n";}', 'yes'),
(1489, '_transient_timeout_external_ip_address_127.0.0.1', '1514364053', 'no'),
(1490, '_transient_external_ip_address_127.0.0.1', '103.199.7.209', 'no'),
(1492, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513764587;s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-11 08:09:52";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.9.2/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:18:{s:28:"2j-slideshow/2jslideshow.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/2j-slideshow";s:4:"slug";s:12:"2j-slideshow";s:6:"plugin";s:28:"2j-slideshow/2jslideshow.php";s:11:"new_version";s:6:"1.3.23";s:3:"url";s:43:"https://wordpress.org/plugins/2j-slideshow/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/2j-slideshow.1.3.23.zip";s:5:"icons";a:3:{s:2:"1x";s:65:"https://ps.w.org/2j-slideshow/assets/icon-128x128.png?rev=1271183";s:2:"2x";s:65:"https://ps.w.org/2j-slideshow/assets/icon-256x256.png?rev=1271183";s:7:"default";s:65:"https://ps.w.org/2j-slideshow/assets/icon-256x256.png?rev=1271183";}s:7:"banners";a:3:{s:2:"2x";s:68:"https://ps.w.org/2j-slideshow/assets/banner-1544x500.png?rev=1271183";s:2:"1x";s:67:"https://ps.w.org/2j-slideshow/assets/banner-772x250.png?rev=1271183";s:7:"default";s:68:"https://ps.w.org/2j-slideshow/assets/banner-1544x500.png?rev=1271183";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:31:"code-snippets/code-snippets.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/code-snippets";s:4:"slug";s:13:"code-snippets";s:6:"plugin";s:31:"code-snippets/code-snippets.php";s:11:"new_version";s:5:"2.9.4";s:3:"url";s:44:"https://wordpress.org/plugins/code-snippets/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/code-snippets.zip";s:5:"icons";a:2:{s:3:"svg";s:57:"https://ps.w.org/code-snippets/assets/icon.svg?rev=986370";s:7:"default";s:57:"https://ps.w.org/code-snippets/assets/icon.svg?rev=986370";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=1490174";s:7:"default";s:68:"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=1490174";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:29:"easy-wp-smtp/easy-wp-smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/easy-wp-smtp";s:4:"slug";s:12:"easy-wp-smtp";s:6:"plugin";s:29:"easy-wp-smtp/easy-wp-smtp.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:43:"https://wordpress.org/plugins/easy-wp-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip";s:5:"icons";a:2:{s:2:"1x";s:65:"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044";s:7:"default";s:65:"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044";}s:7:"banners";a:2:{s:2:"1x";s:67:"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323";s:7:"default";s:67:"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323";}s:11:"banners_rtl";a:0:{}}s:39:"email-subscribers/email-subscribers.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/email-subscribers";s:4:"slug";s:17:"email-subscribers";s:6:"plugin";s:39:"email-subscribers/email-subscribers.php";s:11:"new_version";s:5:"3.4.6";s:3:"url";s:48:"https://wordpress.org/plugins/email-subscribers/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/email-subscribers.3.4.6.zip";s:5:"icons";a:4:{s:2:"1x";s:70:"https://ps.w.org/email-subscribers/assets/icon-128x128.png?rev=1348697";s:2:"2x";s:70:"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=1348697";s:0:"";s:70:"https://ps.w.org/email-subscribers/assets/icon-512x512.png?rev=1348697";s:7:"default";s:70:"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=1348697";}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=1523132";s:7:"default";s:72:"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=1523132";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:66:"paypal-currency-converter-basic-for-woocommerce/paypalcc-basic.php";O:8:"stdClass":9:{s:2:"id";s:61:"w.org/plugins/paypal-currency-converter-basic-for-woocommerce";s:4:"slug";s:47:"paypal-currency-converter-basic-for-woocommerce";s:6:"plugin";s:66:"paypal-currency-converter-basic-for-woocommerce/paypalcc-basic.php";s:11:"new_version";s:3:"1.7";s:3:"url";s:78:"https://wordpress.org/plugins/paypal-currency-converter-basic-for-woocommerce/";s:7:"package";s:90:"https://downloads.wordpress.org/plugin/paypal-currency-converter-basic-for-woocommerce.zip";s:5:"icons";a:0:{}s:7:"banners";a:3:{s:2:"2x";s:102:"https://ps.w.org/paypal-currency-converter-basic-for-woocommerce/assets/banner-1544x500.jpg?rev=883948";s:2:"1x";s:101:"https://ps.w.org/paypal-currency-converter-basic-for-woocommerce/assets/banner-772x250.jpg?rev=883948";s:7:"default";s:102:"https://ps.w.org/paypal-currency-converter-basic-for-woocommerce/assets/banner-1544x500.jpg?rev=883948";}s:11:"banners_rtl";a:0:{}}s:25:"profile-builder/index.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/profile-builder";s:4:"slug";s:15:"profile-builder";s:6:"plugin";s:25:"profile-builder/index.php";s:11:"new_version";s:5:"2.7.2";s:3:"url";s:46:"https://wordpress.org/plugins/profile-builder/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/profile-builder.2.7.2.zip";s:5:"icons";a:3:{s:2:"1x";s:68:"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=1470754";s:2:"2x";s:68:"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754";s:7:"default";s:68:"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307";s:7:"default";s:70:"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307";}s:11:"banners_rtl";a:0:{}}s:35:"oa-social-login/oa-social-login.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/oa-social-login";s:4:"slug";s:15:"oa-social-login";s:6:"plugin";s:35:"oa-social-login/oa-social-login.php";s:11:"new_version";s:5:"5.4.0";s:3:"url";s:46:"https://wordpress.org/plugins/oa-social-login/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/oa-social-login.5.4.0.zip";s:5:"icons";a:3:{s:2:"1x";s:68:"https://ps.w.org/oa-social-login/assets/icon-128x128.png?rev=1643974";s:2:"2x";s:68:"https://ps.w.org/oa-social-login/assets/icon-256x256.png?rev=1644019";s:7:"default";s:68:"https://ps.w.org/oa-social-login/assets/icon-256x256.png?rev=1644019";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/oa-social-login/assets/banner-772x250.png?rev=1641440";s:7:"default";s:70:"https://ps.w.org/oa-social-login/assets/banner-772x250.png?rev=1641440";}s:11:"banners_rtl";a:0:{}}s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";O:8:"stdClass":9:{s:2:"id";s:42:"w.org/plugins/social-media-buttons-toolbar";s:4:"slug";s:28:"social-media-buttons-toolbar";s:6:"plugin";s:61:"social-media-buttons-toolbar/social-media-buttons-toolbar.php";s:11:"new_version";s:4:"4.26";s:3:"url";s:59:"https://wordpress.org/plugins/social-media-buttons-toolbar/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/social-media-buttons-toolbar.4.26.zip";s:5:"icons";a:4:{s:2:"1x";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-128x128.png?rev=1396749";s:2:"2x";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-256x256.png?rev=1621322";s:0:"";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-512x512.png?rev=1621322";s:7:"default";s:81:"https://ps.w.org/social-media-buttons-toolbar/assets/icon-256x256.png?rev=1621322";}s:7:"banners";a:2:{s:2:"1x";s:83:"https://ps.w.org/social-media-buttons-toolbar/assets/banner-772x250.png?rev=1621322";s:7:"default";s:83:"https://ps.w.org/social-media-buttons-toolbar/assets/banner-772x250.png?rev=1621322";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.2.6";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.2.6.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:7:"default";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";s:7:"default";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";}s:11:"banners_rtl";a:0:{}}s:72:"woocommerce-product-payments/woocommerce-payment-gateway-per-product.php";O:8:"stdClass":9:{s:2:"id";s:42:"w.org/plugins/woocommerce-product-payments";s:4:"slug";s:28:"woocommerce-product-payments";s:6:"plugin";s:72:"woocommerce-product-payments/woocommerce-payment-gateway-per-product.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:59:"https://wordpress.org/plugins/woocommerce-product-payments/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-product-payments.2.3.zip";s:5:"icons";a:3:{s:2:"1x";s:81:"https://ps.w.org/woocommerce-product-payments/assets/icon-128x128.png?rev=1267076";s:2:"2x";s:81:"https://ps.w.org/woocommerce-product-payments/assets/icon-256x256.png?rev=1064562";s:7:"default";s:81:"https://ps.w.org/woocommerce-product-payments/assets/icon-256x256.png?rev=1064562";}s:7:"banners";a:2:{s:2:"1x";s:83:"https://ps.w.org/woocommerce-product-payments/assets/banner-772x250.png?rev=1532643";s:7:"default";s:83:"https://ps.w.org/woocommerce-product-payments/assets/banner-772x250.png?rev=1532643";}s:11:"banners_rtl";a:0:{}}s:59:"woocommerce-products-slider/woocommerce-products-slider.php";O:8:"stdClass":9:{s:2:"id";s:41:"w.org/plugins/woocommerce-products-slider";s:4:"slug";s:27:"woocommerce-products-slider";s:6:"plugin";s:59:"woocommerce-products-slider/woocommerce-products-slider.php";s:11:"new_version";s:7:"1.12.18";s:3:"url";s:58:"https://wordpress.org/plugins/woocommerce-products-slider/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-products-slider.zip";s:5:"icons";a:3:{s:2:"1x";s:80:"https://ps.w.org/woocommerce-products-slider/assets/icon-128x128.png?rev=1637877";s:2:"2x";s:80:"https://ps.w.org/woocommerce-products-slider/assets/icon-256x256.png?rev=1637877";s:7:"default";s:80:"https://ps.w.org/woocommerce-products-slider/assets/icon-256x256.png?rev=1637877";}s:7:"banners";a:3:{s:2:"2x";s:83:"https://ps.w.org/woocommerce-products-slider/assets/banner-1544x500.png?rev=1637877";s:2:"1x";s:82:"https://ps.w.org/woocommerce-products-slider/assets/banner-772x250.png?rev=1637877";s:7:"default";s:83:"https://ps.w.org/woocommerce-products-slider/assets/banner-1544x500.png?rev=1637877";}s:11:"banners_rtl";a:0:{}}s:34:"woo-product-images-slider/wpis.php";O:8:"stdClass":9:{s:2:"id";s:39:"w.org/plugins/woo-product-images-slider";s:4:"slug";s:25:"woo-product-images-slider";s:6:"plugin";s:34:"woo-product-images-slider/wpis.php";s:11:"new_version";s:5:"1.3.0";s:3:"url";s:56:"https://wordpress.org/plugins/woo-product-images-slider/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/woo-product-images-slider.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:80:"https://ps.w.org/woo-product-images-slider/assets/banner-772x250.png?rev=1577092";s:7:"default";s:80:"https://ps.w.org/woo-product-images-slider/assets/banner-772x250.png?rev=1577092";}s:11:"banners_rtl";a:0:{}}s:31:"wp-google-maps/wpGoogleMaps.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-google-maps";s:4:"slug";s:14:"wp-google-maps";s:6:"plugin";s:31:"wp-google-maps/wpGoogleMaps.php";s:11:"new_version";s:6:"6.4.06";s:3:"url";s:45:"https://wordpress.org/plugins/wp-google-maps/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-google-maps.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398";s:2:"2x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";s:7:"default";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";s:7:"default";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";}s:11:"banners_rtl";a:0:{}}s:45:"wp-live-chat-support/wp-live-chat-support.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/wp-live-chat-support";s:4:"slug";s:20:"wp-live-chat-support";s:6:"plugin";s:45:"wp-live-chat-support/wp-live-chat-support.php";s:11:"new_version";s:6:"7.1.07";s:3:"url";s:51:"https://wordpress.org/plugins/wp-live-chat-support/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-live-chat-support.zip";s:5:"icons";a:3:{s:2:"1x";s:73:"https://ps.w.org/wp-live-chat-support/assets/icon-128x128.png?rev=1341321";s:2:"2x";s:73:"https://ps.w.org/wp-live-chat-support/assets/icon-256x256.png?rev=1341321";s:7:"default";s:73:"https://ps.w.org/wp-live-chat-support/assets/icon-256x256.png?rev=1341321";}s:7:"banners";a:2:{s:2:"1x";s:75:"https://ps.w.org/wp-live-chat-support/assets/banner-772x250.jpg?rev=1281001";s:7:"default";s:75:"https://ps.w.org/wp-live-chat-support/assets/banner-772x250.jpg?rev=1281001";}s:11:"banners_rtl";a:0:{}}s:21:"wp-reset/wp-reset.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-reset";s:4:"slug";s:8:"wp-reset";s:6:"plugin";s:21:"wp-reset/wp-reset.php";s:11:"new_version";s:5:"1.0.1";s:3:"url";s:39:"https://wordpress.org/plugins/wp-reset/";s:7:"package";s:51:"https://downloads.wordpress.org/plugin/wp-reset.zip";s:5:"icons";a:2:{s:2:"1x";s:61:"https://ps.w.org/wp-reset/assets/icon-128x128.png?rev=1431144";s:7:"default";s:61:"https://ps.w.org/wp-reset/assets/icon-128x128.png?rev=1431144";}s:7:"banners";a:2:{s:2:"1x";s:63:"https://ps.w.org/wp-reset/assets/banner-772x250.png?rev=1431144";s:7:"default";s:63:"https://ps.w.org/wp-reset/assets/banner-772x250.png?rev=1431144";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(1493, 'wplc_db_version', '7.1.07', 'yes'),
(1494, 'WPLC_SETTINGS', 'a:52:{s:19:"wplc_settings_align";s:1:"2";s:16:"wplc_settings_bg";s:10:"cloudy.jpg";s:16:"wplc_environment";s:1:"1";s:20:"wplc_settings_color1";s:6:"ED832F";s:18:"wplc_settings_fill";s:6:"ED832F";s:20:"wplc_settings_color2";s:6:"FFFFFF";s:18:"wplc_settings_font";s:6:"FFFFFF";s:20:"wplc_settings_color3";s:6:"EEEEEE";s:20:"wplc_settings_color4";s:6:"666666";s:21:"wplc_settings_enabled";s:1:"1";s:22:"wplc_require_user_info";s:1:"0";s:30:"wplc_user_default_visitor_name";s:5:"Guest";s:23:"wplc_loggedin_user_info";s:1:"1";s:26:"wplc_user_alternative_text";s:70:"Please click \\&#039;Start Chat\\&#039; to initiate a chat with an agent";s:22:"wplc_enabled_on_mobile";s:1:"1";s:27:"wplc_redirect_thank_you_url";s:0:"";s:22:"wplc_record_ip_address";s:1:"1";s:21:"wplc_enable_msg_sound";s:1:"1";s:24:"wplc_enable_font_awesome";s:1:"1";s:27:"wplc_enable_all_admin_pages";s:1:"0";s:11:"wplc_pro_na";s:29:"Chat offline. Leave a message";s:27:"wplc_pro_chat_email_address";s:20:"wpdemo2000@gmail.com";s:35:"wplc_pro_chat_email_offline_subject";s:0:"";s:17:"wplc_pro_offline1";s:89:"We are currently offline. Please leave a message and we\\&#039;ll get back to you shortly.";s:17:"wplc_pro_offline2";s:18:"Sending message...";s:17:"wplc_pro_offline3";s:55:"Thank you for your message. We will be in contact soon.";s:20:"wplc_pro_offline_btn";s:15:"Leave a message";s:25:"wplc_pro_offline_btn_send";s:12:"Send message";s:13:"wplc_pro_fst1";s:10:"Questions?";s:13:"wplc_pro_fst2";s:12:"Chat with us";s:13:"wplc_pro_sst1";s:10:"Start Chat";s:20:"wplc_pro_sst1_survey";s:23:"Or chat to an agent now";s:21:"wplc_pro_sst1e_survey";s:10:"Chat ended";s:13:"wplc_pro_sst2";s:32:"Connecting. Please be patient...";s:13:"wplc_pro_tst1";s:34:"Reactivating your previous chat...";s:14:"wplc_pro_intro";s:56:"Hello. Please input your details so that I may help you.";s:15:"wplc_user_enter";s:32:"Press ENTER to send your message";s:20:"wplc_text_chat_ended";s:40:"The chat has been ended by the operator.";s:16:"wplc_welcome_msg";s:84:"Please standby for an agent. While you wait for the agent you may type your message.";s:10:"wplc_theme";s:13:"theme-default";s:13:"wplc_newtheme";s:7:"theme-2";s:24:"wplc_elem_trigger_action";s:1:"0";s:22:"wplc_elem_trigger_type";s:1:"0";s:20:"wplc_elem_trigger_id";s:0:"";s:14:"wplc_show_date";s:1:"0";s:14:"wplc_show_time";s:1:"0";s:14:"wplc_show_name";s:1:"0";s:16:"wplc_show_avatar";s:1:"0";s:19:"wplc_user_no_answer";s:43:"There is No Answer. Please Try Again Later.";s:13:"wplc_pro_fst3";s:15:"Start live chat";s:22:"wplc_user_welcome_chat";s:28:"Welcome. How may I help you?";s:19:"wplc_close_btn_text";s:5:"close";}', 'yes'),
(1495, 'WPLC_HIDE_CHAT', '', 'yes'),
(1496, 'WPLC_FIRST_TIME', '', 'yes'),
(1497, 'wplc_api_secret_token', '221aff12794354654b543c116d656446', 'yes'),
(1498, 'wplc_node_server_secret_token', '6d8a32404ff81a0ec60c99864a72ca5e', 'yes'),
(1499, 'wplc_current_version', '7.1.07', 'yes'),
(1500, '_transient_timeout_wplc_is_admin_logged_in', '1513765147', 'no'),
(1501, '_transient_wplc_is_admin_logged_in', '1', 'no'),
(1502, 'wplc_stats', 'a:4:{s:14:"chat_dashboard";a:3:{s:5:"views";i:3;s:13:"last_accessed";s:19:"2017-12-20 09:40:26";s:14:"first_accessed";s:19:"2017-12-20 08:45:14";}s:8:"settings";a:3:{s:5:"views";i:4;s:13:"last_accessed";s:19:"2017-12-20 09:40:49";s:14:"first_accessed";s:19:"2017-12-20 08:45:25";}s:6:"missed";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2017-12-20 08:49:10";s:14:"first_accessed";s:19:"2017-12-20 08:49:10";}s:16:"offline_messages";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2017-12-20 08:49:31";s:14:"first_accessed";s:19:"2017-12-20 08:49:31";}}', 'yes'),
(1503, 'WPLC_POWERED_BY', '0', 'yes'),
(1504, 'WPLC_CUSTOM_CSS', '', 'yes'),
(1505, 'WPLC_CUSTOM_JS', '', 'yes'),
(1506, 'WPLC_SURVEY_SETTINGS', 'a:4:{s:19:"wplc_enable_surveys";i:0;s:6:"survey";N;s:11:"survey_user";s:4:"3452";s:14:"survey_display";s:1:"1";}', 'yes'),
(1507, 'WPLC_GA_SETTINGS', 'a:0:{}', 'yes'),
(1508, 'WPLC_BANNED_IP_ADDRESSES', 's:17:"a:1:{i:0;s:0:"";}";', 'yes'),
(1509, 'wplc_advanced_settings', 'a:2:{s:15:"wplc_iterations";s:2:"55";s:24:"wplc_delay_between_loops";s:6:"500000";}', 'yes'),
(1510, 'wplc_mail_type', 'wp_mail', 'yes'),
(1511, 'wplc_mail_host', '', 'yes'),
(1512, 'wplc_mail_port', '', 'yes'),
(1513, 'wplc_mail_username', '', 'yes'),
(1514, 'wplc_mail_password', '', 'yes'),
(1515, '_transient_is_multi_author', '0', 'yes'),
(1520, '_transient_timeout_wc_related_144', '1513850859', 'no'),
(1521, '_transient_wc_related_144', 'a:6:{i:0;s:3:"142";i:1;s:3:"146";i:2;s:3:"148";i:3;s:3:"150";i:4;s:3:"152";i:5;s:3:"154";}', 'no'),
(1522, '_transient_timeout__woocommerce_helper_subscriptions', '1513765487', 'no'),
(1523, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1524, '_site_transient_timeout_theme_roots', '1513766387', 'no'),
(1525, '_site_transient_theme_roots', 'a:7:{s:8:"boutique";s:7:"/themes";s:4:"deli";s:7:"/themes";s:9:"dreamshop";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

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
(427, 36, 'total_sales', '2'),
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
(486, 7, '_edit_lock', '1513220981:1'),
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
(586, 64, '_menu_item_url', 'http://localhost/wordpress/danh-muc/mon-chinh'),
(588, 65, '_menu_item_type', 'custom'),
(589, 65, '_menu_item_menu_item_parent', '63'),
(590, 65, '_menu_item_object_id', '65'),
(591, 65, '_menu_item_object', 'custom'),
(592, 65, '_menu_item_target', ''),
(593, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(594, 65, '_menu_item_xfn', ''),
(595, 65, '_menu_item_url', 'http://localhost/wordpress/danh-muc/mon-an-kem'),
(597, 66, '_menu_item_type', 'custom'),
(598, 66, '_menu_item_menu_item_parent', '63'),
(599, 66, '_menu_item_object_id', '66'),
(600, 66, '_menu_item_object', 'custom'),
(601, 66, '_menu_item_target', ''),
(602, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(603, 66, '_menu_item_xfn', ''),
(604, 66, '_menu_item_url', 'http://localhost/wordpress/danh-muc/combo-tiet-kiem'),
(606, 67, '_menu_item_type', 'custom'),
(607, 67, '_menu_item_menu_item_parent', '63'),
(608, 67, '_menu_item_object_id', '67'),
(609, 67, '_menu_item_object', 'custom'),
(610, 67, '_menu_item_target', ''),
(611, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(612, 67, '_menu_item_xfn', ''),
(613, 67, '_menu_item_url', 'http://localhost/wordpress/danh-muc/nuoc-uong'),
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
(669, 77, '_edit_lock', '1513758775:1'),
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
(681, 77, 'twojs_slideshowImages', 'a:3:{i:0;s:3:"164";i:1;s:3:"165";i:2;s:3:"166";}'),
(682, 77, 'twojs_size', 'a:3:{s:5:"width";s:3:"100";s:9:"widthType";s:1:"1";s:6:"height";s:0:"";}'),
(684, 77, 'twojs_maxsize', 'a:3:{s:5:"width";s:3:"100";s:9:"widthType";s:1:"1";s:6:"height";s:0:"";}'),
(685, 77, 'twojs_ratio', '896/480'),
(686, 77, 'twojs_fit', 'cover'),
(687, 77, 'twojs_margin', '0'),
(688, 77, 'twojs_thumbmargin', '0'),
(689, 77, 'twojs_nav', 'dots'),
(690, 77, 'twojs_navPos', '0'),
(691, 77, 'twojs_thumb-size-options', 'a:3:{s:5:"width";s:3:"120";s:6:"height";s:2:"60";s:6:"source";s:6:"medium";}'),
(692, 77, 'twojs_fullscreen', 'true'),
(693, 77, 'twojs_border-options', 'a:3:{s:5:"width";s:1:"5";s:5:"style";s:5:"solid";s:5:"color";s:16:"rgb(229, 64, 40)";}'),
(694, 77, 'twojs_bgColor', 'rgb(255, 255, 255)'),
(695, 77, 'twojs_bgNavColor', 'rgb(255, 255, 255)'),
(696, 77, 'twojs_transition', 'crossfade'),
(697, 77, 'twojs_transitionduration', '2000'),
(698, 77, 'twojs_timer', '1000'),
(699, 77, 'views', '710'),
(700, 77, 'twojs_loop', '1'),
(701, 77, 'twojs_autoplay', '1'),
(702, 77, 'twojs_autoplaystop', '1'),
(703, 77, 'twojs_startindex', '0'),
(704, 83, '_edit_lock', '1513219890:1'),
(705, 83, '_edit_last', '1'),
(706, 83, '_wp_page_template', 'default'),
(707, 85, '_edit_lock', '1513046688:1'),
(708, 85, '_edit_last', '1'),
(709, 85, '_wp_page_template', 'default'),
(719, 88, '_menu_item_type', 'post_type'),
(720, 88, '_menu_item_menu_item_parent', '70'),
(721, 88, '_menu_item_object_id', '85'),
(722, 88, '_menu_item_object', 'page'),
(723, 88, '_menu_item_target', ''),
(724, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(725, 88, '_menu_item_xfn', ''),
(726, 88, '_menu_item_url', ''),
(728, 89, '_edit_lock', '1513761264:1'),
(729, 89, '_edit_last', '1'),
(730, 89, 'wcps_bg_img', ''),
(731, 89, 'wcps_container_padding', ''),
(732, 89, 'wcps_container_bg_color', ''),
(733, 89, 'wcps_items_bg_color', ''),
(734, 89, 'wcps_items_padding', ''),
(735, 89, 'wcps_themes', 'flat'),
(736, 89, 'wcps_total_items', '-1'),
(737, 89, 'wcps_items_price_format', 'full'),
(738, 89, 'wcps_column_number', '4'),
(739, 89, 'wcps_column_number_mobile', '2'),
(740, 89, 'wcps_column_number_tablet', '3'),
(741, 89, 'wcps_auto_play', 'true'),
(742, 89, 'wcps_auto_play_speed', '500'),
(743, 89, 'wcps_auto_play_timeout', '500'),
(744, 89, 'wcps_rewind', 'true'),
(745, 89, 'wcps_loop', 'true'),
(746, 89, 'wcps_center', 'false'),
(747, 89, 'wcps_stop_on_hover', 'true'),
(748, 89, 'wcps_slider_navigation', 'true');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(749, 89, 'wcps_slider_navigation_position', 'middle'),
(750, 89, 'wcps_slide_speed', '1000'),
(751, 89, 'wcps_slider_pagination', 'false'),
(752, 89, 'wcps_pagination_slide_speed', '500'),
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
(814, 90, '_date_completed', '1513239898'),
(815, 90, '_completed_date', '2017-12-14 08:24:58'),
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
(846, 90, '_order_version', '3.2.6'),
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
(869, 94, '_menu_item_url', ''),
(871, 97, '_menu_item_type', 'post_type'),
(872, 97, '_menu_item_menu_item_parent', '70'),
(873, 97, '_menu_item_object_id', '7'),
(874, 97, '_menu_item_object', 'page'),
(875, 97, '_menu_item_target', ''),
(876, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(877, 97, '_menu_item_xfn', ''),
(878, 97, '_menu_item_url', ''),
(880, 98, 'es_template_type', 'Post Notification'),
(881, 99, 'es_template_type', 'Newsletter'),
(882, 36, '_edit_lock', '1513239509:1'),
(883, 100, '_order_key', 'wc_order_5a3233aa32bd6'),
(884, 100, '_customer_user', '4'),
(885, 100, '_payment_method', 'bacs'),
(886, 100, '_payment_method_title', 'Chuyển khoản ngân hàng'),
(887, 100, '_transaction_id', ''),
(888, 100, '_customer_ip_address', '::1'),
(889, 100, '_customer_user_agent', 'mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/59.0.3071.115 safari/537.36'),
(890, 100, '_created_via', 'checkout'),
(891, 100, '_date_completed', ''),
(892, 100, '_completed_date', ''),
(893, 100, '_date_paid', ''),
(894, 100, '_paid_date', ''),
(895, 100, '_cart_hash', '86bd6ad525955638962fb7099a1bccce'),
(896, 100, '_billing_first_name', 'Thanh'),
(897, 100, '_billing_last_name', 'Vo'),
(898, 100, '_billing_company', 'TMA'),
(899, 100, '_billing_address_1', 'CVPM Quang Trung, QL1A, Trung My Tay, Q12'),
(900, 100, '_billing_address_2', ''),
(901, 100, '_billing_city', 'HCm'),
(902, 100, '_billing_state', ''),
(903, 100, '_billing_postcode', '700000'),
(904, 100, '_billing_country', 'VN'),
(905, 100, '_billing_email', '55b18194f0a34a7276a6e5d54db3c120@example.com'),
(906, 100, '_billing_phone', '01234808818'),
(907, 100, '_shipping_first_name', 'Thanh'),
(908, 100, '_shipping_last_name', 'Vo'),
(909, 100, '_shipping_company', 'TMA'),
(910, 100, '_shipping_address_1', 'CVPM Quang Trung, QL1A, Trung My Tay, Q12'),
(911, 100, '_shipping_address_2', ''),
(912, 100, '_shipping_city', 'HCm'),
(913, 100, '_shipping_state', ''),
(914, 100, '_shipping_postcode', '700000'),
(915, 100, '_shipping_country', 'VN'),
(916, 100, '_order_currency', 'VND'),
(917, 100, '_cart_discount', '0'),
(918, 100, '_cart_discount_tax', '0'),
(919, 100, '_order_shipping', '0'),
(920, 100, '_order_shipping_tax', '0'),
(921, 100, '_order_tax', '0'),
(922, 100, '_order_total', '18.00'),
(923, 100, '_order_version', '3.2.6'),
(924, 100, '_prices_include_tax', 'no'),
(925, 100, '_billing_address_index', 'Thanh Vo TMA CVPM Quang Trung, QL1A, Trung My Tay, Q12  HCm  700000 VN 55b18194f0a34a7276a6e5d54db3c120@example.com 01234808818'),
(926, 100, '_shipping_address_index', 'Thanh Vo TMA CVPM Quang Trung, QL1A, Trung My Tay, Q12  HCm  700000 VN'),
(927, 100, '_recorded_sales', 'yes'),
(928, 100, '_recorded_coupon_usage_counts', 'yes'),
(929, 100, '_order_stock_reduced', 'yes'),
(930, 100, '_edit_lock', '1513239648:1'),
(931, 100, '_edit_last', '1'),
(932, 100, '_wp_trash_meta_status', 'wc-on-hold'),
(933, 100, '_wp_trash_meta_time', '1513239886'),
(934, 100, '_wp_desired_post_slug', 'don-hang-th12-14-2017-0817-am'),
(935, 100, '_wp_trash_meta_comments_status', 'a:2:{i:4;s:1:"1";i:5;s:1:"1";}'),
(936, 90, '_download_permissions_granted', 'yes'),
(937, 90, '_edit_lock', '1513241556:1'),
(938, 101, '_edit_lock', '1513443363:1'),
(939, 101, '_edit_last', '1'),
(940, 102, '_wp_attached_file', '2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1.jpg'),
(941, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:62:"2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-600x533.jpg";s:5:"width";i:600;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(942, 102, '_wp_attachment_image_alt', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG'),
(943, 103, '_wp_attached_file', '2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2.jpg'),
(944, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:62:"2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(945, 103, '_wp_attachment_image_alt', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG'),
(946, 104, '_wp_attached_file', '2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3.jpg'),
(947, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:62:"2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:62:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(948, 104, '_wp_attachment_image_alt', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG'),
(956, 101, '_thumbnail_id', '104'),
(957, 111, '_edit_lock', '1513399487:1'),
(958, 111, '_edit_last', '1'),
(959, 112, '_wp_attached_file', '2017/12/top1.png'),
(960, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:603;s:4:"file";s:16:"2017/12/top1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"top1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"top1-300x201.png";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"top1-768x515.png";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"top1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"top1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:16:"top1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(961, 112, '_wp_attachment_image_alt', 'Set Roll 1 Pax'),
(962, 111, '_thumbnail_id', '120'),
(965, 114, '_edit_lock', '1513397463:1'),
(966, 114, '_edit_last', '1'),
(967, 115, '_wp_attached_file', '2017/12/top2.jpg'),
(968, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:16:"2017/12/top2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"top2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"top2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"top2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"top2-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"top2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"top2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"top2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(969, 115, '_wp_attachment_image_alt', 'Happy Friday'),
(970, 114, '_thumbnail_id', '115'),
(973, 117, '_edit_lock', '1513398270:1'),
(974, 117, '_edit_last', '1'),
(975, 118, '_wp_attached_file', '2017/12/top3.jpg'),
(976, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:16:"2017/12/top3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"top3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"top3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"top3-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"top3-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"top3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"top3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"top3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(977, 118, '_wp_attachment_image_alt', 'Menu Combo 220k'),
(978, 117, '_thumbnail_id', '118'),
(981, 120, '_wp_attached_file', '2017/12/top1_1.png'),
(982, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:18:"2017/12/top1_1.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"top1_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"top1_1-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:18:"top1_1-768x576.png";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"top1_1-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"top1_1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"top1_1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"top1_1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(983, 120, '_wp_attachment_image_alt', 'Set Roll 1 Pax'),
(984, 121, '_wc_review_count', '0'),
(985, 121, '_wc_rating_count', 'a:0:{}'),
(986, 121, '_wc_average_rating', '0'),
(987, 121, '_edit_lock', '1513419630:1'),
(988, 121, '_edit_last', '1'),
(989, 122, '_wp_attached_file', '2017/12/com-vit-pGzfUhbG8C.jpg'),
(990, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:320;s:4:"file";s:30:"2017/12/com-vit-pGzfUhbG8C.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"com-vit-pGzfUhbG8C-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"com-vit-pGzfUhbG8C-300x267.jpg";s:5:"width";i:300;s:6:"height";i:267;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"com-vit-pGzfUhbG8C-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"com-vit-pGzfUhbG8C-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(991, 122, '_wp_attachment_image_alt', 'cơm vịt quay'),
(992, 121, '_sku', ''),
(993, 121, '_regular_price', '88000'),
(994, 121, '_sale_price', ''),
(995, 121, '_sale_price_dates_from', ''),
(996, 121, '_sale_price_dates_to', ''),
(997, 121, 'total_sales', '0'),
(998, 121, '_tax_status', 'taxable'),
(999, 121, '_tax_class', ''),
(1000, 121, '_manage_stock', 'no'),
(1001, 121, '_backorders', 'no'),
(1002, 121, '_sold_individually', 'no'),
(1003, 121, '_weight', ''),
(1004, 121, '_length', ''),
(1005, 121, '_width', ''),
(1006, 121, '_height', ''),
(1007, 121, '_upsell_ids', 'a:0:{}'),
(1008, 121, '_crosssell_ids', 'a:0:{}'),
(1009, 121, '_purchase_note', ''),
(1010, 121, '_default_attributes', 'a:0:{}'),
(1011, 121, '_virtual', 'no'),
(1012, 121, '_downloadable', 'no'),
(1013, 121, '_product_image_gallery', ''),
(1014, 121, '_download_limit', '-1'),
(1015, 121, '_download_expiry', '-1'),
(1016, 121, '_stock', NULL),
(1017, 121, '_stock_status', 'instock'),
(1018, 121, '_product_version', '3.2.6'),
(1019, 121, '_price', '88000'),
(1020, 121, 'sd_payments', 'a:0:{}'),
(1021, 37, '_edit_lock', '1513419681:1'),
(1022, 123, '_wp_attached_file', '2017/12/comvit_800.jpg'),
(1023, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:22:"2017/12/comvit_800.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"comvit_800-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"comvit_800-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"comvit_800-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"comvit_800-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"comvit_800-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"comvit_800-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1024, 123, '_wp_attachment_image_alt', 'Cơm Vịt Quay'),
(1025, 121, '_thumbnail_id', '123'),
(1026, 124, '_wc_review_count', '0'),
(1027, 124, '_wc_rating_count', 'a:0:{}'),
(1028, 124, '_wc_average_rating', '0'),
(1029, 124, '_edit_lock', '1513420923:1'),
(1030, 124, '_edit_last', '1'),
(1031, 125, '_wp_attached_file', '2017/12/myxao_800.jpg'),
(1032, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:21:"2017/12/myxao_800.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"myxao_800-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"myxao_800-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"myxao_800-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"myxao_800-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"myxao_800-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"myxao_800-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1033, 125, '_wp_attachment_image_alt', 'Mỳ Xào Vịt Quay'),
(1034, 124, '_thumbnail_id', '125'),
(1035, 124, '_sku', ''),
(1036, 124, '_regular_price', '78000'),
(1037, 124, '_sale_price', ''),
(1038, 124, '_sale_price_dates_from', ''),
(1039, 124, '_sale_price_dates_to', ''),
(1040, 124, 'total_sales', '0'),
(1041, 124, '_tax_status', 'taxable'),
(1042, 124, '_tax_class', ''),
(1043, 124, '_manage_stock', 'no'),
(1044, 124, '_backorders', 'no'),
(1045, 124, '_sold_individually', 'no'),
(1046, 124, '_weight', ''),
(1047, 124, '_length', ''),
(1048, 124, '_width', ''),
(1049, 124, '_height', ''),
(1050, 124, '_upsell_ids', 'a:0:{}'),
(1051, 124, '_crosssell_ids', 'a:0:{}'),
(1052, 124, '_purchase_note', ''),
(1053, 124, '_default_attributes', 'a:0:{}'),
(1054, 124, '_virtual', 'no'),
(1055, 124, '_downloadable', 'no'),
(1056, 124, '_product_image_gallery', ''),
(1057, 124, '_download_limit', '-1'),
(1058, 124, '_download_expiry', '-1'),
(1059, 124, '_stock', NULL),
(1060, 124, '_stock_status', 'instock'),
(1061, 124, '_product_version', '3.2.6'),
(1062, 124, '_price', '78000'),
(1063, 124, 'sd_payments', 'a:0:{}'),
(1064, 126, '_wc_review_count', '0'),
(1065, 126, '_wc_rating_count', 'a:0:{}'),
(1066, 126, '_wc_average_rating', '0'),
(1067, 126, '_edit_lock', '1513421016:1'),
(1068, 126, '_edit_last', '1'),
(1069, 127, '_wp_attached_file', '2017/12/m_800.jpg'),
(1070, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:17:"2017/12/m_800.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"m_800-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"m_800-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"m_800-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"m_800-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"m_800-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"m_800-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1071, 127, '_wp_attachment_image_alt', 'màn thầu vịt quay'),
(1072, 126, '_thumbnail_id', '127'),
(1073, 126, '_sku', ''),
(1074, 126, '_regular_price', '48000'),
(1075, 126, '_sale_price', ''),
(1076, 126, '_sale_price_dates_from', ''),
(1077, 126, '_sale_price_dates_to', ''),
(1078, 126, 'total_sales', '0'),
(1079, 126, '_tax_status', 'taxable'),
(1080, 126, '_tax_class', ''),
(1081, 126, '_manage_stock', 'no'),
(1082, 126, '_backorders', 'no'),
(1083, 126, '_sold_individually', 'no'),
(1084, 126, '_weight', ''),
(1085, 126, '_length', ''),
(1086, 126, '_width', ''),
(1087, 126, '_height', ''),
(1088, 126, '_upsell_ids', 'a:0:{}'),
(1089, 126, '_crosssell_ids', 'a:0:{}'),
(1090, 126, '_purchase_note', ''),
(1091, 126, '_default_attributes', 'a:0:{}'),
(1092, 126, '_virtual', 'no'),
(1093, 126, '_downloadable', 'no'),
(1094, 126, '_product_image_gallery', ''),
(1095, 126, '_download_limit', '-1'),
(1096, 126, '_download_expiry', '-1'),
(1097, 126, '_stock', NULL),
(1098, 126, '_stock_status', 'instock'),
(1099, 126, '_product_version', '3.2.6'),
(1100, 126, '_price', '48000'),
(1101, 126, 'sd_payments', 'a:0:{}'),
(1102, 128, '_wc_review_count', '0'),
(1103, 128, '_wc_rating_count', 'a:0:{}'),
(1104, 128, '_wc_average_rating', '0'),
(1105, 128, '_edit_lock', '1513421465:1'),
(1106, 128, '_edit_last', '1'),
(1107, 129, '_wp_attached_file', '2017/12/img-2996.jpg'),
(1108, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:20:"2017/12/img-2996.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img-2996-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img-2996-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"img-2996-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"img-2996-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"img-2996-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"img-2996-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1109, 129, '_wp_attachment_image_alt', 'cuốn gỏi vịt quay khổng lồ'),
(1110, 128, '_thumbnail_id', '129'),
(1111, 128, '_sku', ''),
(1112, 128, '_regular_price', '48000'),
(1113, 128, '_sale_price', ''),
(1114, 128, '_sale_price_dates_from', ''),
(1115, 128, '_sale_price_dates_to', ''),
(1116, 128, 'total_sales', '0'),
(1117, 128, '_tax_status', 'taxable'),
(1118, 128, '_tax_class', ''),
(1119, 128, '_manage_stock', 'no'),
(1120, 128, '_backorders', 'no'),
(1121, 128, '_sold_individually', 'no'),
(1122, 128, '_weight', ''),
(1123, 128, '_length', ''),
(1124, 128, '_width', ''),
(1125, 128, '_height', ''),
(1126, 128, '_upsell_ids', 'a:0:{}'),
(1127, 128, '_crosssell_ids', 'a:0:{}'),
(1128, 128, '_purchase_note', ''),
(1129, 128, '_default_attributes', 'a:0:{}'),
(1130, 128, '_virtual', 'no'),
(1131, 128, '_downloadable', 'no'),
(1132, 128, '_product_image_gallery', ''),
(1133, 128, '_download_limit', '-1'),
(1134, 128, '_download_expiry', '-1'),
(1135, 128, '_stock', NULL),
(1136, 128, '_stock_status', 'instock'),
(1137, 128, '_product_version', '3.2.6'),
(1138, 128, '_price', '48000'),
(1139, 128, 'sd_payments', 'a:0:{}'),
(1140, 130, '_wc_review_count', '0'),
(1141, 130, '_wc_rating_count', 'a:0:{}'),
(1142, 130, '_wc_average_rating', '0'),
(1143, 130, '_edit_lock', '1513421669:1'),
(1144, 130, '_edit_last', '1'),
(1145, 131, '_wp_attached_file', '2017/12/bia-5-cuon-VtwHoJBt9M.jpg'),
(1146, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:33:"2017/12/bia-5-cuon-VtwHoJBt9M.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"bia-5-cuon-VtwHoJBt9M-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"bia-5-cuon-VtwHoJBt9M-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"bia-5-cuon-VtwHoJBt9M-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"bia-5-cuon-VtwHoJBt9M-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"bia-5-cuon-VtwHoJBt9M-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"bia-5-cuon-VtwHoJBt9M-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1147, 131, '_wp_attachment_image_alt', 'cuốn vịt quay da bò bía'),
(1148, 130, '_thumbnail_id', '131'),
(1149, 130, '_sku', ''),
(1150, 130, '_regular_price', '58000'),
(1151, 130, '_sale_price', ''),
(1152, 130, '_sale_price_dates_from', ''),
(1153, 130, '_sale_price_dates_to', ''),
(1154, 130, 'total_sales', '0'),
(1155, 130, '_tax_status', 'taxable'),
(1156, 130, '_tax_class', ''),
(1157, 130, '_manage_stock', 'no'),
(1158, 130, '_backorders', 'no'),
(1159, 130, '_sold_individually', 'no'),
(1160, 130, '_weight', ''),
(1161, 130, '_length', ''),
(1162, 130, '_width', ''),
(1163, 130, '_height', ''),
(1164, 130, '_upsell_ids', 'a:0:{}'),
(1165, 130, '_crosssell_ids', 'a:0:{}'),
(1166, 130, '_purchase_note', ''),
(1167, 130, '_default_attributes', 'a:0:{}'),
(1168, 130, '_virtual', 'no'),
(1169, 130, '_downloadable', 'no'),
(1170, 130, '_product_image_gallery', ''),
(1171, 130, '_download_limit', '-1'),
(1172, 130, '_download_expiry', '-1'),
(1173, 130, '_stock', NULL),
(1174, 130, '_stock_status', 'instock'),
(1175, 130, '_product_version', '3.2.6'),
(1176, 130, '_price', '58000'),
(1177, 130, 'sd_payments', 'a:0:{}'),
(1178, 132, '_wc_review_count', '0'),
(1179, 132, '_wc_rating_count', 'a:0:{}'),
(1180, 132, '_wc_average_rating', '0'),
(1181, 132, '_edit_lock', '1513421812:1'),
(1182, 132, '_edit_last', '1'),
(1183, 133, '_wp_attached_file', '2017/12/mon-an-PAQCJt3FCR.png'),
(1184, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:29:"2017/12/mon-an-PAQCJt3FCR.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"mon-an-PAQCJt3FCR-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"mon-an-PAQCJt3FCR-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:29:"mon-an-PAQCJt3FCR-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"mon-an-PAQCJt3FCR-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"mon-an-PAQCJt3FCR-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:29:"mon-an-PAQCJt3FCR-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1185, 133, '_wp_attachment_image_alt', 'vịt quay nửa con'),
(1186, 132, '_thumbnail_id', '133'),
(1187, 132, '_sku', ''),
(1188, 132, '_regular_price', '200000'),
(1189, 132, '_sale_price', ''),
(1190, 132, '_sale_price_dates_from', ''),
(1191, 132, '_sale_price_dates_to', ''),
(1192, 132, 'total_sales', '0'),
(1193, 132, '_tax_status', 'taxable'),
(1194, 132, '_tax_class', ''),
(1195, 132, '_manage_stock', 'no'),
(1196, 132, '_backorders', 'no'),
(1197, 132, '_sold_individually', 'no'),
(1198, 132, '_weight', ''),
(1199, 132, '_length', ''),
(1200, 132, '_width', ''),
(1201, 132, '_height', ''),
(1202, 132, '_upsell_ids', 'a:0:{}'),
(1203, 132, '_crosssell_ids', 'a:0:{}'),
(1204, 132, '_purchase_note', ''),
(1205, 132, '_default_attributes', 'a:0:{}'),
(1206, 132, '_virtual', 'no'),
(1207, 132, '_downloadable', 'no'),
(1208, 132, '_product_image_gallery', ''),
(1209, 132, '_download_limit', '-1'),
(1210, 132, '_download_expiry', '-1'),
(1211, 132, '_stock', NULL),
(1212, 132, '_stock_status', 'instock'),
(1213, 132, '_product_version', '3.2.6'),
(1214, 132, '_price', '200000'),
(1215, 132, 'sd_payments', 'a:0:{}'),
(1216, 134, '_wc_review_count', '0'),
(1217, 134, '_wc_rating_count', 'a:0:{}'),
(1218, 134, '_wc_average_rating', '0'),
(1219, 134, '_edit_lock', '1513421933:1'),
(1220, 134, '_edit_last', '1'),
(1221, 134, '_thumbnail_id', '133'),
(1222, 134, '_sku', ''),
(1223, 134, '_regular_price', '390000'),
(1224, 134, '_sale_price', ''),
(1225, 134, '_sale_price_dates_from', ''),
(1226, 134, '_sale_price_dates_to', ''),
(1227, 134, 'total_sales', '0'),
(1228, 134, '_tax_status', 'taxable'),
(1229, 134, '_tax_class', ''),
(1230, 134, '_manage_stock', 'no'),
(1231, 134, '_backorders', 'no'),
(1232, 134, '_sold_individually', 'no'),
(1233, 134, '_weight', ''),
(1234, 134, '_length', ''),
(1235, 134, '_width', ''),
(1236, 134, '_height', ''),
(1237, 134, '_upsell_ids', 'a:0:{}'),
(1238, 134, '_crosssell_ids', 'a:0:{}'),
(1239, 134, '_purchase_note', ''),
(1240, 134, '_default_attributes', 'a:0:{}'),
(1241, 134, '_virtual', 'no'),
(1242, 134, '_downloadable', 'no'),
(1243, 134, '_product_image_gallery', ''),
(1244, 134, '_download_limit', '-1'),
(1245, 134, '_download_expiry', '-1'),
(1246, 134, '_stock', NULL),
(1247, 134, '_stock_status', 'instock'),
(1248, 134, '_product_version', '3.2.6'),
(1249, 134, '_price', '390000'),
(1250, 134, 'sd_payments', 'a:0:{}'),
(1251, 135, '_wc_review_count', '0'),
(1252, 135, '_wc_rating_count', 'a:0:{}'),
(1253, 135, '_wc_average_rating', '0'),
(1254, 135, '_edit_lock', '1513422071:1'),
(1255, 135, '_edit_last', '1'),
(1256, 136, '_wp_attached_file', '2017/12/com-ngoc-bich-iaWulRyjZt.jpg'),
(1257, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:36:"2017/12/com-ngoc-bich-iaWulRyjZt.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"com-ngoc-bich-iaWulRyjZt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"com-ngoc-bich-iaWulRyjZt-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"com-ngoc-bich-iaWulRyjZt-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"com-ngoc-bich-iaWulRyjZt-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"com-ngoc-bich-iaWulRyjZt-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"com-ngoc-bich-iaWulRyjZt-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1258, 136, '_wp_attachment_image_alt', 'Cơm Chiên Ngọc Bích'),
(1259, 135, '_thumbnail_id', '136'),
(1260, 135, '_sku', ''),
(1261, 135, '_regular_price', '60000'),
(1262, 135, '_sale_price', ''),
(1263, 135, '_sale_price_dates_from', ''),
(1264, 135, '_sale_price_dates_to', ''),
(1265, 135, 'total_sales', '0'),
(1266, 135, '_tax_status', 'taxable'),
(1267, 135, '_tax_class', ''),
(1268, 135, '_manage_stock', 'no'),
(1269, 135, '_backorders', 'no'),
(1270, 135, '_sold_individually', 'no'),
(1271, 135, '_weight', ''),
(1272, 135, '_length', ''),
(1273, 135, '_width', ''),
(1274, 135, '_height', ''),
(1275, 135, '_upsell_ids', 'a:0:{}'),
(1276, 135, '_crosssell_ids', 'a:0:{}'),
(1277, 135, '_purchase_note', ''),
(1278, 135, '_default_attributes', 'a:0:{}'),
(1279, 135, '_virtual', 'no'),
(1280, 135, '_downloadable', 'no'),
(1281, 135, '_product_image_gallery', ''),
(1282, 135, '_download_limit', '-1'),
(1283, 135, '_download_expiry', '-1'),
(1284, 135, '_stock', NULL),
(1285, 135, '_stock_status', 'instock'),
(1286, 135, '_product_version', '3.2.6'),
(1287, 135, '_price', '60000'),
(1288, 135, 'sd_payments', 'a:0:{}'),
(1289, 137, '_wc_review_count', '0'),
(1290, 137, '_wc_rating_count', 'a:0:{}'),
(1291, 137, '_wc_average_rating', '0'),
(1292, 137, '_edit_lock', '1513422131:1'),
(1293, 137, '_edit_last', '1'),
(1294, 138, '_wp_attached_file', '2017/12/xa-lach-vit-L4GtE9AjWa.jpg'),
(1295, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:34:"2017/12/xa-lach-vit-L4GtE9AjWa.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"xa-lach-vit-L4GtE9AjWa-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"xa-lach-vit-L4GtE9AjWa-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"xa-lach-vit-L4GtE9AjWa-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"xa-lach-vit-L4GtE9AjWa-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"xa-lach-vit-L4GtE9AjWa-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:34:"xa-lach-vit-L4GtE9AjWa-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1296, 138, '_wp_attachment_image_alt', 'Salad Đỉnh Ký'),
(1297, 137, '_thumbnail_id', '138'),
(1298, 137, '_sku', ''),
(1299, 137, '_regular_price', '85000'),
(1300, 137, '_sale_price', ''),
(1301, 137, '_sale_price_dates_from', ''),
(1302, 137, '_sale_price_dates_to', ''),
(1303, 137, 'total_sales', '0'),
(1304, 137, '_tax_status', 'taxable'),
(1305, 137, '_tax_class', ''),
(1306, 137, '_manage_stock', 'no'),
(1307, 137, '_backorders', 'no'),
(1308, 137, '_sold_individually', 'no'),
(1309, 137, '_weight', ''),
(1310, 137, '_length', ''),
(1311, 137, '_width', ''),
(1312, 137, '_height', ''),
(1313, 137, '_upsell_ids', 'a:0:{}'),
(1314, 137, '_crosssell_ids', 'a:0:{}'),
(1315, 137, '_purchase_note', ''),
(1316, 137, '_default_attributes', 'a:0:{}'),
(1317, 137, '_virtual', 'no'),
(1318, 137, '_downloadable', 'no'),
(1319, 137, '_product_image_gallery', ''),
(1320, 137, '_download_limit', '-1'),
(1321, 137, '_download_expiry', '-1'),
(1322, 137, '_stock', NULL),
(1323, 137, '_stock_status', 'instock'),
(1324, 137, '_product_version', '3.2.6'),
(1325, 137, '_price', '85000'),
(1326, 137, 'sd_payments', 'a:0:{}'),
(1327, 139, '_wc_review_count', '0'),
(1328, 139, '_wc_rating_count', 'a:0:{}'),
(1329, 139, '_wc_average_rating', '0'),
(1330, 139, '_edit_lock', '1513422294:1'),
(1331, 139, '_edit_last', '1'),
(1332, 139, '_thumbnail_id', '133'),
(1333, 139, '_sku', ''),
(1334, 139, '_regular_price', '120000'),
(1335, 139, '_sale_price', ''),
(1336, 139, '_sale_price_dates_from', ''),
(1337, 139, '_sale_price_dates_to', ''),
(1338, 139, 'total_sales', '0'),
(1339, 139, '_tax_status', 'taxable'),
(1340, 139, '_tax_class', ''),
(1341, 139, '_manage_stock', 'no'),
(1342, 139, '_backorders', 'no'),
(1343, 139, '_sold_individually', 'no'),
(1344, 139, '_weight', ''),
(1345, 139, '_length', ''),
(1346, 139, '_width', ''),
(1347, 139, '_height', ''),
(1348, 139, '_upsell_ids', 'a:0:{}'),
(1349, 139, '_crosssell_ids', 'a:0:{}'),
(1350, 139, '_purchase_note', ''),
(1351, 139, '_default_attributes', 'a:0:{}'),
(1352, 139, '_virtual', 'no'),
(1353, 139, '_downloadable', 'no'),
(1354, 139, '_product_image_gallery', ''),
(1355, 139, '_download_limit', '-1'),
(1356, 139, '_download_expiry', '-1'),
(1357, 139, '_stock', NULL),
(1358, 139, '_stock_status', 'instock'),
(1359, 139, '_product_version', '3.2.6'),
(1360, 139, '_price', '120000'),
(1361, 139, 'sd_payments', 'a:0:{}'),
(1362, 140, '_wc_review_count', '0'),
(1363, 140, '_wc_rating_count', 'a:0:{}'),
(1364, 140, '_wc_average_rating', '0'),
(1365, 140, '_edit_lock', '1513422379:1'),
(1366, 140, '_edit_last', '1'),
(1367, 141, '_wp_attached_file', '2017/12/phalaun-2oGFSeQXCD.png'),
(1368, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:30:"2017/12/phalaun-2oGFSeQXCD.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"phalaun-2oGFSeQXCD-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"phalaun-2oGFSeQXCD-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"phalaun-2oGFSeQXCD-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"phalaun-2oGFSeQXCD-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"phalaun-2oGFSeQXCD-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:30:"phalaun-2oGFSeQXCD-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1369, 141, '_wp_attachment_image_alt', 'Phá Lấu Vịt'),
(1370, 140, '_thumbnail_id', '141'),
(1371, 140, '_sku', ''),
(1372, 140, '_regular_price', '35000'),
(1373, 140, '_sale_price', ''),
(1374, 140, '_sale_price_dates_from', ''),
(1375, 140, '_sale_price_dates_to', ''),
(1376, 140, 'total_sales', '0'),
(1377, 140, '_tax_status', 'taxable'),
(1378, 140, '_tax_class', ''),
(1379, 140, '_manage_stock', 'no'),
(1380, 140, '_backorders', 'no'),
(1381, 140, '_sold_individually', 'no'),
(1382, 140, '_weight', ''),
(1383, 140, '_length', ''),
(1384, 140, '_width', ''),
(1385, 140, '_height', ''),
(1386, 140, '_upsell_ids', 'a:0:{}'),
(1387, 140, '_crosssell_ids', 'a:0:{}'),
(1388, 140, '_purchase_note', ''),
(1389, 140, '_default_attributes', 'a:0:{}'),
(1390, 140, '_virtual', 'no'),
(1391, 140, '_downloadable', 'no'),
(1392, 140, '_product_image_gallery', ''),
(1393, 140, '_download_limit', '-1'),
(1394, 140, '_download_expiry', '-1'),
(1395, 140, '_stock', NULL),
(1396, 140, '_stock_status', 'instock'),
(1397, 140, '_product_version', '3.2.6'),
(1398, 140, '_price', '35000'),
(1399, 140, 'sd_payments', 'a:0:{}'),
(1400, 142, '_wc_review_count', '0'),
(1401, 142, '_wc_rating_count', 'a:0:{}'),
(1402, 142, '_wc_average_rating', '0'),
(1403, 142, '_edit_lock', '1513422639:1'),
(1404, 142, '_edit_last', '1'),
(1405, 143, '_wp_attached_file', '2017/12/combo-2-paxx-7ZnolZmiSd.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1406, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:35:"2017/12/combo-2-paxx-7ZnolZmiSd.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"combo-2-paxx-7ZnolZmiSd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"combo-2-paxx-7ZnolZmiSd-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"combo-2-paxx-7ZnolZmiSd-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"combo-2-paxx-7ZnolZmiSd-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"combo-2-paxx-7ZnolZmiSd-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"combo-2-paxx-7ZnolZmiSd-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1407, 143, '_wp_attachment_image_alt', 'Combo Dành Cho 2 Người'),
(1408, 142, '_thumbnail_id', '143'),
(1409, 142, '_sku', ''),
(1410, 142, '_regular_price', '220000'),
(1411, 142, '_sale_price', ''),
(1412, 142, '_sale_price_dates_from', ''),
(1413, 142, '_sale_price_dates_to', ''),
(1414, 142, 'total_sales', '0'),
(1415, 142, '_tax_status', 'taxable'),
(1416, 142, '_tax_class', ''),
(1417, 142, '_manage_stock', 'no'),
(1418, 142, '_backorders', 'no'),
(1419, 142, '_sold_individually', 'no'),
(1420, 142, '_weight', ''),
(1421, 142, '_length', ''),
(1422, 142, '_width', ''),
(1423, 142, '_height', ''),
(1424, 142, '_upsell_ids', 'a:0:{}'),
(1425, 142, '_crosssell_ids', 'a:0:{}'),
(1426, 142, '_purchase_note', ''),
(1427, 142, '_default_attributes', 'a:0:{}'),
(1428, 142, '_virtual', 'no'),
(1429, 142, '_downloadable', 'no'),
(1430, 142, '_product_image_gallery', ''),
(1431, 142, '_download_limit', '-1'),
(1432, 142, '_download_expiry', '-1'),
(1433, 142, '_stock', NULL),
(1434, 142, '_stock_status', 'instock'),
(1435, 142, '_product_version', '3.2.6'),
(1436, 142, '_price', '220000'),
(1437, 142, 'sd_payments', 'a:0:{}'),
(1438, 144, '_wc_review_count', '0'),
(1439, 144, '_wc_rating_count', 'a:0:{}'),
(1440, 144, '_wc_average_rating', '0'),
(1441, 144, '_edit_lock', '1513422898:1'),
(1442, 144, '_edit_last', '1'),
(1443, 145, '_wp_attached_file', '2017/12/combo4pax1709-s5ugOQ2N1q.jpg'),
(1444, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:36:"2017/12/combo4pax1709-s5ugOQ2N1q.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"combo4pax1709-s5ugOQ2N1q-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"combo4pax1709-s5ugOQ2N1q-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"combo4pax1709-s5ugOQ2N1q-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"combo4pax1709-s5ugOQ2N1q-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"combo4pax1709-s5ugOQ2N1q-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"combo4pax1709-s5ugOQ2N1q-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1445, 145, '_wp_attachment_image_alt', 'Combo Dành Cho 2 Người'),
(1446, 144, '_thumbnail_id', '145'),
(1447, 144, '_sku', ''),
(1448, 144, '_regular_price', '480000'),
(1449, 144, '_sale_price', ''),
(1450, 144, '_sale_price_dates_from', ''),
(1451, 144, '_sale_price_dates_to', ''),
(1452, 144, 'total_sales', '0'),
(1453, 144, '_tax_status', 'taxable'),
(1454, 144, '_tax_class', ''),
(1455, 144, '_manage_stock', 'no'),
(1456, 144, '_backorders', 'no'),
(1457, 144, '_sold_individually', 'no'),
(1458, 144, '_weight', ''),
(1459, 144, '_length', ''),
(1460, 144, '_width', ''),
(1461, 144, '_height', ''),
(1462, 144, '_upsell_ids', 'a:0:{}'),
(1463, 144, '_crosssell_ids', 'a:0:{}'),
(1464, 144, '_purchase_note', ''),
(1465, 144, '_default_attributes', 'a:0:{}'),
(1466, 144, '_virtual', 'no'),
(1467, 144, '_downloadable', 'no'),
(1468, 144, '_product_image_gallery', ''),
(1469, 144, '_download_limit', '-1'),
(1470, 144, '_download_expiry', '-1'),
(1471, 144, '_stock', NULL),
(1472, 144, '_stock_status', 'instock'),
(1473, 144, '_product_version', '3.2.6'),
(1474, 144, '_price', '480000'),
(1475, 144, 'sd_payments', 'a:0:{}'),
(1476, 146, '_wc_review_count', '0'),
(1477, 146, '_wc_rating_count', 'a:0:{}'),
(1478, 146, '_wc_average_rating', '0'),
(1479, 146, '_edit_lock', '1513423846:1'),
(1480, 146, '_edit_last', '1'),
(1481, 147, '_wp_attached_file', '2017/12/combo-6-K6UPKmqGjz.jpg'),
(1482, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:30:"2017/12/combo-6-K6UPKmqGjz.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"combo-6-K6UPKmqGjz-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"combo-6-K6UPKmqGjz-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"combo-6-K6UPKmqGjz-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"combo-6-K6UPKmqGjz-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"combo-6-K6UPKmqGjz-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"combo-6-K6UPKmqGjz-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1483, 147, '_wp_attachment_image_alt', 'Combo Dành Cho 6 Người'),
(1484, 146, '_thumbnail_id', '147'),
(1485, 146, '_sku', ''),
(1486, 146, '_regular_price', '690000'),
(1487, 146, '_sale_price', ''),
(1488, 146, '_sale_price_dates_from', ''),
(1489, 146, '_sale_price_dates_to', ''),
(1490, 146, 'total_sales', '0'),
(1491, 146, '_tax_status', 'taxable'),
(1492, 146, '_tax_class', ''),
(1493, 146, '_manage_stock', 'no'),
(1494, 146, '_backorders', 'no'),
(1495, 146, '_sold_individually', 'no'),
(1496, 146, '_weight', ''),
(1497, 146, '_length', ''),
(1498, 146, '_width', ''),
(1499, 146, '_height', ''),
(1500, 146, '_upsell_ids', 'a:0:{}'),
(1501, 146, '_crosssell_ids', 'a:0:{}'),
(1502, 146, '_purchase_note', ''),
(1503, 146, '_default_attributes', 'a:0:{}'),
(1504, 146, '_virtual', 'no'),
(1505, 146, '_downloadable', 'no'),
(1506, 146, '_product_image_gallery', ''),
(1507, 146, '_download_limit', '-1'),
(1508, 146, '_download_expiry', '-1'),
(1509, 146, '_stock', NULL),
(1510, 146, '_stock_status', 'instock'),
(1511, 146, '_product_version', '3.2.6'),
(1512, 146, '_price', '690000'),
(1513, 146, 'sd_payments', 'a:0:{}'),
(1514, 148, '_wc_review_count', '0'),
(1515, 148, '_wc_rating_count', 'a:0:{}'),
(1516, 148, '_wc_average_rating', '0'),
(1517, 148, '_edit_lock', '1513427655:1'),
(1518, 148, '_edit_last', '1'),
(1519, 149, '_wp_attached_file', '2017/12/artboard-6-A2B2P4H5fM.png'),
(1520, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:33:"2017/12/artboard-6-A2B2P4H5fM.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"artboard-6-A2B2P4H5fM-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"artboard-6-A2B2P4H5fM-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:33:"artboard-6-A2B2P4H5fM-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"artboard-6-A2B2P4H5fM-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"artboard-6-A2B2P4H5fM-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:33:"artboard-6-A2B2P4H5fM-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1521, 149, '_wp_attachment_image_alt', 'Set cuốn bò bía 1 người'),
(1522, 148, '_thumbnail_id', '149'),
(1523, 148, '_sku', ''),
(1524, 148, '_regular_price', '78000'),
(1525, 148, '_sale_price', ''),
(1526, 148, '_sale_price_dates_from', ''),
(1527, 148, '_sale_price_dates_to', ''),
(1528, 148, 'total_sales', '0'),
(1529, 148, '_tax_status', 'taxable'),
(1530, 148, '_tax_class', ''),
(1531, 148, '_manage_stock', 'no'),
(1532, 148, '_backorders', 'no'),
(1533, 148, '_sold_individually', 'no'),
(1534, 148, '_weight', ''),
(1535, 148, '_length', ''),
(1536, 148, '_width', ''),
(1537, 148, '_height', ''),
(1538, 148, '_upsell_ids', 'a:0:{}'),
(1539, 148, '_crosssell_ids', 'a:0:{}'),
(1540, 148, '_purchase_note', ''),
(1541, 148, '_default_attributes', 'a:0:{}'),
(1542, 148, '_virtual', 'no'),
(1543, 148, '_downloadable', 'no'),
(1544, 148, '_product_image_gallery', ''),
(1545, 148, '_download_limit', '-1'),
(1546, 148, '_download_expiry', '-1'),
(1547, 148, '_stock', NULL),
(1548, 148, '_stock_status', 'instock'),
(1549, 148, '_product_version', '3.2.6'),
(1550, 148, '_price', '78000'),
(1551, 148, 'sd_payments', 'a:0:{}'),
(1552, 150, '_wc_review_count', '0'),
(1553, 150, '_wc_rating_count', 'a:0:{}'),
(1554, 150, '_wc_average_rating', '0'),
(1555, 150, '_edit_lock', '1513427793:1'),
(1556, 150, '_edit_last', '1'),
(1557, 151, '_wp_attached_file', '2017/12/artboard-6-copy-2-oLm5Sadb3T.png'),
(1558, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:40:"2017/12/artboard-6-copy-2-oLm5Sadb3T.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"artboard-6-copy-2-oLm5Sadb3T-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"artboard-6-copy-2-oLm5Sadb3T-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:40:"artboard-6-copy-2-oLm5Sadb3T-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"artboard-6-copy-2-oLm5Sadb3T-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"artboard-6-copy-2-oLm5Sadb3T-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:40:"artboard-6-copy-2-oLm5Sadb3T-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1559, 151, '_wp_attachment_image_alt', 'Set cuốn bò bía 3 người'),
(1560, 150, '_thumbnail_id', '151'),
(1561, 150, '_sku', ''),
(1562, 150, '_regular_price', '220000'),
(1563, 150, '_sale_price', ''),
(1564, 150, '_sale_price_dates_from', ''),
(1565, 150, '_sale_price_dates_to', ''),
(1566, 150, 'total_sales', '0'),
(1567, 150, '_tax_status', 'taxable'),
(1568, 150, '_tax_class', ''),
(1569, 150, '_manage_stock', 'no'),
(1570, 150, '_backorders', 'no'),
(1571, 150, '_sold_individually', 'no'),
(1572, 150, '_weight', ''),
(1573, 150, '_length', ''),
(1574, 150, '_width', ''),
(1575, 150, '_height', ''),
(1576, 150, '_upsell_ids', 'a:0:{}'),
(1577, 150, '_crosssell_ids', 'a:0:{}'),
(1578, 150, '_purchase_note', ''),
(1579, 150, '_default_attributes', 'a:0:{}'),
(1580, 150, '_virtual', 'no'),
(1581, 150, '_downloadable', 'no'),
(1582, 150, '_product_image_gallery', ''),
(1583, 150, '_download_limit', '-1'),
(1584, 150, '_download_expiry', '-1'),
(1585, 150, '_stock', NULL),
(1586, 150, '_stock_status', 'instock'),
(1587, 150, '_product_version', '3.2.6'),
(1588, 150, '_price', '220000'),
(1589, 150, 'sd_payments', 'a:0:{}'),
(1590, 152, '_wc_review_count', '0'),
(1591, 152, '_wc_rating_count', 'a:0:{}'),
(1592, 152, '_wc_average_rating', '0'),
(1593, 152, '_edit_lock', '1513427946:1'),
(1594, 152, '_edit_last', '1'),
(1595, 153, '_wp_attached_file', '2017/12/artboard-7-copy-fdI2MqsiDF.png'),
(1596, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:38:"2017/12/artboard-7-copy-fdI2MqsiDF.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"artboard-7-copy-fdI2MqsiDF-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:38:"artboard-7-copy-fdI2MqsiDF-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:38:"artboard-7-copy-fdI2MqsiDF-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"artboard-7-copy-fdI2MqsiDF-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:38:"artboard-7-copy-fdI2MqsiDF-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:38:"artboard-7-copy-fdI2MqsiDF-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1597, 153, '_wp_attachment_image_alt', 'Set tiệc 36 cuốn bò bía'),
(1598, 152, '_thumbnail_id', '153'),
(1599, 152, '_sku', ''),
(1600, 152, '_regular_price', '340000'),
(1601, 152, '_sale_price', ''),
(1602, 152, '_sale_price_dates_from', ''),
(1603, 152, '_sale_price_dates_to', ''),
(1604, 152, 'total_sales', '0'),
(1605, 152, '_tax_status', 'taxable'),
(1606, 152, '_tax_class', ''),
(1607, 152, '_manage_stock', 'no'),
(1608, 152, '_backorders', 'no'),
(1609, 152, '_sold_individually', 'no'),
(1610, 152, '_weight', ''),
(1611, 152, '_length', ''),
(1612, 152, '_width', ''),
(1613, 152, '_height', ''),
(1614, 152, '_upsell_ids', 'a:0:{}'),
(1615, 152, '_crosssell_ids', 'a:0:{}'),
(1616, 152, '_purchase_note', ''),
(1617, 152, '_default_attributes', 'a:0:{}'),
(1618, 152, '_virtual', 'no'),
(1619, 152, '_downloadable', 'no'),
(1620, 152, '_product_image_gallery', ''),
(1621, 152, '_download_limit', '-1'),
(1622, 152, '_download_expiry', '-1'),
(1623, 152, '_stock', NULL),
(1624, 152, '_stock_status', 'instock'),
(1625, 152, '_product_version', '3.2.6'),
(1626, 152, '_price', '340000'),
(1627, 152, 'sd_payments', 'a:0:{}'),
(1628, 154, '_wc_review_count', '0'),
(1629, 154, '_wc_rating_count', 'a:0:{}'),
(1630, 154, '_wc_average_rating', '0'),
(1631, 154, '_edit_lock', '1513428084:1'),
(1632, 154, '_edit_last', '1'),
(1633, 155, '_wp_attached_file', '2017/12/artboard-6-copy-3-lkOFDV4763.png'),
(1634, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:40:"2017/12/artboard-6-copy-3-lkOFDV4763.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"artboard-6-copy-3-lkOFDV4763-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"artboard-6-copy-3-lkOFDV4763-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:40:"artboard-6-copy-3-lkOFDV4763-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:40:"artboard-6-copy-3-lkOFDV4763-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:40:"artboard-6-copy-3-lkOFDV4763-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:40:"artboard-6-copy-3-lkOFDV4763-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1635, 155, '_wp_attachment_image_alt', 'Set tiệc 54 cuốn bò bía'),
(1636, 154, '_thumbnail_id', '155'),
(1637, 154, '_sku', ''),
(1638, 154, '_regular_price', '510000'),
(1639, 154, '_sale_price', ''),
(1640, 154, '_sale_price_dates_from', ''),
(1641, 154, '_sale_price_dates_to', ''),
(1642, 154, 'total_sales', '0'),
(1643, 154, '_tax_status', 'taxable'),
(1644, 154, '_tax_class', ''),
(1645, 154, '_manage_stock', 'no'),
(1646, 154, '_backorders', 'no'),
(1647, 154, '_sold_individually', 'no'),
(1648, 154, '_weight', ''),
(1649, 154, '_length', ''),
(1650, 154, '_width', ''),
(1651, 154, '_height', ''),
(1652, 154, '_upsell_ids', 'a:0:{}'),
(1653, 154, '_crosssell_ids', 'a:0:{}'),
(1654, 154, '_purchase_note', ''),
(1655, 154, '_default_attributes', 'a:0:{}'),
(1656, 154, '_virtual', 'no'),
(1657, 154, '_downloadable', 'no'),
(1658, 154, '_product_image_gallery', ''),
(1659, 154, '_download_limit', '-1'),
(1660, 154, '_download_expiry', '-1'),
(1661, 154, '_stock', NULL),
(1662, 154, '_stock_status', 'instock'),
(1663, 154, '_product_version', '3.2.6'),
(1664, 154, '_price', '510000'),
(1665, 154, 'sd_payments', 'a:0:{}'),
(1666, 156, '_wc_review_count', '0'),
(1667, 156, '_wc_rating_count', 'a:0:{}'),
(1668, 156, '_wc_average_rating', '0'),
(1669, 156, '_edit_lock', '1513444426:1'),
(1670, 156, '_edit_last', '1'),
(1671, 157, '_wp_attached_file', '2017/12/nuoc-sam-qzSmDrpC21.jpg'),
(1672, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:31:"2017/12/nuoc-sam-qzSmDrpC21.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"nuoc-sam-qzSmDrpC21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"nuoc-sam-qzSmDrpC21-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"nuoc-sam-qzSmDrpC21-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"nuoc-sam-qzSmDrpC21-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"nuoc-sam-qzSmDrpC21-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"nuoc-sam-qzSmDrpC21-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1673, 157, '_wp_attachment_image_alt', 'Sâm thảo mộc'),
(1674, 156, '_thumbnail_id', '157'),
(1675, 156, '_sku', ''),
(1676, 156, '_regular_price', '15000'),
(1677, 156, '_sale_price', ''),
(1678, 156, '_sale_price_dates_from', ''),
(1679, 156, '_sale_price_dates_to', ''),
(1680, 156, 'total_sales', '0'),
(1681, 156, '_tax_status', 'taxable'),
(1682, 156, '_tax_class', ''),
(1683, 156, '_manage_stock', 'no'),
(1684, 156, '_backorders', 'no'),
(1685, 156, '_sold_individually', 'no'),
(1686, 156, '_weight', ''),
(1687, 156, '_length', ''),
(1688, 156, '_width', ''),
(1689, 156, '_height', ''),
(1690, 156, '_upsell_ids', 'a:0:{}'),
(1691, 156, '_crosssell_ids', 'a:0:{}'),
(1692, 156, '_purchase_note', ''),
(1693, 156, '_default_attributes', 'a:0:{}'),
(1694, 156, '_virtual', 'no'),
(1695, 156, '_downloadable', 'no'),
(1696, 156, '_product_image_gallery', ''),
(1697, 156, '_download_limit', '-1'),
(1698, 156, '_download_expiry', '-1'),
(1699, 156, '_stock', NULL),
(1700, 156, '_stock_status', 'instock'),
(1701, 156, '_product_version', '3.2.6'),
(1702, 156, '_price', '15000'),
(1703, 156, 'sd_payments', 'a:0:{}'),
(1704, 37, '_wp_trash_meta_status', 'publish'),
(1705, 37, '_wp_trash_meta_time', '1513428697'),
(1706, 37, '_wp_desired_post_slug', 'vneck-tee'),
(1707, 36, '_wp_trash_meta_status', 'publish'),
(1708, 36, '_wp_trash_meta_time', '1513428707'),
(1709, 36, '_wp_desired_post_slug', 'tshirt'),
(1710, 34, '_wp_trash_meta_status', 'publish'),
(1711, 34, '_wp_trash_meta_time', '1513428717'),
(1712, 34, '_wp_desired_post_slug', 'long-sleeve-tee'),
(1713, 35, '_wp_trash_meta_status', 'publish'),
(1714, 35, '_wp_trash_meta_time', '1513428727'),
(1715, 35, '_wp_desired_post_slug', 'polo'),
(1716, 32, '_wp_trash_meta_status', 'publish'),
(1717, 32, '_wp_trash_meta_time', '1513428735'),
(1718, 32, '_wp_desired_post_slug', 'hoodie-with-zipper'),
(1719, 33, '_wp_trash_meta_status', 'publish'),
(1720, 33, '_wp_trash_meta_time', '1513428745'),
(1721, 33, '_wp_desired_post_slug', 'hoodie'),
(1722, 30, '_wp_trash_meta_status', 'publish'),
(1723, 30, '_wp_trash_meta_time', '1513428752'),
(1724, 30, '_wp_desired_post_slug', 'hoodie-with-logo'),
(1725, 31, '_wp_trash_meta_status', 'publish'),
(1726, 31, '_wp_trash_meta_time', '1513428759'),
(1727, 31, '_wp_desired_post_slug', 'hoodie-with-pocket'),
(1728, 28, '_wp_trash_meta_status', 'publish'),
(1729, 28, '_wp_trash_meta_time', '1513428814'),
(1730, 28, '_wp_desired_post_slug', 'cap'),
(1731, 27, '_wp_trash_meta_status', 'publish'),
(1732, 27, '_wp_trash_meta_time', '1513428814'),
(1733, 27, '_wp_desired_post_slug', 'belt'),
(1734, 26, '_wp_trash_meta_status', 'publish'),
(1735, 26, '_wp_trash_meta_time', '1513428815'),
(1736, 26, '_wp_desired_post_slug', 'beanie'),
(1737, 29, '_wp_trash_meta_status', 'publish'),
(1738, 29, '_wp_trash_meta_time', '1513428823'),
(1739, 29, '_wp_desired_post_slug', 'sunglasses'),
(1742, 101, '_wp_old_slug', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong'),
(1745, 160, '_edit_lock', '1513443895:1'),
(1746, 160, '_edit_last', '1'),
(1747, 161, '_wp_attached_file', '2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1.jpg'),
(1748, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:64:"2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-600x533.jpg";s:5:"width";i:600;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1749, 161, '_wp_attachment_image_alt', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG'),
(1750, 162, '_wp_attached_file', '2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1.jpg'),
(1751, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:64:"2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:64:"the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1752, 162, '_wp_attachment_image_alt', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG'),
(1754, 164, '_wp_attached_file', '2017/12/banner01.png'),
(1755, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:896;s:6:"height";i:480;s:4:"file";s:20:"2017/12/banner01.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"banner01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"banner01-300x161.png";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"banner01-768x411.png";s:5:"width";i:768;s:6:"height";i:411;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"banner01-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"banner01-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"banner01-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1756, 165, '_wp_attached_file', '2017/12/banner02.png'),
(1757, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:896;s:6:"height";i:480;s:4:"file";s:20:"2017/12/banner02.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"banner02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"banner02-300x161.png";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"banner02-768x411.png";s:5:"width";i:768;s:6:"height";i:411;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"banner02-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"banner02-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"banner02-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1758, 166, '_wp_attached_file', '2017/12/banner03.png'),
(1759, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:896;s:6:"height";i:480;s:4:"file";s:20:"2017/12/banner03.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"banner03-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"banner03-300x161.png";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"banner03-768x411.png";s:5:"width";i:768;s:6:"height";i:411;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"banner03-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"banner03-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"banner03-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1760, 77, 'twojs_minsize', 'a:2:{s:5:"width";s:3:"300";s:6:"height";s:0:"";}');

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
(4, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', 'Đang cập nhật ...', 'Đặt Hàng', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-12-11 15:22:00', '2017-12-11 15:22:00', '', 0, 'http://localhost/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-12-13 08:35:46', '2017-12-13 08:35:46', '', 0, 'http://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-12-13 08:37:02', '2017-12-13 08:37:02', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-12-08 08:28:21', '2017-12-08 08:28:21', '[woocommerce_my_account]', 'Tài Khoản', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-12-14 03:04:04', '2017-12-14 03:04:04', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
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
(26, 1, '2017-12-08 08:29:52', '2017-12-08 08:29:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', '', 'trash', 'open', 'closed', '', 'beanie__trashed', '', '', '2017-12-16 12:53:35', '2017-12-16 12:53:35', '', 0, 'http://localhost/wordpress/?p=26', 0, 'product', '', 0),
(27, 1, '2017-12-08 08:29:52', '2017-12-08 08:29:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', '', 'trash', 'open', 'closed', '', 'belt__trashed', '', '', '2017-12-16 12:53:34', '2017-12-16 12:53:34', '', 0, 'http://localhost/wordpress/?p=27', 0, 'product', '', 0),
(28, 1, '2017-12-08 08:29:53', '2017-12-08 08:29:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', '', 'trash', 'open', 'closed', '', 'cap__trashed', '', '', '2017-12-16 12:53:34', '2017-12-16 12:53:34', '', 0, 'http://localhost/wordpress/?p=28', 0, 'product', '', 0),
(29, 1, '2017-12-08 08:29:53', '2017-12-08 08:29:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', '', 'trash', 'open', 'closed', '', 'sunglasses__trashed', '', '', '2017-12-16 12:53:43', '2017-12-16 12:53:43', '', 0, 'http://localhost/wordpress/?p=29', 0, 'product', '', 0),
(30, 1, '2017-12-08 08:29:54', '2017-12-08 08:29:54', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', '', 'trash', 'open', 'closed', '', 'hoodie-with-logo__trashed', '', '', '2017-12-16 12:52:32', '2017-12-16 12:52:32', '', 0, 'http://localhost/wordpress/?p=30', 0, 'product', '', 0),
(31, 1, '2017-12-08 08:29:54', '2017-12-08 08:29:54', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', '', 'trash', 'open', 'closed', '', 'hoodie-with-pocket__trashed', '', '', '2017-12-16 12:52:39', '2017-12-16 12:52:39', '', 0, 'http://localhost/wordpress/?p=31', 0, 'product', '', 0),
(32, 1, '2017-12-08 08:29:55', '2017-12-08 08:29:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', '', 'trash', 'open', 'closed', '', 'hoodie-with-zipper__trashed', '', '', '2017-12-16 12:52:15', '2017-12-16 12:52:15', '', 0, 'http://localhost/wordpress/?p=32', 0, 'product', '', 0),
(33, 1, '2017-12-08 08:29:55', '2017-12-08 08:29:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', '', 'trash', 'open', 'closed', '', 'hoodie__trashed', '', '', '2017-12-16 12:52:25', '2017-12-16 12:52:25', '', 0, 'http://localhost/wordpress/?p=33', 0, 'product', '', 0),
(34, 1, '2017-12-08 08:29:56', '2017-12-08 08:29:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', '', 'trash', 'open', 'closed', '', 'long-sleeve-tee__trashed', '', '', '2017-12-16 12:51:57', '2017-12-16 12:51:57', '', 0, 'http://localhost/wordpress/?p=34', 0, 'product', '', 0),
(35, 1, '2017-12-08 08:29:56', '2017-12-08 08:29:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', '', 'trash', 'open', 'closed', '', 'polo__trashed', '', '', '2017-12-16 12:52:07', '2017-12-16 12:52:07', '', 0, 'http://localhost/wordpress/?p=35', 0, 'product', '', 0),
(36, 1, '2017-12-08 08:29:57', '2017-12-08 08:29:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Tshirt', '', 'trash', 'open', 'closed', '', 'tshirt__trashed', '', '', '2017-12-16 12:51:47', '2017-12-16 12:51:47', '', 0, 'http://localhost/wordpress/?p=36', 0, 'product', '', 0),
(37, 1, '2017-12-08 08:29:57', '2017-12-08 08:29:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Vneck Tshirt', '', 'trash', 'open', 'closed', '', 'vneck-tee__trashed', '', '', '2017-12-16 12:51:37', '2017-12-16 12:51:37', '', 0, 'http://localhost/wordpress/?p=37', 0, 'product', '', 0),
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
(50, 1, '2017-12-10 07:11:40', '2017-12-10 07:11:40', '[wordpress_social_login]', 'Signup', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-12-10 07:11:40', '2017-12-10 07:11:40', '', 46, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(52, 1, '2017-12-10 08:58:08', '2017-12-10 08:58:08', '', 'Order &ndash; December 10, 2017 @ 08:58 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5a2cf7207c342', 'order-th12-10-2017-0858-am', '', '', '2017-12-10 08:58:12', '2017-12-10 08:58:12', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=52', 0, 'shop_order', '', 1),
(53, 1, '2017-12-11 15:09:22', '2017-12-11 15:09:22', '{\n    "deli::nav_menu_locations[primary]": {\n        "value": -4721439072321286000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:06:42"\n    },\n    "nav_menu[-4721439072321286000]": {\n        "value": {\n            "name": "Main Menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:06:42"\n    },\n    "nav_menu_item[-1748901802242457600]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -4721439072321286000,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:09:22"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '881427c3-1807-4f30-b38e-9766e5e40186', '', '', '2017-12-11 15:09:22', '2017-12-11 15:09:22', '', 0, 'http://localhost/wordpress/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2017-12-11 15:09:22', '2017-12-11 15:09:22', '', 'TRANG CHỦ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2017-12-11 15:16:36', '2017-12-11 15:16:36', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'VỀ YADINGJI', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-12-11 15:16:36', '2017-12-11 15:16:36', '', 2, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2017-12-11 15:11:15', '2017-12-11 15:11:15', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-11 15:11:15', '2017-12-11 15:11:15', '', 2, 'http://localhost/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2017-12-11 15:17:45', '2017-12-11 15:17:45', '<strong>GIỚI THIỆU VỀ YADINGJI</strong>\r\n\r\nNăm 1906 tại một quận thuộc khu đặc trị Hồng Kông, một gia đình đầu bếp truyền thống về món ăn Hoa đã sáng chế thành công công thức vịt quay mà từ đó, tên tuổi và tiếng tăm của họ lẫn món ăn đã được lan toả khắp cả một vùng lúc bấy giờ. Trải qua hơn 100 năm với bốn thế hệ tiếp nối và lưu truyền công thức bí mật, thành công của món ăn Vịt Quay Hồng Kông đã được biết đến cả toàn cầu.\r\n\r\nVà nay, công thức ấy đã đến với Việt Nam qua thương hiệu Đỉnh Ký – YA DING JI.\r\n\r\nSử dụng nguyên liệu chính là loại thịt vịt nuôi tự nhiên được tuyển chọn kỹ càng nhất từ vùng đồng bằng Mê Kông giàu phù sa cùng với các nguyên liệu sạch, có nguồn gốc thảo mộc thiên nhiên và tốt cho sức khoẻ người dùng.\r\n\r\nĐiểm nổi bật chỉ có ở vịt quay Đỉnh Ký – YA DING JI chính là 3 loại sốt ăn kèm được làm theo công thức homemade độc đáo<strong>: </strong>sốt tiêu đen, sốt tương đen và đặc biệt nhất là<strong> </strong>sốt vị mận gừng. Bên cạnh món vịt quay cổ điển, thực đơn của Đỉnh Ký – YA DING JI còn được cải tiến phong phú với các món ăn như cuốn vịt quay, bánh bao kẹp vịt quay, cuốn gỏi vịt quay, mì và cơm vịt quay, … cùng với các lựa chọn và gói giá phù hợp nhất cho từng nhu cầu của từng thực khách.\r\n\r\n<strong>  Đến với Đỉnh Ký – YA DING JI -  bạn có thể ăn vịt quay với mọi cách mà không cần thiết phải mua cả một con vịt.</strong>\r\n\r\nĐỉnh Ký – YA DING JI còn cung cấp đến khách hàng quy trình đóng gói bao bì chuyên nghiệp, hiện đại và vệ sinh cùng dịch vụ giao hàng tận nơi nhanh chóng, thuận tiện với nhiều phương thức khác nhau dành cho tất cả các khách hàng bận rộn không có nhiều quỹ thời gian trong ngày. <strong> </strong>\r\n\r\n<strong>  </strong>Mục tiêu của Đỉnh Ký – YA DING JI là mang tới cho các các thực khách những món ăn theo phong cách nhà hàng cao cấp 5* với mức giá phù hợp nhất song vẫn đảm bảo các tiêu chuẩn vệ sinh và an toàn ở mức tốt nhất.', 'VỀ YADINGJI', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-11 15:17:45', '2017-12-11 15:17:45', '', 2, 'http://localhost/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2017-12-11 15:19:20', '2017-12-11 15:19:20', 'Cập nha', 'KHUYẾN MÃI', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2017-12-11 15:19:20', '2017-12-11 15:19:20', '', 46, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2017-12-11 15:19:36', '2017-12-11 15:19:36', 'Đang cập nhật ...', 'KHUYẾN MÃI', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-12-11 15:19:36', '2017-12-11 15:19:36', '', 46, 'http://localhost/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2017-12-11 15:20:12', '2017-12-11 15:20:12', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-12-11 15:20:12', '2017-12-11 15:20:12', '', 5, 'http://localhost/wordpress/?p=60', 0, 'revision', '', 0),
(61, 1, '2017-12-11 15:20:21', '2017-12-11 15:20:21', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-11 15:20:21', '2017-12-11 15:20:21', '', 6, 'http://localhost/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2017-12-11 15:22:00', '2017-12-11 15:22:00', 'Đang cập nhật ...', 'Đặt Hàng', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-11 15:22:00', '2017-12-11 15:22:00', '', 4, 'http://localhost/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2017-12-11 15:25:50', '2017-12-11 15:25:50', '', 'THỰC ĐƠN', '', 'publish', 'closed', 'closed', '', 'thuc-don', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=63', 3, 'nav_menu_item', '', 0),
(64, 1, '2017-12-11 15:28:30', '2017-12-11 15:28:30', '', 'MÓN CHÍNH', '', 'publish', 'closed', 'closed', '', 'mon-chinh', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=64', 4, 'nav_menu_item', '', 0),
(65, 1, '2017-12-11 15:28:30', '2017-12-11 15:28:30', '', 'MÓN ĂN KÈM', '', 'publish', 'closed', 'closed', '', 'mon-an-kem', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=65', 5, 'nav_menu_item', '', 0),
(66, 1, '2017-12-11 15:28:30', '2017-12-11 15:28:30', '', 'COMBO TIẾT KIÊM', '', 'publish', 'closed', 'closed', '', 'combo-tiet-kiem', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=66', 6, 'nav_menu_item', '', 0),
(67, 1, '2017-12-11 15:31:44', '2017-12-11 15:31:44', '', 'NƯỚC UỐNG', '', 'publish', 'closed', 'closed', '', 'nuoc-uong', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=67', 7, 'nav_menu_item', '', 0),
(68, 1, '2017-12-11 15:34:13', '2017-12-11 15:34:13', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2017-12-16 17:17:58', '2017-12-16 17:17:58', '', 0, 'http://localhost/wordpress/?p=68', 8, 'nav_menu_item', '', 0),
(69, 1, '2017-12-11 15:34:13', '2017-12-11 15:34:13', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2017-12-16 17:17:57', '2017-12-16 17:17:57', '', 0, 'http://localhost/wordpress/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2017-12-11 15:34:14', '2017-12-11 15:34:14', '', 'THÀNH VIÊN', '', 'publish', 'closed', 'closed', '', 'thanh-vien', '', '', '2017-12-16 17:17:58', '2017-12-16 17:17:58', '', 0, 'http://localhost/wordpress/?p=70', 9, 'nav_menu_item', '', 0),
(73, 1, '2017-12-11 15:38:46', '2017-12-11 15:38:46', '', 'VỊT QUAY ĐÌNH KÝ', '', 'inherit', 'open', 'closed', '', 'logo-ko93qnb0qw', '', '', '2017-12-11 15:39:52', '2017-12-11 15:39:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/logo-KO93qNb0QW.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2017-12-11 15:40:16', '2017-12-11 15:40:16', '{\n    "deli::custom_logo": {\n        "value": 73,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:40:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '057a5e6d-8ad1-4e01-b4a8-ce3e8f072dae', '', '', '2017-12-11 15:40:16', '2017-12-11 15:40:16', '', 0, 'http://localhost/wordpress/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2017-12-11 15:43:52', '2017-12-11 15:43:52', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "header-1": [],\n            "footer-1": [],\n            "footer-2": [],\n            "footer-3": [],\n            "footer-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:43:51"\n    },\n    "boutique::nav_menu_locations[primary]": {\n        "value": 18,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:43:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a904d1ac-30f9-410c-8e87-6525ca18f988', '', '', '2017-12-11 15:43:52', '2017-12-11 15:43:52', '', 0, 'http://localhost/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2017-12-11 15:45:01', '2017-12-11 15:45:01', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "header-1": [],\n            "footer-1": [],\n            "footer-2": [],\n            "footer-3": [],\n            "footer-4": []\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:45:00"\n    },\n    "deli::nav_menu_locations[primary]": {\n        "value": 18,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-11 15:45:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b36ff30e-253d-4c86-acd9-2aeed45b7fe8', '', '', '2017-12-11 15:45:01', '2017-12-11 15:45:01', '', 0, 'http://localhost/wordpress/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2017-12-11 15:56:11', '2017-12-11 15:56:11', '', 'Banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2017-12-20 08:32:38', '2017-12-20 08:32:38', '', 0, 'http://localhost/wordpress/?post_type=twoj_slideshow_post&#038;p=77', 0, 'twoj_slideshow_post', '', 0),
(78, 1, '2017-12-11 15:53:23', '2017-12-11 15:53:23', '', 'Bánh Bao Đình Ký', '', 'inherit', 'open', 'closed', '', 'bannhbao-ualesgvq1x', '', '', '2017-12-11 15:53:59', '2017-12-11 15:53:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/bannhbao-uAlesGVQ1x.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2017-12-11 15:54:08', '2017-12-11 15:54:08', '', 'Cơm Đình Ký', '', 'inherit', 'open', 'closed', '', 'com-yc099vpaqo', '', '', '2017-12-11 15:54:26', '2017-12-11 15:54:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/com-yc099vPAqo.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2017-12-11 15:54:35', '2017-12-11 15:54:35', '', 'Vịt Đình Ký', '', 'inherit', 'open', 'closed', '', 'vit-rahd2tfnvn', '', '', '2017-12-11 15:54:53', '2017-12-11 15:54:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/vit-RahD2tfNVn.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2017-12-11 15:55:42', '2017-12-11 15:55:42', '[2jslideshow id="-"]', 'Banner', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-11 15:55:42', '2017-12-11 15:55:42', '', 24, 'http://localhost/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2017-12-11 15:56:43', '2017-12-11 15:56:43', '[2jslideshow id="77"]', 'Banner', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-11 15:56:43', '2017-12-11 15:56:43', '', 24, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2017-12-12 02:45:19', '2017-12-12 02:45:19', '[woo-login-popup]', 'Đăng Nhập', '', 'publish', 'closed', 'closed', '', 'dang-nhap', '', '', '2017-12-14 02:28:00', '2017-12-14 02:28:00', '', 0, 'http://localhost/wordpress/?page_id=83', 0, 'page', '', 0),
(84, 1, '2017-12-12 02:45:19', '2017-12-12 02:45:19', '<strong>[wppb-login]</strong>', 'Đăng Nhập', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-12-12 02:45:19', '2017-12-12 02:45:19', '', 83, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2017-12-12 02:47:05', '2017-12-12 02:47:05', '<strong>[wppb-register]</strong>', 'Đăng Ký', '', 'publish', 'closed', 'closed', '', 'dang-ky', '', '', '2017-12-12 02:47:05', '2017-12-12 02:47:05', '', 0, 'http://localhost/wordpress/?page_id=85', 0, 'page', '', 0),
(86, 1, '2017-12-12 02:47:05', '2017-12-12 02:47:05', '<strong>[wppb-register]</strong>', 'Đăng Ký', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-12-12 02:47:05', '2017-12-12 02:47:05', '', 85, 'http://localhost/wordpress/?p=86', 0, 'revision', '', 0),
(88, 1, '2017-12-12 02:47:53', '2017-12-12 02:47:53', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2017-12-16 17:17:58', '2017-12-16 17:17:58', '', 0, 'http://localhost/wordpress/?p=88', 11, 'nav_menu_item', '', 0),
(89, 1, '2017-12-13 08:13:39', '2017-12-13 08:13:39', '', 'Home Page Slide Products', '', 'publish', 'closed', 'closed', '', 'home-page-slide-products', '', '', '2017-12-20 08:54:10', '2017-12-20 08:54:10', '', 0, 'http://localhost/wordpress/?post_type=wcps&#038;p=89', 0, 'wcps', '', 0),
(90, 1, '2017-12-13 08:38:40', '2017-12-13 08:38:40', '', 'Order &ndash; Tháng Mười Hai 13, 2017 @ 08:38 Sáng', '', 'wc-completed', 'open', 'closed', 'order_5a30e7105b626', 'don-hang-th12-13-2017-0838-am', '', '', '2017-12-14 08:24:58', '2017-12-14 08:24:58', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=90', 0, 'shop_order', '', 2),
(91, 1, '2017-12-13 08:44:45', '2017-12-13 08:44:45', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nYADINGJI "[your-subject]"\n[your-name] <wpdemo2000@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on YADINGJI (http://localhost/wordpress)\nwpdemo2000@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nYADINGJI "[your-subject]"\nYADINGJI <wpdemo2000@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on YADINGJI (http://localhost/wordpress)\n[your-email]\nReply-To: wpdemo2000@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-12-13 08:44:45', '2017-12-13 08:44:45', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=91', 0, 'wpcf7_contact_form', '', 0),
(92, 1, '2017-12-13 08:46:59', '2017-12-13 08:46:59', '[contact-form-7 id="91" title="Contact form 1"]', 'Liên Hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2017-12-13 08:46:59', '2017-12-13 08:46:59', '', 0, 'http://localhost/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 1, '2017-12-13 08:46:59', '2017-12-13 08:46:59', '[contact-form-7 id="91" title="Contact form 1"]', 'Liên Hệ', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-12-13 08:46:59', '2017-12-13 08:46:59', '', 92, 'http://localhost/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2017-12-13 08:48:17', '2017-12-13 08:48:17', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2017-12-16 17:17:58', '2017-12-16 17:17:58', '', 0, 'http://localhost/wordpress/?p=94', 12, 'nav_menu_item', '', 0),
(95, 1, '2017-12-14 02:28:00', '2017-12-14 02:28:00', '[woo-login-popup]', 'Đăng Nhập', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-12-14 02:28:00', '2017-12-14 02:28:00', '', 83, 'http://localhost/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2017-12-14 03:04:04', '2017-12-14 03:04:04', '[woocommerce_my_account]', 'Tài Khoản', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-12-14 03:04:04', '2017-12-14 03:04:04', '', 7, 'http://localhost/wordpress/?p=96', 0, 'revision', '', 0),
(97, 1, '2017-12-14 03:04:21', '2017-12-14 03:04:21', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2017-12-16 17:17:58', '2017-12-16 17:17:58', '', 0, 'http://localhost/wordpress/?p=97', 10, 'nav_menu_item', '', 0),
(98, 1, '2017-12-14 03:24:27', '2017-12-14 03:24:27', 'Hello {{NAME}},\r\n\r\nWe have published a new blog article on our website : {{POSTTITLE}}\r\n{{POSTIMAGE}}\r\n\r\nYou can view it from this link : {{POSTLINK}}\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'New Post Published - {{POSTTITLE}}', '', 'publish', 'closed', 'closed', '', 'new-post-published-posttitle', '', '', '2017-12-14 03:24:27', '2017-12-14 03:24:27', '', 0, 'http://localhost/wordpress/?p=98', 0, 'es_template', '', 0),
(99, 1, '2017-12-14 03:24:27', '2017-12-14 03:24:27', '<strong style="color: #990000">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style="color: #990000">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to compose emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 'Welcome To Email Subscribers', '', 'publish', 'closed', 'closed', '', 'welcome-to-email-subscribers', '', '', '2017-12-14 03:24:27', '2017-12-14 03:24:27', '', 0, 'http://localhost/wordpress/?p=99', 0, 'es_template', '', 0),
(100, 1, '2017-12-14 08:17:00', '2017-12-14 08:17:00', '', 'Order &ndash; Tháng Mười Hai 14, 2017 @ 08:17 Sáng', '', 'trash', 'closed', 'closed', 'order_5a3233aa32db7', 'don-hang-th12-14-2017-0817-am__trashed', '', '', '2017-12-14 08:24:46', '2017-12-14 08:24:46', '', 0, 'http://localhost/wordpress/?post_type=shop_order&#038;p=100', 0, 'shop_order', '', 2),
(101, 1, '2017-12-14 16:01:38', '2017-12-14 16:01:38', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'publish', 'open', 'open', '', 'special-post', '', '', '2017-12-16 16:57:38', '2017-12-16 16:57:38', '', 0, 'http://localhost/wordpress/?p=101', 0, 'post', '', 0),
(102, 1, '2017-12-14 15:48:28', '2017-12-14 15:48:28', '', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', '', 'inherit', 'open', 'closed', '', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1', '', '', '2017-12-14 15:49:00', '2017-12-14 15:49:00', '', 101, 'http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2017-12-14 15:55:42', '2017-12-14 15:55:42', '', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', '', 'inherit', 'open', 'closed', '', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2', '', '', '2017-12-14 15:56:05', '2017-12-14 15:56:05', '', 101, 'http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-12-14 15:56:35', '2017-12-14 15:56:35', '', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', '', 'inherit', 'open', 'closed', '', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3', '', '', '2017-12-14 15:56:44', '2017-12-14 15:56:44', '', 101, 'http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2017-12-14 16:01:38', '2017-12-14 16:01:38', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.\r\n\r\nĐiều đầu tiên quyết định hương vị thơm ngon của món vịt quay Đỉnh Ký là khâu lựa chọn nguyên liệu vịt. Ya Ding Ji đã hết sức cẩn trọng và công phu khi quyết định chọn loại vịt thảo mộc được nuôi thả tại nhà vườn vùng đồng bằng miền Tây. Loại vịt này không quá to, thịt chắc, ít mỡ và thơm ngọt nhờ được nuôi thả theo cách truyền thống, Vịt đạt chuẩn khi được nuôi trong khoảng 65 ngày, đạt đến kích thước vừa phải và có độ ngọt chắc đặc trưng.\r\n\r\n<img class="alignnone wp-image-102" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-300x200.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="761" height="507" />\r\n\r\nNhững con vịt thảo mộc sau khi làm sạch, được ngâm rửa trong nước gừng pha muối loãng thật kỹ để đảm bảo vịt không còn mùi hôi mà vẫn giữ được độ tươi mới của thịt. Bằng kỹ thuật đặc biệt của Ya Ding Ji, vịt được ướp trong hỗn hợp của muối, bột quế, hoa hồi, rượu gia truyền và sốt riêng trong suốt 4-5h. Khi vịt đã thấm đều gia vị, cũng là lúc lò nướng chuẩn bị sẵn sàng cho khâu quay vịt trong suốt 60 phút.\r\n\r\nNhờ kỹ thuật quay điêu luyện của các sư phụ Ya Ding Ji, khi ra lò, da vịt căng bóng, vàng đều mà không ám khói, thịt vịt thơm béo hấp dẫn. Thân vịt chắc đều, da giòn giòn, mùi bùi và ngậy, dậy hương gia vị thơm phức. Miếng thịt khi cắt ra ẩm mềm không khô, đậm đà ngon ngọt, dậy nên mùi thơm của thịt và gia vị thấm đều. Món ăn càng trọn vẹn khi chấm cùng nước sốt đặc biệt của Ya Ding Ji là sốt tiêu đen, sốt hoishin và sốt mận gừng. Gắp một miếng thịt mềm ngọt, nóng hổi, bên ngoài là lớp da giòn béo, chấm thêm tí sốt đậm đà, thật không có gì hấp dẫn hơn. Thực khách còn có thể kẹp vịt ăn kèm bánh bao hấp hoặc cuốn vịt với bánh tráng da bò bía và các loại rau củ khác.\r\n\r\n<img class="alignnone wp-image-103" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="760" height="760" />\r\n\r\nTrong nhịp quay hối hả của công việc, thực khách đa phần không có nhiều thời gian để chuẩn bị cho các bữa ăn cùng gia đình hay đồng nghiệp. Vì thế Ya Ding Ji đã thay bạn chế biến món vịt quay theo những cách tiện lợi nhất để bạn có thể thưởng thức ở bất cứ nơi đâu, từ vịt quay nguyên con được chặt nhỏ đến thịt vịt cuốn sẵn trong cuốn da bò bía, mì xào vịt quay sốt tiêu đen hay cơm vịt quay. Tất cả đều được chuẩn bị gọn gàng, vệ sinh và có thể nhanh chóng giao đến tận nơi bạn cần.\r\n\r\n<img class="alignnone wp-image-104" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="759" height="759" />\r\n\r\nVậy bạn còn chờ gì nữa mà không cùng người thân và bạn bè thưởng thức bữa ăn ngon bổ, đảm bảo vệ sinh với giá cả hợp lý tại Ya Ding Ji.\r\n\r\n&nbsp;', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-12-14 16:01:38', '2017-12-14 16:01:38', '', 101, 'http://localhost/wordpress/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-12-16 16:55:43', '2017-12-16 16:55:43', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'special post', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-autosave-v1', '', '', '2017-12-16 16:55:43', '2017-12-16 16:55:43', '', 101, 'http://localhost/wordpress/101-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(107, 1, '2017-12-14 16:23:22', '2017-12-14 16:23:22', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-12-14 16:23:22', '2017-12-14 16:23:22', '', 101, 'http://localhost/wordpress/101-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-12-14 16:25:42', '2017-12-14 16:25:42', '<img class="alignnone  wp-image-104" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="758" height="758" />\r\n\r\nVịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-12-14 16:25:42', '2017-12-14 16:25:42', '', 101, 'http://localhost/wordpress/101-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2017-12-14 16:39:00', '2017-12-14 16:39:00', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-12-14 16:39:00', '2017-12-14 16:39:00', '', 101, 'http://localhost/wordpress/101-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2017-12-16 04:03:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-16 04:03:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=110', 0, 'post', '', 0),
(111, 1, '2017-12-16 04:09:04', '2017-12-16 04:09:04', '6 cuốn bò bía vit quay / 6 duck pancakes\r\n\r\n1 chai sâm thảo mộc / 1 bottle of herbal tea', 'Set Roll 1 Pax', 'Set Roll 1 Pax', 'publish', 'open', 'open', '', 'set-roll-1-pax', '', '', '2017-12-16 04:46:35', '2017-12-16 04:46:35', '', 0, 'http://localhost/wordpress/?p=111', 0, 'post', '', 0),
(112, 1, '2017-12-16 04:06:00', '2017-12-16 04:06:00', 'Set Roll 1 Pax', 'Set Roll 1 Pax', 'Set Roll 1 Pax', 'inherit', 'open', 'closed', '', 'top1', '', '', '2017-12-16 04:06:28', '2017-12-16 04:06:28', '', 111, 'http://localhost/wordpress/wp-content/uploads/2017/12/top1.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2017-12-16 04:09:04', '2017-12-16 04:09:04', '6 cuốn bò bía vit quay / 6 duck pancakes\r\n\r\n1 chai sâm thảo mộc / 1 bottle of herbal tea', 'Set Roll 1 Pax', 'Set Roll 1 Pax', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2017-12-16 04:09:04', '2017-12-16 04:09:04', '', 111, 'http://localhost/wordpress/111-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-12-16 04:12:53', '2017-12-16 04:12:53', 'Tặng 1 phá lấu vịt cho mỗi đơn từ 300.000Đ', 'Happy Friday', 'Tặng 1 phá lấu vịt cho mỗi đơn từ 300.000Đ', 'publish', 'open', 'open', '', 'happy-friday', '', '', '2017-12-16 04:12:53', '2017-12-16 04:12:53', '', 0, 'http://localhost/wordpress/?p=114', 0, 'post', '', 0),
(115, 1, '2017-12-16 04:11:14', '2017-12-16 04:11:14', '', 'Happy Friday', 'Tặng 1 phá lấu vịt cho mỗi hóa đơn từ 300.000Đ', 'inherit', 'open', 'closed', '', 'top2', '', '', '2017-12-16 04:12:31', '2017-12-16 04:12:31', '', 114, 'http://localhost/wordpress/wp-content/uploads/2017/12/top2.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2017-12-16 04:12:53', '2017-12-16 04:12:53', 'Tặng 1 phá lấu vịt cho mỗi đơn từ 300.000Đ', 'Happy Friday', 'Tặng 1 phá lấu vịt cho mỗi đơn từ 300.000Đ', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2017-12-16 04:12:53', '2017-12-16 04:12:53', '', 114, 'http://localhost/wordpress/114-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2017-12-16 04:14:47', '2017-12-16 04:14:47', 'Menu Combo 220k', 'Menu Combo 220k', 'Menu Combo 220k', 'publish', 'open', 'open', '', 'menu-combo-220k', '', '', '2017-12-16 04:14:47', '2017-12-16 04:14:47', '', 0, 'http://localhost/wordpress/?p=117', 0, 'post', '', 0),
(118, 1, '2017-12-16 04:14:26', '2017-12-16 04:14:26', 'Menu Combo 220k', 'Menu Combo 220k', 'Menu Combo 220k', 'inherit', 'open', 'closed', '', 'top3', '', '', '2017-12-16 04:14:36', '2017-12-16 04:14:36', '', 117, 'http://localhost/wordpress/wp-content/uploads/2017/12/top3.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2017-12-16 04:14:47', '2017-12-16 04:14:47', 'Menu Combo 220k', 'Menu Combo 220k', 'Menu Combo 220k', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2017-12-16 04:14:47', '2017-12-16 04:14:47', '', 117, 'http://localhost/wordpress/117-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2017-12-16 04:45:48', '2017-12-16 04:45:48', 'Set Roll 1 Pax', 'Set Roll 1 Pax', 'Set Roll 1 Pax', 'inherit', 'open', 'closed', '', 'top1_1', '', '', '2017-12-16 04:46:23', '2017-12-16 04:46:23', '', 111, 'http://localhost/wordpress/wp-content/uploads/2017/12/top1_1.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2017-12-16 10:16:13', '2017-12-16 10:16:13', 'Cơm Vịt Quay - 88000đ', 'Cơm Vịt Quay', '', 'publish', 'open', 'closed', '', 'com-vit-quay', '', '', '2017-12-16 10:22:48', '2017-12-16 10:22:48', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=121', 0, 'product', '', 0),
(122, 1, '2017-12-16 10:15:35', '2017-12-16 10:15:35', '', 'cơm vịt quay', 'cơm vịt quay', 'inherit', 'open', 'closed', '', 'com-vit-pgzfuhbg8c', '', '', '2017-12-16 10:15:55', '2017-12-16 10:15:55', '', 121, 'http://localhost/wordpress/wp-content/uploads/2017/12/com-vit-pGzfUhbG8C.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-12-16 10:22:24', '2017-12-16 10:22:24', 'Cơm Vịt Quay', 'Cơm Vịt Quay', 'Cơm Vịt Quay', 'inherit', 'open', 'closed', '', 'comvit_800', '', '', '2017-12-16 10:22:43', '2017-12-16 10:22:43', '', 121, 'http://localhost/wordpress/wp-content/uploads/2017/12/comvit_800.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-12-16 10:29:06', '2017-12-16 10:29:06', 'Mỳ Xào Vịt Quay - 78000đ', 'Mỳ Xào Vịt Quay', '', 'publish', 'open', 'closed', '', 'my-xao-vit-quay', '', '', '2017-12-16 10:29:06', '2017-12-16 10:29:06', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=124', 0, 'product', '', 0),
(125, 1, '2017-12-16 10:28:14', '2017-12-16 10:28:14', 'Mỳ Xào Vịt Quay', 'Mỳ Xào Vịt Quay', 'Mỳ Xào Vịt Quay', 'inherit', 'open', 'closed', '', 'myxao_800', '', '', '2017-12-16 10:28:38', '2017-12-16 10:28:38', '', 124, 'http://localhost/wordpress/wp-content/uploads/2017/12/myxao_800.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2017-12-16 10:45:52', '2017-12-16 10:45:52', 'Màn Thầu Vịt Quay - 48000đ', 'Màn Thầu Vịt Quay', '', 'publish', 'open', 'closed', '', 'man-thau-vit-quay', '', '', '2017-12-16 10:45:52', '2017-12-16 10:45:52', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2017-12-16 10:45:26', '2017-12-16 10:45:26', 'màn thầu vịt quay', 'màn thầu vịt quay', 'màn thầu vịt quay', 'inherit', 'open', 'closed', '', 'm_800', '', '', '2017-12-16 10:45:43', '2017-12-16 10:45:43', '', 126, 'http://localhost/wordpress/wp-content/uploads/2017/12/m_800.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2017-12-16 10:51:02', '2017-12-16 10:51:02', 'Cuốn Gỏi Vịt Quay Khổng Lồ - 48000', 'Cuốn Gỏi Vịt Quay Khổng Lồ', '', 'publish', 'open', 'closed', '', 'cuon-goi-vit-quay-khong-lo', '', '', '2017-12-16 10:51:02', '2017-12-16 10:51:02', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2017-12-16 10:50:28', '2017-12-16 10:50:28', 'cuốn gỏi vịt quay khổng lồ', 'cuốn gỏi vịt quay khổng lồ', 'cuốn gỏi vịt quay khổng lồ', 'inherit', 'open', 'closed', '', 'img-2996', '', '', '2017-12-16 10:50:47', '2017-12-16 10:50:47', '', 128, 'http://localhost/wordpress/wp-content/uploads/2017/12/img-2996.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2017-12-16 10:54:57', '2017-12-16 10:54:57', 'Cuốn Vịt Quay Da Bò Bía - 58000đ', 'Cuốn Vịt Quay Da Bò Bía', '', 'publish', 'open', 'closed', '', 'cuon-vit-quay-da-bo-bia', '', '', '2017-12-16 10:54:57', '2017-12-16 10:54:57', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=130', 0, 'product', '', 0),
(131, 1, '2017-12-16 10:54:24', '2017-12-16 10:54:24', 'cuốn vịt quay da bò bía', 'cuốn vịt quay da bò bía', 'cuốn vịt quay da bò bía', 'inherit', 'open', 'closed', '', 'bia-5-cuon-vtwhojbt9m', '', '', '2017-12-16 10:54:49', '2017-12-16 10:54:49', '', 130, 'http://localhost/wordpress/wp-content/uploads/2017/12/bia-5-cuon-VtwHoJBt9M.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2017-12-16 10:58:10', '2017-12-16 10:58:10', 'Vịt Quay Nửa Con - 200000đ', 'Vịt Quay Nửa Con', '', 'publish', 'open', 'closed', '', 'vit-quay-nua-con', '', '', '2017-12-16 10:58:48', '2017-12-16 10:58:48', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=132', 0, 'product', '', 0),
(133, 1, '2017-12-16 10:57:51', '2017-12-16 10:57:51', 'vịt quay nửa con', 'vịt quay nửa con', 'vịt quay nửa con', 'inherit', 'open', 'closed', '', 'mon-an-paqcjt3fcr', '', '', '2017-12-16 10:58:03', '2017-12-16 10:58:03', '', 132, 'http://localhost/wordpress/wp-content/uploads/2017/12/mon-an-PAQCJt3FCR.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2017-12-16 11:00:06', '2017-12-16 11:00:06', 'Vịt Quay Nguyên Con - 390000đ', 'Vịt Quay Nguyên Con', '', 'publish', 'open', 'closed', '', 'vit-quay-nguyen-con', '', '', '2017-12-16 11:00:06', '2017-12-16 11:00:06', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=134', 0, 'product', '', 0),
(135, 1, '2017-12-16 11:02:06', '2017-12-16 11:02:06', 'Cơm Chiên Ngọc Bích - 60000đ', 'Cơm Chiên Ngọc Bích', '', 'publish', 'open', 'closed', '', 'com-chien-ngoc-bich', '', '', '2017-12-16 11:02:06', '2017-12-16 11:02:06', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=135', 0, 'product', '', 0),
(136, 1, '2017-12-16 11:01:45', '2017-12-16 11:01:45', 'Cơm Chiên Ngọc Bích', 'Cơm Chiên Ngọc Bích', 'Cơm Chiên Ngọc Bích', 'inherit', 'open', 'closed', '', 'com-ngoc-bich-iawulryjzt', '', '', '2017-12-16 11:01:54', '2017-12-16 11:01:54', '', 135, 'http://localhost/wordpress/wp-content/uploads/2017/12/com-ngoc-bich-iaWulRyjZt.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2017-12-16 11:04:26', '2017-12-16 11:04:26', 'Salad Đỉnh Ký - 85000đ', 'Salad Đỉnh Ký', '', 'publish', 'open', 'closed', '', 'salad-dinh-ky', '', '', '2017-12-16 11:04:26', '2017-12-16 11:04:26', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 1, '2017-12-16 11:04:12', '2017-12-16 11:04:12', 'Salad Đỉnh Ký', 'Salad Đỉnh Ký', 'Salad Đỉnh Ký', 'inherit', 'open', 'closed', '', 'xa-lach-vit-l4gte9ajwa', '', '', '2017-12-16 11:04:20', '2017-12-16 11:04:20', '', 137, 'http://localhost/wordpress/wp-content/uploads/2017/12/xa-lach-vit-L4GtE9AjWa.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2017-12-16 11:05:41', '2017-12-16 11:05:41', 'Vịt Quay 1/4 Con - 120000đ', 'Vịt Quay 1/4 Con', '', 'publish', 'open', 'closed', '', 'vit-quay-1-4-con', '', '', '2017-12-16 11:05:41', '2017-12-16 11:05:41', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 1, '2017-12-16 11:08:05', '2017-12-16 11:08:05', 'Phá Lấu Vịt - 35000đ', 'Phá Lấu Vịt', '', 'publish', 'open', 'closed', '', 'pha-lau-vit', '', '', '2017-12-16 11:08:05', '2017-12-16 11:08:05', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2017-12-16 11:07:48', '2017-12-16 11:07:48', 'Phá Lấu Vịt', 'Phá Lấu Vịt', 'Phá Lấu Vịt', 'inherit', 'open', 'closed', '', 'phalaun-2ogfseqxcd', '', '', '2017-12-16 11:07:56', '2017-12-16 11:07:56', '', 140, 'http://localhost/wordpress/wp-content/uploads/2017/12/phalaun-2oGFSeQXCD.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2017-12-16 11:11:58', '2017-12-16 11:11:58', 'Combo Dành Cho 2 Người - 220000đ', 'Combo Dành Cho 2 Người', '', 'publish', 'open', 'closed', '', 'combo-danh-cho-2-nguoi', '', '', '2017-12-16 11:11:58', '2017-12-16 11:11:58', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=142', 0, 'product', '', 0),
(143, 1, '2017-12-16 11:11:38', '2017-12-16 11:11:38', 'Combo Dành Cho 2 Người', 'Combo Dành Cho 2 Người', 'Combo Dành Cho 2 Người', 'inherit', 'open', 'closed', '', 'combo-2-paxx-7znolzmisd', '', '', '2017-12-16 11:11:46', '2017-12-16 11:11:46', '', 142, 'http://localhost/wordpress/wp-content/uploads/2017/12/combo-2-paxx-7ZnolZmiSd.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2017-12-16 11:13:57', '2017-12-16 11:13:57', 'Combo Dành Cho 2 Người - 480000đ', 'Combo Dành Cho 4 Người', '', 'publish', 'open', 'closed', '', 'combo-danh-cho-4-nguoi', '', '', '2017-12-16 11:13:57', '2017-12-16 11:13:57', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=144', 0, 'product', '', 0),
(145, 1, '2017-12-16 11:13:32', '2017-12-16 11:13:32', 'Combo Dành Cho 2 Người', 'Combo Dành Cho 2 Người', 'Combo Dành Cho 2 Người', 'inherit', 'open', 'closed', '', 'combo4pax1709-s5ugoq2n1q', '', '', '2017-12-16 11:13:39', '2017-12-16 11:13:39', '', 144, 'http://localhost/wordpress/wp-content/uploads/2017/12/combo4pax1709-s5ugOQ2N1q.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2017-12-16 11:18:33', '2017-12-16 11:18:33', 'Combo Dành Cho 6 Người - 690000đ', 'Combo Dành Cho 6 Người', '', 'publish', 'open', 'closed', '', 'combo-danh-cho-6-nguoi', '', '', '2017-12-16 11:18:33', '2017-12-16 11:18:33', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=146', 0, 'product', '', 0),
(147, 1, '2017-12-16 11:18:10', '2017-12-16 11:18:10', 'Combo Dành Cho 6 Người', 'Combo Dành Cho 6 Người', 'Combo Dành Cho 6 Người', 'inherit', 'open', 'closed', '', 'combo-6-k6upkmqgjz', '', '', '2017-12-16 11:18:24', '2017-12-16 11:18:24', '', 146, 'http://localhost/wordpress/wp-content/uploads/2017/12/combo-6-K6UPKmqGjz.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2017-12-16 11:34:20', '2017-12-16 11:34:20', 'Set cuốn bò bía 1 người - 78000đ', 'Set cuốn bò bía 1 người', '', 'publish', 'open', 'closed', '', 'set-cuon-bo-bia-1-nguoi', '', '', '2017-12-16 11:34:20', '2017-12-16 11:34:20', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2017-12-16 11:33:52', '2017-12-16 11:33:52', 'Set cuốn bò bía 1 người', 'Set cuốn bò bía 1 người', 'Set cuốn bò bía 1 người', 'inherit', 'open', 'closed', '', 'artboard-6-a2b2p4h5fm', '', '', '2017-12-16 11:34:12', '2017-12-16 11:34:12', '', 148, 'http://localhost/wordpress/wp-content/uploads/2017/12/artboard-6-A2B2P4H5fM.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2017-12-16 12:37:36', '2017-12-16 12:37:36', 'Set cuốn bò bía 3 người - 220000đ', 'Set cuốn bò bía 3 người', '', 'publish', 'open', 'closed', '', 'set-cuon-bo-bia-3-nguoi', '', '', '2017-12-16 12:37:36', '2017-12-16 12:37:36', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2017-12-16 12:37:17', '2017-12-16 12:37:17', 'Set cuốn bò bía 3 người', 'Set cuốn bò bía 3 người', 'Set cuốn bò bía 3 người', 'inherit', 'open', 'closed', '', 'artboard-6-copy-2-olm5sadb3t', '', '', '2017-12-16 12:37:27', '2017-12-16 12:37:27', '', 150, 'http://localhost/wordpress/wp-content/uploads/2017/12/artboard-6-copy-2-oLm5Sadb3T.png', 0, 'attachment', 'image/png', 0),
(152, 1, '2017-12-16 12:39:55', '2017-12-16 12:39:55', 'Set tiệc 36 cuốn bò bía - 340000đ', 'Set tiệc 36 cuốn bò bía', '', 'publish', 'open', 'closed', '', 'set-tiec-36-cuon-bo-bia', '', '', '2017-12-16 12:39:55', '2017-12-16 12:39:55', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=152', 0, 'product', '', 0),
(153, 1, '2017-12-16 12:39:35', '2017-12-16 12:39:35', 'Set tiệc 36 cuốn bò bía', 'Set tiệc 36 cuốn bò bía', 'Set tiệc 36 cuốn bò bía', 'inherit', 'open', 'closed', '', 'artboard-7-copy-fdi2mqsidf', '', '', '2017-12-16 12:39:46', '2017-12-16 12:39:46', '', 152, 'http://localhost/wordpress/wp-content/uploads/2017/12/artboard-7-copy-fdI2MqsiDF.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2017-12-16 12:42:17', '2017-12-16 12:42:17', 'Set tiệc 54 cuốn bò bía - 510000đ', 'Set tiệc 54 cuốn bò bía', '', 'publish', 'open', 'closed', '', 'set-tiec-54-cuon-bo-bia', '', '', '2017-12-16 12:42:17', '2017-12-16 12:42:17', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=154', 0, 'product', '', 0),
(155, 1, '2017-12-16 12:42:05', '2017-12-16 12:42:05', 'Set tiệc 54 cuốn bò bía', 'Set tiệc 54 cuốn bò bía', 'Set tiệc 54 cuốn bò bía', 'inherit', 'open', 'closed', '', 'artboard-6-copy-3-lkofdv4763', '', '', '2017-12-16 12:42:13', '2017-12-16 12:42:13', '', 154, 'http://localhost/wordpress/wp-content/uploads/2017/12/artboard-6-copy-3-lkOFDV4763.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2017-12-16 12:44:40', '2017-12-16 12:44:40', 'Sâm thảo mộc - 15000đ', 'Sâm thảo mộc', '', 'publish', 'open', 'closed', '', 'sam-thao-moc', '', '', '2017-12-16 12:50:32', '2017-12-16 12:50:32', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=156', 0, 'product', '', 0),
(157, 1, '2017-12-16 12:44:26', '2017-12-16 12:44:26', 'Sâm thảo mộc', 'Sâm thảo mộc', 'Sâm thảo mộc', 'inherit', 'open', 'closed', '', 'nuoc-sam-qzsmdrpc21', '', '', '2017-12-16 12:44:34', '2017-12-16 12:44:34', '', 156, 'http://localhost/wordpress/wp-content/uploads/2017/12/nuoc-sam-qzSmDrpC21.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2017-12-16 16:55:45', '2017-12-16 16:55:45', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'special post', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-12-16 16:55:45', '2017-12-16 16:55:45', '', 101, 'http://localhost/wordpress/101-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2017-12-16 16:57:38', '2017-12-16 16:57:38', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-12-16 16:57:38', '2017-12-16 16:57:38', '', 101, 'http://localhost/wordpress/101-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2017-12-16 17:05:01', '2017-12-16 17:05:01', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.\r\n\r\nĐiều đầu tiên quyết định hương vị thơm ngon của món vịt quay Đỉnh Ký là khâu lựa chọn nguyên liệu vịt. Ya Ding Ji đã hết sức cẩn trọng và công phu khi quyết định chọn loại vịt thảo mộc được nuôi thả tại nhà vườn vùng đồng bằng miền Tây. Loại vịt này không quá to, thịt chắc, ít mỡ và thơm ngọt nhờ được nuôi thả theo cách truyền thống, Vịt đạt chuẩn khi được nuôi trong khoảng 65 ngày, đạt đến kích thước vừa phải và có độ ngọt chắc đặc trưng.\r\n\r\n<img class=" wp-image-161" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-300x200.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="759" height="506" />\r\n\r\nNhững con vịt thảo mộc sau khi làm sạch, được ngâm rửa trong nước gừng pha muối loãng thật kỹ để đảm bảo vịt không còn mùi hôi mà vẫn giữ được độ tươi mới của thịt. Bằng kỹ thuật đặc biệt của Ya Ding Ji, vịt được ướp trong hỗn hợp của muối, bột quế, hoa hồi, rượu gia truyền và sốt riêng trong suốt 4-5h. Khi vịt đã thấm đều gia vị, cũng là lúc lò nướng chuẩn bị sẵn sàng cho khâu quay vịt trong suốt 60 phút.\r\n\r\nNhờ kỹ thuật quay điêu luyện của các sư phụ Ya Ding Ji, khi ra lò, da vịt căng bóng, vàng đều mà không ám khói, thịt vịt thơm béo hấp dẫn. Thân vịt chắc đều, da giòn giòn, mùi bùi và ngậy, dậy hương gia vị thơm phức. Miếng thịt khi cắt ra ẩm mềm không khô, đậm đà ngon ngọt, dậy nên mùi thơm của thịt và gia vị thấm đều. Món ăn càng trọn vẹn khi chấm cùng nước sốt đặc biệt của Ya Ding Ji là sốt tiêu đen, sốt hoishin và sốt mận gừng. Gắp một miếng thịt mềm ngọt, nóng hổi, bên ngoài là lớp da giòn béo, chấm thêm tí sốt đậm đà, thật không có gì hấp dẫn hơn. Thực khách còn có thể kẹp vịt ăn kèm bánh bao hấp hoặc cuốn vịt với bánh tráng da bò bía và các loại rau củ khác.\r\n\r\n<img class=" wp-image-162" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="759" height="759" />\r\n\r\nTrong nhịp quay hối hả của công việc, thực khách đa phần không có nhiều thời gian để chuẩn bị cho các bữa ăn cùng gia đình hay đồng nghiệp. Vì thế Ya Ding Ji đã thay bạn chế biến món vịt quay theo những cách tiện lợi nhất để bạn có thể thưởng thức ở bất cứ nơi đâu, từ vịt quay nguyên con được chặt nhỏ đến thịt vịt cuốn sẵn trong cuốn da bò bía, mì xào vịt quay sốt tiêu đen hay cơm vịt quay. Tất cả đều được chuẩn bị gọn gàng, vệ sinh và có thể nhanh chóng giao đến tận nơi bạn cần.\r\n\r\n<img class="alignnone  wp-image-104" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="760" height="760" />\r\n\r\nVậy bạn còn chờ gì nữa mà không cùng người thân và bạn bè thưởng thức bữa ăn ngon bổ, đảm bảo vệ sinh với giá cả hợp lý tại Ya Ding Ji.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng ...', 'publish', 'open', 'open', '', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong', '', '', '2017-12-16 17:05:01', '2017-12-16 17:05:01', '', 0, 'http://localhost/wordpress/?p=160', 0, 'post', '', 0),
(161, 1, '2017-12-16 16:59:54', '2017-12-16 16:59:54', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'inherit', 'open', 'closed', '', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-2', '', '', '2017-12-16 17:00:31', '2017-12-16 17:00:31', '', 160, 'http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2017-12-16 17:02:03', '2017-12-16 17:02:03', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'inherit', 'open', 'closed', '', 'the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-2', '', '', '2017-12-16 17:02:26', '2017-12-16 17:02:26', '', 160, 'http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2017-12-16 17:05:01', '2017-12-16 17:05:01', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại <strong>VỊt Quay Đỉnh Ký - Ya Ding Ji</strong>, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của <strong>vịt quay kiểu Hong Kong</strong> lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng.\r\n\r\nĐiều đầu tiên quyết định hương vị thơm ngon của món vịt quay Đỉnh Ký là khâu lựa chọn nguyên liệu vịt. Ya Ding Ji đã hết sức cẩn trọng và công phu khi quyết định chọn loại vịt thảo mộc được nuôi thả tại nhà vườn vùng đồng bằng miền Tây. Loại vịt này không quá to, thịt chắc, ít mỡ và thơm ngọt nhờ được nuôi thả theo cách truyền thống, Vịt đạt chuẩn khi được nuôi trong khoảng 65 ngày, đạt đến kích thước vừa phải và có độ ngọt chắc đặc trưng.\r\n\r\n<img class=" wp-image-161" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-1-1-300x200.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="759" height="506" />\r\n\r\nNhững con vịt thảo mộc sau khi làm sạch, được ngâm rửa trong nước gừng pha muối loãng thật kỹ để đảm bảo vịt không còn mùi hôi mà vẫn giữ được độ tươi mới của thịt. Bằng kỹ thuật đặc biệt của Ya Ding Ji, vịt được ướp trong hỗn hợp của muối, bột quế, hoa hồi, rượu gia truyền và sốt riêng trong suốt 4-5h. Khi vịt đã thấm đều gia vị, cũng là lúc lò nướng chuẩn bị sẵn sàng cho khâu quay vịt trong suốt 60 phút.\r\n\r\nNhờ kỹ thuật quay điêu luyện của các sư phụ Ya Ding Ji, khi ra lò, da vịt căng bóng, vàng đều mà không ám khói, thịt vịt thơm béo hấp dẫn. Thân vịt chắc đều, da giòn giòn, mùi bùi và ngậy, dậy hương gia vị thơm phức. Miếng thịt khi cắt ra ẩm mềm không khô, đậm đà ngon ngọt, dậy nên mùi thơm của thịt và gia vị thấm đều. Món ăn càng trọn vẹn khi chấm cùng nước sốt đặc biệt của Ya Ding Ji là sốt tiêu đen, sốt hoishin và sốt mận gừng. Gắp một miếng thịt mềm ngọt, nóng hổi, bên ngoài là lớp da giòn béo, chấm thêm tí sốt đậm đà, thật không có gì hấp dẫn hơn. Thực khách còn có thể kẹp vịt ăn kèm bánh bao hấp hoặc cuốn vịt với bánh tráng da bò bía và các loại rau củ khác.\r\n\r\n<img class=" wp-image-162" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-2-1-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="759" height="759" />\r\n\r\nTrong nhịp quay hối hả của công việc, thực khách đa phần không có nhiều thời gian để chuẩn bị cho các bữa ăn cùng gia đình hay đồng nghiệp. Vì thế Ya Ding Ji đã thay bạn chế biến món vịt quay theo những cách tiện lợi nhất để bạn có thể thưởng thức ở bất cứ nơi đâu, từ vịt quay nguyên con được chặt nhỏ đến thịt vịt cuốn sẵn trong cuốn da bò bía, mì xào vịt quay sốt tiêu đen hay cơm vịt quay. Tất cả đều được chuẩn bị gọn gàng, vệ sinh và có thể nhanh chóng giao đến tận nơi bạn cần.\r\n\r\n<img class="alignnone  wp-image-104" src="http://localhost/wordpress/wp-content/uploads/2017/12/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong-3-300x300.jpg" alt="THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG" width="760" height="760" />\r\n\r\nVậy bạn còn chờ gì nữa mà không cùng người thân và bạn bè thưởng thức bữa ăn ngon bổ, đảm bảo vệ sinh với giá cả hợp lý tại Ya Ding Ji.', 'THẾ NÀO LÀ MỘT MÓN VỊT QUAY ĐÚNG CHUẨN HONG KONG', 'Vịt quay là món ăn nổi tiếng xuất plát từ Trung Quốc, nhưng vịt quay theo kiểu Hong Kong lại là một món ăn đặc sắc không hề thua kém món gốc. Tại VỊt Quay Đỉnh Ký - Ya Ding Ji, với công thức bí truyền từ hơn 100 năm, hương vị độc đáo của vịt quay kiểu Hong Kong lại được tôn vinh lên một cấp độ mới với sự kết hợp của 3 loại sốt đặc biệt là sốt tiêu đen, sốt hoishin và sốt mận gừng ...', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2017-12-16 17:05:01', '2017-12-16 17:05:01', '', 160, 'http://localhost/wordpress/160-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2017-12-20 08:20:23', '2017-12-20 08:20:23', '', 'banner01', '', 'inherit', 'open', 'closed', '', 'banner01', '', '', '2017-12-20 08:20:23', '2017-12-20 08:20:23', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/banner01.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2017-12-20 08:20:42', '2017-12-20 08:20:42', '', 'banner02', '', 'inherit', 'open', 'closed', '', 'banner02', '', '', '2017-12-20 08:20:42', '2017-12-20 08:20:42', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/banner02.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2017-12-20 08:21:37', '2017-12-20 08:21:37', '', 'banner03', '', 'inherit', 'open', 'closed', '', 'banner03', '', '', '2017-12-20 08:21:37', '2017-12-20 08:21:37', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/12/banner03.png', 0, 'attachment', 'image/png', 0);

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
(1, 'Add follow social icons to header and footer', 'Add the follow social icons to header &amp; footer', 'if ( ! function_exists( ''storefront_hot_lines'' ) ) {\r\n	/**\r\n	 * Follow social icons\r\n	 *\r\n	 * @since  1.4.1\r\n	 * @return void\r\n	 */\r\n	function storefront_hot_lines() {	  	\r\n	    echo ''<div class="hot-lines">'';\r\n	    echo ''<span> ĐẶT HÀNG : (028) 38207268 </span>''; \r\n	    echo ''</div>'';\r\n	}\r\n}\r\n\r\nif ( ! function_exists( ''storefront_follow_social_icons'' ) ) {\r\n	/**\r\n	 * Follow social icons\r\n	 *\r\n	 * @since  1.4.1\r\n	 * @return void\r\n	 */\r\n	function storefront_follow_social_icons() {	  	\r\n	    echo ''<div class="social_icons">'';\r\n	    echo do_shortcode("[smbtoolbar]");\r\n		echo ''</div>'';\r\n	}\r\n}\r\n\r\nadd_action( ''storefront_header'', ''storefront_hot_lines'', 15 );\r\nadd_action( ''storefront_header'', ''storefront_follow_social_icons'', 28 );\r\nadd_action( ''storefront_footer'', ''storefront_follow_social_icons'', 30);', '', 0, 1),
(2, 'Add Google Map', 'Add the google maps to home page', 'if ( ! function_exists( ''storefront_homepage_maps'' ) ) {\r\n	/**\r\n	 * Display header widget region\r\n	 *\r\n	 * @since  1.0.0\r\n	 */\r\n	function storefront_homepage_maps() {\r\n	    echo ''<div class="homepage_maps">'';\r\n		echo do_shortcode(''[wpgmza id="1"]'');\r\n	    echo ''</div>'';\r\n	}\r\n}\r\n\r\nadd_action( ''homepage'', ''storefront_homepage_maps'', 90 );', '', 0, 1),
(3, 'Remove sessions and add Slide Products', 'Add the Products slideshow to homepage', 'if ( ! function_exists( ''storefront_slide_products'' ) ) {\r\n	/**\r\n	 * Display Slide Products\r\n	 *\r\n	 * @since  1.0.0\r\n	 * @uses  storefront_is_woocommerce_activated() check if WooCommerce is activated\r\n	 * @return void\r\n	 */\r\n	function storefront_slide_products() {\r\n	    echo ''<div class="products-slideshow">'';\r\n	    echo do_shortcode("[wcps id=''89'']");\r\n	    echo ''</div>'';\r\n	}\r\n}\r\n\r\nadd_action( ''homepage'', ''storefront_slide_products'', 13 );', '', 0, 1),
(4, 'Add Order Online Content', 'Add the order online content to home page', 'if ( ! function_exists( ''storefront_order_online'' ) ) {\r\n	/**\r\n	 * Display Slide Products\r\n	 *\r\n	 * @since  1.0.0\r\n	 * @uses  storefront_is_woocommerce_activated() check if WooCommerce is activated\r\n	 * @return void\r\n	 */\r\n	function storefront_order_online() {\r\n	    echo ''\r\n			<div class="order-online">\r\n				<div class="container-background">\r\n                	<div class="container-ground">\r\n						<div class="container-center">\r\n                          <div class="container-fluid">\r\n							  <div class="row">\r\n							  	  <div class="col-25 div-blank div-left">&nbsp;</div>\r\n								  <div class="col-50 div-left div-center-contain">\r\n								  		<div class="container-fluid">\r\n											<div class="row row-1">\r\n												<div class="col-25 div-left col-1" >\r\n													<div class="div-hr">\r\n														<hr class="">\r\n													</div>\r\n												</div>\r\n												<div class="col-50 div-left div-initial col-2">\r\n													<div class="div-text-content">\r\n														<p>\r\n														<span class="text-1"><em>Gọi ngay Hotline (028) 38207268</em></span>\r\n														</p>\r\n													</div>																																										\r\n												</div>\r\n												<div class="col-25 div-right col-3">\r\n													<div class="div-hr">\r\n														<hr class="">\r\n													</div>\r\n												</div>\r\n											</div>\r\n										</div>\r\n								  </div>\r\n								  <div class="col-25 div-blank div-right">&nbsp;</div>								  \r\n							  </div>\r\n							  <div class="row">\r\n							  	  <div class="div-text-content">\r\n								     <p>\r\n									  <em><span class="text-2">ĐỂ ĐƯỢC GIAO HÀNG TẬN NƠI</span></em>\r\n									 </p> \r\n								  </div>								  \r\n							  </div>	  \r\n                              <div class="row"> \r\n								  <div class="div-link">\r\n									  <br><br>\r\n									  <a data-action="page" href="http://www.yadingji.com.vn/lien-he"><span class="fa moto-widget-theme-icon"></span> <span class="moto-widget-button-label">ĐẶT GIAO NGAY</span></a>\r\n								  </div>								  \r\n							  </div>\r\n							  <div class="row">\r\n							  	  <div class="">\r\n									  <div class="" style="height:20px"></div>\r\n								  </div>              \r\n							  </div>\r\n						  </div>						                                                                          \r\n					   </div>	  \r\n                	</div>\r\n           	   	</div>\r\n			</div>'';	    \r\n	}\r\n}\r\n\r\nadd_action( ''homepage'', ''storefront_order_online'', 85 );', '', 0, 1),
(5, 'Add special post to home page', 'Add special post to home page', 'if ( ! function_exists( ''storefront_add_special_post'' ) ) {\r\n   function storefront_add_special_post() {\r\n	  $args = array(\r\n		''name''        => ''special-post'',\r\n		''post_type''   => ''post'',\r\n		''post_status'' => ''publish'',\r\n		''numberposts'' => 1\r\n	  );\r\n	  $my_posts = get_posts($args);\r\n	  echo ''<div class="special-post">'';\r\n	  if( $my_posts ) :	    \r\n	    $featureImages = wp_get_attachment_image_src( get_post_thumbnail_id($my_posts[0]->ID), ''full'', false, false);\r\n	    $url = "url(''" . $featureImages[0] . "'')";\r\n	    echo "<div class=''feature-image col-6''>";\r\n	    echo ''<img src="'' . $featureImages[0] . ''" alt="" title="" />'';\r\n	    echo ''</div>'';\r\n	    echo ''<div class="post-container col-6">'';	  \r\n	 	echo ''<div class="post-title">'' . $my_posts[0]->post_title . ''</div>'';\r\n	    echo ''<div class="post-divider-line"><hr></div>'';\r\n		echo ''<div class="post-content">'' . $my_posts[0]->post_content . ''</div>'';\r\n	    echo ''<div class="post-buttons">'';\r\n	 	echo ''<a href="http://localhost/wordpress/the-nao-la-mot-mon-vit-quay-dung-chuan-hong-kong"><span>XEM THÊM</span></a>'';	\r\n	    echo ''</div>'';	 \r\n	    echo ''</div>'';\r\n	  endif;	  \r\n	  echo ''</div>'';\r\n   }\r\n}  \r\n\r\nadd_action( ''homepage'', ''storefront_add_special_post'', 88 );\r\n\r\n', '', 0, 1),
(6, 'Add special images to top homepage', 'Add special images to top homepage', 'if ( ! function_exists( ''storefront_add_special_images'' ) ) {\r\n   function storefront_add_special_images() {\r\n	  $args = array(\r\n		''post_name__in''        => [ ''set-roll-1-pax'', ''happy-friday'', ''menu-combo-220k'' ],\r\n		''post_type''   => ''post'',\r\n		''post_status'' => ''publish''\r\n	  );\r\n	  $my_posts = get_posts($args);	  	\r\n	  echo ''<div class="special-images">'';\r\n	  echo ''<div class="container-fluid">'';	\r\n	  echo ''<div class="row">'';\r\n	  if( $my_posts ) :	 		\r\n	      $length = count($my_posts);\r\n	 	  for($i = 0; $i < $length; $i++) {\r\n			  $featureImages = wp_get_attachment_image_src( get_post_thumbnail_id($my_posts[$i]->ID), ''full'', false, false);\r\n			  echo ''<div class="col">'';\r\n			  echo ''<img src="'' . $featureImages[0] . ''" alt="" title="" />'';\r\n			  echo ''</div>'';	\r\n		  } 	\r\n	  endif;\r\n	  echo ''</div>'';\r\n	  echo ''</div>'';\r\n	  echo ''</div>'';	 \r\n   }\r\n}  \r\n\r\nadd_action( ''homepage'', ''storefront_add_special_images'', 15 );', '', 0, 1);

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
(2, 15, 'product_count_product_cat', '0'),
(3, 16, 'thumbnail_id', '23'),
(4, 16, 'product_count_product_cat', '0'),
(5, 17, 'thumbnail_id', '22'),
(6, 17, 'product_count_product_cat', '0'),
(7, 19, 'order', '0'),
(8, 19, 'display_type', ''),
(9, 19, 'thumbnail_id', '0'),
(10, 19, 'product_count_product_cat', '11'),
(11, 20, 'product_count_product_tag', '1'),
(12, 21, 'product_count_product_tag', '1'),
(13, 22, 'product_count_product_tag', '1'),
(14, 23, 'product_count_product_tag', '1'),
(15, 24, 'product_count_product_tag', '1'),
(16, 25, 'product_count_product_tag', '1'),
(17, 26, 'product_count_product_tag', '1'),
(18, 27, 'product_count_product_tag', '1'),
(19, 28, 'product_count_product_tag', '1'),
(20, 29, 'product_count_product_tag', '1'),
(21, 30, 'product_count_product_tag', '1'),
(22, 31, 'order', '0'),
(23, 31, 'display_type', ''),
(24, 31, 'thumbnail_id', '0'),
(25, 31, 'product_count_product_cat', '7'),
(26, 32, 'product_count_product_tag', '1'),
(27, 33, 'product_count_product_tag', '1'),
(28, 34, 'product_count_product_tag', '1'),
(29, 35, 'product_count_product_tag', '1'),
(30, 36, 'product_count_product_tag', '1'),
(31, 37, 'product_count_product_tag', '1'),
(32, 38, 'product_count_product_tag', '1'),
(33, 39, 'product_count_product_tag', '1'),
(34, 40, 'order', '0'),
(35, 40, 'display_type', ''),
(36, 40, 'thumbnail_id', '0'),
(37, 41, 'order', '0'),
(38, 41, 'display_type', ''),
(39, 41, 'thumbnail_id', '0'),
(40, 41, 'product_count_product_cat', '1');

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
(18, 'Main Menu', 'main-menu', 0),
(19, 'Món Chính', 'mon-chinh', 0),
(20, 'cơm vịt quay', 'com-vit-quay', 0),
(21, 'mỳ xào vịt quay', 'my-xao-vit-quay', 0),
(22, 'màn thầu vịt quay', 'man-thau-vit-quay', 0),
(23, 'cuốn gỏi vịt quay khổng lồ', 'cuon-goi-vit-quay-khong-lo', 0),
(24, 'cuốn vịt quay da bò bía', 'cuon-vit-quay-da-bo-bia', 0),
(25, 'vịt quay nửa con', 'vit-quay-nua-con', 0),
(26, 'vịt quay nguyên con', 'vit-quay-nguyen-con', 0),
(27, 'Cơm Chiên Ngọc Bích', 'com-chien-ngoc-bich', 0),
(28, 'Salad Đỉnh Ký', 'salad-dinh-ky', 0),
(29, 'Vịt Quay 1/4 Con', 'vit-quay-1-4-con', 0),
(30, 'Phá Lấu Vịt', 'pha-lau-vit', 0),
(31, 'Combo Tiết Kiêm', 'combo-tiet-kiem', 0),
(32, 'Combo Dành Cho 2 Người', 'combo-danh-cho-2-nguoi', 0),
(33, 'Combo Dành Cho 4 Người', 'combo-danh-cho-4-nguoi', 0),
(34, 'Combo Dành Cho 6 Người', 'combo-danh-cho-6-nguoi', 0),
(35, 'Set cuốn bò bía 1 người', 'set-cuon-bo-bia-1-nguoi', 0),
(36, 'Set cuốn bò bía 3 người', 'set-cuon-bo-bia-3-nguoi', 0),
(37, 'Set tiệc 36 cuốn bò bía', 'set-tiec-36-cuon-bo-bia', 0),
(38, 'Set tiệc 54 cuốn bò bía', 'set-tiec-54-cuon-bo-bia', 0),
(39, 'Sâm thảo mộc', 'sam-thao-moc', 0),
(40, 'Món Ăn Kèm', 'mon-an-kem', 0),
(41, 'Nước Uống', 'nuoc-uong', 0);

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
(88, 18, 0),
(94, 18, 0),
(97, 18, 0),
(101, 1, 0),
(111, 1, 0),
(114, 1, 0),
(117, 1, 0),
(121, 2, 0),
(121, 19, 0),
(121, 20, 0),
(124, 2, 0),
(124, 19, 0),
(124, 21, 0),
(126, 2, 0),
(126, 19, 0),
(126, 22, 0),
(128, 2, 0),
(128, 19, 0),
(128, 23, 0),
(130, 2, 0),
(130, 19, 0),
(130, 24, 0),
(132, 2, 0),
(132, 19, 0),
(132, 25, 0),
(134, 2, 0),
(134, 19, 0),
(134, 26, 0),
(135, 2, 0),
(135, 19, 0),
(135, 27, 0),
(137, 2, 0),
(137, 19, 0),
(137, 28, 0),
(139, 2, 0),
(139, 19, 0),
(139, 29, 0),
(140, 2, 0),
(140, 19, 0),
(140, 30, 0),
(142, 2, 0),
(142, 31, 0),
(142, 32, 0),
(144, 2, 0),
(144, 31, 0),
(144, 33, 0),
(146, 2, 0),
(146, 31, 0),
(146, 34, 0),
(148, 2, 0),
(148, 31, 0),
(148, 35, 0),
(150, 2, 0),
(150, 31, 0),
(150, 36, 0),
(152, 2, 0),
(152, 31, 0),
(152, 37, 0),
(154, 2, 0),
(154, 31, 0),
(154, 38, 0),
(156, 2, 0),
(156, 39, 0),
(156, 41, 0),
(160, 1, 0);

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
(1, 1, 'category', '', 0, 6),
(2, 2, 'product_type', '', 0, 19),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', 'A short category description', 0, 0),
(16, 16, 'product_cat', 'A short category description', 0, 0),
(17, 17, 'product_cat', 'A short category description', 0, 0),
(18, 18, 'nav_menu', '', 0, 12),
(19, 19, 'product_cat', 'Các món ăn chính', 0, 11),
(20, 20, 'product_tag', '', 0, 1),
(21, 21, 'product_tag', '', 0, 1),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_tag', '', 0, 1),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(31, 31, 'product_cat', 'Combo tiết kiêm', 0, 7),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'product_tag', '', 0, 1),
(36, 36, 'product_tag', '', 0, 1),
(37, 37, 'product_tag', '', 0, 1),
(38, 38, 'product_tag', '', 0, 1),
(39, 39, 'product_tag', '', 0, 1),
(40, 40, 'product_cat', 'Món ăn kèm', 0, 0),
(41, 41, 'product_cat', 'Nước uống', 0, 1);

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
(17, 1, 'session_tokens', 'a:1:{s:64:"df3a8a2c7ef1816ac1272c6e478828bbf9a4f9ddbc82428fcf1c68b78c158859";a:4:{s:10:"expiration";i:1513930299;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1513757499;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '110'),
(19, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(21, 1, 'wp_user-settings', 'widgets_access=off&libraryContent=browse&post_dfw=off&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1513267233'),
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
(40, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"4e732ced3463d06de0ca9a15b6153677";a:10:{s:3:"key";s:32:"4e732ced3463d06de0ca9a15b6153677";s:10:"product_id";i:26;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:36;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:36;s:8:"line_tax";i:0;}s:32:"02e74f10e0327ad868d138f2b4fdd6f0";a:10:{s:3:"key";s:32:"02e74f10e0327ad868d138f2b4fdd6f0";s:10:"product_id";i:27;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:55;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:55;s:8:"line_tax";i:0;}}}'),
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
(77, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(78, 4, 'nickname', 'vo-duy-thanh'),
(79, 4, 'first_name', 'Thanh'),
(80, 4, 'last_name', 'Vo'),
(81, 4, 'description', ''),
(82, 4, 'rich_editing', 'true'),
(83, 4, 'syntax_highlighting', 'true'),
(84, 4, 'comment_shortcuts', 'false'),
(85, 4, 'admin_color', 'fresh'),
(86, 4, 'use_ssl', '0'),
(87, 4, 'show_admin_bar_front', 'true'),
(88, 4, 'locale', ''),
(89, 4, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(90, 4, 'wp_user_level', '0'),
(91, 4, 'oa_social_login_user_token', 'ff45c5b6-056a-4aba-b397-8fa590e38d82'),
(92, 4, 'oa_social_login_identity_provider', 'Facebook'),
(93, 4, 'oa_social_login_user_thumbnail', 'https://graph.facebook.com/110795879710668/picture?type=square'),
(94, 4, 'oa_social_login_user_picture', 'https://graph.facebook.com/110795879710668/picture?type=large'),
(97, 1, 'oa_social_login_user_token', '8c2e598f-a09e-427e-be9f-17a70537d3dc'),
(98, 1, 'oa_social_login_identity_provider', 'Google'),
(99, 1, 'oa_social_login_user_thumbnail', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50'),
(100, 1, 'oa_social_login_user_picture', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=300'),
(101, 2, 'oa_social_login_user_token', 'f3bbb534-383f-4c6c-8311-f5d8bbc5a0f7'),
(102, 2, 'oa_social_login_identity_provider', 'Google'),
(103, 2, 'oa_social_login_user_thumbnail', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50'),
(104, 2, 'oa_social_login_user_picture', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=300'),
(107, 4, 'last_update', '1513239620'),
(108, 4, 'billing_first_name', 'Thanh'),
(109, 4, 'billing_last_name', 'Vo'),
(110, 4, 'billing_company', 'TMA'),
(111, 4, 'billing_address_1', 'CVPM Quang Trung, QL1A, Trung My Tay, Q12'),
(112, 4, 'billing_city', 'HCm'),
(113, 4, 'billing_postcode', '700000'),
(114, 4, 'billing_country', 'VN'),
(115, 4, 'billing_email', '55b18194f0a34a7276a6e5d54db3c120@example.com'),
(116, 4, 'billing_phone', '01234808818'),
(117, 4, 'shipping_first_name', 'Thanh'),
(118, 4, 'shipping_last_name', 'Vo'),
(119, 4, 'shipping_company', 'TMA'),
(120, 4, 'shipping_address_1', 'CVPM Quang Trung, QL1A, Trung My Tay, Q12'),
(121, 4, 'shipping_city', 'HCm'),
(122, 4, 'shipping_postcode', '700000'),
(123, 4, 'shipping_country', 'VN'),
(125, 4, 'shipping_method', 'a:1:{i:0;s:15:"free_shipping:1";}'),
(127, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(128, 1, 'closedpostboxes_post', 'a:0:{}'),
(129, 1, 'metaboxhidden_post', 'a:3:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:9:"authordiv";}'),
(130, 1, 'wplc_ma_agent', '1'),
(131, 1, 'wplc_chat_agent_online', '1513759495');

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
(3, 'Vo_Duy_Thanh', '$P$Bw2aKSk803abjmL9Pz/Yxgg29/TGmQ/', 'vo_duy_thanh', 'facebook_user_vo_duy_thanh@example.com', 'https://www.facebook.com/app_scoped_user_id/110795879710668/', '2017-12-10 08:55:04', '', 0, 'Vo Duy Thanh'),
(4, 'vo-duy-thanh', '$P$BJmnL84hvFQ.jQcFDIY9cBeSTAdFUY.', 'vo-duy-thanh', '55b18194f0a34a7276a6e5d54db3c120@example.com', 'https://www.facebook.com/app_scoped_user_id/110795879710668/', '2017-12-14 02:52:55', '', 0, 'Vo Duy Thanh');

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
(46, 6, 'Mặt hàng', 'Long Sleeve Tee &times; 1, Hoodie with Logo &times; 1, Cap &times; 1'),
(61, 9, '_product_id', '36'),
(62, 9, '_variation_id', '0'),
(63, 9, '_qty', '1'),
(64, 9, '_tax_class', ''),
(65, 9, '_line_subtotal', '18'),
(66, 9, '_line_subtotal_tax', '0'),
(67, 9, '_line_total', '18'),
(68, 9, '_line_tax', '0'),
(69, 9, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(70, 10, 'method_id', 'free_shipping:1'),
(71, 10, 'cost', '0.00'),
(72, 10, 'total_tax', '0'),
(73, 10, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(74, 10, 'Mặt hàng', 'Tshirt &times; 1');

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
(6, 'Giao hàng miễn phí', 'shipping', 90),
(9, 'Tshirt', 'line_item', 100),
(10, 'Giao hàng miễn phí', 'shipping', 100);

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
(87, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:670:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:20:"wpdemo2000@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1513930299),
(90, '4c9be4c6ba9f73e000bdc3f4fb133001', 'a:12:{s:4:"cart";s:365:"a:1:{s:32:"0a09c8844ba8f0936c20bd791130d6b6";a:10:{s:3:"key";s:32:"0a09c8844ba8f0936c20bd791130d6b6";s:10:"product_id";i:144;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:1440000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:1440000;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:423:"a:15:{s:8:"subtotal";s:10:"1440000.00";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:10:"1440000.00";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:10:"1440000.00";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:22:"shipping_for_package_0";s:426:"a:2:{s:12:"package_hash";s:40:"wc_ship_7ef07bb0ddf15bb5a773a1fd30683521";s:5:"rates";a:1:{s:15:"free_shipping:1";O:16:"WC_Shipping_Rate":2:{s:7:"\0*\0data";a:6:{s:2:"id";s:15:"free_shipping:1";s:9:"method_id";s:13:"free_shipping";s:11:"instance_id";i:1;s:5:"label";s:22:"Giao hàng miễn phí";s:4:"cost";s:4:"0.00";s:5:"taxes";a:0:{}}s:12:"\0*\0meta_data";a:1:{s:11:"Mặt hàng";s:36:"Combo Dành Cho 4 Người &times; 3";}}}}";s:25:"previous_shipping_methods";s:43:"a:1:{i:0;a:1:{i:0;s:15:"free_shipping:1";}}";s:23:"chosen_shipping_methods";s:33:"a:1:{i:0;s:15:"free_shipping:1";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:10:"wc_notices";N;s:8:"customer";s:649:"a:25:{s:2:"id";i:0;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1513937330);

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
(2, 1, '215 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1,TP.HCM', '', '', '', '', '10.7893562', '106.69794189999993', '0', '', '1', '', 1, 0, 0, '', '');

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
(1, 'My first map', '100', '400', '10.789520', '106.697244', '10.78952042625972,106.69724434254694', 16, '0', 1, 1, 1, 0, '', 0, '', 1, 1, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:"store_locator_enabled";i:2;s:22:"store_locator_distance";i:2;s:28:"store_locator_default_radius";s:2:"10";s:31:"store_locator_not_found_message";s:52:"No results found in this location. Please try again.";s:20:"store_locator_bounce";i:1;s:26:"store_locator_query_string";s:14:"ZIP / Address:";s:29:"store_locator_default_address";s:58:"215 Đinh Tiên Hoàng, Phường Đa Kao, Quận 1,TP.HCM";s:29:"wpgmza_store_locator_restrict";s:2:"vn";s:12:"map_max_zoom";s:1:"1";s:15:"transport_layer";i:1;s:17:"wpgmza_theme_data";s:0:"";s:30:"wpgmza_show_points_of_interest";i:1;}');

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
-- Table structure for table `wp_wplc_chat_msgs`
--

CREATE TABLE `wp_wplc_chat_msgs` (
  `id` int(11) NOT NULL,
  `chat_sess_id` int(11) NOT NULL,
  `msgfrom` varchar(150) NOT NULL,
  `msg` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(3) NOT NULL,
  `originates` int(3) NOT NULL,
  `other` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wplc_chat_msgs`
--

INSERT INTO `wp_wplc_chat_msgs` (`id`, `chat_sess_id`, `msgfrom`, `msg`, `timestamp`, `status`, `originates`, `other`) VALUES
(1, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 08:53:23', 1, 3, ''),
(2, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 08:54:21', 1, 3, ''),
(3, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 08:56:13', 1, 3, ''),
(4, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 08:58:28', 1, 3, ''),
(5, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:00:24', 1, 3, ''),
(6, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:07:36', 1, 3, ''),
(7, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:09:34', 1, 3, ''),
(8, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:10:27', 1, 3, ''),
(9, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:12:03', 1, 3, ''),
(10, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:21:49', 1, 3, ''),
(11, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:25:10', 1, 3, ''),
(12, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:29:51', 1, 3, ''),
(13, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:30:09', 1, 3, ''),
(14, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:30:42', 1, 3, ''),
(15, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:30:58', 1, 3, ''),
(16, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:31:30', 1, 3, ''),
(17, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:34:44', 1, 3, ''),
(18, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:39:08', 1, 3, ''),
(19, 1, 'Guest', 'asdfa', '2017-12-20 09:40:01', 1, 2, ''),
(20, 1, 'System notification', 'Admin has joined the chat.', '2017-12-20 09:40:26', 1, 0, 'a:7:{s:5:"ntype";s:6:"joined";s:5:"email";s:32:"373528b3fb73995a55a38c432cb135ce";s:4:"name";s:5:"Admin";s:3:"aid";i:1;s:13:"agent_tagline";s:0:"";s:9:"agent_bio";s:0:"";s:12:"social_links";s:0:"";}'),
(21, 1, 'Guest', 'sfsfa', '2017-12-20 09:46:40', 0, 2, ''),
(22, 1, 'Guest', 'fgdf', '2017-12-20 09:46:43', 0, 2, ''),
(23, 1, 'Guest', 'gfhf', '2017-12-20 09:46:44', 0, 2, ''),
(24, 1, 'Guest', 'fghf', '2017-12-20 09:46:46', 0, 2, ''),
(25, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:47:07', 0, 3, ''),
(26, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:48:20', 0, 3, ''),
(27, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:48:52', 0, 3, ''),
(28, 1, 'Guest', 'asfasd', '2017-12-20 09:49:18', 0, 2, ''),
(29, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:54:32', 0, 3, ''),
(30, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:56:57', 0, 3, ''),
(31, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 09:58:32', 0, 3, ''),
(32, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 10:01:18', 0, 3, ''),
(33, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 10:01:36', 0, 3, ''),
(34, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 10:01:56', 0, 3, ''),
(35, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 10:03:33', 0, 3, ''),
(36, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/'' target=''_BLANK''>http://localhost/wordpress/</a></small>', '2017-12-20 10:05:56', 0, 3, ''),
(37, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/san-pham/combo-danh-cho-4-nguoi/'' target=''_BLANK''>http://localhost/wordpress/san[...]nh-cho-4-nguoi/</a></small>', '2017-12-20 10:07:41', 0, 3, ''),
(38, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/san-pham/combo-danh-cho-4-nguoi/'' target=''_BLANK''>http://localhost/wordpress/san[...]nh-cho-4-nguoi/</a></small>', '2017-12-20 10:08:51', 0, 3, ''),
(39, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/san-pham/combo-danh-cho-4-nguoi/'' target=''_BLANK''>http://localhost/wordpress/san[...]nh-cho-4-nguoi/</a></small>', '2017-12-20 10:12:26', 0, 3, ''),
(40, 1, 'System notification', 'User is browsing <small><a href=''http://localhost/wordpress/san-pham/combo-danh-cho-4-nguoi/'' target=''_BLANK''>http://localhost/wordpress/san[...]nh-cho-4-nguoi/</a></small>', '2017-12-20 10:16:25', 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_chat_sessions`
--

CREATE TABLE `wp_wplc_chat_sessions` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `name` varchar(700) NOT NULL,
  `email` varchar(700) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `status` int(11) NOT NULL,
  `session` varchar(100) NOT NULL,
  `url` varchar(700) NOT NULL,
  `last_active_timestamp` datetime NOT NULL,
  `agent_id` int(11) NOT NULL,
  `other` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wplc_chat_sessions`
--

INSERT INTO `wp_wplc_chat_sessions` (`id`, `timestamp`, `name`, `email`, `ip`, `status`, `session`, `url`, `last_active_timestamp`, `agent_id`, `other`) VALUES
(1, '2017-12-20 08:47:26', 'Guest', '479778@479778.com', 'a:2:{s:2:"ip";s:3:"::1";s:10:"user_agent";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";}', 10, '1513764985023', 'http://localhost/wordpress/san-pham/combo-danh-cho-4-nguoi/', '2017-12-20 10:17:58', 1, 'a:6:{s:9:"user_type";i:1;s:14:"user_is_mobile";b:0;s:6:"socket";b:0;s:10:"unanswered";b:1;s:7:"welcome";b:1;s:3:"aid";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_offline_messages`
--

CREATE TABLE `wp_wplc_offline_messages` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `name` varchar(700) NOT NULL,
  `email` varchar(700) NOT NULL,
  `message` varchar(700) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `user_agent` varchar(700) NOT NULL
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
-- Indexes for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  ADD PRIMARY KEY (`es_deliver_id`);

--
-- Indexes for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  ADD PRIMARY KEY (`es_email_id`);

--
-- Indexes for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  ADD PRIMARY KEY (`es_note_id`);

--
-- Indexes for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  ADD PRIMARY KEY (`es_sent_id`);

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
-- Indexes for table `wp_wplc_chat_msgs`
--
ALTER TABLE `wp_wplc_chat_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_chat_sessions`
--
ALTER TABLE `wp_wplc_chat_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_offline_messages`
--
ALTER TABLE `wp_wplc_offline_messages`
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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_ds_subscriber`
--
ALTER TABLE `wp_ds_subscriber`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  MODIFY `es_deliver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  MODIFY `es_email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  MODIFY `es_note_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  MODIFY `es_sent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1526;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1762;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `wp_snippets`
--
ALTER TABLE `wp_snippets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `wp_wplc_chat_msgs`
--
ALTER TABLE `wp_wplc_chat_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `wp_wplc_chat_sessions`
--
ALTER TABLE `wp_wplc_chat_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wplc_offline_messages`
--
ALTER TABLE `wp_wplc_offline_messages`
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
