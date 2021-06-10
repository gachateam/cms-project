-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: wordpress_prj
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (6,'action_scheduler/migration_hook','complete','2021-06-07 07:49:06','2021-06-07 07:49:06','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1623052146;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1623052146;}',1,1,'2021-06-07 07:49:11','2021-06-07 07:49:11',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,6,'action created','2021-06-07 07:48:06','2021-06-07 07:48:06'),(2,6,'action started via Async Request','2021-06-07 07:49:11','2021-06-07 07:49:11'),(3,6,'action complete via Async Request','2021-06-07 07:49:11','2021-06-07 07:49:11');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ce4wp_abandoned_checkout`
--

DROP TABLE IF EXISTS `wp_ce4wp_abandoned_checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_ce4wp_abandoned_checkout` (
  `checkout_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `checkout_contents` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checkout_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checkout_updated_ts` int unsigned NOT NULL DEFAULT '0',
  `checkout_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checkout_created_ts` int unsigned NOT NULL DEFAULT '0',
  `checkout_recovered` datetime DEFAULT '0000-00-00 00:00:00',
  `checkout_recovered_ts` int unsigned DEFAULT '0',
  `checkout_consent` int unsigned NOT NULL DEFAULT '1',
  `checkout_uuid` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`checkout_id`),
  UNIQUE KEY `checkout_uuid` (`checkout_uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ce4wp_abandoned_checkout`
--

LOCK TABLES `wp_ce4wp_abandoned_checkout` WRITE;
/*!40000 ALTER TABLE `wp_ce4wp_abandoned_checkout` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ce4wp_abandoned_checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Một người bình luận WordPress','wapuu@wordpress.example','https://wordpress.org/','','2021-06-07 07:44:12','2021-06-07 07:44:12','Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailchimp_carts`
--

DROP TABLE IF EXISTS `wp_mailchimp_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailchimp_carts`
--

LOCK TABLES `wp_mailchimp_carts` WRITE;
/*!40000 ALTER TABLE `wp_mailchimp_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailchimp_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailchimp_jobs`
--

DROP TABLE IF EXISTS `wp_mailchimp_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `obj_id` text COLLATE utf8mb4_unicode_520_ci,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailchimp_jobs`
--

LOCK TABLES `wp_mailchimp_jobs` WRITE;
/*!40000 ALTER TABLE `wp_mailchimp_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailchimp_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_custom_fields`
--

DROP TABLE IF EXISTS `wp_mailpoet_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_custom_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_custom_fields`
--

LOCK TABLES `wp_mailpoet_custom_fields` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_dynamic_segment_filters`
--

DROP TABLE IF EXISTS `wp_mailpoet_dynamic_segment_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_dynamic_segment_filters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `segment_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `filter_data` longblob,
  PRIMARY KEY (`id`),
  KEY `segment_id` (`segment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_dynamic_segment_filters`
--

LOCK TABLES `wp_mailpoet_dynamic_segment_filters` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_dynamic_segment_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_dynamic_segment_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_feature_flags`
--

DROP TABLE IF EXISTS `wp_mailpoet_feature_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_feature_flags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_feature_flags`
--

LOCK TABLES `wp_mailpoet_feature_flags` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_feature_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_feature_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_forms`
--

DROP TABLE IF EXISTS `wp_mailpoet_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'enabled',
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `settings` longtext COLLATE utf8mb4_unicode_520_ci,
  `styles` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_forms`
--

LOCK TABLES `wp_mailpoet_forms` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_log`
--

DROP TABLE IF EXISTS `wp_mailpoet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `level` int DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_log`
--

LOCK TABLES `wp_mailpoet_log` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_mapping_to_external_entities`
--

DROP TABLE IF EXISTS `wp_mailpoet_mapping_to_external_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_mapping_to_external_entities` (
  `old_id` int unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `new_id` int unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`old_id`,`type`),
  KEY `new_id` (`new_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_mapping_to_external_entities`
--

LOCK TABLES `wp_mailpoet_mapping_to_external_entities` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_mapping_to_external_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_mapping_to_external_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletter_links`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletter_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletter_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `queue_id` int unsigned NOT NULL,
  `url` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hash` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `newsletter_id` (`newsletter_id`),
  KEY `queue_id` (`queue_id`),
  KEY `url` (`url`(100))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletter_links`
--

LOCK TABLES `wp_mailpoet_newsletter_links` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletter_option`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletter_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletter_option` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `option_field_id` int unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_id_option_field_id` (`newsletter_id`,`option_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletter_option`
--

LOCK TABLES `wp_mailpoet_newsletter_option` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletter_option_fields`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletter_option_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletter_option_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `newsletter_type` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_newsletter_type` (`newsletter_type`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletter_option_fields`
--

LOCK TABLES `wp_mailpoet_newsletter_option_fields` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_option_fields` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_newsletter_option_fields` VALUES (1,'isScheduled','standard',NULL,'2021-06-07 07:50:35'),(2,'scheduledAt','standard',NULL,'2021-06-07 07:50:35'),(3,'event','welcome',NULL,'2021-06-07 07:50:35'),(4,'segment','welcome',NULL,'2021-06-07 07:50:35'),(5,'role','welcome',NULL,'2021-06-07 07:50:35'),(6,'afterTimeNumber','welcome',NULL,'2021-06-07 07:50:35'),(7,'afterTimeType','welcome',NULL,'2021-06-07 07:50:35'),(8,'intervalType','notification',NULL,'2021-06-07 07:50:35'),(9,'timeOfDay','notification',NULL,'2021-06-07 07:50:35'),(10,'weekDay','notification',NULL,'2021-06-07 07:50:35'),(11,'monthDay','notification',NULL,'2021-06-07 07:50:35'),(12,'nthWeekDay','notification',NULL,'2021-06-07 07:50:35'),(13,'schedule','notification',NULL,'2021-06-07 07:50:35'),(14,'group','automatic',NULL,'2021-06-07 07:50:35'),(15,'event','automatic',NULL,'2021-06-07 07:50:35'),(16,'sendTo','automatic',NULL,'2021-06-07 07:50:35'),(17,'segment','automatic',NULL,'2021-06-07 07:50:35'),(18,'afterTimeNumber','automatic',NULL,'2021-06-07 07:50:35'),(19,'afterTimeType','automatic',NULL,'2021-06-07 07:50:35'),(20,'meta','automatic',NULL,'2021-06-07 07:50:35');
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_option_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletter_posts`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletter_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletter_posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `newsletter_id` (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletter_posts`
--

LOCK TABLES `wp_mailpoet_newsletter_posts` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletter_segment`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletter_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletter_segment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `segment_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_segment` (`newsletter_id`,`segment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletter_segment`
--

LOCK TABLES `wp_mailpoet_newsletter_segment` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletter_templates`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletter_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletter_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int DEFAULT '0',
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `categories` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '[]',
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `thumbnail` longtext COLLATE utf8mb4_unicode_520_ci,
  `readonly` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletter_templates`
--

LOCK TABLES `wp_mailpoet_newsletter_templates` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_templates` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_newsletter_templates` VALUES (65,0,'Photography','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Logo.png\",\"alt\":\"Photography-Logo\",\"fullWidth\":false,\"width\":\"160px\",\"height\":\"141px\",\"styles\":{\"block\":{\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"42px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: right;\\\"><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h1 style=\\\"line-height: 48px;\\\"><strong>The big photos from last week, straight to your inbox.<\\/strong><\\/h1>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Images-1.jpg\",\"alt\":\"Photography-Images-1\",\"fullWidth\":true,\"width\":\"1200px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<p><strong><span style=\\\"color: #000000;\\\">Canyon<\\/span><\\/strong><\\/p>\\n    <p><span style=\\\"color: #000000;\\\">\\ud83d\\udcf7&nbsp;Brodie Vissers<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"25px\"}}},{\"type\":\"button\",\"text\":\"View all work\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#111111\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"140px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"right\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"60px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Images-2.jpg\",\"alt\":\"Photography-Images-2\",\"fullWidth\":true,\"width\":\"1200px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<p><strong><span style=\\\"color: #000000;\\\">Rooftopper<\\/span><\\/strong><\\/p>\\n    <p><span style=\\\"color: #000000;\\\">\\ud83d\\udcf7 Stan Johnson<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"25px\"}}},{\"type\":\"button\",\"text\":\"View all work\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#111111\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"140px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"right\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"60px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Images-3.jpg\",\"alt\":\"Photography-Images-3\",\"fullWidth\":true,\"width\":\"1200px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<p><strong><span style=\\\"color: #000000;\\\">Gold<\\/span><\\/strong><\\/p>\\n    <p><span style=\\\"color: #000000;\\\">\\ud83d\\udcf7 Nicole De Khors<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"25px\"}}},{\"type\":\"button\",\"text\":\"View all work\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#111111\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"140px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"right\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"60px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h1 style=\\\"line-height: 48px; text-align: center;\\\"><strong>Fresh inspiration<\\/strong><\\/h1>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-1.jpg\",\"alt\":\"Photography-Squares-1\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-2.jpg\",\"alt\":\"Photography-Squares-2\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-3.jpg\",\"alt\":\"Photography-Squares-3\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-4.jpg\",\"alt\":\"Photography-Squares-4\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-5.jpg\",\"alt\":\"Photography-Squares-5\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-6.jpg\",\"alt\":\"Photography-Squares-6\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-7.jpg\",\"alt\":\"Photography-Squares-7\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-8.jpg\",\"alt\":\"Photography-Squares-8\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Squares-9.jpg\",\"alt\":\"Photography-Squares-9\",\"fullWidth\":true,\"width\":\"700px\",\"height\":\"700px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"60px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h1 style=\\\"line-height: 48px; text-align: center;\\\"><strong>Stay focused<\\/strong><\\/h1>\\n    <p style=\\\"text-align: center;\\\">We\'re always keeping our social media feeds up to date with the latest images from our photographers. Check them out below.<\\/p>\"},{\"type\":\"social\",\"iconSet\":\"full-symbol-grey\",\"styles\":{\"block\":{\"textAlign\":\"center\"}},\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"29px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#2d2d2d\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/photography\\/Photography-Logo.png\",\"alt\":\"Photography-Logo\",\"fullWidth\":false,\"width\":\"108px\",\"height\":\"141px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"footer\",\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/><span style=\\\"color: #999999;\\\">Add your postal address here!<\\/span><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"13px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#ffffff\",\"textDecoration\":\"underline\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"16px\"},\"h1\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"40px\"},\"h2\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#ffffff\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#111111\"},\"body\":{\"backgroundColor\":\"#111111\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"View all work\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#111111\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"140px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"right\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"29px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#2d2d2d\"}},\"type\":\"divider\"},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Courier New\",\"fontSize\":\"13px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#ffffff\",\"textDecoration\":\"underline\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-grey\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}}}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/photography/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(66,0,'Jazz Club','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-Header.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#0b0821\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}},{\"type\":\"header\",\"text\":\"<p><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#898989\",\"textDecoration\":\"underline\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-logo.png\",\"alt\":\"Jazz-logo\",\"fullWidth\":false,\"width\":\"324px\",\"height\":\"607px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"social\",\"iconSet\":\"full-symbol-grey\",\"styles\":{\"block\":{\"textAlign\":\"center\"}},\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-Images-1.jpg\",\"alt\":\"Jazz-Images-1\",\"fullWidth\":false,\"width\":\"800px\",\"height\":\"875px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<h2><span>29th March 2019<\\/span><\\/h2>\\n    <h1><span>James Patterson<\\/span><\\/h1>\\n    <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut fringilla velit, id malesuada nisi. Nam ac rutrum diam. Nunc diam leo, bibendum eget aliquam eget, commodo vitae lectus.<\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"Get tickets\",\"url\":\"[postLink]\",\"styles\":{\"block\":{\"backgroundColor\":\"#e30095\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"90px\",\"lineHeight\":\"36px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Roboto\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"35px\"}}},{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: right;\\\"><span>14th April 2019<\\/span><\\/h2>\\n    <h1 style=\\\"text-align: right;\\\"><span>Samantha Morris<\\/span><\\/h1>\\n    <p style=\\\"text-align: right;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut fringilla velit, id malesuada nisi. Nam ac rutrum diam. Nunc diam leo, bibendum eget aliquam eget, commodo vitae lectus.<\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"Get tickets\",\"url\":\"[postLink]\",\"styles\":{\"block\":{\"backgroundColor\":\"#e30095\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"90px\",\"lineHeight\":\"36px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Roboto\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"right\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-Images-2.jpg\",\"alt\":\"Jazz-Images-2\",\"fullWidth\":false,\"width\":\"800px\",\"height\":\"875px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-Images-3.jpg\",\"alt\":\"Jazz-Images-3\",\"fullWidth\":false,\"width\":\"800px\",\"height\":\"875px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<h2><span>3rd&nbsp;May 2019<\\/span><\\/h2>\\n    <h1><span>Buster&nbsp;Smith<\\/span><\\/h1>\\n    <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut fringilla velit, id malesuada nisi. Nam ac rutrum diam. Nunc diam leo, bibendum eget aliquam eget, commodo vitae lectus.<\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"Get tickets\",\"url\":\"[postLink]\",\"styles\":{\"block\":{\"backgroundColor\":\"#e30095\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"90px\",\"lineHeight\":\"36px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Roboto\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ff7b0e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"34px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #a04d08;\\\"><strong>J A Z Z&nbsp; C L U B&nbsp; P R E S E N T S<\\/strong><\\/span><\\/p>\\n    <h1 style=\\\"text-align: center; font-size: 52px;\\\"><span style=\\\"color: #ffffff;\\\">24th Jazz Festival<\\/span><\\/h1>\\n    <h3 style=\\\"text-align: center;\\\"><strong><span style=\\\"color: #a04d08;\\\">5 - 14 August 2018<\\/span><\\/strong><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut fringilla velit, id malesuada nisi. Nam ac rutrum diam. Nunc diam leo, bibendum eget aliquam eget, commodo vitae lectus.<\\/span><\\/span><\\/p>\\n    <p><span style=\\\"color: #ffffff;\\\"><\\/span><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-Social.jpg\",\"alt\":\"Jazz-Social\",\"fullWidth\":true,\"width\":\"1200px\",\"height\":\"193px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"34px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/jazz-club\\/Jazz-logo.png\",\"alt\":\"Jazz-logo\",\"fullWidth\":false,\"width\":\"144px\",\"height\":\"607px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"footer\",\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Roboto\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#e30095\",\"textDecoration\":\"none\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#848486\",\"fontFamily\":\"Roboto\",\"fontSize\":\"14px\"},\"h1\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Arvo\",\"fontSize\":\"26px\"},\"h2\":{\"fontColor\":\"#e30095\",\"fontFamily\":\"Arvo\",\"fontSize\":\"20px\"},\"h3\":{\"fontColor\":\"#e30095\",\"fontFamily\":\"Arvo\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#e30095\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#0b0821\"},\"body\":{\"backgroundColor\":\"#0b0821\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"3\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h3\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read the post\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"160px\",\"lineHeight\":\"30px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}},\"type\":\"button\"},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}},\"type\":\"divider\"},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\",\"type\":\"automatedLatestContentLayout\",\"terms\":[]},\"button\":{\"text\":\"Get tickets\",\"url\":\"[postLink]\",\"styles\":{\"block\":{\"backgroundColor\":\"#e30095\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"90px\",\"lineHeight\":\"36px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Roboto\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"left\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}},\"type\":\"divider\"},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Roboto\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#e30095\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"left\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}},\"type\":\"button\"},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}},\"type\":\"divider\"},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\",\"type\":\"posts\",\"offset\":10,\"terms\":[],\"search\":\"\"},\"social\":{\"iconSet\":\"full-symbol-grey\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"34px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#898989\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/jazz-club/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(67,0,'Guitarist','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"23px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/guitarist\\/Guitarist-Logo.png\",\"alt\":\"Guitarist-Logo\",\"fullWidth\":false,\"width\":\"184px\",\"height\":\"179px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"26px\"}}},{\"type\":\"social\",\"iconSet\":\"full-symbol-grey\",\"styles\":{\"block\":{\"textAlign\":\"center\"}},\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"25px\"}}},{\"type\":\"header\",\"text\":\"<p><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#949494\",\"textDecoration\":\"underline\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"23px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/guitarist\\/Guitarist-Header.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"700px\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"250px\"}}},{\"type\":\"text\",\"text\":\"<h3><strong>Exit Stage Right<\\/strong><\\/h3>\\n    <p><span style=\\\"color: #999999;\\\">A brand new album releasing this summer on <span style=\\\"color: #ffffff;\\\">iTunes<\\/span> and <span style=\\\"color: #1db954;\\\">Spotify<\\/span><\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"Find out more\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"95px\",\"lineHeight\":\"30px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"fontWeight\":\"normal\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"130px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #27282e;\\\"><strong>My recording setup<\\/strong><\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #5a5c66;\\\">A&nbsp;lot of people have been asking how I record my albums, so I thought I would write a quick blog post to explain<\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"Find out more\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"95px\",\"lineHeight\":\"30px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/guitarist\\/Guitarist-Images-1-1.jpg\",\"alt\":\"Guitarist-Images-1\",\"fullWidth\":true,\"width\":\"800px\",\"height\":\"1000px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/guitarist\\/Guitarist-Images-2-1.jpg\",\"alt\":\"Guitarist-Images-2\",\"fullWidth\":true,\"width\":\"800px\",\"height\":\"1000px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"130px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #27282e;\\\"><strong>Life on the road<\\/strong><\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #5a5c66;\\\">Not many people know what it\'s like to travel all over the world and perform every night in many different places<\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"Find out more\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"95px\",\"lineHeight\":\"30px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\"><strong>New tour dates<\\/strong><\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #999999;\\\">Come see me perform new tracks from the album<\\/span><\\/p>\"},{\"type\":\"divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"14px\",\"borderStyle\":\"dashed\",\"borderWidth\":\"2px\",\"borderColor\":\"#37383e\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"button\",\"text\":\"March 7th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">Metro Radio Arena - Newcastle Upon Tyne<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"button\",\"text\":\"March 8th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">First Direct Arena<\\/span><\\/p>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">- Leeds<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"button\",\"text\":\"March 9th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">Liverpool Echo Arena - Liverpool<\\/span><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"button\",\"text\":\"March 11th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">The Brighton Centre - Brighton<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"button\",\"text\":\"March 12th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">Motorpoint Arena Nottingham - Nottingham<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"button\",\"text\":\"March 13th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">Motorpoint Arena Cardiff - Cardiff<\\/span><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"14px\",\"borderStyle\":\"dashed\",\"borderWidth\":\"2px\",\"borderColor\":\"#37383e\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#27282e\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/guitarist\\/Guitarist-Logo.png\",\"alt\":\"Guitarist-Logo\",\"fullWidth\":true,\"width\":\"176px\",\"height\":\"179px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"footer\",\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/><span style=\\\"color: #999999;\\\">Add your postal address here!<\\/span><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#4c537e\",\"textDecoration\":\"none\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#27282e\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"15px\"},\"h1\":{\"fontColor\":\"#27282e\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"30px\"},\"h2\":{\"fontColor\":\"#27282e\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#21759B\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#27282e\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"March 13th 2019\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#4c537e\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"288px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"16px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"14px\",\"borderStyle\":\"dashed\",\"borderWidth\":\"2px\",\"borderColor\":\"#37383e\"}},\"type\":\"divider\"},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#4c537e\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-grey\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/08-full-symbol-grey\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#949494\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/guitarist/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(68,0,'Healthy Food Blog','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#e3e3e3\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#323232\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#323232\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<p><strong><span style=\\\"color: #ffffff; font-size: 14px;\\\">[date:mtext] [date:y]&nbsp;Edition<\\/span><\\/strong><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#323232\",\"height\":\"22px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: right; font-size: 12px;\\\"><span style=\\\"color: #ed682a;\\\"><strong><a href=\\\"[link:newsletter_view_in_browser_url]\\\" style=\\\"color: #ed682a;\\\">View this email in your browser &gt;<\\/a><\\/strong><\\/span><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\",\"height\":\"30px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-Logo.png\",\"alt\":\"HealthyFood-Logo\",\"fullWidth\":false,\"width\":\"400px\",\"height\":\"296px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\",\"height\":\"25px\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\",\"height\":\"121px\"}}},{\"type\":\"social\",\"iconSet\":\"circles\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Facebook.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Twitter.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Instagram.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Youtube.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]}]}]},{\"type\":\"container\",\"columnLayout\":\"2_1\",\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-Header-1.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"text-align: left;\\\"><strong><span style=\\\"color: #ffffff;\\\">Welcome back!<\\/span><\\/strong><\\/h1>\\n    <p><span style=\\\"color: #ffffff;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nisl massa, fringilla id rutrum sed, porttitor in risus. Fusce dui erat, bibendum a accumsan non.<\\/span><\\/p>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"56px\"}}},{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: left;\\\"><span style=\\\"color: #333333;\\\"><strong>It\'s November - time to plant those \\ud83c\\udf36<\\/strong><\\/span><\\/h2>\\n    <p><span style=\\\"color: #333333;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nisl massa, fringilla id rutrum sed, porttitor in risus. Fusce dui erat, bibendum a accumsan non.<\\/span><\\/p>\\n    <p><span style=\\\"color: #333333;\\\"><\\/span><\\/p>\\n    <p><span style=\\\"color: #333333;\\\">Tag your chilli images with #novemberheat for your chance to win a box of spicy treats!<\\/span><\\/p>\\n    <p><span style=\\\"color: #333333;\\\"><\\/span><\\/p>\\n    <h3><span style=\\\"color: #ed682a;\\\"><strong>#novemberheat<\\/strong><\\/span><\\/h3>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-Instagram.jpg\",\"alt\":\"HealthyFood-Instagram\",\"fullWidth\":true,\"width\":\"507px\",\"height\":\"600px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"text-align: left;\\\"><strong><span style=\\\"color: #ffffff;\\\">Start eating healthy today<\\/span><\\/strong><\\/h1>\\n    <h3><strong><span style=\\\"color: #ffffff;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nisl massa, fringilla id rutrum sed, porttitor in risus. Fusce dui erat, bibendum a accumsan non.<\\/span><\\/span><\\/strong><\\/h3>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-CouponImage.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-CouponImage.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/5a5b7bf514d8c4188e0b08fc-1024x766.png\",\"alt\":\"5a5b7bf514d8c4188e0b08fc\",\"fullWidth\":true,\"width\":\"298px\",\"height\":\"524px\",\"styles\":{\"block\":{\"textAlign\":\"right\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: left;\\\"><strong>Get 20% off a box<\\/strong><\\/h3>\\n    <p><span style=\\\"color: #333333;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nisl massa, fringilla<\\/span><\\/p>\\n    <p><span style=\\\"color: #333333;\\\">id rutrum sed, porttitor in risus.<\\/span><\\/p>\"},{\"type\":\"button\",\"text\":\"CouPon_Cod3\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\",\"borderColor\":\"#323232\",\"borderWidth\":\"2px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#323232\",\"fontFamily\":\"Courier New\",\"fontSize\":\"18px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-CouponImage.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"height\":\"26px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: center;\\\"><span style=\\\"color: #333333;\\\"><strong>Your weekly recipe list<\\/strong><\\/span><\\/h2>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #333333;\\\">Cook delicious meals right now - here\'s your list for this week.<\\/span><\\/p>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>MONDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-01-Monday.jpg\",\"alt\":\"HealthyFood-01-Monday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Spicy Prawn Broth\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>TUESDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-02-Tuesday.jpg\",\"alt\":\"HealthyFood-02-Tuesday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Classic Pizza\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>WEDNESDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-03-Wednesday.jpg\",\"alt\":\"HealthyFood-03-Wednesday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Salad Roll\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"9px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#ed682a\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>THURSDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-04-Thursday.jpg\",\"alt\":\"HealthyFood-04-Thursday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Shellfish Pasta\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>FRIDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-05-Friday.jpg\",\"alt\":\"HealthyFood-05-Friday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Thai Green Curry\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>SATURDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-06-Saturday.jpg\",\"alt\":\"HealthyFood-06-Saturday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Stuffed Turkey\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"9px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#ed682a\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":\"1_2\",\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>SUNDAY<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-07-Sunday.jpg\",\"alt\":\"HealthyFood-07-Sunday\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"button\",\"text\":\"Lemon Cake\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: left;\\\"><span style=\\\"color: #333333;\\\"><strong>Want more recipes?<\\/strong><\\/span><\\/h2>\\n    <p><span style=\\\"color: #333333;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nisl massa, fringilla id rutrum sed, porttitor in risus. Fusce dui erat, bibendum a accumsan non.<\\/span><\\/p>\\n    <p><span style=\\\"color: #333333;\\\"><\\/span><\\/p>\\n    <p><span style=\\\"color: #333333;\\\">For all of our recipes, check out our website or visit one of our social media platforms below. We\'d love to hear what you think about our choices this week!<\\/span><\\/p>\"},{\"type\":\"social\",\"iconSet\":\"circles\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Facebook.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Twitter.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Instagram.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Youtube.png?mailpoet_version=3.14.1\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"9px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#ed682a\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#e3e3e3\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#e3e3e3\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/healthy-food-blog\\/HealthyFood-Logo.png\",\"alt\":\"HealthyFood-Logo\",\"fullWidth\":false,\"width\":\"110px\",\"height\":\"296px\",\"styles\":{\"block\":{\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"footer\",\"text\":\"<p><span style=\\\"color: #ed682a;\\\"><a href=\\\"[link:subscription_unsubscribe_url]\\\" style=\\\"color: #ed682a;\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\" style=\\\"color: #ed682a;\\\">Manage your subscription<\\/a><\\/span><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"none\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#000000\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\"},\"h1\":{\"fontColor\":\"#111111\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"40px\"},\"h2\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#333333\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#ed682a\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#e3e3e3\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"Lemon Cake\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#ed682a\",\"borderColor\":\"#323232\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"255px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"9px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#ed682a\"}},\"type\":\"divider\"},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"circles\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#e39171\",\"textDecoration\":\"none\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/healthy-food-blog/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(69,0,'Software','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"60px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/software\\/Software-Logo.png\",\"alt\":\"Software-Logo\",\"fullWidth\":false,\"width\":\"140px\",\"height\":\"122px\",\"styles\":{\"block\":{\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"header\",\"text\":\"<p><strong><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View online<\\/a><\\/strong><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#212327\",\"textDecoration\":\"underline\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"text-align: center; line-height: 46px;\\\"><span style=\\\"color: #212327;\\\"><strong>Your music.<br \\/>Your way.<\\/strong><\\/span><\\/h1>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/software\\/Software-Header.jpg\",\"alt\":\"Software-Header\",\"fullWidth\":true,\"width\":\"1200px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"50px\"}}},{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: left;\\\"><strong>Find music fast<\\/strong><\\/h2>\\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin placerat feugiat est, malesuada varius sem finibus a. Nunc feugiat sollicitudin gravida. In eu vestibulum orci, sit amet ultrices mauris.<\\/p>\"},{\"type\":\"button\",\"text\":\"Find out more\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#212327\",\"borderColor\":\"#212327\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"124px\",\"lineHeight\":\"39px\",\"fontColor\":\"#cacaca\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/software\\/Software-Image-1.jpg\",\"alt\":\"Software-Image-1\",\"fullWidth\":true,\"width\":\"800px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/software\\/Software-Image-2.jpg\",\"alt\":\"Software-Image-2\",\"fullWidth\":true,\"width\":\"800px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"50px\"}}},{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: left;\\\"><strong>Keep up with the trend<\\/strong><\\/h2>\\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin placerat feugiat est, malesuada varius sem finibus a. Nunc feugiat sollicitudin gravida. In eu vestibulum orci, sit amet ultrices mauris.<\\/p>\"},{\"type\":\"button\",\"text\":\"Find out more\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#212327\",\"borderColor\":\"#212327\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"124px\",\"lineHeight\":\"39px\",\"fontColor\":\"#cacaca\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"50px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: center;\\\"><strong>Get the app now for free<\\/strong><\\/h2>\\n    <p style=\\\"text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin placerat feugiat est, malesuada varius sem finibus a. Nunc feugiat sollicitudin gravida.<\\/p>\"},{\"type\":\"button\",\"text\":\"Download for free\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#dbbb00\",\"borderColor\":\"#212327\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"199px\",\"lineHeight\":\"50px\",\"fontColor\":\"#212327\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"18px\",\"fontWeight\":\"bold\",\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"50px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/software\\/Software-Logo.png\",\"alt\":\"Software-Logo\",\"fullWidth\":false,\"width\":\"140px\",\"height\":\"122px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"social\",\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png?mailpoet_version=3.15.0\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png?mailpoet_version=3.15.0\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Youtube.png?mailpoet_version=3.15.0\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]},{\"type\":\"footer\",\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#212327\",\"textDecoration\":\"underline\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#212327\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\"},\"h1\":{\"fontColor\":\"#212327\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"40px\"},\"h2\":{\"fontColor\":\"#212327\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"26px\"},\"h3\":{\"fontColor\":\"#212327\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#212327\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#dbbb00\"},\"body\":{\"backgroundColor\":\"#dbbb00\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"Find out more\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#212327\",\"borderColor\":\"#212327\",\"borderWidth\":\"0px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"124px\",\"lineHeight\":\"39px\",\"fontColor\":\"#cacaca\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"14px\",\"fontWeight\":\"bold\",\"textAlign\":\"left\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#212327\",\"textDecoration\":\"underline\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather Sans\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#212327\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/software/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(70,0,'Makeup Blog','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"header\",\"text\":\"<p><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#adadad\",\"textDecoration\":\"underline\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Logo.png\",\"alt\":\"WomensLifestyle-Logo\",\"fullWidth\":false,\"width\":\"130px\",\"height\":\"94px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"text-align: center;\\\">Fashion Week Special<\\/h1>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Header-1.jpg\",\"alt\":\"WomensLifestyle-Header-1\",\"fullWidth\":true,\"width\":\"900px\",\"height\":\"426px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet scelerisque odio. Pellentesque nisl massa, ullamcorper eu gravida varius, mollis eu orci.<\\/span><\\/p>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Breaker-1-1.jpg\",\"alt\":\"WomensLifestyle-Breaker-1-1\",\"fullWidth\":true,\"width\":\"900px\",\"height\":\"65px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#c83142\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Image-1.png\",\"alt\":\"WomensLifestyle-Image-1\",\"fullWidth\":false,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\">Big announcement from top artists<\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span style=\\\"color: #e0cccc;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet scelerisque odio. Pellentesque nisl massa, ullamcorper eu gravida varius, mollis eu orci.<\\/span><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Breaker-2.jpg\",\"alt\":\"WomensLifestyle-Breaker-2\",\"fullWidth\":true,\"width\":\"900px\",\"height\":\"65px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#6d3aa7\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":\"1_2\",\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#6d3aa7\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Image-2.png\",\"alt\":\"WomensLifestyle-Image-2\",\"fullWidth\":false,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"34px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: left;\\\"><span style=\\\"color: #ffffff;\\\">New Workshops to begin<\\/span><\\/h3>\\n    <p style=\\\"text-align: left;\\\"><span style=\\\"color: #f6dff7;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet scelerisque odio. Pellentesque nisl massa, ullamcorper eu gravida varius, mollis eu orci.<\\/span><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Breaker-3.jpg\",\"alt\":\"WomensLifestyle-Breaker-3\",\"fullWidth\":true,\"width\":\"900px\",\"height\":\"65px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#0f2f41\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#0f2f41\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Image-3.png\",\"alt\":\"WomensLifestyle-Image-3\",\"fullWidth\":false,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\"><\\/span><span style=\\\"color: #becbf7;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet scelerisque.<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Image-4.png\",\"alt\":\"WomensLifestyle-Image-4\",\"fullWidth\":false,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\"><\\/span><span style=\\\"color: #becbf7;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet scelerisque.<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Image-5.png\",\"alt\":\"WomensLifestyle-Image-5\",\"fullWidth\":false,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color: #ffffff;\\\"><\\/span><span style=\\\"color: #becbf7;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet scelerisque.<\\/span><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#0f2f41\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Breaker-4.jpg\",\"alt\":\"WomensLifestyle-Breaker-4\",\"fullWidth\":true,\"width\":\"900px\",\"height\":\"65px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-a\\/WomensLifestyle-Logo.png\",\"alt\":\"WomensLifestyle-Logo\",\"fullWidth\":false,\"width\":\"170px\",\"height\":\"40px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"social\",\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"}]},{\"type\":\"footer\",\"text\":\"<p><span style=\\\"color: #000000;\\\"><strong><a href=\\\"[link:subscription_unsubscribe_url]\\\" style=\\\"color: #000000;\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\" style=\\\"color: #000000;\\\">Manage your subscription<\\/a><\\/strong><\\/span><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"none\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#000000\",\"fontFamily\":\"Trebuchet MS\",\"fontSize\":\"14px\"},\"h1\":{\"fontColor\":\"#111111\",\"fontFamily\":\"Courier New\",\"fontSize\":\"30px\"},\"h2\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Courier New\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#333333\",\"fontFamily\":\"Courier New\",\"fontSize\":\"20px\"},\"link\":{\"fontColor\":\"#21759B\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#ffffff\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"Button\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#adadad\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/lifestyle-blog-a/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(71,0,'Kids Shop','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"header\",\"text\":\"<p><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/fashion-shop\\/FashionKids-Header.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"60px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center; font-size: 11px; letter-spacing: 3px;\\\"><strong>AUTUMN RANGE 2018<\\/strong><\\/p>\"},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/fashion-shop\\/FashionKids-Logo.png\",\"alt\":\"FashionKids-Logo\",\"fullWidth\":false,\"width\":\"200px\",\"height\":\"64px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"text-align: center; font-size: 52px; line-height: 1.2;\\\"><strong>IT\'S TIME&nbsp;<\\/strong><strong>TO EXPLORE<\\/strong><\\/h1>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"403px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#c6d4dd\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/fashion-shop\\/FashionKids-Image-Square.jpg\",\"alt\":\"FashionKids-Image-Square\",\"fullWidth\":true,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"100px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\">Keep them warm this autumn with our whole new range just for your little ones<\\/h3>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/fashion-shop\\/FashionKids-Image-1-1.jpg\",\"alt\":\"FashionKids-Image-1-1\",\"fullWidth\":true,\"width\":\"400px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#c6d4dd\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/fashion-shop\\/FashionKids-Image-Square-2.jpg\",\"alt\":\"FashionKids-Image-Square-2\",\"fullWidth\":true,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"113px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\">All of our clothes are easy to wash and are ready for your little explorers<\\/h3>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/fashion-shop\\/FashionKids-Logo.png\",\"alt\":\"FashionKids-Logo\",\"fullWidth\":false,\"width\":\"187px\",\"height\":\"30px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"35px\"}}},{\"type\":\"social\",\"iconSet\":\"full-symbol-color\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"footer\",\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#21759b\",\"textDecoration\":\"none\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#000000\",\"fontFamily\":\"Arial\",\"fontSize\":\"15px\"},\"h1\":{\"fontColor\":\"#111111\",\"fontFamily\":\"Georgia\",\"fontSize\":\"30px\"},\"h2\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Georgia\",\"fontSize\":\"26px\"},\"h3\":{\"fontColor\":\"#333333\",\"fontFamily\":\"Georgia\",\"fontSize\":\"24px\"},\"link\":{\"fontColor\":\"#21759B\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#ffffff\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"Button\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#21759b\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-color\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/06-full-symbol-color\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"35px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/fashion-shop/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(72,0,'Lifestyle Blog','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-Logo-1.png\",\"alt\":\"WomensLifestyle-Logo\",\"fullWidth\":true,\"width\":\"160px\",\"height\":\"57px\",\"styles\":{\"block\":{\"textAlign\":\"left\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"header\",\"text\":\"<p><span style=\\\"color: #b25088;\\\"><a href=\\\"[link:newsletter_view_in_browser_url]\\\" style=\\\"color: #b25088;\\\">View this in your browser.<\\/a><\\/span><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-Header.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#b25187\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"440px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-HeaderDrop.jpg\",\"alt\":\"WomensLifestyle-HeaderDrop\",\"fullWidth\":true,\"width\":\"900px\",\"height\":\"61px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"font-size: 11px; letter-spacing: 4px; text-align: center;\\\"><span style=\\\"color: #808080;\\\"><strong>FEATURED ARTICLE THIS MONTH<\\/strong><\\/span><\\/p>\\n    <h2 style=\\\"text-align: center;\\\"><strong>Business tips&nbsp;from top female executives<\\/strong><\\/h2>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #993366;\\\"><strong>1<\\/strong><\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non est sed tellus pharetra facilisis quis vel lacus.<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #993366;\\\"><strong>2<\\/strong><\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non est sed tellus pharetra facilisis quis vel lacus.<\\/span><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><span style=\\\"color: #993366;\\\"><strong>3<\\/strong><\\/span><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non est sed tellus pharetra facilisis quis vel lacus.<\\/span><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"23px\"}}},{\"type\":\"button\",\"text\":\"Read the article\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#b25088\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"50px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Arial\",\"fontSize\":\"16px\",\"fontWeight\":\"bold\",\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"21px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-Image-1.jpg\",\"alt\":\"WomensLifestyle-Image-1\",\"fullWidth\":true,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"71px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"font-size: 11px; letter-spacing: 4px; text-align: left;\\\"><span style=\\\"color: #808080;\\\"><strong>PODCASTS<\\/strong><\\/span><\\/p>\\n    <h2 style=\\\"text-align: left;\\\"><strong>Does hard work really pay off?<\\/strong><\\/h2>\\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non est sed tellus pharetra facilisis quis vel lacus.<\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"71px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"font-size: 11px; letter-spacing: 4px; text-align: left;\\\"><span style=\\\"color: #808080;\\\"><strong>PSYCHOLOGY<\\/strong><\\/span><\\/p>\\n    <h2 style=\\\"text-align: left;\\\"><strong>Closing deals can be easier than you think<\\/strong><\\/h2>\\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non est sed tellus pharetra facilisis quis vel lacus.<\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-Image-2.jpg\",\"alt\":\"WomensLifestyle-Image-2\",\"fullWidth\":true,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-Image-3.jpg\",\"alt\":\"WomensLifestyle-Image-3\",\"fullWidth\":true,\"width\":\"400px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"71px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"font-size: 11px; letter-spacing: 4px; text-align: left;\\\"><span style=\\\"color: #808080;\\\"><strong>TECHNOLOGY<\\/strong><\\/span><\\/p>\\n    <h2 style=\\\"text-align: left;\\\"><strong>What email software is right for you?<\\/strong><\\/h2>\\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non est sed tellus pharetra facilisis quis vel lacus.<\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"50px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/lifestyle-blog-b\\/WomensLifestyle-Logo-1.png\",\"alt\":\"WomensLifestyle-Logo\",\"fullWidth\":false,\"width\":\"112px\",\"height\":\"57px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"social\",\"iconSet\":\"circles\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"website\",\"link\":\"\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Website.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Website\"},{\"type\":\"socialIcon\",\"iconType\":\"pinterest\",\"link\":\"http:\\/\\/www.pinterest.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Pinterest.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Pinterest\"}]},{\"type\":\"footer\",\"text\":\"<p><strong><span style=\\\"color: #b25088;\\\"><a href=\\\"[link:subscription_unsubscribe_url]\\\" style=\\\"color: #b25088;\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\" style=\\\"color: #b25088;\\\">Manage your subscription<\\/a><\\/span><\\/strong><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"none\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#000000\",\"fontFamily\":\"Arial\",\"fontSize\":\"15px\"},\"h1\":{\"fontColor\":\"#111111\",\"fontFamily\":\"Arial\",\"fontSize\":\"30px\"},\"h2\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#333333\",\"fontFamily\":\"Arial\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#21759B\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#ffffff\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"Read the article\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#b25088\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"50px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Arial\",\"fontSize\":\"16px\",\"fontWeight\":\"bold\",\"textAlign\":\"center\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"circles\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"website\",\"link\":\"\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Website.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Website\"},{\"type\":\"socialIcon\",\"iconType\":\"pinterest\",\"link\":\"http:\\/\\/www.pinterest.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/03-circles\\/Pinterest.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Pinterest\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"right\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/lifestyle-blog-b/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(73,0,'Painter','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}},{\"type\":\"header\",\"text\":\"<p><a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"11px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#787878\",\"textDecoration\":\"none\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/Painter-Logo-bg.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#8289ca\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"100px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/Painter-Logo.png\",\"alt\":\"Painter-Logo\",\"fullWidth\":false,\"width\":\"305.9375px\",\"height\":\"93px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"100px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><a href=\\\"https:\\/\\/www.mailpoet.com\\\">Reviews &amp; Submissions<\\/a><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><a href=\\\"https:\\/\\/www.mailpoet.com\\\">Essential&nbsp;Gear<\\/a><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><a href=\\\"https:\\/\\/www.mailpoet.com\\\">Latest Commissions<\\/a><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/Painter-Header.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"100px\"}}},{\"type\":\"text\",\"text\":\"<h1><strong>Welcome back<\\/strong><\\/h1>\\n    <p>It\'s been a big month for the studio and we\'d love to show you some of our recent work.<\\/p>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"35px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/186018-sktchy-2-nh-gutenCRALTBRBLOG.jpg\",\"alt\":\"186018-sktchy-2-nh-gutenCRALTBRBLOG\",\"fullWidth\":false,\"width\":\"520px\",\"height\":\"830px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"140px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/181215_2-laura-anderson-dog-fab-artistico-cpCRAltBRCRBlog.jpg\",\"alt\":\"181215_2-laura-anderson-dog-fab-artistico-cpCRAltBRCRBlog\",\"fullWidth\":false,\"width\":\"180px\",\"height\":\"1010px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/170204_sktchy_BlackChickenBrushPen2CRBR.jpg\",\"alt\":\"170204_sktchy_BlackChickenBrushPen2CRBR\",\"fullWidth\":false,\"width\":\"328px\",\"height\":\"686px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"text\",\"text\":\"<h2 style=\\\"text-align: center;\\\"><strong>Latest from the blog<\\/strong><\\/h2>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/1812231-sktchy-1-jon-coxwell-fabriano-cpCRFeat-394x252.jpg\",\"alt\":\"1812231-sktchy-1-jon-coxwell-fabriano-cpCRFeat-394x252\",\"fullWidth\":false,\"width\":\"394px\",\"height\":\"252px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p><span>Self-Assessment: 2018&mdash;Filling Journals, Using Up Paint<\\/span><\\/p>\\n    <p><a href=\\\"https:\\/\\/www.mailpoet.com\\\">Read more &gt;<\\/a><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/180830-2018-fair-32-pigeon-fabri-300-hpCRAltBRFeat-394x252.jpg\",\"alt\":\"180830-2018-fair-32-pigeon-fabri-300-hpCRAltBRFeat-394x252\",\"fullWidth\":false,\"width\":\"394px\",\"height\":\"252px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p><span>Happy New Year 2019<\\/span><\\/p>\\n    <p><a href=\\\"https:\\/\\/www.mailpoet.com\\\">Read more &gt;<\\/a><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/180828-sktchy-t-c-c-hahn-expressions-cpCRAltBRCRFeat-394x252.jpg\",\"alt\":\"180828-sktchy-t-c-c-hahn-expressions-cpCRAltBRCRFeat-394x252\",\"fullWidth\":false,\"width\":\"394px\",\"height\":\"252px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p><span>Roz&rsquo;s 2018 Minnesota State Fair Journal<\\/span><\\/p>\\n    <p><a href=\\\"https:\\/\\/www.mailpoet.com\\\">Read more &gt;<\\/a><\\/p>\"}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/painter\\/Painter-SocialBack.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"64px\"}}},{\"type\":\"text\",\"text\":\"<h3 style=\\\"text-align: center;\\\"><strong>Stay in touch<\\/strong><\\/h3>\\n    <p style=\\\"text-align: center;\\\"><span>Keep up-to-date with all of the work from the studio<\\/span><\\/p>\"},{\"type\":\"social\",\"iconSet\":\"full-symbol-black\",\"styles\":{\"block\":{\"textAlign\":\"center\"}},\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}]},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"40px\"}}},{\"type\":\"text\",\"text\":\"<p style=\\\"text-align: center;\\\"><strong>Canvas Studio<\\/strong><\\/p>\\n    <p style=\\\"text-align: center; font-size: 11px;\\\"><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a>&nbsp;|&nbsp;<a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\"}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#000000\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"14px\"},\"h1\":{\"fontColor\":\"#111111\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"36px\"},\"h2\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#333333\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#585858\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#ffffff\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"Button\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#585858\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"},{\"type\":\"socialIcon\",\"iconType\":\"youtube\",\"link\":\"http:\\/\\/www.youtube.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Youtube.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Youtube\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"100px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Merriweather\",\"fontSize\":\"11px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#787878\",\"textDecoration\":\"none\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/painter/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35'),(74,0,'Farmers Market','[\"standard\",\"all\"]','','{\"content\":{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#ffffff\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"header\",\"text\":\"<p><span style=\\\"color: #689f2c;\\\"><a href=\\\"[link:newsletter_view_in_browser_url]\\\" style=\\\"color: #689f2c;\\\">View this in your browser.<\\/a><\\/span><\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Top-2.jpg\",\"alt\":\"FarmersMarket-Top\",\"fullWidth\":true,\"width\":\"1200px\",\"height\":\"25px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Logo.png\",\"alt\":\"FarmersMarket-Logo\",\"fullWidth\":true,\"width\":\"200px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#252525\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"44px\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"line-height: 32px;\\\"><strong><span style=\\\"color: #ffffff;\\\">COME JOIN US THIS WEEKEND<\\/span><\\/strong><\\/h1>\\n    <p><span style=\\\"color: #ffffff;\\\">We\'re having a big bake sale this weekend starting 9am on Saturday morning. Pop down to see us&nbsp;and our merchants.<\\/span><\\/p>\\n    <p><span style=\\\"color: #ffffff;\\\"><\\/span><\\/p>\\n    <p><strong><a href=\\\"http:\\/\\/www.google.com\\\">Add date to my calendar &gt;<\\/a><\\/strong><\\/p>\"}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Header.jpg\",\"alt\":\"FarmersMarket-Header\",\"fullWidth\":false,\"width\":\"1000px\",\"height\":\"800px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"30px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Images-1.jpg\",\"alt\":\"FarmersMarket-Images-1\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p>It\'s carrot season, which means it\'s the perfect time to try our carrot recipes!<\\/p>\"},{\"type\":\"button\",\"text\":\"CARROTS EVERYWHERE\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#252525\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Source Sans Pro\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Images-2.jpg\",\"alt\":\"FarmersMarket-Images-2\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p>Don\'t throw out those leftover pumpkins - here\'s some tips for you.<\\/p>\"},{\"type\":\"button\",\"text\":\"PUMPED FOR PUMPKINS\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#252525\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Source Sans Pro\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Images-3.jpg\",\"alt\":\"FarmersMarket-Images-3\",\"fullWidth\":false,\"width\":\"500px\",\"height\":\"500px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}},{\"type\":\"text\",\"text\":\"<p>Our new bakery has opened and is making some of the best artisanal bread.<\\/p>\"},{\"type\":\"button\",\"text\":\"I KNEAD THIS\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#252525\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Source Sans Pro\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Video.jpg\",\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"#222222\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"55px\"}}},{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-PlayButton.png\",\"alt\":\"FarmersMarket-PlayButton\",\"fullWidth\":true,\"width\":\"100px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"61px\"}}},{\"type\":\"text\",\"text\":\"<h1 style=\\\"line-height: 32px;\\\"><strong><span style=\\\"color: #ffffff;\\\">A DAY IN THE LIFE<\\/span><\\/strong><\\/h1>\\n    <p><span style=\\\"color: #ffffff;\\\">Check out what it\'s like to be at the market every weekend.<\\/span><\\/p>\\n    <p><span style=\\\"color: #ffffff;\\\"><\\/span><\\/p>\"},{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"spacer\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}}}]}]},{\"type\":\"container\",\"columnLayout\":\"1_2\",\"orientation\":\"horizontal\",\"image\":{\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Middle.jpg\",\"display\":\"tile\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Logo.png\",\"alt\":\"FarmersMarket-Logo\",\"fullWidth\":true,\"width\":\"112px\",\"height\":\"400px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"social\",\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png?mailpoet_version=3.15.0\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png?mailpoet_version=3.15.0\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Instagram.png?mailpoet_version=3.15.0\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"}]},{\"type\":\"footer\",\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Roboto\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#689f2c\",\"textDecoration\":\"none\"}}}]}]},{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"horizontal\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"container\",\"columnLayout\":false,\"orientation\":\"vertical\",\"image\":{\"src\":null,\"display\":\"scale\"},\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"}},\"blocks\":[{\"type\":\"image\",\"link\":\"\",\"src\":\"https:\\/\\/ps.w.org\\/mailpoet\\/assets\\/newsletter-templates\\/farmers-market\\/FarmersMarket-Bottom-2.jpg\",\"alt\":\"FarmersMarket-Bottom\",\"fullWidth\":true,\"width\":\"660px\",\"height\":\"50px\",\"styles\":{\"block\":{\"textAlign\":\"center\"}}}]}]}]},\"globalStyles\":{\"text\":{\"fontColor\":\"#000000\",\"fontFamily\":\"Roboto\",\"fontSize\":\"14px\"},\"h1\":{\"fontColor\":\"#111111\",\"fontFamily\":\"Source Sans Pro\",\"fontSize\":\"30px\"},\"h2\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Trebuchet MS\",\"fontSize\":\"24px\"},\"h3\":{\"fontColor\":\"#333333\",\"fontFamily\":\"Trebuchet MS\",\"fontSize\":\"22px\"},\"link\":{\"fontColor\":\"#689f2c\",\"textDecoration\":\"underline\"},\"wrapper\":{\"backgroundColor\":\"#ffffff\"},\"body\":{\"backgroundColor\":\"#ffffff\"}},\"blockDefaults\":{\"automatedLatestContent\":{\"amount\":\"5\",\"withLayout\":false,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"belowTitle\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContent.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContent.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"automatedLatestContentLayout\":{\"amount\":\"5\",\"withLayout\":true,\"contentType\":\"post\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"button\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"automatedLatestContentLayout.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"automatedLatestContentLayout.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"button\":{\"text\":\"CARROTS EVERYWHERE\",\"url\":\"\",\"styles\":{\"block\":{\"backgroundColor\":\"#252525\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"0px\",\"borderRadius\":\"0px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Source Sans Pro\",\"fontSize\":\"14px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}},\"type\":\"button\"},\"divider\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"2px\",\"borderColor\":\"#252525\"}},\"type\":\"divider\"},\"footer\":{\"text\":\"<p><a href=\\\"[link:subscription_unsubscribe_url]\\\">Unsubscribe<\\/a> | <a href=\\\"[link:subscription_manage_url]\\\">Manage your subscription<\\/a><br \\/>Add your postal address here!<\\/p>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Roboto\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#689f2c\",\"textDecoration\":\"none\"}},\"type\":\"footer\"},\"posts\":{\"amount\":\"10\",\"withLayout\":true,\"contentType\":\"post\",\"postStatus\":\"publish\",\"inclusionType\":\"include\",\"displayType\":\"excerpt\",\"titleFormat\":\"h1\",\"titleAlignment\":\"left\",\"titleIsLink\":false,\"imageFullWidth\":false,\"featuredImagePosition\":\"alternate\",\"showAuthor\":\"no\",\"authorPrecededBy\":\"Author:\",\"showCategories\":\"no\",\"categoriesPrecededBy\":\"Categories:\",\"readMoreType\":\"link\",\"readMoreText\":\"Read more\",\"readMoreButton\":{\"text\":\"Read more\",\"url\":\"[postLink]\",\"context\":\"posts.readMoreButton\",\"styles\":{\"block\":{\"backgroundColor\":\"#2ea1cd\",\"borderColor\":\"#0074a2\",\"borderWidth\":\"1px\",\"borderRadius\":\"5px\",\"borderStyle\":\"solid\",\"width\":\"180px\",\"lineHeight\":\"40px\",\"fontColor\":\"#ffffff\",\"fontFamily\":\"Verdana\",\"fontSize\":\"18px\",\"fontWeight\":\"normal\",\"textAlign\":\"center\"}}},\"sortBy\":\"newest\",\"showDivider\":true,\"divider\":{\"context\":\"posts.divider\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"padding\":\"13px\",\"borderStyle\":\"solid\",\"borderWidth\":\"3px\",\"borderColor\":\"#aaaaaa\"}}},\"backgroundColor\":\"#ffffff\",\"backgroundColorAlternate\":\"#eeeeee\"},\"social\":{\"iconSet\":\"full-symbol-black\",\"icons\":[{\"type\":\"socialIcon\",\"iconType\":\"facebook\",\"link\":\"http:\\/\\/www.facebook.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Facebook.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Facebook\"},{\"type\":\"socialIcon\",\"iconType\":\"twitter\",\"link\":\"http:\\/\\/www.twitter.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Twitter.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Twitter\"},{\"type\":\"socialIcon\",\"iconType\":\"instagram\",\"link\":\"http:\\/\\/instagram.com\",\"image\":\"http:\\/\\/wordpress.prj\\/wp-content\\/plugins\\/mailpoet\\/assets\\/img\\/newsletter_editor\\/social-icons\\/07-full-symbol-black\\/Instagram.png\",\"height\":\"32px\",\"width\":\"32px\",\"text\":\"Instagram\"}],\"type\":\"social\"},\"spacer\":{\"styles\":{\"block\":{\"backgroundColor\":\"transparent\",\"height\":\"20px\"}},\"type\":\"spacer\"},\"header\":{\"text\":\"<a href=\\\"[link:newsletter_view_in_browser_url]\\\">View this in your browser.<\\/a>\",\"styles\":{\"block\":{\"backgroundColor\":\"transparent\"},\"text\":{\"fontColor\":\"#222222\",\"fontFamily\":\"Arial\",\"fontSize\":\"12px\",\"textAlign\":\"center\"},\"link\":{\"fontColor\":\"#6cb7d4\",\"textDecoration\":\"underline\"}},\"type\":\"header\"}}}','https://ps.w.org/mailpoet/assets/newsletter-templates/farmers-market/thumbnail.20190411-1500.jpg',1,NULL,'2021-06-07 07:50:35');
/*!40000 ALTER TABLE `wp_mailpoet_newsletter_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_newsletters`
--

DROP TABLE IF EXISTS `wp_mailpoet_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_newsletters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'standard',
  `sender_address` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sender_name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'draft',
  `reply_to_address` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `reply_to_name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `preheader` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `unsubscribe_token` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ga_campaign` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unsubscribe_token` (`unsubscribe_token`),
  KEY `type_status` (`type`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_newsletters`
--

LOCK TABLES `wp_mailpoet_newsletters` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_scheduled_task_subscribers`
--

DROP TABLE IF EXISTS `wp_mailpoet_scheduled_task_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_scheduled_task_subscribers` (
  `task_id` int unsigned NOT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `processed` int NOT NULL,
  `failed` smallint NOT NULL DEFAULT '0',
  `error` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_id`,`subscriber_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_scheduled_task_subscribers`
--

LOCK TABLES `wp_mailpoet_scheduled_task_subscribers` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_scheduled_task_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_scheduled_task_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_scheduled_tasks`
--

DROP TABLE IF EXISTS `wp_mailpoet_scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_scheduled_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(90) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `priority` mediumint NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `in_progress` int DEFAULT NULL,
  `reschedule_count` int NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_scheduled_tasks`
--

LOCK TABLES `wp_mailpoet_scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_scheduled_tasks` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_scheduled_tasks` VALUES (1,'inactive_subscribers','completed',5,'2021-06-07 08:50:35','2021-06-07 08:51:10','2021-06-07 07:50:35','2021-06-07 08:51:10',NULL,0,0,'{\"last_subscriber_id\":1000}'),(2,'beamer','completed',5,'2021-06-07 07:50:35','2021-06-07 07:51:17','2021-06-07 07:50:35','2021-06-07 07:51:17',NULL,0,0,NULL),(3,'unsubscribe_tokens','completed',5,'2021-06-07 07:50:35','2021-06-07 07:51:37','2021-06-07 07:50:35','2021-06-07 07:51:37',NULL,0,0,'{\"last_subscriber_id\":\"1\",\"last_newsletter_id\":null}'),(4,'subscriber_link_tokens','completed',5,'2021-06-07 07:50:35','2021-06-07 07:51:17','2021-06-07 07:50:35','2021-06-07 07:51:17',NULL,0,0,NULL),(5,'migration','completed',10,'2021-06-07 07:50:57','2021-06-07 07:51:17','2021-06-07 07:50:57','2021-06-07 07:51:17',NULL,NULL,0,NULL),(6,'export_files_cleanup','scheduled',10,'2021-06-19 00:00:00',NULL,'2021-06-07 07:50:57','2021-06-07 07:50:57',NULL,NULL,0,NULL),(7,'woocommerce_sync','scheduled',10,'2021-06-16 00:00:00',NULL,'2021-06-07 07:50:57','2021-06-07 07:50:57',NULL,NULL,0,NULL),(8,'woocommerce_past_orders','completed',10,'2021-06-07 07:50:57','2021-06-07 07:51:37','2021-06-07 07:50:57','2021-06-07 07:51:37',NULL,0,0,NULL),(9,'stats_notification_automated_emails','scheduled',10,'2021-07-05 12:00:00',NULL,'2021-06-07 07:50:57','2021-06-07 07:50:57',NULL,NULL,0,NULL),(10,'subscribers_engagement_score','scheduled',10,'2021-06-08 11:47:00',NULL,'2021-06-07 07:50:57','2021-06-07 07:50:57',NULL,NULL,0,NULL),(11,'subscriber_link_tokens','completed',10,'2021-06-07 07:51:17','2021-06-07 07:51:56','2021-06-07 07:51:17','2021-06-07 07:51:56',NULL,0,0,NULL),(12,'beamer','scheduled',10,'2021-06-16 20:41:00',NULL,'2021-06-07 07:51:37','2021-06-07 07:51:37',NULL,NULL,0,NULL),(13,'inactive_subscribers','scheduled',10,'2021-06-18 00:00:00',NULL,'2021-06-07 08:51:10','2021-06-07 08:51:10',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `wp_mailpoet_scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_segments`
--

DROP TABLE IF EXISTS `wp_mailpoet_segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_segments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default',
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `average_engagement_score` float unsigned DEFAULT NULL,
  `average_engagement_score_updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `average_engagement_score_updated_at` (`average_engagement_score_updated_at`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_segments`
--

LOCK TABLES `wp_mailpoet_segments` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_segments` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_segments` VALUES (1,'WordPress Users','wp_users','This list contains all of your WordPress users.','2021-06-07 07:50:35','2021-06-07 07:50:35',NULL,NULL,NULL),(2,'WooCommerce Customers','woocommerce_users','This list contains all of your WooCommerce customers.','2021-06-07 07:50:35','2021-06-07 07:50:35',NULL,NULL,NULL),(3,'Newsletter mailing list','default','This list is automatically created when you install MailPoet.','2021-06-07 07:50:35','2021-06-07 07:50:35',NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_mailpoet_segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_sending_queues`
--

DROP TABLE IF EXISTS `wp_mailpoet_sending_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_sending_queues` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int unsigned NOT NULL,
  `newsletter_id` int unsigned NOT NULL,
  `newsletter_rendered_body` longtext COLLATE utf8mb4_unicode_520_ci,
  `newsletter_rendered_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subscribers` longtext COLLATE utf8mb4_unicode_520_ci,
  `count_total` int unsigned NOT NULL DEFAULT '0',
  `count_processed` int unsigned NOT NULL DEFAULT '0',
  `count_to_process` int unsigned NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `newsletter_id` (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_sending_queues`
--

LOCK TABLES `wp_mailpoet_sending_queues` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_sending_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_sending_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_settings`
--

DROP TABLE IF EXISTS `wp_mailpoet_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_settings`
--

LOCK TABLES `wp_mailpoet_settings` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_settings` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_settings` VALUES (1,'cron_trigger','a:1:{s:6:\"method\";s:9:\"WordPress\";}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(2,'sender','a:2:{s:4:\"name\";s:5:\"admin\";s:7:\"address\";s:20:\"baobaote00@gmail.com\";}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(3,'signup_confirmation','a:1:{s:7:\"enabled\";b:1;}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(4,'installed_at','2021-06-07 07:50:35','2021-06-07 07:50:35','2021-06-07 07:50:35'),(5,'captcha','a:3:{s:4:\"type\";s:8:\"built-in\";s:20:\"recaptcha_site_token\";s:0:\"\";s:22:\"recaptcha_secret_token\";s:0:\"\";}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(6,'subscriber_email_notification','a:3:{s:7:\"enabled\";b:1;s:9:\"automated\";b:1;s:7:\"address\";s:20:\"baobaote00@gmail.com\";}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(7,'stats_notifications','a:3:{s:7:\"enabled\";b:1;s:7:\"address\";s:20:\"baobaote00@gmail.com\";s:9:\"automated\";b:1;}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(8,'woocommerce','a:1:{s:17:\"optin_on_checkout\";a:2:{s:7:\"enabled\";b:1;s:7:\"message\";s:79:\"I would like to receive exclusive emails with discounts and product information\";}}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(9,'mta_log','a:6:{s:4:\"sent\";N;s:7:\"started\";i:1623052235;s:6:\"status\";N;s:13:\"retry_attempt\";N;s:8:\"retry_at\";N;s:5:\"error\";N;}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(10,'3rd_party_libs','a:1:{s:7:\"enabled\";s:1:\"1\";}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(11,'subscription','a:1:{s:5:\"pages\";a:5:{s:11:\"unsubscribe\";i:10;s:6:\"manage\";i:10;s:12:\"confirmation\";i:10;s:7:\"captcha\";i:10;s:19:\"confirm_unsubscribe\";i:10;}}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(12,'db_version','3.62.1','2021-06-07 07:50:35','2021-06-07 07:50:35'),(13,'updates_log','a:1:{i:0;a:3:{s:16:\"previous_version\";N;s:11:\"new_version\";s:6:\"3.62.1\";s:4:\"date\";s:19:\"2021-06-07 07:50:35\";}}','2021-06-07 07:50:35','2021-06-07 07:50:35'),(14,'cron_trigger_wordpress','a:1:{s:11:\"last_run_at\";i:1623084270;}','2021-06-07 07:50:57','2021-06-07 16:44:30'),(15,'cron_daemon','a:8:{s:5:\"token\";s:5:\"7rmmj\";s:6:\"status\";s:8:\"inactive\";s:15:\"run_accessed_at\";i:1623055869;s:14:\"run_started_at\";i:1623055870;s:16:\"run_completed_at\";i:1623055870;s:10:\"last_error\";N;s:15:\"last_error_date\";N;s:10:\"updated_at\";i:1623055870;}','2021-06-07 07:50:57','2021-06-07 16:44:30'),(16,'last_announcement_date','1615460446','2021-06-07 07:51:17','2021-06-07 07:51:17');
/*!40000 ALTER TABLE `wp_mailpoet_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_statistics_clicks`
--

DROP TABLE IF EXISTS `wp_mailpoet_statistics_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_statistics_clicks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `queue_id` int unsigned NOT NULL,
  `link_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `newsletter_id_subscriber_id` (`newsletter_id`,`subscriber_id`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_statistics_clicks`
--

LOCK TABLES `wp_mailpoet_statistics_clicks` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_clicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_statistics_forms`
--

DROP TABLE IF EXISTS `wp_mailpoet_statistics_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_statistics_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int unsigned NOT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_subscriber` (`form_id`,`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_statistics_forms`
--

LOCK TABLES `wp_mailpoet_statistics_forms` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_statistics_newsletters`
--

DROP TABLE IF EXISTS `wp_mailpoet_statistics_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_statistics_newsletters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `queue_id` int unsigned NOT NULL,
  `sent_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `newsletter_id` (`newsletter_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_statistics_newsletters`
--

LOCK TABLES `wp_mailpoet_statistics_newsletters` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_statistics_opens`
--

DROP TABLE IF EXISTS `wp_mailpoet_statistics_opens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_statistics_opens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `queue_id` int unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `newsletter_id_subscriber_id` (`newsletter_id`,`subscriber_id`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`),
  KEY `created_at` (`created_at`),
  KEY `subscriber_id_created_at` (`subscriber_id`,`created_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_statistics_opens`
--

LOCK TABLES `wp_mailpoet_statistics_opens` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_opens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_opens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_statistics_unsubscribes`
--

DROP TABLE IF EXISTS `wp_mailpoet_statistics_unsubscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_statistics_unsubscribes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned DEFAULT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `queue_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT 'unknown',
  `meta` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_id_subscriber_id` (`newsletter_id`,`subscriber_id`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_statistics_unsubscribes`
--

LOCK TABLES `wp_mailpoet_statistics_unsubscribes` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_unsubscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_unsubscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_statistics_woocommerce_purchases`
--

DROP TABLE IF EXISTS `wp_mailpoet_statistics_woocommerce_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_statistics_woocommerce_purchases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `subscriber_id` int unsigned NOT NULL,
  `queue_id` int unsigned NOT NULL,
  `click_id` int unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `order_currency` char(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_price_total` float NOT NULL COMMENT 'With shipping and taxes in order_currency',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `click_id_order_id` (`click_id`,`order_id`),
  KEY `newsletter_id` (`newsletter_id`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_statistics_woocommerce_purchases`
--

LOCK TABLES `wp_mailpoet_statistics_woocommerce_purchases` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_woocommerce_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_statistics_woocommerce_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_stats_notifications`
--

DROP TABLE IF EXISTS `wp_mailpoet_stats_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_stats_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL,
  `task_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_id_task_id` (`newsletter_id`,`task_id`),
  KEY `task_id` (`task_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_stats_notifications`
--

LOCK TABLES `wp_mailpoet_stats_notifications` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_stats_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_stats_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_subscriber_custom_field`
--

DROP TABLE IF EXISTS `wp_mailpoet_subscriber_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_subscriber_custom_field` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_id` int unsigned NOT NULL,
  `custom_field_id` int unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriber_id_custom_field_id` (`subscriber_id`,`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_subscriber_custom_field`
--

LOCK TABLES `wp_mailpoet_subscriber_custom_field` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_subscriber_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_subscriber_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_subscriber_ips`
--

DROP TABLE IF EXISTS `wp_mailpoet_subscriber_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_subscriber_ips` (
  `ip` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`created_at`,`ip`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_subscriber_ips`
--

LOCK TABLES `wp_mailpoet_subscriber_ips` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_subscriber_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_subscriber_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_subscriber_segment`
--

DROP TABLE IF EXISTS `wp_mailpoet_subscriber_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_subscriber_segment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_id` int unsigned NOT NULL,
  `segment_id` int unsigned NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriber_segment` (`subscriber_id`,`segment_id`),
  KEY `segment_id` (`segment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_subscriber_segment`
--

LOCK TABLES `wp_mailpoet_subscriber_segment` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_subscriber_segment` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_subscriber_segment` VALUES (1,1,1,'subscribed','2021-06-07 07:50:35','2021-06-07 07:50:35');
/*!40000 ALTER TABLE `wp_mailpoet_subscriber_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_subscribers`
--

DROP TABLE IF EXISTS `wp_mailpoet_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_subscribers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `wp_user_id` bigint DEFAULT NULL,
  `is_woocommerce_user` int NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'unconfirmed',
  `subscribed_ip` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `confirmed_ip` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `last_subscribed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `unconfirmed_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `source` enum('form','imported','administrator','api','wordpress_user','woocommerce_user','woocommerce_checkout','unknown') COLLATE utf8mb4_unicode_520_ci DEFAULT 'unknown',
  `count_confirmations` int unsigned NOT NULL DEFAULT '0',
  `unsubscribe_token` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_token` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `engagement_score` float unsigned DEFAULT NULL,
  `engagement_score_updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `unsubscribe_token` (`unsubscribe_token`),
  KEY `wp_user_id` (`wp_user_id`),
  KEY `updated_at` (`updated_at`),
  KEY `status_deleted_at` (`status`,`deleted_at`),
  KEY `last_subscribed_at` (`last_subscribed_at`),
  KEY `engagement_score_updated_at` (`engagement_score_updated_at`),
  KEY `link_token` (`link_token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_subscribers`
--

LOCK TABLES `wp_mailpoet_subscribers` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_subscribers` DISABLE KEYS */;
INSERT INTO `wp_mailpoet_subscribers` VALUES (1,1,0,'admin','','baobaote00@gmail.com','unconfirmed',NULL,NULL,NULL,NULL,'2021-06-07 07:50:35','2021-06-07 07:51:17',NULL,NULL,'wordpress_user',0,'7ersrzpur2g4gkc','f32a02',NULL,NULL);
/*!40000 ALTER TABLE `wp_mailpoet_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mailpoet_user_flags`
--

DROP TABLE IF EXISTS `wp_mailpoet_user_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_mailpoet_user_flags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_name` (`user_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mailpoet_user_flags`
--

LOCK TABLES `wp_mailpoet_user_flags` WRITE;
/*!40000 ALTER TABLE `wp_mailpoet_user_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_mailpoet_user_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=668 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_wp_attached_file','woocommerce-placeholder.png'),(4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(5,1,'_edit_lock','1623059425:1'),(6,12,'_edit_last','1'),(7,12,'_edit_lock','1623059515:1'),(8,12,'_regular_price','10000'),(9,12,'total_sales','0'),(10,12,'_tax_status','taxable'),(11,12,'_tax_class',''),(12,12,'_manage_stock','no'),(13,12,'_backorders','no'),(14,12,'_sold_individually','no'),(15,12,'_virtual','no'),(16,12,'_downloadable','no'),(17,12,'_download_limit','-1'),(18,12,'_download_expiry','-1'),(30,13,'total_sales','0'),(20,12,'_stock_status','instock'),(21,12,'_wc_average_rating','0'),(22,12,'_wc_review_count','0'),(23,12,'_product_version','5.3.0'),(24,12,'_price','10000'),(25,13,'_edit_last','1'),(26,13,'_edit_lock','1623074175:1'),(27,14,'_wp_attached_file','2021/06/dog.jpg'),(28,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:317;s:6:\"height\";i:159;s:4:\"file\";s:15:\"2021/06/dog.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"dog-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"dog-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"dog-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"dog-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"dog-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"dog-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(29,13,'_thumbnail_id','14'),(31,13,'_tax_status','taxable'),(32,13,'_tax_class',''),(33,13,'_manage_stock','no'),(34,13,'_backorders','no'),(35,13,'_sold_individually','no'),(36,13,'_virtual','no'),(37,13,'_downloadable','no'),(38,13,'_download_limit','-1'),(39,13,'_download_expiry','-1'),(40,13,'_stock',NULL),(41,13,'_stock_status','instock'),(42,13,'_wc_average_rating','0'),(43,13,'_wc_review_count','0'),(44,13,'_product_version','5.3.0'),(45,15,'_wp_attached_file','2021/06/CMS-1.jpg'),(46,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:349;s:6:\"height\";i:205;s:4:\"file\";s:17:\"2021/06/CMS-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"CMS-1-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"CMS-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"CMS-1-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"CMS-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"CMS-1-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"CMS-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-06-07 07:44:12','2021-06-07 07:44:12','<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->','Chào tất cả mọi người!','','publish','open','open','','chao-moi-nguoi','','','2021-06-07 07:44:12','2021-06-07 07:44:12','',0,'http://wordpress.prj/?p=1',0,'post','',1),(2,1,'2021-06-07 07:44:12','2021-06-07 07:44:12','<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://wordpress.prj/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->','Trang Mẫu','','publish','closed','open','','Trang mẫu','','','2021-06-07 07:44:12','2021-06-07 07:44:12','',0,'http://wordpress.prj/?page_id=2',0,'page','',0),(3,1,'2021-06-07 07:44:12','2021-06-07 07:44:12','<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://wordpress.prj.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Bình luận</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Nội dung nhúng từ website khác</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph -->','Chính sách bảo mật','','draft','closed','open','','chinh-sach-bao-mat','','','2021-06-07 07:44:12','2021-06-07 07:44:12','',0,'http://wordpress.prj/?page_id=3',0,'page','',0),(4,1,'2021-06-07 07:44:30','0000-00-00 00:00:00','','Lưu bản nháp tự động','','auto-draft','open','open','','','','','2021-06-07 07:44:30','0000-00-00 00:00:00','',0,'http://wordpress.prj/?p=4',0,'post','',0),(5,1,'2021-06-07 07:48:03','2021-06-07 07:48:03','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2021-06-07 07:48:03','2021-06-07 07:48:03','',0,'http://wordpress.prj/wp-content/uploads/2021/06/woocommerce-placeholder.png',0,'attachment','image/png',0),(6,1,'2021-06-07 07:48:04','2021-06-07 07:48:04','','Shop','','publish','closed','closed','','shop','','','2021-06-07 07:48:04','2021-06-07 07:48:04','',0,'http://wordpress.prj/shop/',0,'page','',0),(7,1,'2021-06-07 07:48:04','2021-06-07 07:48:04','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','publish','closed','closed','','cart','','','2021-06-07 07:48:04','2021-06-07 07:48:04','',0,'http://wordpress.prj/cart/',0,'page','',0),(8,1,'2021-06-07 07:48:04','2021-06-07 07:48:04','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2021-06-07 07:48:04','2021-06-07 07:48:04','',0,'http://wordpress.prj/checkout/',0,'page','',0),(9,1,'2021-06-07 07:48:04','2021-06-07 07:48:04','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2021-06-07 07:48:04','2021-06-07 07:48:04','',0,'http://wordpress.prj/my-account/',0,'page','',0),(10,1,'2021-06-07 07:50:35','2021-06-07 07:50:35','[mailpoet_page]','MailPoet Page','','publish','closed','closed','','subscriptions','','','2021-06-07 07:50:35','2021-06-07 07:50:35','',0,'http://wordpress.prj/?p=10',0,'mailpoet_page','',0),(11,1,'2021-06-07 09:49:25','2021-06-07 09:49:25','<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->','Chào tất cả mọi người!','','inherit','closed','closed','','1-autosave-v1','','','2021-06-07 09:49:25','2021-06-07 09:49:25','',1,'http://wordpress.prj/?p=11',0,'revision','',0),(12,1,'2021-06-07 09:53:59','2021-06-07 09:53:59','123','uyen','','publish','open','closed','','uyen','','','2021-06-07 09:54:00','2021-06-07 09:54:00','',0,'http://wordpress.prj/?post_type=product&#038;p=12',0,'product','',0),(13,1,'2021-06-07 09:57:42','2021-06-07 09:57:42','12313','iphone 13','','publish','open','closed','','iphone-13','','','2021-06-07 09:57:42','2021-06-07 09:57:42','',0,'http://wordpress.prj/?post_type=product&#038;p=13',0,'product','',0),(14,1,'2021-06-07 09:57:34','2021-06-07 09:57:34','','dog','','inherit','open','closed','','dog','','','2021-06-07 09:57:34','2021-06-07 09:57:34','',13,'http://wordpress.prj/wp-content/uploads/2021/06/dog.jpg',0,'attachment','image/jpeg',0),(15,1,'2021-06-07 14:00:17','2021-06-07 14:00:17','','CMS-1','','inherit','open','closed','','cms-1','','','2021-06-07 14:00:17','2021-06-07 14:00:17','',0,'http://wordpress.prj/wp-content/uploads/2021/06/CMS-1.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(12,15,0),(12,2,0),(13,15,0),(13,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'product_type','',0,2),(3,3,'product_type','',0,0),(4,4,'product_type','',0,0),(5,5,'product_type','',0,0),(6,6,'product_visibility','',0,0),(7,7,'product_visibility','',0,0),(8,8,'product_visibility','',0,0),(9,9,'product_visibility','',0,0),(10,10,'product_visibility','',0,0),(11,11,'product_visibility','',0,0),(12,12,'product_visibility','',0,0),(13,13,'product_visibility','',0,0),(14,14,'product_visibility','',0,0),(15,15,'product_cat','',0,2),(16,16,'product_cat','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,15,'product_count_product_cat','2'),(2,16,'order','0'),(3,16,'display_type',''),(4,16,'thumbnail_id','15');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Chưa phân loại','khong-phan-loai',0),(2,'simple','simple',0),(3,'grouped','grouped',0),(4,'variable','variable',0),(5,'external','external',0),(6,'exclude-from-search','exclude-from-search',0),(7,'exclude-from-catalog','exclude-from-catalog',0),(8,'featured','featured',0),(9,'outofstock','outofstock',0),(10,'rated-1','rated-1',0),(11,'rated-2','rated-2',0),(12,'rated-3','rated-3',0),(13,'rated-4','rated-4',0),(14,'rated-5','rated-5',0),(15,'Uncategorized','uncategorized',0),(16,'SUN GLASSES','sports-outdoor',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"761a7655695b237bb89ab2f228f5089ed21beade8198afdd8268b356829c6ec2\";a:4:{s:10:\"expiration\";i:1623224667;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36 Edg/91.0.864.41\";s:5:\"login\";i:1623051867;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'_woocommerce_tracks_anon_id','woo:3SGd/oK/3jwhzVP+OtSYOUmF'),(19,1,'last_update','1623052091'),(20,1,'woocommerce_admin_activity_panel_inbox_last_read','1623052090451'),(21,1,'jetpack_tracks_anon_id','jetpack:hWiyDm1UmzqheiNMbIinRL6k'),(22,1,'wc_last_active','1623024000'),(23,1,'wp_user-settings','libraryContent=browse'),(24,1,'wp_user-settings-time','1623059859'),(25,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:1:{s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:11:{s:3:\"key\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:10:\"product_id\";i:12;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:43;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:420000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:420000;s:8:\"line_tax\";i:0;}}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$Bk0MiLLxS5zxm9VS4qMUyPkRezc0a90','admin','baobaote00@gmail.com','http://wordpress.prj','2021-06-07 07:44:12','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (105,1,'open_wc_paypal_payments_product_page','Learn more','https://woocommerce.com/products/woocommerce-paypal-payments/','actioned',1,''),(106,2,'upgrade_now_facebook_pixel_api','Upgrade now','plugin-install.php?tab=plugin-information&plugin=&section=changelog','actioned',1,''),(107,3,'learn_more_facebook_ec','Learn more','https://woocommerce.com/products/facebook/','unactioned',1,''),(108,4,'set-up-concierge','Schedule free session','https://wordpress.com/me/concierge','actioned',1,''),(109,5,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox','unactioned',1,''),(110,6,'learn-more-ecomm-unique-shopping-experience','Learn more','https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox','actioned',1,''),(111,7,'watch-the-webinar','Watch the webinar','https://youtu.be/V_2XtCOyZ7o','actioned',1,''),(112,8,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox','actioned',1,''),(113,9,'boost-sales-marketing-guide','See marketing guide','https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales','actioned',1,''),(114,10,'grow-your-business-marketing-guide','See marketing guide','https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business','actioned',1,''),(115,11,'add-apple-pay','Add Apple Pay','/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments','actioned',1,''),(117,12,'boost-sales-marketing-guide','See marketing guide','https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales','actioned',1,''),(118,13,'grow-your-business-marketing-guide','See marketing guide','https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business','actioned',1,''),(119,14,'optimizing-the-checkout-flow','Learn more','https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox','actioned',1,''),(120,15,'learn-more','Learn more','https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox','unactioned',1,''),(121,16,'qualitative-feedback-from-new-users','Share feedback','https://automattic.survey.fm/wc-pay-new','actioned',1,''),(122,17,'share-feedback','Share feedback','http://automattic.survey.fm/paypal-feedback','unactioned',1,''),(123,18,'learn-more','Learn about Instant Deposits eligibility','https://docs.woocommerce.com/document/payments/instant-deposits/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_instant_deposits','actioned',1,''),(124,19,'update-wc-subscriptions-3-0-15','View latest version','http://wordpress.prj/wp-admin/admin.php?page=wc-admin&page=wc-addons&section=helper','actioned',1,''),(21,20,'yes-please','Yes please!','https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin','actioned',0,''),(116,11,'learn-more','Learn more','https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay','actioned',1,''),(42,21,'connect','Connect','?page=wc-addons&section=helper','unactioned',0,''),(83,22,'customize-store-with-storefront','Let\'s go!','http://wordpress.prj/wp-admin/themes.php?page=storefront-welcome','actioned',1,''),(84,23,'learn-more','Learn more','https://docs.woocommerce.com/document/variable-product/?utm_source=inbox','actioned',0,'');
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'paypal_ppcp_gtm_2021','marketing','en_US','Offer more options with the new PayPal','Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(2,'facebook_pixel_api_2021','marketing','en_US','Improve the performance of your Facebook ads','Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved measurement and ad targeting capabilities.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(3,'facebook_ec_2021','marketing','en_US','Sync your product catalog with Facebook to help boost sales','A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(4,'ecomm-need-help-setting-up-your-store','info','en_US','Need help setting up your Store?','Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(5,'woocommerce-services','info','en_US','WooCommerce Shipping & Tax','WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(6,'ecomm-unique-shopping-experience','info','en_US','For a shopping experience as unique as your customers','Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(7,'wc-admin-getting-started-in-ecommerce','info','en_US','Getting Started in eCommerce - webinar','We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(8,'your-first-product','info','en_US','Your first product','That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','unactioned','woocommerce.com','2021-06-07 09:54:00',NULL,0,'plain','',0,'info'),(9,'wc-square-apple-pay-boost-sales','marketing','en_US','Boost sales with Apple Pay','Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(10,'wc-square-apple-pay-grow-your-business','marketing','en_US','Grow your business with Square and Apple Pay ','Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(11,'wcpay-apple-pay-is-now-available','marketing','en_US','Apple Pay is now available with WooCommerce Payments!','Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(12,'wcpay-apple-pay-boost-sales','marketing','en_US','Boost sales with Apple Pay','Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(13,'wcpay-apple-pay-grow-your-business','marketing','en_US','Grow your business with WooCommerce Payments and Apple Pay','Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(14,'wc-admin-optimizing-the-checkout-flow','info','en_US','Optimizing the checkout flow','It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(15,'wc-admin-first-five-things-to-customize','info','en_US','The first 5 things to customize in your store','Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(16,'wc-payments-qualitative-feedback','info','en_US','WooCommerce Payments setup - let us know what you think','Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(17,'share-your-feedback-on-paypal','info','en_US','Share your feedback on PayPal','Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(18,'wcpay_instant_deposits_gtm_2021','marketing','en_US','Get paid within minutes – Instant Deposits for WooCommerce Payments','Stay flexible with immediate access to your funds when you need them – including nights, weekends, and holidays. With <a href=\"https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_instant_deposits\">WooCommerce Payments\'</a> new Instant Deposits feature, you’re able to transfer your earnings to a debit card within minutes.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(19,'wc-subscriptions-security-update-3-0-15','info','en_US','WooCommerce Subscriptions security update!','We recently released an important security update to WooCommerce Subscriptions. To ensure your site\'s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.','{}','pending','woocommerce.com','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(20,'wc-admin-onboarding-email-marketing','info','en_US','Sign up for tips, product updates, and inspiration','We\'re here for you - get tips, product updates and inspiration straight to your email box','{}','unactioned','woocommerce-admin','2021-06-07 07:48:06',NULL,0,'plain','',0,'info'),(21,'wc-admin-wc-helper-connection','info','en_US','Connect to WooCommerce.com','Connect to get important product notifications and updates.','{}','unactioned','woocommerce-admin','2021-06-07 07:48:07',NULL,0,'plain','',0,'info'),(22,'storefront-customize','info','en_US','Design your store with Storefront 🎨','Visit the Storefront settings page to start setup and customization of your shop.','{}','unactioned','storefront','2021-06-07 07:51:20',NULL,0,'plain','',0,'info'),(23,'wc-admin-learn-more-about-variable-products','info','en_US','Learn more about variable products','Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.','{}','unactioned','woocommerce-admin','2021-06-07 09:53:59',NULL,0,'plain','',0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (15,15);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint unsigned NOT NULL,
  `coupon_id` bigint NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint unsigned NOT NULL,
  `tax_rate_id` bigint unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES (12,'',0,0,10000.0000,10000.0000,0,NULL,'instock',0,0.00,0,'taxable',''),(13,'',0,0,0.0000,0.0000,0,NULL,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Reduced rate','reduced-rate'),(2,'Zero rate','zero-rate');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (1,'1','a:9:{s:4:\"cart\";s:419:\"a:1:{s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:11:{s:3:\"key\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:10:\"product_id\";i:12;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:43;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:430000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:430000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:6:\"430000\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:6:\"430000\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"430000\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:734:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-06-07T07:48:11+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"baobaote00@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"mailchimp_landing_site\";s:44:\"http://wordpress.prj/wp-admin/admin-ajax.php\";s:10:\"wc_notices\";s:21018:\"a:2:{s:7:\"success\";a:43:{i:0;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:1;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:2;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:3;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:4;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:5;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:6;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:7;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:8;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:9;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:10;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:11;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:12;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:13;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:14;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:15;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:16;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:17;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:18;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:19;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:20;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:21;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:22;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:23;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:24;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:25;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:26;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:27;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:28;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:29;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:30;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:31;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:32;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:33;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:34;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:35;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:36;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:37;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:38;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:39;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:40;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:41;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}i:42;a:2:{s:6:\"notice\";s:137:\"<a href=\"http://wordpress.prj/cart/\" tabindex=\"1\" class=\"button wc-forward\">View cart</a> &ldquo;uyen&rdquo; has been added to your cart.\";s:4:\"data\";a:0:{}}}s:5:\"error\";a:145:{i:0;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:1;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:2;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:3;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:4;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:5;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:6;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:7;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:8;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:9;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:10;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:11;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:12;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:13;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:14;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:15;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:16;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:17;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:18;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:19;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:20;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:21;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:22;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:23;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:24;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:25;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:26;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:27;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:28;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:29;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:30;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:31;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:32;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:33;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:34;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:35;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:36;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:37;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:38;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:39;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:40;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:41;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:42;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:43;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:44;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:45;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:46;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:47;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:48;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:49;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:50;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:51;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:52;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:53;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:54;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:55;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:56;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:57;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:58;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:59;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:60;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:61;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:62;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:63;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:64;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:65;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:66;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:67;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:68;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:69;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:70;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:71;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:72;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:73;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:74;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:75;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:76;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:77;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:78;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:79;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:80;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:81;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:82;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:83;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:84;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:85;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:86;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:87;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:88;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:89;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:90;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:91;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:92;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:93;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:94;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:95;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:96;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:97;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:98;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:99;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:100;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:101;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:102;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:103;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:104;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:105;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:106;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:107;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:108;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:109;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:110;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:111;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:112;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:113;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:114;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:115;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:116;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:117;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:118;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:119;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:120;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:121;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:122;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:123;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:124;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:125;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:126;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:127;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:128;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:129;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:130;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:131;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:132;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:133;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:134;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:135;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:136;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:137;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:138;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:139;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:140;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:141;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:142;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:143;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}i:144;a:2:{s:6:\"notice\";s:40:\"Sorry, this product cannot be purchased.\";s:4:\"data\";a:0:{}}}}\";}',1623233391);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint unsigned NOT NULL,
  `instance_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint unsigned NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-08  0:01:24