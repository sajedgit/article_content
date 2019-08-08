-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 11:07 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `affiliate_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `aff_commentmeta`
--

CREATE TABLE `aff_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aff_comments`
--

CREATE TABLE `aff_comments` (
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
-- Dumping data for table `aff_comments`
--

INSERT INTO `aff_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-02 19:34:17', '2019-08-02 19:34:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aff_links`
--

CREATE TABLE `aff_links` (
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
-- Table structure for table `aff_options`
--

CREATE TABLE `aff_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_options`
--

INSERT INTO `aff_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/affiliate_app', 'yes'),
(2, 'home', 'http://localhost/affiliate_app', 'yes'),
(3, 'blogname', 'Christmas Review', 'yes'),
(4, 'blogdescription', 'Together we celebrate this Christmas', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sajedaiub@gmail.com', 'yes'),
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
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";i:1;s:49:\"category-featured-image/categoryfeaturedimage.php\";i:2;s:45:\"dropdown-menu-widget/shailan.DropDownMenu.php\";i:3;s:47:\"facebook-auto-publish/facebook-auto-publish.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'yummy-colorlib', 'yes'),
(41, 'stylesheet', 'yummy-colorlib', 'yes'),
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
(53, 'show_on_front', 'posts', 'yes'),
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
(77, 'sticky_posts', 'a:1:{i:0;i:48;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:47:\"facebook-auto-publish/facebook-auto-publish.php\";s:25:\"fbap_free_network_destroy\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'aff_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:12:\"categories-2\";i:1;s:14:\"recent-posts-3\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1565256859;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1565277521;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565292859;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1565292879;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565292924;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564774600;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, '_site_transient_timeout_browser_01b80466de9751fc3c1cfc72f0950804', '1565379285', 'no'),
(126, '_site_transient_browser_01b80466de9751fc3c1cfc72f0950804', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"68.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1565250120;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}', 'no'),
(141, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"sajedaiub@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1564774503;}', 'no'),
(145, 'current_theme', 'Yummy Blog - Food Blog Template', 'yes'),
(146, 'theme_mods_yummy-colorlib', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1565085177;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(157, 'recently_activated', 'a:1:{s:53:\"wp-custom-taxonomy-image/wp-custom-taxonomy-image.php\";i:1565096902;}', 'yes'),
(205, 'WPLANG', '', 'yes'),
(206, 'new_admin_email', 'sajedaiub@gmail.com', 'yes'),
(212, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(218, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1565085322;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(220, '_transient_twentyfifteen_categories', '1', 'yes'),
(231, '_transient_timeout_plugin_slugs', '1565284579', 'no'),
(232, '_transient_plugin_slugs', 'a:7:{i:0;s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:49:\"category-featured-image/categoryfeaturedimage.php\";i:3;s:45:\"dropdown-menu-widget/shailan.DropDownMenu.php\";i:4;s:21:\"hello-dolly/hello.php\";i:5;s:47:\"facebook-auto-publish/facebook-auto-publish.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(235, 'shailan_dropdown_menu', 'a:30:{s:23:\"shailan_dm_active_theme\";s:87:\"http://localhost/affiliate_app/wp-content/plugins/dropdown-menu-widget/themes/web20.css\";s:20:\"shailan_dm_theme_url\";N;s:27:\"shailan_dm_location_enabled\";s:3:\"off\";s:19:\"shailan_dm_location\";s:7:\"primary\";s:19:\"shailan_dm_home_tag\";s:4:\"Home\";s:17:\"shailan_dm_arrows\";s:2:\"on\";s:22:\"shailan_dm_arrow_color\";s:15:\"rgba(0,0,0,0.5)\";s:15:\"shailan_dm_type\";s:9:\"navmenu_2\";s:15:\"shailan_dm_home\";s:2:\"on\";s:16:\"shailan_dm_login\";s:2:\"on\";s:19:\"shailan_dm_vertical\";s:3:\"off\";s:18:\"shailan_dm_exclude\";s:0:\"\";s:16:\"shailan_dm_align\";s:4:\"left\";s:18:\"shailan_dm_effects\";s:2:\"on\";s:17:\"shailan_dm_effect\";s:4:\"fade\";s:23:\"shailan_dm_effect_speed\";s:4:\"fast\";s:23:\"shailan_dm_effect_delay\";s:3:\"100\";s:24:\"shailan_dm_custom_colors\";s:2:\"on\";s:23:\"shailan_dm_color_menubg\";s:4:\"#fff\";s:24:\"shailan_dm_color_lihover\";s:4:\"#fff\";s:21:\"shailan_dm_color_link\";s:4:\"#000\";s:26:\"shailan_dm_color_hoverlink\";s:4:\"#000\";s:18:\"shailan_dm_overlay\";s:4:\"none\";s:15:\"shailan_dm_font\";s:0:\"\";s:19:\"shailan_dm_fontsize\";s:0:\"\";s:21:\"shailan_dm_custom_css\";s:0:\"\";s:21:\"shailan_dm_show_empty\";s:2:\"on\";s:25:\"shailan_dm_allowmultiline\";s:3:\"off\";s:34:\"shailan_dm_remove_title_attributes\";s:3:\"off\";s:33:\"shailan_dm_remove_top_level_links\";s:3:\"off\";}', 'yes'),
(244, 'categoryfeaturedimage', 'a:1:{s:12:\"when_posting\";b:0;}', 'yes'),
(249, 'aft_options', 'a:1:{s:18:\"checked_taxonomies\";a:1:{s:8:\"category\";s:8:\"category\";}}', 'yes'),
(252, '_category_image11', '', 'yes'),
(258, 'category_children', 'a:3:{i:3;a:7:{i:0;i:4;i:1;i:5;i:2;i:6;i:3;i:7;i:4;i:8;i:5;i:9;i:6;i:10;}i:11;a:3:{i:0;i:12;i:1;i:13;i:2;i:16;}i:18;a:2:{i:0;i:19;i:1;i:20;}}', 'yes'),
(280, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.8\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1565191120;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(281, 'wpseo_titles', 'a:74:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:1;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:26:\"<i class=\"fa fa-home\"></i>\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(282, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(283, 'wpseo_flush_rewrite', '1', 'yes'),
(284, '_transient_timeout_wpseo_link_table_inaccessible', '1596727121', 'no'),
(285, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(286, '_transient_timeout_wpseo_meta_table_inaccessible', '1596727121', 'no'),
(287, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(289, '_transient_timeout_wpseo_site_information', '1565277583', 'no'),
(290, '_transient_wpseo_site_information', 'O:8:\"stdClass\":2:{s:3:\"url\";s:30:\"http://localhost/affiliate_app\";s:13:\"subscriptions\";a:0:{}}', 'no'),
(305, 'rewrite_rules', 'a:89:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(314, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1565250129;s:7:\"checked\";a:7:{s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";s:3:\"1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:49:\"category-featured-image/categoryfeaturedimage.php\";s:4:\"1.03\";s:45:\"dropdown-menu-widget/shailan.DropDownMenu.php\";s:5:\"1.9.7\";s:21:\"hello-dolly/hello.php\";s:5:\"1.7.2\";s:47:\"facebook-auto-publish/facebook-auto-publish.php\";s:5:\"2.2.1\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"11.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:59:\"w.org/plugins/add-featured-image-column-to-the-posts-screen\";s:4:\"slug\";s:45:\"add-featured-image-column-to-the-posts-screen\";s:6:\"plugin\";s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:76:\"https://wordpress.org/plugins/add-featured-image-column-to-the-posts-screen/\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/plugin/add-featured-image-column-to-the-posts-screen.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:89:\"https://s.w.org/plugins/geopattern-icon/add-featured-image-column-to-the-posts-screen.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"category-featured-image/categoryfeaturedimage.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/category-featured-image\";s:4:\"slug\";s:23:\"category-featured-image\";s:6:\"plugin\";s:49:\"category-featured-image/categoryfeaturedimage.php\";s:11:\"new_version\";s:4:\"1.03\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/category-featured-image/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/category-featured-image.1.03.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/category-featured-image/assets/icon-256x256.png?rev=2080155\";s:2:\"1x\";s:76:\"https://ps.w.org/category-featured-image/assets/icon-256x256.png?rev=2080155\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:45:\"dropdown-menu-widget/shailan.DropDownMenu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/dropdown-menu-widget\";s:4:\"slug\";s:20:\"dropdown-menu-widget\";s:6:\"plugin\";s:45:\"dropdown-menu-widget/shailan.DropDownMenu.php\";s:11:\"new_version\";s:5:\"1.9.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/dropdown-menu-widget/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/dropdown-menu-widget.1.9.7.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/dropdown-menu-widget_484848.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/dropdown-menu-widget/assets/banner-772x250.png?rev=619795\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"facebook-auto-publish/facebook-auto-publish.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/facebook-auto-publish\";s:4:\"slug\";s:21:\"facebook-auto-publish\";s:6:\"plugin\";s:47:\"facebook-auto-publish/facebook-auto-publish.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/facebook-auto-publish/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/facebook-auto-publish.2.2.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/facebook-auto-publish/assets/icon-128x128.png?rev=2124304\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/facebook-auto-publish/assets/banner-772x250.png?rev=2125049\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(315, 'xyz_credit_link', '0', 'yes'),
(316, 'fbap_installed_date', '1565198178', 'yes'),
(317, 'xyz_fbap_application_name', 'Yummy_Christmas', 'yes'),
(318, 'xyz_fbap_application_id', '357544281852961', 'yes'),
(319, 'xyz_fbap_application_secret', 'c63e5e06c5e320a290830a493c020fec', 'yes'),
(320, 'xyz_fbap_message', 'New post added at {BLOG_TITLE} - {POST_TITLE}', 'yes'),
(321, 'xyz_fbap_po_method', '2', 'yes'),
(322, 'xyz_fbap_post_permission', '1', 'yes'),
(323, 'xyz_fbap_current_appln_token', '', 'yes'),
(324, 'xyz_fbap_af', '1', 'yes'),
(325, 'xyz_fbap_pages_ids', '-1', 'yes'),
(326, 'xyz_fbap_apply_filters', '2', 'yes'),
(327, 'xyz_fbap_fb_numericid', '', 'yes'),
(328, 'xyz_fbap_free_version', '2.2.1', 'yes'),
(329, 'xyz_fbap_include_pages', '0', 'yes'),
(330, 'xyz_fbap_include_posts', '1', 'yes'),
(331, 'xyz_fbap_include_categories', 'All', 'yes'),
(332, 'xyz_fbap_include_customposttypes', '', 'yes'),
(333, 'xyz_fbap_peer_verification', '1', 'yes'),
(334, 'xyz_fbap_post_logs', '', 'yes'),
(335, 'xyz_fbap_premium_version_ads', '1', 'yes'),
(336, 'xyz_fbap_default_selection_edit', '0', 'yes'),
(337, 'xyz_fbap_app_sel_mode', '0', 'yes'),
(338, 'xyz_fbap_dnt_shw_notice', '0', 'yes'),
(339, 'xyz_fbap_credit_dismiss', '0', 'yes'),
(340, 'xyz_fbap_page_names', '', 'yes'),
(341, 'xyz_fbap_secret_key', '', 'yes'),
(342, 'xyz_fbap_smapsoln_userid', '0', 'yes'),
(343, 'xyz_fbap_xyzscripts_user_id', '', 'yes'),
(344, 'xyz_fbap_xyzscripts_hash_val', '', 'yes'),
(345, 'xyz_fbap_fb_token', '', 'yes'),
(356, '_site_transient_timeout_theme_roots', '1565251924', 'no'),
(357, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:14:\"yummy-colorlib\";s:7:\"/themes\";}', 'no'),
(358, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1565250129;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:14:\"yummy-colorlib\";s:6:\"v1.0.0\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(359, '_site_transient_timeout_available_translations', '1565261059', 'no');
INSERT INTO `aff_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(360, '_site_transient_available_translations', 'a:114:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-16 12:53:39\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-08-01 19:40:34\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.10/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-05 11:37:23\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-16 08:03:06\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-06-12 06:34:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 02:38:14\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-02 05:02:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-19 09:40:25\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-02 13:26:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-20 12:44:05\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.9.10/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-04 14:01:41\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 14:41:04\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 07:19:03\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 09:05:53\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 07:15:15\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-03 20:13:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 02:09:13\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-24 14:32:41\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-22 17:01:37\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2018-08-21 14:41:13\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-03-02 06:27:10\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-15 16:32:57\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-21 23:58:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-24 21:10:09\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-07 02:18:08\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-19 08:17:42\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 07:18:23\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-28 14:50:34\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 08:20:40\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-09 19:18:21\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-14 19:18:02\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2018-12-16 15:53:35\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-20 14:39:14\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 02:04:21\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-02-18 10:06:00\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-13 15:03:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-08-07 12:10:19\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.13\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.13/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-01 11:10:49\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 05:36:23\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2019-01-07 07:51:16\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 05:36:09\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.9.10/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-06-19 21:14:43\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 06:40:44\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 18:00:56\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-02 08:08:11\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-08-02 10:04:39\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-13 06:58:14\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-22 15:02:38\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-04-02 15:10:56\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-23 10:08:08\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-27 04:30:57\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-17 21:22:26\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-25 22:14:28\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-21 08:17:35\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-03-25 02:35:54\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-07-28 01:29:47\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-06-27 13:27:00\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `aff_postmeta`
--

CREATE TABLE `aff_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_postmeta`
--

INSERT INTO `aff_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page_home.php'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_wp_attached_file', '2019/08/royalty-free-christmas-music-1024x576.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:49:\"2019/08/royalty-free-christmas-music-1024x576.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"royalty-free-christmas-music-1024x576-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"royalty-free-christmas-music-1024x576-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"royalty-free-christmas-music-1024x576-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"royalty-free-christmas-music-1024x576-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attachment_image_alt', 'royalty-free-christmas'),
(8, 2, '_edit_lock', '1564778182:1'),
(9, 2, 'categoryfeaturedimage_exclude', '1'),
(10, 9, 'categoryfeaturedimage_exclude', '1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1564777820:1'),
(13, 9, '_wp_trash_meta_status', 'draft'),
(14, 9, '_wp_trash_meta_time', '1564778024'),
(15, 9, '_wp_desired_post_slug', ''),
(16, 2, '_edit_last', '1'),
(17, 2, '_wp_trash_meta_status', 'publish'),
(18, 2, '_wp_trash_meta_time', '1564778346'),
(19, 2, '_wp_desired_post_slug', 'home'),
(20, 13, 'categoryfeaturedimage_exclude', '1'),
(21, 13, '_menu_item_type', 'taxonomy'),
(22, 13, '_menu_item_menu_item_parent', '0'),
(23, 13, '_menu_item_object_id', '11'),
(24, 13, '_menu_item_object', 'category'),
(25, 13, '_menu_item_target', ''),
(26, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 13, '_menu_item_xfn', ''),
(28, 13, '_menu_item_url', ''),
(29, 13, '_menu_item_orphaned', '1565079590'),
(30, 14, 'categoryfeaturedimage_exclude', '1'),
(31, 14, '_menu_item_type', 'taxonomy'),
(32, 14, '_menu_item_menu_item_parent', '0'),
(33, 14, '_menu_item_object_id', '14'),
(34, 14, '_menu_item_object', 'category'),
(35, 14, '_menu_item_target', ''),
(36, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 14, '_menu_item_xfn', ''),
(38, 14, '_menu_item_url', ''),
(39, 14, '_menu_item_orphaned', '1565079592'),
(40, 15, 'categoryfeaturedimage_exclude', '1'),
(41, 15, '_menu_item_type', 'taxonomy'),
(42, 15, '_menu_item_menu_item_parent', '0'),
(43, 15, '_menu_item_object_id', '18'),
(44, 15, '_menu_item_object', 'category'),
(45, 15, '_menu_item_target', ''),
(46, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 15, '_menu_item_xfn', ''),
(48, 15, '_menu_item_url', ''),
(49, 15, '_menu_item_orphaned', '1565079593'),
(50, 16, 'categoryfeaturedimage_exclude', '1'),
(51, 16, '_menu_item_type', 'taxonomy'),
(52, 16, '_menu_item_menu_item_parent', '0'),
(53, 16, '_menu_item_object_id', '3'),
(54, 16, '_menu_item_object', 'category'),
(55, 16, '_menu_item_target', ''),
(56, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 16, '_menu_item_xfn', ''),
(58, 16, '_menu_item_url', ''),
(59, 16, '_menu_item_orphaned', '1565079594'),
(60, 17, 'categoryfeaturedimage_exclude', '1'),
(61, 17, '_menu_item_type', 'taxonomy'),
(62, 17, '_menu_item_menu_item_parent', '0'),
(63, 17, '_menu_item_object_id', '15'),
(64, 17, '_menu_item_object', 'category'),
(65, 17, '_menu_item_target', ''),
(66, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 17, '_menu_item_xfn', ''),
(68, 17, '_menu_item_url', ''),
(69, 17, '_menu_item_orphaned', '1565079595'),
(70, 18, 'categoryfeaturedimage_exclude', '1'),
(71, 18, '_menu_item_type', 'taxonomy'),
(72, 18, '_menu_item_menu_item_parent', '0'),
(73, 18, '_menu_item_object_id', '17'),
(74, 18, '_menu_item_object', 'category'),
(75, 18, '_menu_item_target', ''),
(76, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 18, '_menu_item_xfn', ''),
(78, 18, '_menu_item_url', ''),
(79, 18, '_menu_item_orphaned', '1565079595'),
(80, 19, 'categoryfeaturedimage_exclude', '1'),
(81, 19, '_menu_item_type', 'taxonomy'),
(82, 19, '_menu_item_menu_item_parent', '0'),
(83, 19, '_menu_item_object_id', '11'),
(84, 19, '_menu_item_object', 'category'),
(85, 19, '_menu_item_target', ''),
(86, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 19, '_menu_item_xfn', ''),
(88, 19, '_menu_item_url', ''),
(90, 20, 'categoryfeaturedimage_exclude', '1'),
(91, 20, '_menu_item_type', 'taxonomy'),
(92, 20, '_menu_item_menu_item_parent', '19'),
(93, 20, '_menu_item_object_id', '13'),
(94, 20, '_menu_item_object', 'category'),
(95, 20, '_menu_item_target', ''),
(96, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 20, '_menu_item_xfn', ''),
(98, 20, '_menu_item_url', ''),
(100, 21, 'categoryfeaturedimage_exclude', '1'),
(101, 21, '_menu_item_type', 'taxonomy'),
(102, 21, '_menu_item_menu_item_parent', '19'),
(103, 21, '_menu_item_object_id', '16'),
(104, 21, '_menu_item_object', 'category'),
(105, 21, '_menu_item_target', ''),
(106, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 21, '_menu_item_xfn', ''),
(108, 21, '_menu_item_url', ''),
(110, 22, 'categoryfeaturedimage_exclude', '1'),
(111, 22, '_menu_item_type', 'taxonomy'),
(112, 22, '_menu_item_menu_item_parent', '19'),
(113, 22, '_menu_item_object_id', '12'),
(114, 22, '_menu_item_object', 'category'),
(115, 22, '_menu_item_target', ''),
(116, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 22, '_menu_item_xfn', ''),
(118, 22, '_menu_item_url', ''),
(120, 23, 'categoryfeaturedimage_exclude', '1'),
(121, 23, '_menu_item_type', 'taxonomy'),
(122, 23, '_menu_item_menu_item_parent', '0'),
(123, 23, '_menu_item_object_id', '14'),
(124, 23, '_menu_item_object', 'category'),
(125, 23, '_menu_item_target', ''),
(126, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 23, '_menu_item_xfn', ''),
(128, 23, '_menu_item_url', ''),
(130, 24, 'categoryfeaturedimage_exclude', '1'),
(131, 24, '_menu_item_type', 'taxonomy'),
(132, 24, '_menu_item_menu_item_parent', '0'),
(133, 24, '_menu_item_object_id', '18'),
(134, 24, '_menu_item_object', 'category'),
(135, 24, '_menu_item_target', ''),
(136, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 24, '_menu_item_xfn', ''),
(138, 24, '_menu_item_url', ''),
(140, 25, 'categoryfeaturedimage_exclude', '1'),
(141, 25, '_menu_item_type', 'taxonomy'),
(142, 25, '_menu_item_menu_item_parent', '24'),
(143, 25, '_menu_item_object_id', '20'),
(144, 25, '_menu_item_object', 'category'),
(145, 25, '_menu_item_target', ''),
(146, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 25, '_menu_item_xfn', ''),
(148, 25, '_menu_item_url', ''),
(150, 26, 'categoryfeaturedimage_exclude', '1'),
(151, 26, '_menu_item_type', 'taxonomy'),
(152, 26, '_menu_item_menu_item_parent', '24'),
(153, 26, '_menu_item_object_id', '19'),
(154, 26, '_menu_item_object', 'category'),
(155, 26, '_menu_item_target', ''),
(156, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 26, '_menu_item_xfn', ''),
(158, 26, '_menu_item_url', ''),
(160, 27, 'categoryfeaturedimage_exclude', '1'),
(161, 27, '_menu_item_type', 'taxonomy'),
(162, 27, '_menu_item_menu_item_parent', '0'),
(163, 27, '_menu_item_object_id', '3'),
(164, 27, '_menu_item_object', 'category'),
(165, 27, '_menu_item_target', ''),
(166, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 27, '_menu_item_xfn', ''),
(168, 27, '_menu_item_url', ''),
(170, 28, 'categoryfeaturedimage_exclude', '1'),
(171, 28, '_menu_item_type', 'taxonomy'),
(172, 28, '_menu_item_menu_item_parent', '27'),
(173, 28, '_menu_item_object_id', '8'),
(174, 28, '_menu_item_object', 'category'),
(175, 28, '_menu_item_target', ''),
(176, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 28, '_menu_item_xfn', ''),
(178, 28, '_menu_item_url', ''),
(180, 29, 'categoryfeaturedimage_exclude', '1'),
(181, 29, '_menu_item_type', 'taxonomy'),
(182, 29, '_menu_item_menu_item_parent', '27'),
(183, 29, '_menu_item_object_id', '6'),
(184, 29, '_menu_item_object', 'category'),
(185, 29, '_menu_item_target', ''),
(186, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 29, '_menu_item_xfn', ''),
(188, 29, '_menu_item_url', ''),
(190, 30, 'categoryfeaturedimage_exclude', '1'),
(191, 30, '_menu_item_type', 'taxonomy'),
(192, 30, '_menu_item_menu_item_parent', '27'),
(193, 30, '_menu_item_object_id', '9'),
(194, 30, '_menu_item_object', 'category'),
(195, 30, '_menu_item_target', ''),
(196, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 30, '_menu_item_xfn', ''),
(198, 30, '_menu_item_url', ''),
(200, 31, 'categoryfeaturedimage_exclude', '1'),
(201, 31, '_menu_item_type', 'taxonomy'),
(202, 31, '_menu_item_menu_item_parent', '27'),
(203, 31, '_menu_item_object_id', '7'),
(204, 31, '_menu_item_object', 'category'),
(205, 31, '_menu_item_target', ''),
(206, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 31, '_menu_item_xfn', ''),
(208, 31, '_menu_item_url', ''),
(210, 32, 'categoryfeaturedimage_exclude', '1'),
(211, 32, '_menu_item_type', 'taxonomy'),
(212, 32, '_menu_item_menu_item_parent', '27'),
(213, 32, '_menu_item_object_id', '5'),
(214, 32, '_menu_item_object', 'category'),
(215, 32, '_menu_item_target', ''),
(216, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 32, '_menu_item_xfn', ''),
(218, 32, '_menu_item_url', ''),
(220, 33, 'categoryfeaturedimage_exclude', '1'),
(221, 33, '_menu_item_type', 'taxonomy'),
(222, 33, '_menu_item_menu_item_parent', '27'),
(223, 33, '_menu_item_object_id', '10'),
(224, 33, '_menu_item_object', 'category'),
(225, 33, '_menu_item_target', ''),
(226, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 33, '_menu_item_xfn', ''),
(228, 33, '_menu_item_url', ''),
(230, 34, 'categoryfeaturedimage_exclude', '1'),
(231, 34, '_menu_item_type', 'taxonomy'),
(232, 34, '_menu_item_menu_item_parent', '27'),
(233, 34, '_menu_item_object_id', '4'),
(234, 34, '_menu_item_object', 'category'),
(235, 34, '_menu_item_target', ''),
(236, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 34, '_menu_item_xfn', ''),
(238, 34, '_menu_item_url', ''),
(240, 35, 'categoryfeaturedimage_exclude', '1'),
(241, 35, '_menu_item_type', 'taxonomy'),
(242, 35, '_menu_item_menu_item_parent', '0'),
(243, 35, '_menu_item_object_id', '15'),
(244, 35, '_menu_item_object', 'category'),
(245, 35, '_menu_item_target', ''),
(246, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 35, '_menu_item_xfn', ''),
(248, 35, '_menu_item_url', ''),
(250, 36, 'categoryfeaturedimage_exclude', '1'),
(251, 36, '_menu_item_type', 'taxonomy'),
(252, 36, '_menu_item_menu_item_parent', '0'),
(253, 36, '_menu_item_object_id', '17'),
(254, 36, '_menu_item_object', 'category'),
(255, 36, '_menu_item_target', ''),
(256, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(257, 36, '_menu_item_xfn', ''),
(258, 36, '_menu_item_url', ''),
(262, 38, 'categoryfeaturedimage_exclude', '1'),
(263, 38, '_menu_item_type', 'custom'),
(264, 38, '_menu_item_menu_item_parent', '0'),
(265, 38, '_menu_item_object_id', '38'),
(266, 38, '_menu_item_object', 'custom'),
(267, 38, '_menu_item_target', ''),
(268, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 38, '_menu_item_xfn', ''),
(270, 38, '_menu_item_url', 'http://localhost/affiliate_app/'),
(272, 1, '_edit_lock', '1565200102:1'),
(274, 1, '_edit_last', '1'),
(277, 1, '_wp_old_slug', 'hello-world'),
(279, 42, '_wp_attached_file', '2019/08/slide-1.jpg'),
(280, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:601;s:6:\"height\";i:902;s:4:\"file\";s:19:\"2019/08/slide-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 1, '_thumbnail_id', '60'),
(284, 1, '_wp_old_slug', 'a-tribute-to-istanbuls-street'),
(286, 44, '_edit_last', '1'),
(287, 44, '_edit_lock', '1565199889:1'),
(288, 45, '_wp_attached_file', '2019/08/slide-2.jpg'),
(289, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:19:\"2019/08/slide-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 44, '_thumbnail_id', '58'),
(293, 44, 'categoryfeaturedimage_exclude', '1'),
(295, 48, '_edit_last', '1'),
(296, 48, '_edit_lock', '1565252372:1'),
(297, 49, '_wp_attached_file', '2019/08/slide-3.jpg'),
(298, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:19:\"2019/08/slide-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 48, '_thumbnail_id', '59'),
(302, 48, 'categoryfeaturedimage_exclude', '1'),
(304, 52, '_edit_last', '1'),
(305, 52, '_edit_lock', '1565250273:1'),
(306, 53, '_wp_attached_file', '2019/08/slide-4.jpg'),
(307, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:19:\"2019/08/slide-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 52, '_thumbnail_id', '7'),
(311, 52, 'categoryfeaturedimage_exclude', '1'),
(314, 57, '_wp_attached_file', '2019/08/1.jpg'),
(315, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1246;s:6:\"height\";i:900;s:4:\"file\";s:13:\"2019/08/1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x555.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x740.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:740;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"1-1200x867.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:867;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 58, '_wp_attached_file', '2019/08/112717-holiday-accessories-lead_0.jpg'),
(317, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:696;s:6:\"height\";i:522;s:4:\"file\";s:45:\"2019/08/112717-holiday-accessories-lead_0.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"112717-holiday-accessories-lead_0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"112717-holiday-accessories-lead_0-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(318, 59, '_wp_attached_file', '2019/08/What-s-big-in-beverages-in-2017-Innovation-health-and-sustainability_wrbm_large.jpg'),
(319, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:408;s:4:\"file\";s:91:\"2019/08/What-s-big-in-beverages-in-2017-Innovation-health-and-sustainability_wrbm_large.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:91:\"What-s-big-in-beverages-in-2017-Innovation-health-and-sustainability_wrbm_large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:91:\"What-s-big-in-beverages-in-2017-Innovation-health-and-sustainability_wrbm_large-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(320, 60, '_wp_attached_file', '2019/08/m125465.jpg'),
(321, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:766;s:4:\"file\";s:19:\"2019/08/m125465.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"m125465-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"m125465-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"m125465-768x588.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:588;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 63, '_wp_attached_file', '2019/08/slide-1-1.jpg'),
(326, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:601;s:6:\"height\";i:902;s:4:\"file\";s:21:\"2019/08/slide-1-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"slide-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"slide-1-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 65, '_edit_last', '1'),
(334, 65, '_edit_lock', '1565199695:1'),
(335, 65, '_thumbnail_id', '60'),
(338, 65, 'categoryfeaturedimage_exclude', '1'),
(341, 65, '_yoast_wpseo_primary_category', ''),
(342, 65, '_yoast_wpseo_content_score', '30'),
(343, 1, 'categoryfeaturedimage_exclude', '1'),
(346, 1, '_yoast_wpseo_primary_category', ''),
(347, 1, '_yoast_wpseo_content_score', '30'),
(348, 52, 'xyz_fbap', '1'),
(351, 52, '_yoast_wpseo_primary_category', ''),
(352, 52, '_yoast_wpseo_content_score', '30'),
(353, 48, 'xyz_fbap', '1'),
(356, 48, '_yoast_wpseo_primary_category', ''),
(357, 48, '_yoast_wpseo_content_score', '30'),
(358, 44, 'xyz_fbap', '1'),
(361, 44, '_yoast_wpseo_primary_category', ''),
(362, 44, '_yoast_wpseo_content_score', '30'),
(363, 1, 'xyz_fbap', '1'),
(368, 52, '_wp_trash_meta_status', 'publish'),
(369, 52, '_wp_trash_meta_time', '1565250427'),
(370, 52, '_wp_desired_post_slug', 'post-four');

-- --------------------------------------------------------

--
-- Table structure for table `aff_posts`
--

CREATE TABLE `aff_posts` (
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
-- Dumping data for table `aff_posts`
--

INSERT INTO `aff_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-02 19:34:17', '2019-08-02 19:34:17', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post one', '', 'publish', 'open', 'open', '', 'post-one', '', '', '2019-08-07 17:47:42', '2019-08-07 17:47:42', '', 0, 'http://localhost/affiliate_app/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-02 19:34:17', '2019-08-02 19:34:17', '', 'Home', '', 'trash', 'closed', 'open', '', 'home__trashed', '', '', '2019-08-02 20:39:06', '2019-08-02 20:39:06', '', 0, 'http://localhost/affiliate_app/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-02 19:34:17', '2019-08-02 19:34:17', '<h2>Who we are</h2><p>Our website address is: http://localhost/affiliate_app.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-02 19:34:17', '2019-08-02 19:34:17', '', 0, 'http://localhost/affiliate_app/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-08-02 19:34:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-02 19:34:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=4', 0, 'post', '', 0),
(5, 1, '2019-08-02 19:35:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-02 19:35:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=5', 0, 'post', '', 0),
(7, 1, '2019-08-02 20:13:48', '2019-08-02 20:13:48', '', 'royalty-free-christmas-music-1024x576', '', 'inherit', 'open', 'closed', '', 'royalty-free-christmas-music-1024x576', '', '', '2019-08-02 20:14:03', '2019-08-02 20:14:03', '', 0, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/royalty-free-christmas-music-1024x576.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-08-02 20:33:44', '2019-08-02 20:33:44', '', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-08-02 20:33:44', '2019-08-02 20:33:44', '', 0, 'http://localhost/affiliate_app/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-08-02 20:33:44', '2019-08-02 20:33:44', '', '', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-08-02 20:33:44', '2019-08-02 20:33:44', '', 9, 'http://localhost/affiliate_app/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-08-02 20:34:27', '2019-08-02 20:34:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-02 20:34:27', '2019-08-02 20:34:27', '', 2, 'http://localhost/affiliate_app/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-08-06 08:19:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-06 08:19:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-08-06 08:19:50', '0000-00-00 00:00:00', '', 'Beauty & Personal Care', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-06 08:19:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2019-08-06 08:19:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-06 08:19:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-08-06 08:19:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-06 08:19:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-08-06 08:19:54', '0000-00-00 00:00:00', '', 'Kitchenware & Cookware', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-06 08:19:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2019-08-06 08:19:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-06 08:19:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/affiliate_app/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-08-06 08:22:03', '2019-08-06 08:22:03', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 0, 'http://localhost/affiliate_app/?p=19', 10, 'nav_menu_item', '', 0),
(20, 1, '2019-08-06 08:22:04', '2019-08-06 08:22:04', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 11, 'http://localhost/affiliate_app/?p=20', 11, 'nav_menu_item', '', 0),
(21, 1, '2019-08-06 08:22:04', '2019-08-06 08:22:04', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 11, 'http://localhost/affiliate_app/?p=21', 13, 'nav_menu_item', '', 0),
(22, 1, '2019-08-06 08:22:04', '2019-08-06 08:22:04', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 11, 'http://localhost/affiliate_app/?p=22', 12, 'nav_menu_item', '', 0),
(23, 1, '2019-08-06 08:22:04', '2019-08-06 08:22:04', '', 'Beauty & Personal Care', '', 'publish', 'closed', 'closed', '', 'beauty-personal-care', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 0, 'http://localhost/affiliate_app/?p=23', 17, 'nav_menu_item', '', 0),
(24, 1, '2019-08-06 08:22:04', '2019-08-06 08:22:04', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 0, 'http://localhost/affiliate_app/?p=24', 14, 'nav_menu_item', '', 0),
(25, 1, '2019-08-06 08:22:05', '2019-08-06 08:22:05', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 18, 'http://localhost/affiliate_app/?p=25', 15, 'nav_menu_item', '', 0),
(26, 1, '2019-08-06 08:22:05', '2019-08-06 08:22:05', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 18, 'http://localhost/affiliate_app/?p=26', 16, 'nav_menu_item', '', 0),
(27, 1, '2019-08-06 08:22:05', '2019-08-06 08:22:05', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 0, 'http://localhost/affiliate_app/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2019-08-06 08:22:06', '2019-08-06 08:22:06', '', 'Chrismas Children\'s Toy', '', 'publish', 'closed', 'closed', '', 'chrismas-childrens-toy', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=28', 8, 'nav_menu_item', '', 0),
(29, 1, '2019-08-06 08:22:06', '2019-08-06 08:22:06', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2019-08-06 08:22:06', '2019-08-06 08:22:06', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=30', 7, 'nav_menu_item', '', 0),
(31, 1, '2019-08-06 08:22:06', '2019-08-06 08:22:06', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2019-08-06 08:22:05', '2019-08-06 08:22:05', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2019-08-06 08:22:07', '2019-08-06 08:22:07', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=33', 9, 'nav_menu_item', '', 0),
(34, 1, '2019-08-06 08:22:05', '2019-08-06 08:22:05', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 3, 'http://localhost/affiliate_app/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2019-08-06 08:22:07', '2019-08-06 08:22:07', '', 'Kitchenware', '', 'publish', 'closed', 'closed', '', 'kitchenware-cookware', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 0, 'http://localhost/affiliate_app/?p=35', 18, 'nav_menu_item', '', 0),
(36, 1, '2019-08-06 08:22:07', '2019-08-06 08:22:07', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-08-06 10:47:25', '2019-08-06 10:47:25', '', 0, 'http://localhost/affiliate_app/?p=36', 19, 'nav_menu_item', '', 0),
(38, 1, '2019-08-06 10:46:28', '2019-08-06 10:46:28', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-08-06 10:47:24', '2019-08-06 10:47:24', '', 0, 'http://localhost/affiliate_app/?p=38', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-08-06 12:22:54', '2019-08-06 12:22:54', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'A Tribute to Istanbul’s Street', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-06 12:22:54', '2019-08-06 12:22:54', '', 1, 'http://localhost/affiliate_app/1-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-08-06 12:25:32', '2019-08-06 12:25:32', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1', '', '', '2019-08-06 12:25:32', '2019-08-06 12:25:32', '', 1, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/slide-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-08-06 12:25:53', '2019-08-06 12:25:53', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post one', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-06 12:25:53', '2019-08-06 12:25:53', '', 1, 'http://localhost/affiliate_app/1-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-08-06 12:26:38', '2019-08-06 12:26:38', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Two', '', 'publish', 'open', 'open', '', 'post-two', '', '', '2019-08-07 17:46:20', '2019-08-07 17:46:20', '', 0, 'http://localhost/affiliate_app/?p=44', 0, 'post', '', 0),
(45, 1, '2019-08-06 12:26:32', '2019-08-06 12:26:32', '', 'slide-2', '', 'inherit', 'open', 'closed', '', 'slide-2', '', '', '2019-08-06 12:26:32', '2019-08-06 12:26:32', '', 44, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/slide-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-08-06 12:26:38', '2019-08-06 12:26:38', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Two', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-08-06 12:26:38', '2019-08-06 12:26:38', '', 44, 'http://localhost/affiliate_app/44-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-08-06 12:27:16', '2019-08-06 12:27:16', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Boil The Kettle And Make A Cup Of Tea Folks, This Is Going To Be A Big One!', '', 'publish', 'open', 'open', '', 'post-three', '', '', '2019-08-08 07:52:44', '2019-08-08 07:52:44', '', 0, 'http://localhost/affiliate_app/?p=48', 0, 'post', '', 0),
(49, 1, '2019-08-06 12:27:05', '2019-08-06 12:27:05', '', 'slide-3', '', 'inherit', 'open', 'closed', '', 'slide-3', '', '', '2019-08-06 12:27:05', '2019-08-06 12:27:05', '', 48, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/slide-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-08-06 12:27:16', '2019-08-06 12:27:16', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Three', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-08-06 12:27:16', '2019-08-06 12:27:16', '', 48, 'http://localhost/affiliate_app/48-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-08-06 12:27:55', '2019-08-06 12:27:55', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Four', '', 'trash', 'open', 'open', '', 'post-four__trashed', '', '', '2019-08-08 07:47:07', '2019-08-08 07:47:07', '', 0, 'http://localhost/affiliate_app/?p=52', 0, 'post', '', 0),
(53, 1, '2019-08-06 12:27:47', '2019-08-06 12:27:47', '', 'slide-4', '', 'inherit', 'open', 'closed', '', 'slide-4', '', '', '2019-08-06 12:27:47', '2019-08-06 12:27:47', '', 52, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/slide-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-08-06 12:27:55', '2019-08-06 12:27:55', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Four', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-08-06 12:27:55', '2019-08-06 12:27:55', '', 52, 'http://localhost/affiliate_app/52-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-08-06 13:06:11', '2019-08-06 13:06:11', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-08-06 13:06:11', '2019-08-06 13:06:11', '', 0, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-08-06 14:00:06', '2019-08-06 14:00:06', '', '112717-holiday-accessories-lead_0', '', 'inherit', 'open', 'closed', '', '112717-holiday-accessories-lead_0', '', '', '2019-08-06 14:00:06', '2019-08-06 14:00:06', '', 0, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/112717-holiday-accessories-lead_0.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-08-06 14:01:10', '2019-08-06 14:01:10', '', 'What-s-big-in-beverages-in-2017-Innovation-health-and-sustainability_wrbm_large', '', 'inherit', 'open', 'closed', '', 'what-s-big-in-beverages-in-2017-innovation-health-and-sustainability_wrbm_large', '', '', '2019-08-06 14:01:10', '2019-08-06 14:01:10', '', 0, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/What-s-big-in-beverages-in-2017-Innovation-health-and-sustainability_wrbm_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-08-06 14:01:37', '2019-08-06 14:01:37', '', 'm125465', '', 'inherit', 'open', 'closed', '', 'm125465', '', '', '2019-08-06 14:01:37', '2019-08-06 14:01:37', '', 0, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/m125465.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-08-07 09:25:30', '2019-08-07 09:25:30', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1-2', '', '', '2019-08-07 09:25:30', '2019-08-07 09:25:30', '', 1, 'http://localhost/affiliate_app/wp-content/uploads/2019/08/slide-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-08-07 10:24:51', '2019-08-07 10:24:51', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Five', '', 'publish', 'open', 'open', '', 'post-five', '', '', '2019-08-07 16:58:35', '2019-08-07 16:58:35', '', 0, 'http://localhost/affiliate_app/?p=65', 0, 'post', '', 0),
(66, 1, '2019-08-07 10:24:51', '2019-08-07 10:24:51', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Five', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-08-07 10:24:51', '2019-08-07 10:24:51', '', 65, 'http://localhost/affiliate_app/65-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-08-07 17:42:15', '2019-08-07 17:42:15', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Five', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2019-08-07 17:42:15', '2019-08-07 17:42:15', '', 65, 'http://localhost/affiliate_app/65-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2019-08-07 17:50:58', '2019-08-07 17:50:58', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Boil The Kettle And Make A Cup Of Tea Folks, This Is Going To Be A Big One!', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-08-07 17:50:58', '2019-08-07 17:50:58', '', 48, 'http://localhost/affiliate_app/48-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-08-08 07:44:25', '2019-08-08 07:44:25', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Post Four', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2019-08-08 07:44:25', '2019-08-08 07:44:25', '', 52, 'http://localhost/affiliate_app/52-autosave-v1/', 0, 'revision', '', 0),
(81, 1, '2019-08-08 08:19:40', '2019-08-08 08:19:40', 'I’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s StreetI’ve Come and I’m Gone”: A Tribute to Istanbul’s Street', 'Boil The Kettle And Make A Cup Of Tea Folks, This Is Going To Be A Big One!', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2019-08-08 08:19:40', '2019-08-08 08:19:40', '', 48, 'http://localhost/affiliate_app/48-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aff_termmeta`
--

CREATE TABLE `aff_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_termmeta`
--

INSERT INTO `aff_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'featured_image_id', '7'),
(2, 11, 'featured_image_id', '58'),
(3, 18, 'featured_image_id', '59'),
(4, 14, 'featured_image_id', '60');

-- --------------------------------------------------------

--
-- Table structure for table `aff_terms`
--

CREATE TABLE `aff_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_terms`
--

INSERT INTO `aff_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main_menu', 'main_menu', 0),
(3, 'Chrismas Item', 'chrismas-item', 0),
(4, 'Chrismas Tree', 'chrismas-tree', 0),
(5, 'Chrismas Light', 'chrismas-light', 0),
(6, 'Chrismas Fireworks', 'chrismas-fireworks', 0),
(7, 'Chrismas Gift Hamper', 'chrismas-gift-hamper', 0),
(8, 'Chrismas Children\'s Toy', 'chrismas-childrens-toy', 0),
(9, 'Chrismas Food', 'chrismas-food', 0),
(10, 'Chrismas Outfits', 'chrismas-outfits', 0),
(11, 'Accessories', 'accessories', 0),
(12, 'Women Accessories', 'women-accessories', 0),
(13, 'Mens Accessories', 'mens-accessories', 0),
(14, 'Beauty &amp; Personal Care', 'beauty-personal-care', 0),
(15, 'Kitchenware &amp; Cookware', 'kitchenware-cookware', 0),
(16, 'Mobile Accessories', 'mobile-accessories', 0),
(17, 'Video Games', 'video-games', 0),
(18, 'Beverage', 'beverage', 0),
(19, 'Soft', 'soft', 0),
(20, 'Alcoholic', 'alcoholic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `aff_term_relationships`
--

CREATE TABLE `aff_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_term_relationships`
--

INSERT INTO `aff_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 11, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(38, 2, 0),
(44, 14, 0),
(48, 18, 0),
(52, 3, 0),
(65, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aff_term_taxonomy`
--

CREATE TABLE `aff_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_term_taxonomy`
--

INSERT INTO `aff_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 19),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 3, 0),
(5, 5, 'category', '', 3, 0),
(6, 6, 'category', '', 3, 0),
(7, 7, 'category', '', 3, 0),
(8, 8, 'category', '', 3, 0),
(9, 9, 'category', '', 3, 0),
(10, 10, 'category', '', 3, 0),
(11, 11, 'category', '', 0, 2),
(12, 12, 'category', '', 11, 0),
(13, 13, 'category', '', 11, 0),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 0),
(16, 16, 'category', '', 11, 0),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 1),
(19, 19, 'category', '', 18, 0),
(20, 20, 'category', '', 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aff_usermeta`
--

CREATE TABLE `aff_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_usermeta`
--

INSERT INTO `aff_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'aff_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'aff_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"276745a188609689e292ee477bf3aaa4b7c336d2791efac3c23f3f072a2403c9\";a:4:{s:10:\"expiration\";i:1565984078;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1564774478;}}'),
(17, 1, 'aff_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:21:\"dashboard_quick_press\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'aff_user-settings', 'libraryContent=browse'),
(23, 1, 'aff_user-settings-time', '1564776845'),
(24, 1, 'nav_menu_recently_edited', '2'),
(26, 1, 'aff_wpseo-dismiss-wordpress-upgrade', 'seen'),
(27, 1, 'aff_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:1094:\"<strong>Upgrade WordPress to the most recent version</strong><br/>We’ve noticed that you’re not on the latest WordPress version, which might cause an issue soon. Yoast (for reasons of security and stability) only supports the current and previous version of WordPress. When the next version of WordPress comes out, that means that we will support WordPress 5.2 and 5.3. This means you will not get any updates to Yoast SEO until you update your WordPress, so please make sure to upgrade to the latest WordPress version soon!<br/><br/>If you’ve held off on updating to 5.0 and higher because of the new Gutenberg editor, please install the Classic Editor plugin. It will give you the same editing experience you have now, but also the security of newer versions of WordPress and Yoast SEO.<br/><br/>Read <a href=\"https://yoa.st/old-wp-support?php_version=7.2&platform=wordpress&platform_version=4.9.10&software=free&software_version=11.8&days_active=0-1&user_language=en_US\" target=\"_blank\" rel=\"nofollow\">this post for more information about why we’re not supporting older versions.</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:31:\"wpseo-dismiss-wordpress-upgrade\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `aff_users`
--

CREATE TABLE `aff_users` (
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
-- Dumping data for table `aff_users`
--

INSERT INTO `aff_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bca5EH.1D1XANPTPBCEGOqG7elP1xg/', 'admin', 'sajedaiub@gmail.com', '', '2019-08-02 19:34:16', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `aff_yoast_seo_links`
--

CREATE TABLE `aff_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aff_yoast_seo_meta`
--

CREATE TABLE `aff_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aff_yoast_seo_meta`
--

INSERT INTO `aff_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(44, 0, 0),
(47, 0, 0),
(48, 0, 0),
(51, 0, 0),
(52, 0, 0),
(61, 0, 0),
(65, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(81, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aff_commentmeta`
--
ALTER TABLE `aff_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aff_comments`
--
ALTER TABLE `aff_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `aff_links`
--
ALTER TABLE `aff_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `aff_options`
--
ALTER TABLE `aff_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `aff_postmeta`
--
ALTER TABLE `aff_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aff_posts`
--
ALTER TABLE `aff_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `aff_termmeta`
--
ALTER TABLE `aff_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aff_terms`
--
ALTER TABLE `aff_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `aff_term_relationships`
--
ALTER TABLE `aff_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `aff_term_taxonomy`
--
ALTER TABLE `aff_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `aff_usermeta`
--
ALTER TABLE `aff_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `aff_users`
--
ALTER TABLE `aff_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `aff_yoast_seo_links`
--
ALTER TABLE `aff_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `aff_yoast_seo_meta`
--
ALTER TABLE `aff_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aff_commentmeta`
--
ALTER TABLE `aff_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aff_comments`
--
ALTER TABLE `aff_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aff_links`
--
ALTER TABLE `aff_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aff_options`
--
ALTER TABLE `aff_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `aff_postmeta`
--
ALTER TABLE `aff_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `aff_posts`
--
ALTER TABLE `aff_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `aff_termmeta`
--
ALTER TABLE `aff_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aff_terms`
--
ALTER TABLE `aff_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `aff_term_taxonomy`
--
ALTER TABLE `aff_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `aff_usermeta`
--
ALTER TABLE `aff_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `aff_users`
--
ALTER TABLE `aff_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aff_yoast_seo_links`
--
ALTER TABLE `aff_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
