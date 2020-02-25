-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 25 2020 г., 10:10
-- Версия сервера: 5.7.29-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-27 17:19:56', '2020-01-27 14:19:56', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpressru.com/wordpress', 'yes'),
(2, 'home', 'http://wordpressru.com/wordpress', 'yes'),
(3, 'blogname', 'DevIT test', 'yes'),
(4, 'blogdescription', 'Internship test assignment', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fedevelopment91@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:55:\"custom-user-fields-plugin/custom-user-fields-plugin.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:86:\"/home/developer/www/wordpressru.com/wordpress/wp-content/themes/twentytwenty/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'mytheme', 'yes'),
(41, 'stylesheet', 'mytheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '43', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1595686795', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1582539596;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582553996;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582554008;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582554009;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:39:\"cover_template_overlay_background_color\";s:7:\"#dd9933\";s:18:\"nav_menu_locations\";a:1:{s:8:\"expanded\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580380301;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(131, 'can_compress_scripts', '0', 'no'),
(148, 'dismissed_update_core', 'a:1:{s:11:\"5.3.2|ru_RU\";b:1;}', 'no'),
(157, 'recently_activated', 'a:1:{s:55:\"custom-user-fields-plugin/custom-user-fields-plugin.php\";i:1582025193;}', 'yes'),
(171, 'new_admin_email', 'fedevelopment91@gmail.com', 'yes'),
(269, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(273, 'theme_mods_mytheme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580555957;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(275, 'current_theme', 'Моя первая темы', 'yes'),
(276, 'theme_switched', '', 'yes'),
(277, 'theme_switched_via_customizer', '', 'yes'),
(278, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(279, 'theme_mods_clean-wp-template/your-clean-template-3', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580381617;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(330, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580978752;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(366, 'recovery_mode_email_last_sent', '1582280521', 'yes'),
(616, '_site_transient_timeout_browser_75956858e205cfb2124d15110fcda3ea', '1582815656', 'no'),
(617, '_site_transient_browser_75956858e205cfb2124d15110fcda3ea', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"80.0.3987.87\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(618, '_site_transient_timeout_php_check_7e6c1a8668674f8cf640a3994d949207', '1582815658', 'no'),
(619, '_site_transient_php_check_7e6c1a8668674f8cf640a3994d949207', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(658, '_site_transient_timeout_theme_roots', '1582538384', 'no'),
(659, '_site_transient_theme_roots', 'a:6:{s:39:\"clean-wp-template/your-clean-template-3\";s:7:\"/themes\";s:51:\"clean-wp-template/your-clean-template-3_uncommented\";s:7:\"/themes\";s:7:\"mytheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(660, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1582536588;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(661, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582536590;s:7:\"checked\";a:6:{s:39:\"clean-wp-template/your-clean-template-3\";s:3:\"3.0\";s:51:\"clean-wp-template/your-clean-template-3_uncommented\";s:3:\"3.0\";s:7:\"mytheme\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(662, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1582536592;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:25:\"cuf-plugin/cuf-plugin.php\";s:49:\"Версия плагина, например 1.0\";s:55:\"custom-user-fields-plugin/custom-user-fields-plugin.php\";s:49:\"Версия плагина, например 2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-06-04 21:57:16\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1580134778:1'),
(6, 7, '_edit_lock', '1580138405:1'),
(9, 9, '_edit_lock', '1580138424:1'),
(12, 11, '_edit_lock', '1580468704:1'),
(15, 13, '_edit_lock', '1580138707:1'),
(16, 13, '_wp_trash_meta_status', 'publish'),
(17, 13, '_wp_trash_meta_time', '1580138752'),
(18, 14, '_edit_lock', '1580139297:1'),
(19, 15, '_edit_lock', '1580463079:1'),
(26, 14, '_wp_trash_meta_status', 'publish'),
(27, 14, '_wp_trash_meta_time', '1580139299'),
(28, 21, '_edit_lock', '1580463071:1'),
(33, 26, '_wp_attached_file', '2020/01/WordPress-logotype-wmark.png'),
(34, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:36:\"2020/01/WordPress-logotype-wmark.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"WordPress-logotype-wmark-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"WordPress-logotype-wmark-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"WordPress-logotype-wmark-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 34, '_wp_attached_file', '2020/01/ava.jpg'),
(46, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:1000;s:4:\"file\";s:15:\"2020/01/ava.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ava-198x300.jpg\";s:5:\"width\";i:198;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ava-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 35, '_wp_attached_file', '2020/01/download-e1580205066538.jpeg'),
(48, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:143;s:4:\"file\";s:36:\"2020/01/download-e1580205066538.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"download-300x122.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"download-150x143.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 36, '_wp_attached_file', '2020/01/wix-konstruktor-saytov.jpg'),
(50, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:880;s:6:\"height\";i:495;s:4:\"file\";s:34:\"2020/01/wix-konstruktor-saytov.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"wix-konstruktor-saytov-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"wix-konstruktor-saytov-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"wix-konstruktor-saytov-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 35, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:351;s:6:\"height\";i:143;s:4:\"file\";s:13:\"download.jpeg\";}}'),
(52, 35, '_edit_lock', '1580205015:1'),
(53, 35, '_edit_last', '1'),
(54, 41, '_menu_item_type', 'post_type'),
(55, 41, '_menu_item_menu_item_parent', '0'),
(56, 41, '_menu_item_object_id', '2'),
(57, 41, '_menu_item_object', 'page'),
(58, 41, '_menu_item_target', ''),
(59, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 41, '_menu_item_xfn', ''),
(61, 41, '_menu_item_url', ''),
(63, 42, '_wp_trash_meta_status', 'publish'),
(64, 42, '_wp_trash_meta_time', '1580380301'),
(65, 43, '_wp_attached_file', '2020/01/cropped-WordPress-logotype-wmark.png'),
(66, 43, '_wp_attachment_context', 'site-icon'),
(67, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:44:\"2020/01/cropped-WordPress-logotype-wmark.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"cropped-WordPress-logotype-wmark-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"cropped-WordPress-logotype-wmark-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:44:\"cropped-WordPress-logotype-wmark-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:44:\"cropped-WordPress-logotype-wmark-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:44:\"cropped-WordPress-logotype-wmark-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:42:\"cropped-WordPress-logotype-wmark-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 44, '_wp_trash_meta_status', 'publish'),
(69, 44, '_wp_trash_meta_time', '1580380336'),
(70, 45, '_wp_trash_meta_status', 'publish'),
(71, 45, '_wp_trash_meta_time', '1580381044'),
(72, 2, '_edit_lock', '1582279133:1'),
(73, 1, '_edit_lock', '1581168590:1'),
(76, 51, '_wp_trash_meta_status', 'publish'),
(77, 51, '_wp_trash_meta_time', '1581168777'),
(78, 55, '_edit_lock', '1581604994:1'),
(79, 56, '_menu_item_type', 'post_type'),
(80, 56, '_menu_item_menu_item_parent', '0'),
(81, 56, '_menu_item_object_id', '55'),
(82, 56, '_menu_item_object', 'page'),
(83, 56, '_menu_item_target', ''),
(84, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 56, '_menu_item_xfn', ''),
(86, 56, '_menu_item_url', ''),
(87, 3, '_edit_lock', '1581605069:1'),
(88, 62, '_wp_trash_meta_status', 'publish'),
(89, 62, '_wp_trash_meta_time', '1581606504'),
(90, 63, '_wp_trash_meta_status', 'publish'),
(91, 63, '_wp_trash_meta_time', '1581606520'),
(92, 64, '_edit_lock', '1582023009:1'),
(93, 55, '_wp_trash_meta_status', 'publish'),
(94, 55, '_wp_trash_meta_time', '1582023161'),
(95, 55, '_wp_desired_post_slug', 'users-profiles'),
(96, 64, '_wp_trash_meta_status', 'draft'),
(97, 64, '_wp_trash_meta_time', '1582023171'),
(98, 64, '_wp_desired_post_slug', ''),
(99, 70, '_menu_item_type', 'post_type'),
(100, 70, '_menu_item_menu_item_parent', '0'),
(101, 70, '_menu_item_object_id', '69'),
(102, 70, '_menu_item_object', 'page'),
(103, 70, '_menu_item_target', ''),
(104, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 70, '_menu_item_xfn', ''),
(106, 70, '_menu_item_url', ''),
(107, 69, '_edit_lock', '1582274932:1'),
(108, 72, '_menu_item_type', 'post_type'),
(109, 72, '_menu_item_menu_item_parent', '0'),
(110, 72, '_menu_item_object_id', '71'),
(111, 72, '_menu_item_object', 'page'),
(112, 72, '_menu_item_target', ''),
(113, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 72, '_menu_item_xfn', ''),
(115, 72, '_menu_item_url', ''),
(116, 71, '_edit_lock', '1582274964:1'),
(117, 21, '_wp_trash_meta_status', 'publish'),
(118, 21, '_wp_trash_meta_time', '1582275042'),
(119, 21, '_wp_desired_post_slug', 'list-post'),
(120, 15, '_wp_trash_meta_status', 'publish'),
(121, 15, '_wp_trash_meta_time', '1582275042'),
(122, 15, '_wp_desired_post_slug', 'post'),
(123, 11, '_wp_trash_meta_status', 'publish'),
(124, 11, '_wp_trash_meta_time', '1582275042'),
(125, 11, '_wp_desired_post_slug', 'post-4'),
(126, 9, '_wp_trash_meta_status', 'publish'),
(127, 9, '_wp_trash_meta_time', '1582275042'),
(128, 9, '_wp_desired_post_slug', 'post-3'),
(129, 7, '_wp_trash_meta_status', 'publish'),
(130, 7, '_wp_trash_meta_time', '1582275042'),
(131, 7, '_wp_desired_post_slug', 'post-2'),
(132, 5, '_wp_trash_meta_status', 'publish'),
(133, 5, '_wp_trash_meta_time', '1582275042'),
(134, 5, '_wp_desired_post_slug', 'post-1'),
(135, 1, '_wp_trash_meta_status', 'publish'),
(136, 1, '_wp_trash_meta_time', '1582275042'),
(137, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(138, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-27 17:19:56', '2020-01-27 14:19:56', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-27 17:19:56', '2020-01-27 14:19:56', '<!-- wp:paragraph -->\n<p>[users_list] </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'All users list', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-02-21 12:52:32', '2020-02-21 09:52:32', '', 0, 'http://wordpressru.com/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-27 17:19:56', '2020-01-27 14:19:56', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://wordpressru.com/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-01-27 17:19:56', '2020-01-27 14:19:56', '', 0, 'http://wordpressru.com/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-01-27 17:21:55', '2020-01-27 14:21:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 1', '', 'trash', 'open', 'open', '', 'post-1__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2020-01-27 17:21:55', '2020-01-27 14:21:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-27 17:21:55', '2020-01-27 14:21:55', '', 5, 'http://wordpressru.com/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2020-01-27 18:22:20', '2020-01-27 15:22:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 2', '', 'trash', 'open', 'open', '', 'post-2__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2020-01-27 18:22:20', '2020-01-27 15:22:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 2', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-01-27 18:22:20', '2020-01-27 15:22:20', '', 7, 'http://wordpressru.com/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2020-01-27 18:22:45', '2020-01-27 15:22:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 3', '', 'trash', 'open', 'open', '', 'post-3__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=9', 0, 'post', '', 0),
(10, 1, '2020-01-27 18:22:45', '2020-01-27 15:22:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 3', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-01-27 18:22:45', '2020-01-27 15:22:45', '', 9, 'http://wordpressru.com/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2020-01-27 18:22:57', '2020-01-27 15:22:57', '<!-- wp:html -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\n<!--more-->\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'POST 4', '', 'trash', 'open', 'open', '', 'post-4__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=11', 0, 'post', '', 0),
(12, 1, '2020-01-27 18:22:57', '2020-01-27 15:22:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'POST 4', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-01-27 18:22:57', '2020-01-27 15:22:57', '', 11, 'http://wordpressru.com/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2020-01-27 18:25:52', '2020-01-27 15:25:52', '{\n    \"blogname\": {\n        \"value\": \"DevIT test\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 15:25:06\"\n    },\n    \"blogdescription\": {\n        \"value\": \" Internship test assignment\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 15:25:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0434c291-1f14-4bbf-8683-7c01be55c658', '', '', '2020-01-27 18:25:52', '2020-01-27 15:25:52', '', 0, 'http://wordpressru.com/wordpress/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2020-01-27 18:34:59', '2020-01-27 15:34:59', '{\n    \"twentytwenty::cover_template_overlay_background_color\": {\n        \"value\": \"#dd9933\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-27 15:31:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '94083794-7571-464b-97c1-897429e82383', '', '', '2020-01-27 18:34:59', '2020-01-27 15:34:59', '', 0, 'http://wordpressru.com/wordpress/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2020-01-27 18:31:34', '2020-01-27 15:31:34', '<!-- wp:paragraph -->\n<p>First block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Second block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Such a <a href=\"http://code.mu\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"new (откроется в новой вкладке)\">new</a> BLOCK!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Third block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fourth block for this post!</p>\n<!-- /wp:paragraph -->', 'post !!!!', '', 'trash', 'open', 'open', '', 'post__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=15', 0, 'post', '', 0),
(16, 1, '2020-01-27 18:31:34', '2020-01-27 15:31:34', '<!-- wp:paragraph -->\n<p><br>internship test assignment</p>\n<!-- /wp:paragraph -->', 'post !!!!', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-01-27 18:31:34', '2020-01-27 15:31:34', '', 15, 'http://wordpressru.com/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2020-01-27 18:34:28', '2020-01-27 15:34:28', '<!-- wp:paragraph -->\n<p>First block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Second block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Third block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fourth block for this post!</p>\n<!-- /wp:paragraph -->', 'post !!!!', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-01-27 18:34:28', '2020-01-27 15:34:28', '', 15, 'http://wordpressru.com/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2020-01-27 18:34:54', '2020-01-27 15:34:54', '<!-- wp:paragraph -->\n<p>First block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Second block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Such a new BLOCK!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Third block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fourth block for this post!</p>\n<!-- /wp:paragraph -->', 'post !!!!', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-01-27 18:34:54', '2020-01-27 15:34:54', '', 15, 'http://wordpressru.com/wordpress/?p=18', 0, 'revision', '', 0),
(20, 1, '2020-01-27 18:47:51', '2020-01-27 15:47:51', '<!-- wp:paragraph -->\n<p>First block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Second block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Such a <a href=\"http://code.mu\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"new (откроется в новой вкладке)\">new</a> BLOCK!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Third block for this post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fourth block for this post!</p>\n<!-- /wp:paragraph -->', 'post !!!!', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-01-27 18:47:51', '2020-01-27 15:47:51', '', 15, 'http://wordpressru.com/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2020-01-28 12:03:06', '2020-01-28 09:03:06', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p>Настоящий друг — это человек, который выскажет тебе в глаза все, что о тебе думает, а всем скажет, что ты — замечательный человек.</p><cite>—&nbsp;&nbsp;Омар Хайям</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur debitis doloribus ea ex exercitationem expedita illum odio officiis, quaerat quos repellendus rerum soluta, suscipit ullam vel velit voluptate. Quam, tempore.', 'trash', 'open', 'open', '', 'list-post__trashed', '', '', '2020-02-21 11:50:42', '2020-02-21 08:50:42', '', 0, 'http://wordpressru.com/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2020-01-28 12:03:06', '2020-01-28 09:03:06', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:03:06', '2020-01-28 09:03:06', '', 21, 'http://wordpressru.com/wordpress/?p=22', 0, 'revision', '', 0),
(24, 1, '2020-01-28 12:16:19', '2020-01-28 09:16:19', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://www.google.com/url?sa=i&amp;source=images&amp;cd=&amp;ved=2ahUKEwi8oqPw66XnAhWQlosKHcXMBYMQjRx6BAgBEAQ&amp;url=https%3A%2F%2Fru.wordpress.org%2F&amp;psig=AOvVaw0n8UD54gmij1paA6fvg9Yn&amp;ust=1580285355268861\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:16:19', '2020-01-28 09:16:19', '', 21, 'http://wordpressru.com/wordpress/?p=24', 0, 'revision', '', 0),
(26, 1, '2020-01-28 12:26:18', '2020-01-28 09:26:18', '', 'WordPress-logotype-wmark', '', 'inherit', 'open', 'closed', '', 'wordpress-logotype-wmark', '', '', '2020-01-28 12:26:18', '2020-01-28 09:26:18', '', 21, 'http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2020-01-28 12:26:23', '2020-01-28 09:26:23', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\"/></figure>\n<!-- /wp:image -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:26:23', '2020-01-28 09:26:23', '', 21, 'http://wordpressru.com/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2020-01-28 12:28:10', '2020-01-28 09:28:10', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></figure>\n<!-- /wp:image -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:28:10', '2020-01-28 09:28:10', '', 21, 'http://wordpressru.com/wordpress/?p=28', 0, 'revision', '', 0),
(30, 1, '2020-01-28 12:33:12', '2020-01-28 09:33:12', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:33:12', '2020-01-28 09:33:12', '', 21, 'http://wordpressru.com/wordpress/?p=30', 0, 'revision', '', 0),
(32, 1, '2020-01-28 12:42:37', '2020-01-28 09:42:37', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:42:37', '2020-01-28 09:42:37', '', 21, 'http://wordpressru.com/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2020-01-28 12:43:02', '2020-01-28 09:43:02', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 12:43:02', '2020-01-28 09:43:02', '', 21, 'http://wordpressru.com/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2020-01-28 12:44:41', '2020-01-28 09:44:41', '', 'ava', '', 'inherit', 'open', 'closed', '', 'ava', '', '', '2020-01-28 12:44:41', '2020-01-28 09:44:41', '', 0, 'http://wordpressru.com/wordpress/wp-content/uploads/2020/01/ava.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-01-28 12:44:41', '2020-01-28 09:44:41', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2020-01-28 12:51:50', '2020-01-28 09:51:50', '', 0, 'http://wordpressru.com/wordpress/wp-content/uploads/2020/01/download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-01-28 12:44:41', '2020-01-28 09:44:41', '', 'wix-konstruktor-saytov', '', 'inherit', 'open', 'closed', '', 'wix-konstruktor-saytov', '', '', '2020-01-28 12:44:41', '2020-01-28 09:44:41', '', 0, 'http://wordpressru.com/wordpress/wp-content/uploads/2020/01/wix-konstruktor-saytov.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-01-28 13:10:15', '2020-01-28 10:10:15', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p>Настоящий друг — это человек, который выскажет тебе в глаза все, что о тебе думает, а всем скажет, что ты — замечательный человек.</p><cite>—  Омар Хайям</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-28 13:10:15', '2020-01-28 10:10:15', '', 21, 'http://wordpressru.com/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2020-01-28 13:17:37', '2020-01-28 10:17:37', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p>Настоящий друг — это человек, который выскажет тебе в глаза все, что о тебе думает, а всем скажет, что ты — замечательный человек.</p><cite>—&nbsp;&nbsp;Омар Хайям</cite></blockquote>\n<!-- /wp:quote -->', 'LIST Post!', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2020-01-28 13:17:37', '2020-01-28 10:17:37', '', 21, 'http://wordpressru.com/wordpress/?p=39', 0, 'revision', '', 0),
(41, 1, '2020-01-30 13:10:16', '2020-01-30 10:10:16', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-01-30 13:13:46', '2020-01-30 10:13:46', '', 0, 'http://wordpressru.com/wordpress/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2020-01-30 13:31:41', '2020-01-30 10:31:41', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-30 10:31:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c02bbc90-272a-409b-8360-3704abf4e71c', '', '', '2020-01-30 13:31:41', '2020-01-30 10:31:41', '', 0, 'http://wordpressru.com/wordpress/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2020-01-30 13:32:10', '2020-01-30 10:32:10', 'http://wordpressru.com/wordpress/wp-content/uploads/2020/01/cropped-WordPress-logotype-wmark.png', 'cropped-WordPress-logotype-wmark.png', '', 'inherit', 'open', 'closed', '', 'cropped-wordpress-logotype-wmark-png', '', '', '2020-01-30 13:32:10', '2020-01-30 10:32:10', '', 0, 'http://wordpressru.com/wordpress/wp-content/uploads/2020/01/cropped-WordPress-logotype-wmark.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2020-01-30 13:32:16', '2020-01-30 10:32:16', '{\n    \"site_icon\": {\n        \"value\": 43,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-30 10:32:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10642b36-d0aa-4ee8-9e2a-db9bcb96b1c7', '', '', '2020-01-30 13:32:16', '2020-01-30 10:32:16', '', 0, 'http://wordpressru.com/wordpress/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2020-01-30 13:44:04', '2020-01-30 10:44:04', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-30 10:44:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e621fb4-52d1-442f-92bb-e66738928123', '', '', '2020-01-30 13:44:04', '2020-01-30 10:44:04', '', 0, 'http://wordpressru.com/wordpress/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2020-01-31 12:16:07', '2020-01-31 09:16:07', '<!-- wp:list -->\n<ul><li>fist list</li><li>second</li><li>third and...</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":26,\"width\":227,\"height\":227,\"sizeSlug\":\"large\",\"linkDestination\":\"media\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\"><img src=\"http://wordpressru.com/wordpress/wp-content/uploads/2020/01/WordPress-logotype-wmark.png\" alt=\"\" class=\"wp-image-26\" width=\"227\" height=\"227\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p>Настоящий друг — это человек, который выскажет тебе в глаза все, что о тебе думает, а всем скажет, что ты — замечательный человек.</p><cite>—&nbsp;&nbsp;Омар Хайям</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'LIST Post!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur debitis doloribus ea ex exercitationem expedita illum odio officiis, quaerat quos repellendus rerum soluta, suscipit ullam vel velit voluptate. Quam, tempore.', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-01-31 12:16:07', '2020-01-31 09:16:07', '', 21, 'http://wordpressru.com/wordpress/?p=46', 0, 'revision', '', 0),
(48, 1, '2020-01-31 12:40:32', '2020-01-31 09:40:32', '<!-- wp:html -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>\n<!--more-->\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'POST 4', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-01-31 12:40:32', '2020-01-31 09:40:32', '', 11, 'http://wordpressru.com/wordpress/?p=48', 0, 'revision', '', 0),
(50, 1, '2020-02-08 16:31:43', '2020-02-08 13:31:43', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-02-08 16:31:43', '2020-02-08 13:31:43', '', 1, 'http://wordpressru.com/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2020-02-08 16:32:57', '2020-02-08 13:32:57', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-08 13:32:57\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-08 13:32:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a7a33e2-4c23-4d37-94ea-4ca3a54b4dbc', '', '', '2020-02-08 16:32:57', '2020-02-08 13:32:57', '', 0, 'http://wordpressru.com/wordpress/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2020-02-08 16:33:37', '2020-02-08 13:33:37', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://wordpressru.com/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-08 16:33:37', '2020-02-08 13:33:37', '', 2, 'http://wordpressru.com/wordpress/?p=52', 0, 'revision', '', 0),
(54, 1, '2020-02-10 16:17:54', '2020-02-10 13:17:54', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://wordpressru.com/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[misha]</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-10 16:17:54', '2020-02-10 13:17:54', '', 2, 'http://wordpressru.com/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2020-02-13 17:40:14', '2020-02-13 14:40:14', '<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->', 'Users profiles', '', 'trash', 'closed', 'closed', '', 'users-profiles__trashed', '', '', '2020-02-18 13:52:41', '2020-02-18 10:52:41', '', 0, 'http://wordpressru.com/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 1, '2020-02-13 17:40:14', '2020-02-13 14:40:14', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2020-02-13 17:40:14', '2020-02-13 14:40:14', '', 0, 'http://wordpressru.com/wordpress/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2020-02-13 17:40:14', '2020-02-13 14:40:14', '<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->', 'Users profiles', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-02-13 17:40:14', '2020-02-13 14:40:14', '', 55, 'http://wordpressru.com/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2020-02-13 17:40:27', '2020-02-13 14:40:27', '<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->', 'Users profiles', '', 'inherit', 'closed', 'closed', '', '55-autosave-v1', '', '', '2020-02-13 17:40:27', '2020-02-13 14:40:27', '', 55, 'http://wordpressru.com/wordpress/?p=58', 0, 'revision', '', 0),
(60, 1, '2020-02-13 17:49:19', '2020-02-13 14:49:19', '<!-- wp:paragraph -->\n<p>[users_list]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-13 17:49:19', '2020-02-13 14:49:19', '', 2, 'http://wordpressru.com/wordpress/?p=60', 0, 'revision', '', 0),
(62, 1, '2020-02-13 18:08:24', '2020-02-13 15:08:24', '{\n    \"page_on_front\": {\n        \"value\": \"55\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-13 15:08:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ba69709f-3bb2-4e88-9c7d-7e41572b3d0b', '', '', '2020-02-13 18:08:24', '2020-02-13 15:08:24', '', 0, 'http://wordpressru.com/wordpress/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2020-02-13 18:08:40', '2020-02-13 15:08:40', '{\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-13 15:08:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9257661-f3c5-4f53-acff-0aea17fd7e4b', '', '', '2020-02-13 18:08:40', '2020-02-13 15:08:40', '', 0, 'http://wordpressru.com/wordpress/?p=63', 0, 'customize_changeset', '', 0),
(64, 1, '2020-02-18 13:52:51', '2020-02-18 10:52:51', '', 'User profile', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-02-18 13:52:51', '2020-02-18 10:52:51', '', 0, 'http://wordpressru.com/wordpress/?page_id=64', 0, 'page', '', 0),
(65, 1, '2020-02-18 13:52:51', '2020-02-18 10:52:51', '', 'User profile', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-02-18 13:52:51', '2020-02-18 10:52:51', '', 64, 'http://wordpressru.com/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2020-02-18 13:56:11', '2020-02-18 10:56:11', '<!-- wp:paragraph -->\n<p><a href=\"http://wordpressru.com/wordpress/wp-content/themes/mytheme/user-profile.php\">[users_list]</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-18 13:56:11', '2020-02-18 10:56:11', '', 2, 'http://wordpressru.com/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2020-02-18 13:57:36', '2020-02-18 10:57:36', '<!-- wp:paragraph -->\n<p>[users_list] <a href=\"http://wordpressru.com/wordpress/wp-content/themes/mytheme/user-profile.php\">user</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-18 13:57:36', '2020-02-18 10:57:36', '', 2, 'http://wordpressru.com/wordpress/?p=67', 0, 'revision', '', 0),
(69, 1, '2020-02-18 14:19:19', '2020-02-18 11:19:19', 'Контент страницы', 'Созданная при активации темы страница', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%bd%d0%b0%d1%8f-%d0%bf%d1%80%d0%b8-%d0%b0%d0%ba%d1%82%d0%b8%d0%b2%d0%b0%d1%86%d0%b8%d0%b8-%d1%82%d0%b5%d0%bc%d1%8b-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86', '', '', '2020-02-18 14:19:19', '2020-02-18 11:19:19', '', 0, 'http://wordpressru.com/wordpress/?page_id=69', 0, 'page', '', 0),
(70, 1, '2020-02-18 14:19:19', '2020-02-18 11:19:19', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2020-02-18 14:19:19', '2020-02-18 11:19:19', '', 0, 'http://wordpressru.com/wordpress/?p=70', 3, 'nav_menu_item', '', 0),
(71, 1, '2020-02-18 14:26:35', '2020-02-18 11:26:35', '[user_profile]', 'User profile page', '', 'publish', 'closed', 'closed', '', 'user-profile-page', '', '', '2020-02-18 14:26:35', '2020-02-18 11:26:35', '', 0, 'http://wordpressru.com/wordpress/?page_id=71', 0, 'page', '', 0),
(72, 1, '2020-02-18 14:26:35', '2020-02-18 11:26:35', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2020-02-18 14:26:35', '2020-02-18 11:26:35', '', 0, 'http://wordpressru.com/wordpress/?p=72', 4, 'nav_menu_item', '', 0),
(73, 1, '2020-02-21 12:42:29', '2020-02-21 09:42:29', '<!-- wp:paragraph -->\n<p>[users_list] </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'All users page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-21 12:42:29', '2020-02-21 09:42:29', '', 2, 'http://wordpressru.com/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2020-02-21 12:46:19', '2020-02-21 09:46:19', '<!-- wp:paragraph -->\n<p>[users_list] </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'All users list', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-21 12:46:19', '2020-02-21 09:46:19', '', 2, 'http://wordpressru.com/wordpress/?p=74', 0, 'revision', '', 0),
(76, 1, '2020-02-21 12:51:09', '2020-02-21 09:51:09', '<!-- wp:paragraph -->\n<p>[users_list] </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'All users', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-21 12:51:09', '2020-02-21 09:51:09', '', 2, 'http://wordpressru.com/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2020-02-21 12:52:29', '2020-02-21 09:52:29', '<!-- wp:paragraph -->\n<p>[users_list] </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'All users list', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-21 12:52:29', '2020-02-21 09:52:29', '', 2, 'http://wordpressru.com/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2020-02-21 12:53:33', '2020-02-21 09:53:33', '<!-- wp:paragraph -->\n<p>[users_list] </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'All users list', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2020-02-21 12:53:33', '2020-02-21 09:53:33', '', 2, 'http://wordpressru.com/wordpress/?p=78', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(7, 1, 0),
(9, 1, 0),
(11, 1, 0),
(15, 1, 0),
(21, 1, 0),
(41, 2, 0),
(56, 2, 0),
(70, 2, 0),
(72, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Rostislav'),
(3, 1, 'last_name', 'Ruts'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"fff0b87902f040de10d0ba78b6a59e14ae5d8b53c04aea73390282b45a99e87f\";a:4:{s:10:\"expiration\";i:1582299052;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36\";s:5:\"login\";i:1582126252;}s:64:\"58cf1e989e68826dd83158d124af0909e0d00c0a017c86f81a5e4d475d905e47\";a:4:{s:10:\"expiration\";i:1582358976;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36\";s:5:\"login\";i:1582186176;}s:64:\"b82e885a9e9de9295c4e1c430c3c4ce163acbc6e99ae94b6989638a4c460f271\";a:4:{s:10:\"expiration\";i:1582383014;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36\";s:5:\"login\";i:1582210214;}s:64:\"eddfc6558c226b11999150b17a8aa60271630f446322eb6874202b35304d8b65\";a:4:{s:10:\"expiration\";i:1582444189;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36\";s:5:\"login\";i:1582271389;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '59'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1580193610'),
(40, 1, 'user_accaunt', 'shdhsdh'),
(170, 1, 'address', 'JsQ8917ljQC5QMY8ChkaXeJ0mI2aSomK2b08iOojDfYRWx/MWG112CCS9HL+li3gg29vAUiFfR0n\r\n8nuUtXhypw==\r\n'),
(171, 1, 'telephone', 'W3QX707Asc3QS9t0HzZSC98bU7+Y4y/7zmzM/1/KxZ0xx+XQyGYjyDcjHc7LdqqfPjI7uHAhY9TJ\r\nMw8FhTHhZw==\r\n'),
(172, 1, 'gender', 'oLNnS8jH+9t5suQ3AT+mPPyBdMvY6aka59WsipDnWTNArXdNWK0+kSY+V1EjXR8e8SEMV+/QH48C\r\nB6zTOpJ1HQ==\r\n'),
(173, 1, 'status', 'JyIiROe1OX4TChqPq0Yph/FQM6DGW3JOVxV9p04imHhnoXI7JNauLJRFl2PRjlfTDTLcJ4rTstCP\r\na6ffhgK59A==\r\n'),
(174, 10, 'nickname', 'Sarah'),
(175, 10, 'first_name', 'Sarah'),
(176, 10, 'last_name', 'Doe'),
(177, 10, 'description', ''),
(178, 10, 'rich_editing', 'true'),
(179, 10, 'syntax_highlighting', 'true'),
(180, 10, 'comment_shortcuts', 'false'),
(181, 10, 'admin_color', 'fresh'),
(182, 10, 'use_ssl', '0'),
(183, 10, 'show_admin_bar_front', 'true'),
(184, 10, 'locale', ''),
(185, 10, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(186, 10, 'wp_user_level', '0'),
(187, 10, 'address', 'DeHjTQoL6Am+6rBuwxdBjg1/2UkT3sSrcHgoOygjM8+0NCE8SOz/vRPbaLfng6FsX3hY5FA9z0mN\r\nB/x+2+Ssrg==\r\n'),
(188, 10, 'telephone', 'h7P0VhtFOEkP8MewmMWso/SaTiJUa8GxOgOmTElODd+St+orGO0w6xnkn4j6lM8S9H500VmY8O83\r\nSzhoFfcQeQ==\r\n'),
(189, 10, 'gender', 'lP0O5A+Bx9UmK0iDNiEGtrXMrQBxGtjtGctkQ239bN5lrfSOmdRsulH3ct6Zdsz6wAtm19t43ze0\r\nFOxqJuk1hg==\r\n'),
(190, 10, 'status', 'PPR+v05h4zvTVhMGYbXmxYkztP/sS1JZRviiRX7qTJKeCIAa+4lNHAJoUUs8SeXd/2WpIF8dcrYD\r\ndiI16nBmTQ==\r\n'),
(191, 10, 'dismissed_wp_pointers', ''),
(192, 11, 'nickname', 'Gary'),
(193, 11, 'first_name', 'Gary'),
(194, 11, 'last_name', 'User'),
(195, 11, 'description', ''),
(196, 11, 'rich_editing', 'true'),
(197, 11, 'syntax_highlighting', 'true'),
(198, 11, 'comment_shortcuts', 'false'),
(199, 11, 'admin_color', 'fresh'),
(200, 11, 'use_ssl', '0'),
(201, 11, 'show_admin_bar_front', 'true'),
(202, 11, 'locale', ''),
(203, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(204, 11, 'wp_user_level', '0'),
(205, 11, 'address', 'fVcLAq9j3y8L0WZm49OqDHQauMpfS6QlSRefbZzSvSQ/4h0KIhlaebUGfn1aMur8D3LIVncrMksS\r\n3vBPxGZoOw==\r\n'),
(206, 11, 'telephone', 'xnaWSYnOHS+GkHZf7Xgf2SvnSMskjcKKuCAF5iW+NYdZfX+uqi+a5Iyj17GPD3lCQnWjSO1q8bOZ\r\nVqxhNcfRxQ==\r\n'),
(207, 11, 'gender', 'JUTaST5lVektOBoecX50KuC32kNzmnWSHLOuXZEQcGXLVj9d+vNzLx67ReR6WiS1BSpYNAtb4oKO\r\nbou/NBd2YQ==\r\n'),
(208, 11, 'status', 'c7kGS19TVDcJF1jMCeaxZr1kVVyaXVr02Z4e3D3vLAnnlOeoddSjrfZ7fmk9BHFdXkvOMNNbdDvB\r\nwzehZX+u3w==\r\n'),
(209, 11, 'dismissed_wp_pointers', ''),
(210, 12, 'nickname', 'Wed'),
(211, 12, 'first_name', 'Reg'),
(212, 12, 'last_name', 'Dec'),
(213, 12, 'description', ''),
(214, 12, 'rich_editing', 'true'),
(215, 12, 'syntax_highlighting', 'true'),
(216, 12, 'comment_shortcuts', 'false'),
(217, 12, 'admin_color', 'fresh'),
(218, 12, 'use_ssl', '0'),
(219, 12, 'show_admin_bar_front', 'true'),
(220, 12, 'locale', ''),
(221, 12, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(222, 12, 'wp_user_level', '0'),
(223, 12, 'address', 'cp6rxuXUqqDm7hbrzhQPXDNxwvFoj7dUWFVRkwBw4itOGxf6kGm0AvivnpYEQWRkXNEtmPlHp+di\r\nIcZg3NUvew==\r\n'),
(224, 12, 'telephone', 'AKZyFtA1/F1jqZFMvYSn5U43XMtYVgtgHcx3Z+OXKoGBG1dVaYwcExcqioCV05JrsXtstRpnR+E2\r\n1CuiseSDag==\r\n'),
(225, 12, 'gender', 'pJfaQuEuCL/D7wThbRJOuFO3GNGASffCm1aUIYWUeTb3NeuKwucvZJNlg8s7+tSiEM8n8lyiI6en\r\nVbbEF7PLHw==\r\n'),
(226, 12, 'status', 'YRnA2sBIBi0RAhT08YxMxDbx7V0bUv84i4VCA7AnFzURIN5zAub5WuJzXOBa0wpbTwK6FFRbbeNR\r\nlBvHEgb+2Q==\r\n'),
(227, 12, 'dismissed_wp_pointers', ''),
(228, 13, 'nickname', 'Ola'),
(229, 13, 'first_name', 'Olga'),
(230, 13, 'last_name', 'Godova'),
(231, 13, 'description', ''),
(232, 13, 'rich_editing', 'true'),
(233, 13, 'syntax_highlighting', 'true'),
(234, 13, 'comment_shortcuts', 'false'),
(235, 13, 'admin_color', 'fresh'),
(236, 13, 'use_ssl', '0'),
(237, 13, 'show_admin_bar_front', 'true'),
(238, 13, 'locale', ''),
(239, 13, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(240, 13, 'wp_user_level', '0'),
(241, 13, 'address', 'bbWogshDjKEbtHClTuSku+d27dR+GALXVIqI+wJ1uDJ/odkaOViNwBdHfPe8kGHMwrR/3fYAME9F\r\nijY+r6XxoQ==\r\n'),
(242, 13, 'telephone', 'KPMbGh7ndrski53yuBEEz/42qcPkaXoSV2KowTCG5N87NXtUF1uwGgh+k1DsGo5ftsFiZamqjwMf\r\nOyZhIatznQ==\r\n'),
(243, 13, 'gender', 'b/FzoRX4aRLcYFqHq4gZhj7uZbAZcvNgj66ryAEq8NR+iHk2o6M6UfFrU9BJ+9jLfqdhviC9Lm5j\r\nBgHSARVrvA==\r\n'),
(244, 13, 'status', 'wTfbvdcabPzSID5omSHjjWWVdITgc05aQkSTT7seZ8ZM8r0MaEqVgeamti8J4ffy9nkJDTzY9fye\r\np9fTEIxZJg==\r\n'),
(245, 13, 'dismissed_wp_pointers', ''),
(246, 14, 'nickname', 'New'),
(247, 14, 'first_name', 'John'),
(248, 14, 'last_name', 'Snow'),
(249, 14, 'description', ''),
(250, 14, 'rich_editing', 'true'),
(251, 14, 'syntax_highlighting', 'true'),
(252, 14, 'comment_shortcuts', 'false'),
(253, 14, 'admin_color', 'fresh'),
(254, 14, 'use_ssl', '0'),
(255, 14, 'show_admin_bar_front', 'true'),
(256, 14, 'locale', ''),
(257, 14, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(258, 14, 'wp_user_level', '0'),
(259, 14, 'address', 'bngUVplGkZ3z1X3WIqrJG4Z5vJfJzR8bNAkNZkVGDx13RX3iawtlXTN/bf/XioNvt8/TD6+35Gdf\r\nTd+Mjxk2Bg==\r\n'),
(260, 14, 'telephone', 'R82vb30crXFgBzUiYV9iKyRn8B/XMyKah+mdlerhttIjGJdTfnYRA8mmdkqVPTdCL5uhFeqwLkbU\r\n+HGw7Ynzow==\r\n'),
(261, 14, 'gender', 'n5o1pegJ292gV5sRt/IG03HjhxmX1WQQYrE1vx4xBEn/OHf1HE2tFBGkEowCJDcrllZH4B1fEy+e\r\nGPVu11Mo1w==\r\n'),
(262, 14, 'status', 'ulqvxmfWHdjfVh7aaj2nV2+v6PwL5F0Xgp/wWbuF4aOaoRtbkXgGZBcW+L9eAbPMMhGprCrcbuXm\r\neQN1IbuIRQ==\r\n'),
(263, 14, 'dismissed_wp_pointers', ''),
(264, 15, 'nickname', 'Romik'),
(265, 15, 'first_name', 'Roman'),
(266, 15, 'last_name', 'Piece'),
(267, 15, 'description', ''),
(268, 15, 'rich_editing', 'true'),
(269, 15, 'syntax_highlighting', 'true'),
(270, 15, 'comment_shortcuts', 'false'),
(271, 15, 'admin_color', 'fresh'),
(272, 15, 'use_ssl', '0'),
(273, 15, 'show_admin_bar_front', 'true'),
(274, 15, 'locale', ''),
(275, 15, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(276, 15, 'wp_user_level', '0'),
(277, 15, 'address', 'AWi3jj/7pnl48e/PHbQzLYdVGdBCRZsFs/UqlkjfXkDYMFFAmtOhNvGYmIqccXnH4dRgEAwH8m8U\r\ntqE363nGHg==\r\n'),
(278, 15, 'telephone', 'Zi309P61MbMP/gcZlEefhoehZ8rxriXAnI6NVSrOxpv9RG/xQH1r603frt9bnrjFQ/UFUVLyUpTm\r\nCRkDILhySg==\r\n'),
(279, 15, 'gender', 'XPQQFnZSKnJTQH+Xb2xNlN5eRY8WQfIETJsy53lZSuksZKMEKpVKFttUkRUtcc1tminT4FY5KfXH\r\nB93rUtndmg==\r\n'),
(280, 15, 'status', 'LljhZl823nj0Ir4bP2sGt4441o4+7FqKiGVlQrE82W5u+TDR/T30Qqe02qsiU8KyDzoyAV975f7o\r\nHkvxMKIO2A==\r\n'),
(281, 15, 'dismissed_wp_pointers', ''),
(282, 16, 'nickname', 'Inna'),
(283, 16, 'first_name', 'Inna'),
(284, 16, 'last_name', 'Klopova'),
(285, 16, 'description', ''),
(286, 16, 'rich_editing', 'true'),
(287, 16, 'syntax_highlighting', 'true'),
(288, 16, 'comment_shortcuts', 'false'),
(289, 16, 'admin_color', 'fresh'),
(290, 16, 'use_ssl', '0'),
(291, 16, 'show_admin_bar_front', 'true'),
(292, 16, 'locale', ''),
(293, 16, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(294, 16, 'wp_user_level', '0'),
(295, 16, 'address', 'PkeFwh1vdy1pHcO+SKVLqnsDPp/3NM9z8Xy9t8YqkIoazg838sOkzXXsY8RRYm3cHT8Cs5jhq3f5\r\nAsIy2p0OBw==\r\n'),
(296, 16, 'telephone', 'xovrBRbam6wOG1h77yQrTfXEvDy4MxHw9oz/KJfdHmHHNqtq3WeEF+IIIy2ON314uDscAmHb8hXx\r\nCuN+whWOlQ==\r\n'),
(297, 16, 'gender', 'sq1SpKgOACOVJ2bVfhi7jBQLfb1+uTiepJXmFIImTL/zfrm3FTZ2cTUGmyygbLcYzkq/VF54/pDj\r\nX9uNI+pWdA==\r\n'),
(298, 16, 'status', 'kH/81v0F96sof39kqwgrMY83qhlyqs8lsSHvqnkjuhUZBkNGODcoPYBY58tOK0bMlJCS9fdmL4BI\r\ngbps7K4H+g==\r\n'),
(299, 16, 'dismissed_wp_pointers', ''),
(300, 17, 'nickname', 'Hello'),
(301, 17, 'first_name', 'Hello'),
(302, 17, 'last_name', 'Everybody'),
(303, 17, 'description', ''),
(304, 17, 'rich_editing', 'true'),
(305, 17, 'syntax_highlighting', 'true'),
(306, 17, 'comment_shortcuts', 'false'),
(307, 17, 'admin_color', 'fresh'),
(308, 17, 'use_ssl', '0'),
(309, 17, 'show_admin_bar_front', 'true'),
(310, 17, 'locale', ''),
(311, 17, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(312, 17, 'wp_user_level', '0'),
(313, 17, 'address', 'Te0x4IYO1FdhM/a43WfhHY8XLpPybNpSTRFIz1CwcKzOPd0d38pawQsTfEO56Y1gZHI4tGODABJs\r\nUfPcJKtPcQ==\r\n'),
(314, 17, 'telephone', 'eTEuHKAUyE56vOQjatXG2YgL/JU/EuhawLMXhEwfeoq6p4J/OR5Ib8jWKSYmqugra6TRtRIbjxqg\r\nj70t7z0h1g==\r\n'),
(315, 17, 'gender', 'd4j7R/2RY917/L7NNFjZolvDdIdNHmtRlKcRzjLzYD203iVn2cL4i5dtzU/3GxXEBAF9fbQgKnSj\r\nchTiCb/3tg==\r\n'),
(316, 17, 'status', 'DL8inDnY0RwhFug0QbV+JE0cwcbXJxYfaFoSBl+Wv8uEj1Y/zx1u0q7nHIEOKdCEuF3kenw4WnYE\r\nfFI2RDIeIQ==\r\n'),
(317, 17, 'dismissed_wp_pointers', ''),
(318, 18, 'nickname', 'Sam'),
(319, 18, 'first_name', 'Sam'),
(320, 18, 'last_name', 'Ho'),
(321, 18, 'description', ''),
(322, 18, 'rich_editing', 'true'),
(323, 18, 'syntax_highlighting', 'true'),
(324, 18, 'comment_shortcuts', 'false'),
(325, 18, 'admin_color', 'fresh'),
(326, 18, 'use_ssl', '0'),
(327, 18, 'show_admin_bar_front', 'true'),
(328, 18, 'locale', ''),
(329, 18, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(330, 18, 'wp_user_level', '0'),
(331, 18, 'address', 'ClnBoYPSJjgPu/yTeUTmWvuJT+RqTI4MSVHiMKD09eOrhIcJf+eflxkOfBMBGJw16CeAqLsDjqdn\r\nJSqLnAJG9A==\r\n'),
(332, 18, 'telephone', 'bC7zyBj6rvATBUvU/kICy0wfINfkMaRwY2/V7UD4snZTd93K8ynrkiSCy8vfH2fQ7/Le5/xJpMRp\r\n9uFFu6NDGQ==\r\n'),
(333, 18, 'gender', 'D5fQWB7N+zA2894cDGT/lLMf899MhNkQ7eE9hQDKxLw5ZoyjPId7h54U0YE8xzvu+GJqSrmJA+Xb\r\nS15974Q1hg==\r\n'),
(334, 18, 'status', 'hhZXzkDm+MWXJR9O5yKDz4cn6WLpViQnq/TXO0azQUf42Bn+8Rs4uu/jTC7iChKvh/8souhHDAXz\r\nGPxL5ooPJw==\r\n'),
(335, 18, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgUWJFAIBdEr1CyOEz84UaOHJyx8zt1', 'admin', 'fedevelopment91@gmail.com', '', '2020-01-27 14:19:56', '', 0, 'Rostislav Ruts'),
(10, 'Sarah', '$P$BLt6id8..Ka1qpFK0ch0TXTTThdRP./', 'sarah', 'sa@gmail.com', '', '2020-02-21 19:29:19', '1582313359:$P$Bx4Z/mn1X./aIY05VDKxHJbz3zoiW/.', 0, 'Sarah Doe'),
(11, 'Gary', '$P$Bh8CsSnXAYp3xjodCH6PT13N.8TuYS.', 'gary', 'sffa@gmail.com', '', '2020-02-21 19:34:14', '1582313654:$P$Bv5THx.66Vi/I56Q6sQhxF66TqlQ2U/', 0, 'Gary User'),
(12, 'Wed', '$P$BtB.h.3SNrQ/6.e0dSYF0iGiQa/bSD.', 'wed', 'RD@gmail.com', '', '2020-02-21 19:35:55', '1582313755:$P$BVifObHlSaeFnKlmJMHoUb74zATnky.', 0, 'Reg Dec'),
(13, 'Ola', '$P$BeBZ/TsDRcCLv8lluq2RerEb/sK4S/0', 'ola', 'ol@sat.com', '', '2020-02-21 19:38:35', '1582313915:$P$BouM5whNCjOLMPFoQMuhN4BYQ6rx5V.', 0, 'Olga Godova'),
(14, 'New', '$P$Brbyn9c3aKpys3XbeNYLXNxwjO1uFs/', 'new', 'new@go.com', '', '2020-02-21 19:40:25', '1582314025:$P$ByUzwc1SpRKnToe63L4LtTv1pqV7co1', 0, 'John Snow'),
(15, 'Romik', '$P$BQDP44R1NYEwTZzoqFAfAdVTctH66a1', 'romik', 'roma@pi.com', '', '2020-02-21 19:41:44', '1582314105:$P$BIqII0EKJxAbLKHYdPVh.kCNOOSkw60', 0, 'Roman Piece'),
(16, 'Inna', '$P$BynMzTkoSmpVEyR7QUkeypUJ7i6Zf3.', 'inna', 'In@d.com', '', '2020-02-21 19:42:43', '1582314163:$P$Bxs6Gz1QCPqK18aV/AVR0.Gs7viv/V0', 0, 'Inna Klopova'),
(17, 'Hello', '$P$BY.jjbOSaL/ovyLCY5hb4Vr0MSSen9.', 'hello', 'hw@hw.com', '', '2020-02-21 19:43:43', '1582314223:$P$BrlgLQ2oy3.ycfMfmPw/h1OtBUj4oU/', 0, 'Hello Everybody'),
(18, 'Sam', '$P$B6EZnJh7hmpQBoaWatRD1.TazVbKS11', 'sam', 'sam@sam.com', '', '2020-02-21 19:44:39', '1582314280:$P$BbAzamY1kv.6BSp5zdAnKJvnyIdsqa0', 0, 'Sam Ho');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
