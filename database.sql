-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ys4C7BYC1G1kzq7Pxfhhaii8fY9NBwi5',1,'2024-10-20 21:50:32','2024-10-20 21:50:32','2024-10-20 21:50:32');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-10-21 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL),(2,'Ads 2','2029-10-21 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL),(3,'Ads 3','2029-10-21 00:00:00','not_set','BN3ZCHLIE95I','main/gadgets/gadget-banner-1.jpg','/products',0,3,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL),(4,'Ads 4','2029-10-21 00:00:00','not_set','QGPRRJ2MPZYA','main/gadgets/gadget-banner-2.jpg','/products',0,4,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL),(5,'Ads 5','2029-10-21 00:00:00','not_set','B5ZA76ZWMWAE','main/banners/slider-1.png','http://shofy.test/products/sony-ht-a9-home-theater-system',0,5,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL),(6,'Ads 6','2029-10-21 00:00:00','not_set','F1LTQS976YPY','main/banners/slider-2.png','http://shofy.test',0,6,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL),(7,'Ads 7','2029-10-21 00:00:00','not_set','IHPZ2WBSYJUK','main/banners/slider-3.png','http://shofy.test',0,7,'published','2024-10-20 21:50:46','2024-10-20 21:50:46',1,NULL,NULL,'custom_ad',NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-10-21 04:50:41',NULL,1,'2024-10-20 21:50:41','2024-10-20 21:50:41'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-10-21 04:50:41',NULL,1,'2024-10-20 21:50:41','2024-10-20 21:50:41'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-10-21 04:50:41',NULL,1,'2024-10-20 21:50:41','2024-10-20 21:50:41');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Placeat ducimus ut et porro et. Aliquid reiciendis dolor odio odit quis qui tempora. Error hic porro soluta eum est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(2,'Fashion',0,'Voluptatibus nam ipsa recusandae et quis. Est eaque ad quo voluptatem assumenda nostrum dolorum. In voluptatem dolorem earum tempora impedit aut nostrum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(3,'Electronic',0,'Et aut et ipsa ex voluptatem enim velit. Ullam quia exercitationem deserunt. Necessitatibus odit blanditiis quisquam enim perferendis aut. Numquam ut dolorem id aut fugit maxime sunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(4,'Commercial',0,'Ad facilis pariatur veniam vero et. Voluptas reiciendis repellat voluptas ut et sed quae. Assumenda ipsa ut eum omnis vero. Porro omnis sit rem neque voluptas autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(5,'Organic Fruits',0,'Natus quia quibusdam nobis amet harum hic. Ut et provident quod nulla. Ipsum ratione voluptatibus non qui facilis omnis. Porro alias adipisci repellat nulla ut commodi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(6,'Ecological',0,'Qui iure qui ut ut modi voluptates vitae aspernatur. Consequuntur quae enim inventore officiis. Rem exercitationem est sint accusamus dolores. Sint a perspiciatis qui et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:50:37','2024-10-20 21:50:37');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Roberta Bechtelar','smitham.fleta@example.net','1-352-297-5842','339 Laury Expressway\nJustusburgh, CA 46524-0007','Dolorem itaque ea tempore magnam.','Atque corporis dignissimos qui quo consectetur blanditiis est. Eos voluptatem ipsum consequatur suscipit temporibus eum voluptatem eaque. Laborum incidunt nisi maiores voluptas sint velit molestias. Id velit officiis sed. Ea officiis autem blanditiis. Omnis ut est ut nisi. Pariatur aut praesentium iure quo non. Est corrupti id voluptatum modi odit. Nesciunt et vel dolores eum est. Ut dolorum ratione et repudiandae qui expedita eos recusandae.',NULL,'read','2024-10-20 21:50:36','2024-10-20 21:50:36'),(2,'Dr. Jonathan Leffler MD','kwest@example.org','+18143348127','7350 Murazik Path\nEast Milfordshire, LA 77782','Animi et suscipit blanditiis qui excepturi.','Aut blanditiis ut cupiditate quaerat sint doloremque. Quia ea ratione occaecati. Minus ipsam ipsum sint quisquam quam necessitatibus est. Qui explicabo illum in doloribus similique voluptatem aut. Dignissimos temporibus veniam debitis sint cupiditate aut odit. Nihil asperiores sed molestias dolorem enim aut dolore. Maxime accusantium animi ratione recusandae.',NULL,'unread','2024-10-20 21:50:36','2024-10-20 21:50:36'),(3,'Miss Stacey Jenkins Jr.','lester19@example.org','574.882.1748','70735 Hills Shores Apt. 703\nWest Jarrellhaven, MA 10034','Nam eos culpa facilis cupiditate magnam.','Commodi reiciendis eligendi delectus voluptatibus. Recusandae velit dolor repellat est. Alias inventore qui ipsum blanditiis. Sint dolor commodi ut et aut ut deserunt. Similique incidunt reprehenderit suscipit excepturi similique expedita repellat rem. Maxime dignissimos soluta aut et quisquam nam id. Ducimus omnis odio odit velit in. Quo repellat est ut quaerat. Perspiciatis sit architecto unde dolorum itaque voluptatem. Eaque debitis ut ut aut eius quod.',NULL,'unread','2024-10-20 21:50:36','2024-10-20 21:50:36'),(4,'Samanta Olson','reggie.hickle@example.org','+19206719450','25324 Mariam Drives Apt. 904\nIsobelbury, CT 89226','Ut et eum sequi omnis libero sint ex.','Quia eveniet voluptatibus ea dolores quasi et. Sapiente et odio illum et recusandae. Velit ut et eos maiores quo delectus qui voluptas. Non et ullam alias. Dolorem et est facilis velit aperiam. Eum qui blanditiis odit ipsa modi non repellat nulla. Sunt magnam accusantium aut aut. Ab sed nulla omnis dolorum minima. Nobis dolores aut est enim. Expedita eum deserunt quia ipsam ipsum animi vero tempora.',NULL,'read','2024-10-20 21:50:36','2024-10-20 21:50:36'),(5,'Dr. Lawrence Cummings','damore.mandy@example.net','616.530.9777','2067 Dibbert Ways\nEast Elmore, OK 73720-2027','Vitae expedita et ex beatae dolores vero id non.','Est non nesciunt odit aliquid ad. Explicabo et tenetur consequuntur voluptatem. Molestiae occaecati aut blanditiis placeat nisi earum pariatur ratione. Doloremque animi et cum sequi assumenda non debitis. Nihil ab libero aut maxime a dolores. Et eligendi officia est. Maxime et qui nesciunt quos eaque. Iure nihil quia doloremque consequatur et accusamus. Quod aut eum aut laborum soluta itaque natus eaque. Dolorem voluptates harum temporibus aliquam.',NULL,'unread','2024-10-20 21:50:36','2024-10-20 21:50:36'),(6,'Mr. Khalil Doyle V','paucek.rogelio@example.net','856.865.2677','70787 Kuhn Hills Apt. 910\nLockmanbury, AL 63327','Autem nulla quas in in ut itaque quis.','Adipisci sit officiis sit asperiores. Nihil laboriosam ex cumque debitis. Officiis illum fuga dicta omnis. Quia nesciunt aut cum maiores perspiciatis. Nihil unde impedit ea ipsa et molestiae. Exercitationem velit et dignissimos error tempore. In fugiat alias ut ea. Quae ut maiores architecto qui ut maxime ut. Sint officiis vel nostrum soluta.',NULL,'unread','2024-10-20 21:50:36','2024-10-20 21:50:36'),(7,'Mrs. Hettie Gaylord Jr.','tod78@example.org','+1.863.223.0027','12384 Maymie Plains Suite 138\nJaskolskiville, MN 44460-4144','Fugit ducimus sint voluptas expedita et ut.','Eaque quo nam velit qui. At non eum et numquam expedita et fuga. Consectetur optio vel expedita odio qui. Voluptates rem cupiditate voluptatem est et mollitia excepturi. Sed aperiam id velit est. Atque cumque quae ullam adipisci veniam deserunt. Ipsa numquam recusandae repudiandae. Consequatur aspernatur qui nesciunt voluptatem autem excepturi repellendus. Soluta et voluptatem officiis sint. Est velit corporis qui soluta.',NULL,'read','2024-10-20 21:50:36','2024-10-20 21:50:36'),(8,'Nicole Goyette','ecole@example.com','+1.860.498.7364','8707 Joshua Pass\nEast Janniemouth, GA 02837-7394','Atque voluptas omnis perspiciatis sed.','Minus eos est occaecati repellat doloribus et repellat. Repudiandae et distinctio praesentium. Ratione assumenda atque error provident qui tempora rerum. Quasi maxime sed ipsum veniam sit ipsum. Consequuntur beatae odit laboriosam quia inventore excepturi. Ad distinctio qui tenetur et quisquam sed voluptas. Ipsam ex ut dolorum placeat dicta. Voluptas neque omnis iusto dolor velit aut.',NULL,'unread','2024-10-20 21:50:36','2024-10-20 21:50:36'),(9,'Anissa Emard','nola.crona@example.org','845-283-3236','643 Reagan Ports\nKilbackshire, AL 79435-1465','Harum quidem unde quae assumenda et doloribus a.','Mollitia porro aut vel. Corrupti quod ea assumenda. Eligendi rerum rerum distinctio ab autem minus. Sequi asperiores quod aut architecto aut voluptas. Molestiae dolores at blanditiis vero eius velit. Voluptatem facilis amet dolore vero. Numquam cum eius provident praesentium aut. Et vel odit sit.',NULL,'unread','2024-10-20 21:50:36','2024-10-20 21:50:36'),(10,'Mary O\'Kon','cordia.thompson@example.com','+1-364-275-1922','78170 Sporer Harbors Suite 859\nBradyhaven, AR 55737','Nulla ut voluptatem recusandae amet.','Quam a et totam rem ut dolorem labore. Voluptas voluptate eum quia porro. Dolores voluptatem blanditiis a. Vitae quos error et sint non voluptas. Minima vel distinctio est quod. Quasi commodi exercitationem praesentium optio vel. Neque sit inventore molestiae libero accusamus. Ut corrupti blanditiis reiciendis et omnis dignissimos. Animi voluptatem dolorem animi fugit officiis tenetur sapiente qui. Ut ad facere adipisci unde sint ullam illo. Porro optio maxime perspiciatis error facere.',NULL,'read','2024-10-20 21:50:36','2024-10-20 21:50:36');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-10-20 21:50:32','2024-10-20 21:50:32');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(2,'EUR','€',0,2,1,0,0.84,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(3,'VND','₫',0,0,2,0,23203,'2024-10-20 21:50:32','2024-10-20 21:50:32'),(4,'NGN','₦',1,2,2,0,895.52,'2024-10-20 21:50:32','2024-10-20 21:50:32');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Ola Gutmann Sr.','customer@botble.com','+15865749879','MU','Utah','Rodolfostad','2078 Jessy Row Suite 312',1,1,'2024-10-20 21:50:33','2024-10-20 21:50:33','82513-5201'),(2,'Dr. Ola Gutmann Sr.','customer@botble.com','+15034634637','TJ','Idaho','North Wilbertside','878 Elijah Fort Suite 636',1,0,'2024-10-20 21:50:33','2024-10-20 21:50:33','74028'),(3,'Kayla Vandervort','vendor@botble.com','+18063997981','BQ','Colorado','Mrazburgh','61406 Mortimer Path',2,1,'2024-10-20 21:50:33','2024-10-20 21:50:33','99971-9198'),(4,'Kayla Vandervort','vendor@botble.com','+12298723637','AI','District of Columbia','East Reese','3799 Felix Mountains',2,0,'2024-10-20 21:50:33','2024-10-20 21:50:33','15794'),(5,'Cameron Altenwerth','luettgen.damaris@example.com','+15103401905','CM','Montana','Lake Alverta','9201 Kerluke Trail Suite 170',3,1,'2024-10-20 21:50:34','2024-10-20 21:50:34','68521'),(6,'Lawrence Zemlak','nicolas.camden@example.org','+12836182037','IQ','North Dakota','Willville','854 Bertrand Park Suite 807',4,1,'2024-10-20 21:50:34','2024-10-20 21:50:34','77260-7842'),(7,'Kody Orn PhD','trudie.bahringer@example.org','+19083604783','NP','Delaware','South Patsy','7618 Nola Fork',5,1,'2024-10-20 21:50:34','2024-10-20 21:50:34','18678-6784'),(8,'Celestino Ratke','swift.abbie@example.net','+13803774892','CL','Massachusetts','Deliaton','119 Leonard Forges Apt. 765',6,1,'2024-10-20 21:50:35','2024-10-20 21:50:35','87565-7450'),(9,'Quinton Langworth','landen50@example.net','+14795288713','FK','Minnesota','Brigitteland','69720 O\'Connell Streets Suite 177',7,1,'2024-10-20 21:50:35','2024-10-20 21:50:35','91956-1141'),(10,'Mr. Carmelo Fahey','bogan.rodger@example.net','+19374192369','PM','Colorado','North Coraton','61631 Lehner Plains Suite 705',8,1,'2024-10-20 21:50:35','2024-10-20 21:50:35','11704-3077'),(11,'Prof. Ansley Koss','zbogan@example.net','+17372995852','TV','Alaska','South Odiemouth','8597 Bonnie Plains Suite 336',9,1,'2024-10-20 21:50:36','2024-10-20 21:50:36','02948-4486'),(12,'Willie Hammes','rolando95@example.com','+13216330468','WF','Alabama','Emoryland','6143 Lennie Crescent Suite 562',10,1,'2024-10-20 21:50:36','2024-10-20 21:50:36','06710');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Ola Gutmann Sr.','customer@botble.com','$2y$12$Pe2fKlo0NsEDfMBaKArWNeTTG4ZYwQWdkLDd9BoG5Yg1fHDWg8spu','main/customers/10.jpg','1984-10-05','+13238381044',NULL,'2024-10-20 21:50:33','2024-10-20 21:50:33','2024-10-21 04:50:33',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(2,'Kayla Vandervort','vendor@botble.com','$2y$12$53VdBSlKWlnM4eWUfQDnBefRS/6BS8WQOrjxzb06WkYnVPG0M/cQm','main/customers/4.jpg','1993-09-23','+19896619500',NULL,'2024-10-20 21:50:33','2024-10-20 21:50:38','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(3,'Cameron Altenwerth','luettgen.damaris@example.com','$2y$12$Uf3asc5j90nC9MjwZ8Q/l.CUOguXZSvqES2Nbi/OpEJbXS6HxQy/i','main/customers/1.jpg','1988-09-29','+17086241559',NULL,'2024-10-20 21:50:34','2024-10-20 21:50:39','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(4,'Lawrence Zemlak','nicolas.camden@example.org','$2y$12$6VmHBWUgLmkkNsHYBl4gfeSawACMfZQ8jiNK3W4mdDHMxYxoB3.qW','main/customers/2.jpg','1991-09-28','+16895077318',NULL,'2024-10-20 21:50:34','2024-10-20 21:50:39','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(5,'Kody Orn PhD','trudie.bahringer@example.org','$2y$12$WBaw9CUTQvlkbERTj0V9Q.fWaXYCPzFdZqPIRK1eNWyb4llOd.yRq','main/customers/3.jpg','1982-09-27','+19518837886',NULL,'2024-10-20 21:50:34','2024-10-20 21:50:39','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(6,'Celestino Ratke','swift.abbie@example.net','$2y$12$gYTgrDNwB5Yz4iScy9.OFuhyiH6LcXhGaPYnbil.jPjgFWMlWGVRe','main/customers/4.jpg','1976-10-10','+17324848899',NULL,'2024-10-20 21:50:35','2024-10-20 21:50:39','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(7,'Quinton Langworth','landen50@example.net','$2y$12$m6X5F2wLbO297zx5O6W7ju/q1WPgdND/KCqHXwcYtWdUgP2b20LxO','main/customers/5.jpg','1979-10-08','+12406361862',NULL,'2024-10-20 21:50:35','2024-10-20 21:50:40','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(8,'Mr. Carmelo Fahey','bogan.rodger@example.net','$2y$12$N6TPd56cNpJa2l308SG8iuv/WHVwDftNtgj9GpSIzDzMdrqxKYgL.','main/customers/6.jpg','1991-09-24','+19597658588',NULL,'2024-10-20 21:50:35','2024-10-20 21:50:40','2024-10-21 04:50:33',NULL,1,'2024-10-21 04:50:38','activated',NULL,NULL,NULL,0),(9,'Prof. Ansley Koss','zbogan@example.net','$2y$12$IweJTydPgYJnROqxkO2HU.hY/efjhaftrZ1qEOOi3ASqXlm81KyEa','main/customers/7.jpg','1978-09-21','+14105534761',NULL,'2024-10-20 21:50:36','2024-10-20 21:50:41','2024-10-21 04:50:33',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(10,'Willie Hammes','rolando95@example.com','$2y$12$qtjgmj7ByhZ1ri8uk2LxheiWADOpkKVBnOIslm4v8T7Z.eNF.sUqS','main/customers/8.jpg','2004-10-11','+14426490322',NULL,'2024-10-20 21:50:36','2024-10-20 21:50:41','2024-10-21 04:50:33',NULL,0,NULL,'activated',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','ESLMQCZMYRUP','2024-10-20 04:50:37',NULL,NULL,0,80,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(2,'Discount 2','4RFADFEKCMXI','2024-10-20 04:50:37',NULL,NULL,0,510,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(3,'Discount 3','QOYY2CIH06D0','2024-10-20 04:50:37','2024-11-20 04:50:37',NULL,0,78,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(4,'Discount 4','I9HGFWDQ0KVG','2024-10-20 04:50:37',NULL,NULL,0,35,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(5,'Discount 5','CNFVSYINPUQC','2024-10-20 04:50:37',NULL,NULL,0,232,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(6,'Discount 6','TY2THLVQDQOF','2024-10-20 04:50:37',NULL,NULL,0,814,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(7,'Discount 7','EHN0XRHIMTCR','2024-10-20 04:50:37','2024-11-16 04:50:37',NULL,0,732,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(8,'Discount 8','OF6QRSUA6EF5','2024-10-20 04:50:37','2024-10-23 04:50:37',NULL,0,327,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(9,'Discount 9','2EOJQRJJBPRV','2024-10-20 04:50:37','2024-10-31 04:50:37',NULL,0,39,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL),(10,'Discount 10','KRTUXENGWQQJ','2024-10-20 04:50:37',NULL,NULL,0,38,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,309.12,14,5),(1,2,951.08,9,2),(1,3,14.06,17,2),(1,4,530.88,8,3),(1,5,379.62,14,4),(1,6,52.08,17,5),(1,7,334.88,7,3),(1,8,492.1,19,5),(1,9,1542,20,5),(1,10,154.7,12,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-11-13 00:00:00','published','2024-10-20 21:50:46','2024-10-20 21:50:46');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(2,1,'2 Year',10,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(3,1,'3 Year',20,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(4,2,'4GB',0,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(5,2,'8GB',10,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(6,2,'16GB',20,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(7,3,'Core i5',0,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(8,3,'Core i7',10,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(9,3,'Core i9',20,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(10,4,'128GB',0,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(11,4,'256GB',10,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(12,4,'512GB',20,9999,0,'2024-10-20 21:50:37','2024-10-20 21:50:37');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-10-20 21:50:37','2024-10-20 21:50:37');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-10-20 21:50:33','2024-10-20 21:50:33',0),(2,'Size','size','text',1,1,1,'published',1,'2024-10-20 21:50:33','2024-10-20 21:50:33',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-10-20 21:50:33','2024-10-20 21:50:33',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-10-20 21:50:33','2024-10-20 21:50:33',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(6,2,'S','s',NULL,NULL,1,1,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(7,2,'M','m',NULL,NULL,0,2,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(8,2,'L','l',NULL,NULL,0,3,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-10-20 21:50:33','2024-10-20 21:50:33'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-10-20 21:50:33','2024-10-20 21:50:33');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'New Arrivals',0,NULL,'published',0,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-home',NULL),(2,'Electronics',0,NULL,'published',1,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-tv',NULL),(3,'Featured',2,NULL,'published',0,'main/product-categories/menu-1.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(4,'New Arrivals',3,NULL,'published',0,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(5,'Best Sellers',3,NULL,'published',1,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(6,'Mobile Phone',3,NULL,'published',2,'main/product-categories/2.png',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(7,'Computers & Laptops',2,NULL,'published',1,'main/product-categories/menu-2.jpg',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(8,'Top Brands',7,NULL,'published',0,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(9,'Weekly Best Selling',7,NULL,'published',1,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(10,'CPU Heat Pipes',7,NULL,'published',2,'main/product-categories/3.png',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(11,'CPU Coolers',7,NULL,'published',3,'main/product-categories/category-thumb-9.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(12,'Accessories',2,NULL,'published',2,'main/product-categories/menu-3.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(13,'Headphones',12,NULL,'published',0,'main/product-categories/1.png',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(14,'Wireless Headphones',12,NULL,'published',1,'main/product-categories/category-thumb-1.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(15,'TWS Earphones',12,NULL,'published',2,'main/product-categories/category-thumb-6.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(16,'Smart Watch',12,NULL,'published',3,'main/product-categories/4.png',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(17,'Gaming Console',2,NULL,'published',3,'main/product-categories/category-thumb-8.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(18,'Playstation',2,NULL,'published',4,'main/product-categories/category-thumb-12.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(19,'Gifts',0,NULL,'published',2,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-gift',NULL),(20,'Computers',0,NULL,'published',3,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-laptop',NULL),(21,'Desktop',20,NULL,'published',0,'main/product-categories/category-thumb-5.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-desktop',NULL),(22,'Laptop',20,NULL,'published',1,'main/product-categories/category-thumb-3.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-laptop',NULL),(23,'Tablet',20,NULL,'published',2,'main/product-categories/category-thumb-4.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-tablet',NULL),(24,'Accessories',20,NULL,'published',3,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-keyboard',NULL),(25,'Smartphones & Tablets',0,NULL,'published',4,'main/product-categories/category-thumb-10.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-mobile',NULL),(26,'TV,\n                Video & Music',0,NULL,'published',5,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-device-tv',NULL),(27,'Cameras',0,NULL,'published',6,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-camera',NULL),(28,'Cooking',0,NULL,'published',7,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-grill-spatula',NULL),(29,'Accessories',0,NULL,'published',8,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-building-store',NULL),(30,'With Bluetooth',29,NULL,'published',0,'main/product-categories/5.png',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(31,'Sports',0,NULL,'published',9,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-ball-football',NULL),(32,'Electronics Gadgets',0,NULL,'published',10,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42','ti ti-cpu-2',NULL),(33,'Micrscope',32,NULL,'published',0,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(34,'Remote Control',32,NULL,'published',1,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(35,'Monitor',32,NULL,'published',2,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(36,'Thermometer',32,NULL,'published',3,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(37,'Backpack',32,NULL,'published',4,NULL,0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL),(38,'Headphones',32,NULL,'published',5,'main/product-categories/category-thumb-1.jpg',0,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,7),(1,9),(1,20),(1,25),(1,34),(1,52),(1,54),(2,6),(2,7),(2,30),(2,46),(2,51),(2,54),(3,7),(3,16),(3,19),(3,25),(3,38),(3,40),(3,54),(3,56),(4,8),(4,32),(4,39),(4,50),(5,9),(5,19),(5,21),(5,41),(5,49),(6,12),(6,29),(6,43),(6,44),(6,47),(6,48),(6,56),(7,2),(7,17),(7,24),(7,32),(7,36),(7,40),(7,46),(7,56),(8,14),(8,15),(8,22),(8,28),(8,30),(8,35),(8,37),(8,41),(8,50),(8,52),(8,53),(9,3),(9,10),(9,16),(9,17),(9,26),(9,44),(9,45),(10,3),(10,4),(10,7),(10,42),(10,55),(11,10),(11,18),(11,21),(11,39),(11,53),(11,55),(12,2),(12,5),(12,26),(12,31),(12,56),(13,3),(13,24),(13,33),(13,37),(13,45),(13,57),(14,1),(14,5),(14,11),(14,30),(14,52),(15,4),(15,13),(15,34),(15,37),(15,38),(15,43),(16,18),(16,19),(16,20),(16,22),(16,41),(16,49),(16,50),(17,2),(17,24),(17,25),(17,43),(17,47),(17,55),(18,22),(18,23),(18,27),(18,28),(18,29),(18,35),(18,36),(18,48),(19,9),(19,12),(19,26),(19,28),(19,38),(19,50),(19,52),(20,3),(20,18),(20,31),(20,32),(20,49),(20,53),(21,13),(21,20),(21,33),(21,40),(22,15),(22,19),(22,27),(22,30),(22,36),(22,42),(22,48),(23,17),(23,23),(23,24),(23,25),(23,26),(23,28),(23,42),(23,47),(23,57),(24,8),(24,21),(25,4),(25,27),(25,32),(25,34),(26,16),(26,35),(26,46),(27,1),(27,14),(28,8),(28,14),(28,21),(28,35),(29,12),(29,22),(29,45),(29,55),(30,1),(30,10),(30,23),(30,36),(30,43),(31,16),(31,27),(31,34),(31,37),(31,46),(31,51),(31,57),(32,1),(32,6),(32,9),(32,12),(32,14),(32,31),(32,45),(32,54),(33,11),(33,15),(33,20),(33,39),(33,48),(33,51),(34,4),(34,13),(34,17),(34,18),(34,40),(34,42),(34,44),(34,57),(35,11),(35,13),(35,33),(36,5),(36,6),(36,8),(36,15),(36,23),(36,31),(36,33),(36,39),(36,49),(36,51),(37,5),(37,6),(37,29),(37,47),(38,10),(38,11),(38,29),(38,38),(38,41),(38,44),(38,53);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,8),(1,10),(1,13),(1,20),(1,26),(1,32),(1,37),(1,45),(1,48),(1,51),(1,53),(1,57),(2,2),(2,9),(2,11),(2,19),(2,21),(2,24),(2,27),(2,29),(2,33),(2,34),(2,39),(2,44),(2,47),(2,50),(2,52),(2,56),(3,3),(3,4),(3,5),(3,6),(3,15),(3,16),(3,22),(3,23),(3,25),(3,38),(3,43),(3,49),(3,54),(4,1),(4,7),(4,12),(4,14),(4,17),(4,18),(4,28),(4,30),(4,31),(4,35),(4,36),(4,40),(4,41),(4,42),(4,46),(4,55);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-10-20 21:50:42','2024-10-20 21:50:42',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-10-20 21:50:42','2024-10-20 21:50:42',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-10-20 21:50:42','2024-10-20 21:50:42',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-10-20 21:50:42','2024-10-20 21:50:42',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,38,0,0.00,'fixed',1),(1,45,0,0.00,'fixed',1),(1,50,0,0.00,'fixed',1),(1,52,0,0.00,'fixed',1),(1,53,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(2,28,0,0.00,'fixed',1),(2,41,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,12,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,22,0,0.00,'fixed',1),(3,30,0,0.00,'fixed',1),(3,48,0,0.00,'fixed',1),(4,6,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,34,0,0.00,'fixed',1),(4,35,0,0.00,'fixed',1),(4,51,0,0.00,'fixed',1),(4,57,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,30,0,0.00,'fixed',1),(5,31,0,0.00,'fixed',1),(5,32,0,0.00,'fixed',1),(5,34,0,0.00,'fixed',1),(5,38,0,0.00,'fixed',1),(5,48,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,24,0,0.00,'fixed',1),(6,29,0,0.00,'fixed',1),(6,36,0,0.00,'fixed',1),(6,51,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(7,22,0,0.00,'fixed',1),(7,42,0,0.00,'fixed',1),(7,49,0,0.00,'fixed',1),(7,57,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,14,0,0.00,'fixed',1),(8,21,0,0.00,'fixed',1),(8,22,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(8,43,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,33,0,0.00,'fixed',1),(9,40,0,0.00,'fixed',1),(9,46,0,0.00,'fixed',1),(9,47,0,0.00,'fixed',1),(9,55,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,4,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,27,0,0.00,'fixed',1),(10,31,0,0.00,'fixed',1),(10,49,0,0.00,'fixed',1),(10,57,0,0.00,'fixed',1),(11,3,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,38,0,0.00,'fixed',1),(11,45,0,0.00,'fixed',1),(11,46,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(12,25,0,0.00,'fixed',1),(12,33,0,0.00,'fixed',1),(12,43,0,0.00,'fixed',1),(12,57,0,0.00,'fixed',1),(13,2,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,19,0,0.00,'fixed',1),(13,27,0,0.00,'fixed',1),(13,29,0,0.00,'fixed',1),(13,31,0,0.00,'fixed',1),(13,41,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,27,0,0.00,'fixed',1),(14,38,0,0.00,'fixed',1),(14,39,0,0.00,'fixed',1),(14,42,0,0.00,'fixed',1),(14,52,0,0.00,'fixed',1),(14,57,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,26,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,34,0,0.00,'fixed',1),(15,47,0,0.00,'fixed',1),(15,51,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,25,0,0.00,'fixed',1),(16,29,0,0.00,'fixed',1),(16,50,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,27,0,0.00,'fixed',1),(17,34,0,0.00,'fixed',1),(17,37,0,0.00,'fixed',1),(17,46,0,0.00,'fixed',1),(17,54,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,11,0,0.00,'fixed',1),(18,26,0,0.00,'fixed',1),(18,37,0,0.00,'fixed',1),(18,54,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,15,0,0.00,'fixed',1),(19,20,0,0.00,'fixed',1),(19,23,0,0.00,'fixed',1),(19,43,0,0.00,'fixed',1),(19,52,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,17,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,43,0,0.00,'fixed',1),(20,48,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,26,0,0.00,'fixed',1),(21,41,0,0.00,'fixed',1),(21,42,0,0.00,'fixed',1),(21,43,0,0.00,'fixed',1),(21,47,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,37,0,0.00,'fixed',1),(22,45,0,0.00,'fixed',1),(22,50,0,0.00,'fixed',1),(22,53,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,26,0,0.00,'fixed',1),(23,33,0,0.00,'fixed',1),(23,51,0,0.00,'fixed',1),(23,56,0,0.00,'fixed',1),(24,4,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,23,0,0.00,'fixed',1),(24,30,0,0.00,'fixed',1),(24,33,0,0.00,'fixed',1),(24,53,0,0.00,'fixed',1),(25,11,0,0.00,'fixed',1),(25,26,0,0.00,'fixed',1),(25,27,0,0.00,'fixed',1),(25,34,0,0.00,'fixed',1),(25,36,0,0.00,'fixed',1),(25,50,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,11,0,0.00,'fixed',1),(26,25,0,0.00,'fixed',1),(26,28,0,0.00,'fixed',1),(26,48,0,0.00,'fixed',1),(26,49,0,0.00,'fixed',1),(27,6,0,0.00,'fixed',1),(27,8,0,0.00,'fixed',1),(27,12,0,0.00,'fixed',1),(27,28,0,0.00,'fixed',1),(27,48,0,0.00,'fixed',1),(28,20,0,0.00,'fixed',1),(28,32,0,0.00,'fixed',1),(28,34,0,0.00,'fixed',1),(28,36,0,0.00,'fixed',1),(28,39,0,0.00,'fixed',1),(28,55,0,0.00,'fixed',1),(28,56,0,0.00,'fixed',1),(29,9,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,14,0,0.00,'fixed',1),(29,18,0,0.00,'fixed',1),(29,28,0,0.00,'fixed',1),(29,33,0,0.00,'fixed',1),(29,48,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(30,34,0,0.00,'fixed',1),(30,44,0,0.00,'fixed',1),(30,48,0,0.00,'fixed',1),(30,54,0,0.00,'fixed',1),(30,57,0,0.00,'fixed',1),(31,6,0,0.00,'fixed',1),(31,17,0,0.00,'fixed',1),(31,25,0,0.00,'fixed',1),(31,37,0,0.00,'fixed',1),(31,42,0,0.00,'fixed',1),(31,43,0,0.00,'fixed',1),(31,49,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,23,0,0.00,'fixed',1),(32,27,0,0.00,'fixed',1),(32,38,0,0.00,'fixed',1),(32,41,0,0.00,'fixed',1),(32,49,0,0.00,'fixed',1),(32,53,0,0.00,'fixed',1),(33,2,0,0.00,'fixed',1),(33,11,0,0.00,'fixed',1),(33,17,0,0.00,'fixed',1),(33,21,0,0.00,'fixed',1),(33,52,0,0.00,'fixed',1),(34,12,0,0.00,'fixed',1),(34,14,0,0.00,'fixed',1),(34,29,0,0.00,'fixed',1),(34,38,0,0.00,'fixed',1),(34,41,0,0.00,'fixed',1),(34,47,0,0.00,'fixed',1),(35,1,0,0.00,'fixed',1),(35,17,0,0.00,'fixed',1),(35,44,0,0.00,'fixed',1),(35,46,0,0.00,'fixed',1),(35,53,0,0.00,'fixed',1),(35,54,0,0.00,'fixed',1),(35,56,0,0.00,'fixed',1),(36,1,0,0.00,'fixed',1),(36,10,0,0.00,'fixed',1),(36,12,0,0.00,'fixed',1),(36,14,0,0.00,'fixed',1),(36,22,0,0.00,'fixed',1),(36,48,0,0.00,'fixed',1),(37,6,0,0.00,'fixed',1),(37,14,0,0.00,'fixed',1),(37,38,0,0.00,'fixed',1),(37,43,0,0.00,'fixed',1),(37,45,0,0.00,'fixed',1),(37,50,0,0.00,'fixed',1),(37,53,0,0.00,'fixed',1),(38,10,0,0.00,'fixed',1),(38,20,0,0.00,'fixed',1),(38,23,0,0.00,'fixed',1),(38,37,0,0.00,'fixed',1),(38,39,0,0.00,'fixed',1),(38,47,0,0.00,'fixed',1),(39,1,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,10,0,0.00,'fixed',1),(39,13,0,0.00,'fixed',1),(39,28,0,0.00,'fixed',1),(39,30,0,0.00,'fixed',1),(39,55,0,0.00,'fixed',1),(40,7,0,0.00,'fixed',1),(40,9,0,0.00,'fixed',1),(40,15,0,0.00,'fixed',1),(40,21,0,0.00,'fixed',1),(40,31,0,0.00,'fixed',1),(40,44,0,0.00,'fixed',1),(40,56,0,0.00,'fixed',1),(41,7,0,0.00,'fixed',1),(41,10,0,0.00,'fixed',1),(41,22,0,0.00,'fixed',1),(41,27,0,0.00,'fixed',1),(41,32,0,0.00,'fixed',1),(41,42,0,0.00,'fixed',1),(41,43,0,0.00,'fixed',1),(42,10,0,0.00,'fixed',1),(42,16,0,0.00,'fixed',1),(42,17,0,0.00,'fixed',1),(42,24,0,0.00,'fixed',1),(42,40,0,0.00,'fixed',1),(42,49,0,0.00,'fixed',1),(42,51,0,0.00,'fixed',1),(43,13,0,0.00,'fixed',1),(43,22,0,0.00,'fixed',1),(43,23,0,0.00,'fixed',1),(43,27,0,0.00,'fixed',1),(43,31,0,0.00,'fixed',1),(43,34,0,0.00,'fixed',1),(43,48,0,0.00,'fixed',1),(44,13,0,0.00,'fixed',1),(44,19,0,0.00,'fixed',1),(44,21,0,0.00,'fixed',1),(44,39,0,0.00,'fixed',1),(44,52,0,0.00,'fixed',1),(44,54,0,0.00,'fixed',1),(44,57,0,0.00,'fixed',1),(45,5,0,0.00,'fixed',1),(45,6,0,0.00,'fixed',1),(45,12,0,0.00,'fixed',1),(45,23,0,0.00,'fixed',1),(45,26,0,0.00,'fixed',1),(45,39,0,0.00,'fixed',1),(46,11,0,0.00,'fixed',1),(46,13,0,0.00,'fixed',1),(46,23,0,0.00,'fixed',1),(46,34,0,0.00,'fixed',1),(46,40,0,0.00,'fixed',1),(46,48,0,0.00,'fixed',1),(46,53,0,0.00,'fixed',1),(47,7,0,0.00,'fixed',1),(47,17,0,0.00,'fixed',1),(47,20,0,0.00,'fixed',1),(47,30,0,0.00,'fixed',1),(47,45,0,0.00,'fixed',1),(47,54,0,0.00,'fixed',1),(47,57,0,0.00,'fixed',1),(48,7,0,0.00,'fixed',1),(48,8,0,0.00,'fixed',1),(48,9,0,0.00,'fixed',1),(48,15,0,0.00,'fixed',1),(48,29,0,0.00,'fixed',1),(48,43,0,0.00,'fixed',1),(48,53,0,0.00,'fixed',1),(49,3,0,0.00,'fixed',1),(49,4,0,0.00,'fixed',1),(49,18,0,0.00,'fixed',1),(49,35,0,0.00,'fixed',1),(49,42,0,0.00,'fixed',1),(49,52,0,0.00,'fixed',1),(49,54,0,0.00,'fixed',1),(50,16,0,0.00,'fixed',1),(50,23,0,0.00,'fixed',1),(50,42,0,0.00,'fixed',1),(50,43,0,0.00,'fixed',1),(50,45,0,0.00,'fixed',1),(50,47,0,0.00,'fixed',1),(50,48,0,0.00,'fixed',1),(51,2,0,0.00,'fixed',1),(51,6,0,0.00,'fixed',1),(51,20,0,0.00,'fixed',1),(51,23,0,0.00,'fixed',1),(51,24,0,0.00,'fixed',1),(51,39,0,0.00,'fixed',1),(52,2,0,0.00,'fixed',1),(52,13,0,0.00,'fixed',1),(52,26,0,0.00,'fixed',1),(52,31,0,0.00,'fixed',1),(52,33,0,0.00,'fixed',1),(52,38,0,0.00,'fixed',1),(53,10,0,0.00,'fixed',1),(53,32,0,0.00,'fixed',1),(53,34,0,0.00,'fixed',1),(53,35,0,0.00,'fixed',1),(53,40,0,0.00,'fixed',1),(53,46,0,0.00,'fixed',1),(53,51,0,0.00,'fixed',1),(54,7,0,0.00,'fixed',1),(54,19,0,0.00,'fixed',1),(54,33,0,0.00,'fixed',1),(54,40,0,0.00,'fixed',1),(54,44,0,0.00,'fixed',1),(54,57,0,0.00,'fixed',1),(55,3,0,0.00,'fixed',1),(55,8,0,0.00,'fixed',1),(55,10,0,0.00,'fixed',1),(55,20,0,0.00,'fixed',1),(55,23,0,0.00,'fixed',1),(55,28,0,0.00,'fixed',1),(55,38,0,0.00,'fixed',1),(56,1,0,0.00,'fixed',1),(56,4,0,0.00,'fixed',1),(56,7,0,0.00,'fixed',1),(56,17,0,0.00,'fixed',1),(56,28,0,0.00,'fixed',1),(56,32,0,0.00,'fixed',1),(56,55,0,0.00,'fixed',1),(57,1,0,0.00,'fixed',1),(57,2,0,0.00,'fixed',1),(57,18,0,0.00,'fixed',1),(57,22,0,0.00,'fixed',1),(57,24,0,0.00,'fixed',1),(57,43,0,0.00,'fixed',1),(57,48,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(2,4,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(3,8,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(4,8,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(5,12,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(6,12,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(7,16,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(8,16,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(9,20,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(10,20,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(11,24,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(12,24,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(13,28,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(14,28,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(15,32,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(16,32,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(17,36,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(18,36,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(19,40,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(20,40,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(21,44,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(22,44,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(23,48,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(24,48,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(25,52,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(26,52,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(27,56,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(28,56,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(29,59,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(30,60,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(31,72,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(32,77,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(33,78,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(34,79,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(35,109,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(36,110,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45'),(37,111,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:50:45\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-10-20 21:50:45','2024-10-20 21:50:45');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,9),(1,12),(1,18),(1,27),(1,33),(1,45),(1,57),(2,6),(2,24),(2,39),(2,42),(2,48),(3,15),(3,21),(3,30),(3,36),(3,51),(3,54);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(2,'New','#006554','published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(3,'Sale','#9A3B00','published','2024-10-20 21:50:32','2024-10-20 21:50:32');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'85.78 cm',0,0),(1,2,'79.92 cm',0,0),(1,3,'18.71 cm',0,0),(1,4,'11.8 cm',0,0),(1,5,'59.28 cm',0,0),(2,6,'95.42 cm',0,0),(2,7,'55.81 cm',0,0),(2,8,'2560x1440',0,0),(3,1,'76.93 cm',0,0),(3,2,'6.11 cm',0,0),(3,3,'10.1 cm',0,0),(3,4,'27.82 cm',0,0),(3,5,'1.29 cm',0,0),(4,6,'31.5 cm',0,0),(4,7,'7.75 cm',0,0),(4,8,'3840x2160',0,0),(5,6,'71.27 cm',0,0),(5,7,'43.66 cm',0,0),(5,8,'1920x1080',0,0),(6,6,'55.71 cm',0,0),(6,7,'86.81 cm',0,0),(6,8,'3840x2160',0,0),(7,6,'17.49 cm',0,0),(7,7,'38.49 cm',0,0),(7,8,'3840x2160',0,0),(8,1,'23.26 cm',0,0),(8,2,'8.01 cm',0,0),(8,3,'71 cm',0,0),(8,4,'18.5 cm',0,0),(8,5,'51.53 cm',0,0),(9,1,'25.88 cm',0,0),(9,2,'44.04 cm',0,0),(9,3,'82.24 cm',0,0),(9,4,'64.3 cm',0,0),(9,5,'11.76 cm',0,0),(10,1,'7.34 cm',0,0),(10,2,'17.15 cm',0,0),(10,3,'64.03 cm',0,0),(10,4,'48.14 cm',0,0),(10,5,'89.1 cm',0,0),(11,6,'93.16 cm',0,0),(11,7,'41.79 cm',0,0),(11,8,'3840x2160',0,0),(12,6,'29.43 cm',0,0),(12,7,'37.98 cm',0,0),(12,8,'3840x2160',0,0),(13,1,'26.93 cm',0,0),(13,2,'66.93 cm',0,0),(13,3,'52.48 cm',0,0),(13,4,'29.39 cm',0,0),(13,5,'82.37 cm',0,0),(14,6,'55 cm',0,0),(14,7,'72.67 cm',0,0),(14,8,'3840x2160',0,0),(15,6,'56.37 cm',0,0),(15,7,'18.52 cm',0,0),(15,8,'2560x1440',0,0),(16,6,'19.94 cm',0,0),(16,7,'82.12 cm',0,0),(16,8,'3840x2160',0,0),(17,1,'17.07 cm',0,0),(17,2,'21.45 cm',0,0),(17,3,'65.33 cm',0,0),(17,4,'48 cm',0,0),(17,5,'11.61 cm',0,0),(18,1,'22.68 cm',0,0),(18,2,'53.98 cm',0,0),(18,3,'53.19 cm',0,0),(18,4,'85.41 cm',0,0),(18,5,'55.23 cm',0,0),(19,1,'6.24 cm',0,0),(19,2,'24.01 cm',0,0),(19,3,'99.23 cm',0,0),(19,4,'15.67 cm',0,0),(19,5,'48.35 cm',0,0),(20,6,'60.41 cm',0,0),(20,7,'83.99 cm',0,0),(20,8,'2560x1440',0,0),(21,6,'76.65 cm',0,0),(21,7,'51.57 cm',0,0),(21,8,'2560x1440',0,0),(22,1,'74.83 cm',0,0),(22,2,'56.49 cm',0,0),(22,3,'62.06 cm',0,0),(22,4,'90.6 cm',0,0),(22,5,'90.67 cm',0,0),(23,1,'62.12 cm',0,0),(23,2,'18.47 cm',0,0),(23,3,'5.51 cm',0,0),(23,4,'48.74 cm',0,0),(23,5,'20 cm',0,0),(24,1,'54.73 cm',0,0),(24,2,'69.54 cm',0,0),(24,3,'34.03 cm',0,0),(24,4,'92.31 cm',0,0),(24,5,'98.04 cm',0,0),(25,1,'33.96 cm',0,0),(25,2,'14.91 cm',0,0),(25,3,'99.46 cm',0,0),(25,4,'78.24 cm',0,0),(25,5,'58.93 cm',0,0),(26,1,'58.67 cm',0,0),(26,2,'86.79 cm',0,0),(26,3,'46.11 cm',0,0),(26,4,'35.26 cm',0,0),(26,5,'24.57 cm',0,0),(27,6,'44.31 cm',0,0),(27,7,'95.64 cm',0,0),(27,8,'2560x1440',0,0),(28,1,'25.79 cm',0,0),(28,2,'19.78 cm',0,0),(28,3,'8.78 cm',0,0),(28,4,'58.26 cm',0,0),(28,5,'79.69 cm',0,0),(29,1,'74.9 cm',0,0),(29,2,'90.53 cm',0,0),(29,3,'30.25 cm',0,0),(29,4,'74.85 cm',0,0),(29,5,'77.97 cm',0,0),(30,6,'79.76 cm',0,0),(30,7,'88.15 cm',0,0),(30,8,'1920x1080',0,0),(31,1,'38.92 cm',0,0),(31,2,'81.91 cm',0,0),(31,3,'25.49 cm',0,0),(31,4,'24.08 cm',0,0),(31,5,'92.71 cm',0,0),(32,1,'88.59 cm',0,0),(32,2,'86.57 cm',0,0),(32,3,'97.61 cm',0,0),(32,4,'76.7 cm',0,0),(32,5,'99.52 cm',0,0),(33,6,'65.86 cm',0,0),(33,7,'50.09 cm',0,0),(33,8,'1920x1080',0,0),(34,1,'25.4 cm',0,0),(34,2,'10.74 cm',0,0),(34,3,'9.08 cm',0,0),(34,4,'13.3 cm',0,0),(34,5,'80.52 cm',0,0),(35,6,'96.64 cm',0,0),(35,7,'66.73 cm',0,0),(35,8,'3840x2160',0,0),(36,6,'99.61 cm',0,0),(36,7,'24.94 cm',0,0),(36,8,'3840x2160',0,0),(37,6,'72.91 cm',0,0),(37,7,'32.28 cm',0,0),(37,8,'3840x2160',0,0),(38,6,'22.35 cm',0,0),(38,7,'4.01 cm',0,0),(38,8,'2560x1440',0,0),(39,6,'95.2 cm',0,0),(39,7,'40.15 cm',0,0),(39,8,'2560x1440',0,0),(40,1,'27.76 cm',0,0),(40,2,'44.38 cm',0,0),(40,3,'92.4 cm',0,0),(40,4,'8.41 cm',0,0),(40,5,'46.88 cm',0,0),(41,1,'21.96 cm',0,0),(41,2,'24.9 cm',0,0),(41,3,'30.19 cm',0,0),(41,4,'11.14 cm',0,0),(41,5,'45.3 cm',0,0),(42,1,'69.24 cm',0,0),(42,2,'54.56 cm',0,0),(42,3,'20.57 cm',0,0),(42,4,'52.2 cm',0,0),(42,5,'23.03 cm',0,0),(43,6,'59.21 cm',0,0),(43,7,'59.9 cm',0,0),(43,8,'1920x1080',0,0),(44,1,'36.63 cm',0,0),(44,2,'16.56 cm',0,0),(44,3,'55.13 cm',0,0),(44,4,'9.59 cm',0,0),(44,5,'33.51 cm',0,0),(45,1,'18.43 cm',0,0),(45,2,'81.39 cm',0,0),(45,3,'94.31 cm',0,0),(45,4,'31.1 cm',0,0),(45,5,'48.88 cm',0,0),(46,6,'37.91 cm',0,0),(46,7,'4.19 cm',0,0),(46,8,'3840x2160',0,0),(47,6,'11.19 cm',0,0),(47,7,'94.2 cm',0,0),(47,8,'1920x1080',0,0),(48,6,'47.87 cm',0,0),(48,7,'84.52 cm',0,0),(48,8,'3840x2160',0,0),(49,1,'86.21 cm',0,0),(49,2,'66.92 cm',0,0),(49,3,'13.7 cm',0,0),(49,4,'10.73 cm',0,0),(49,5,'83.63 cm',0,0),(50,6,'43.64 cm',0,0),(50,7,'55.04 cm',0,0),(50,8,'1920x1080',0,0),(51,1,'81.1 cm',0,0),(51,2,'27.03 cm',0,0),(51,3,'10.38 cm',0,0),(51,4,'72.21 cm',0,0),(51,5,'65.19 cm',0,0),(52,1,'67.69 cm',0,0),(52,2,'25.34 cm',0,0),(52,3,'84.04 cm',0,0),(52,4,'82.13 cm',0,0),(52,5,'37.28 cm',0,0),(53,1,'37.46 cm',0,0),(53,2,'61.65 cm',0,0),(53,3,'37.54 cm',0,0),(53,4,'11.23 cm',0,0),(53,5,'31.3 cm',0,0),(54,1,'38.32 cm',0,0),(54,2,'51.3 cm',0,0),(54,3,'97.1 cm',0,0),(54,4,'32.42 cm',0,0),(54,5,'56.19 cm',0,0),(55,6,'94.23 cm',0,0),(55,7,'4.29 cm',0,0),(55,8,'3840x2160',0,0),(56,1,'71.03 cm',0,0),(56,2,'26.76 cm',0,0),(56,3,'77.89 cm',0,0),(56,4,'12.52 cm',0,0),(56,5,'1.07 cm',0,0),(57,6,'14.29 cm',0,0),(57,7,'75.21 cm',0,0),(57,8,'3840x2160',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(1,6),(2,1),(2,2),(2,3),(3,2),(3,3),(3,5),(4,3),(4,4),(4,5),(5,2),(5,4),(5,6),(6,1),(6,5),(6,6),(7,1),(7,5),(7,6),(8,2),(8,4),(8,5),(9,1),(9,3),(9,5),(10,1),(10,2),(10,3),(11,1),(11,2),(11,5),(12,2),(12,3),(12,5),(13,3),(13,5),(13,6),(14,2),(14,5),(14,6),(15,1),(15,3),(15,6),(16,2),(16,3),(16,4),(17,2),(17,4),(17,5),(18,1),(18,3),(18,4),(19,1),(19,2),(19,5),(20,2),(20,4),(20,5),(21,2),(21,4),(21,5),(22,3),(22,4),(22,5),(23,1),(23,3),(23,4),(24,2),(24,3),(24,4),(25,2),(25,5),(25,6),(26,2),(26,4),(26,5),(27,3),(27,4),(27,6),(28,2),(28,4),(28,6),(29,3),(29,4),(29,6),(30,3),(30,4),(30,6),(31,1),(31,4),(31,5),(32,3),(32,5),(32,6),(33,3),(33,4),(33,6),(34,1),(34,4),(34,5),(35,4),(35,5),(35,6),(36,1),(36,2),(36,5),(37,4),(37,5),(37,6),(38,3),(38,4),(38,5),(39,3),(39,4),(39,6),(40,1),(40,3),(40,4),(41,3),(41,5),(41,6),(42,1),(42,4),(42,6),(43,4),(43,5),(43,6),(44,1),(44,2),(44,3),(45,2),(45,3),(45,6),(46,1),(46,3),(46,6),(47,2),(47,3),(47,5),(48,2),(48,3),(48,5),(49,4),(49,5),(49,6),(50,3),(50,5),(50,6),(51,4),(51,5),(51,6),(52,1),(52,2),(52,4),(53,2),(53,3),(53,6),(54,1),(54,4),(54,6),(55,3),(55,5),(55,6),(56,3),(56,4),(56,6),(57,1),(57,3),(57,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(2,'Mobile',NULL,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(3,'Iphone',NULL,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(4,'Printer',NULL,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(5,'Office',NULL,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(6,'IT',NULL,'published','2024-10-20 21:50:36','2024-10-20 21:50:36');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(17,1,9),(21,1,11),(27,1,14),(39,1,20),(3,2,2),(19,2,10),(25,2,13),(31,2,16),(33,2,17),(47,2,24),(49,2,25),(53,2,27),(7,3,4),(15,3,8),(37,3,19),(5,4,3),(13,4,7),(29,4,15),(35,4,18),(41,4,21),(43,4,22),(55,4,28),(9,5,5),(11,5,6),(23,5,12),(45,5,23),(51,5,26),(2,6,1),(14,6,7),(16,6,8),(20,6,10),(32,6,16),(36,6,18),(50,6,25),(56,6,28),(30,7,15),(34,7,17),(42,7,21),(4,8,2),(10,8,5),(12,8,6),(48,8,24),(52,8,26),(24,9,12),(28,9,14),(40,9,20),(44,9,22),(54,9,27),(6,10,3),(8,10,4),(18,10,9),(22,10,11),(26,10,13),(38,10,19),(46,10,23),(67,11,34),(79,11,40),(85,11,43),(89,11,45),(93,11,47),(95,11,48),(99,11,50),(117,11,59),(57,12,29),(83,12,42),(87,12,44),(91,12,46),(113,12,57),(115,12,58),(59,13,30),(63,13,32),(73,13,37),(77,13,39),(81,13,41),(97,13,49),(103,13,52),(105,13,53),(107,13,54),(71,14,36),(61,15,31),(65,15,33),(69,15,35),(75,15,38),(101,15,51),(109,15,55),(111,15,56),(58,16,29),(62,16,31),(64,16,32),(66,16,33),(70,16,35),(76,16,38),(82,16,41),(118,16,59),(60,17,30),(72,17,36),(78,17,39),(84,17,42),(86,17,43),(102,17,51),(112,17,56),(116,17,58),(68,18,34),(80,18,40),(88,18,44),(94,18,47),(106,18,53),(74,19,37),(90,19,45),(92,19,46),(96,19,48),(100,19,50),(104,19,52),(108,19,54),(98,20,49),(110,20,55),(114,20,57);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,58,2,1),(2,59,8,1),(3,60,8,0),(4,61,9,1),(5,62,9,0),(6,63,9,0),(7,64,13,1),(8,65,13,0),(9,66,13,0),(10,67,15,1),(11,68,15,0),(12,69,19,1),(13,70,19,0),(14,71,19,0),(15,72,20,1),(16,73,23,1),(17,74,23,0),(18,75,23,0),(19,76,23,0),(20,77,24,1),(21,78,24,0),(22,79,24,0),(23,80,26,1),(24,81,26,0),(25,82,26,0),(26,83,27,1),(27,84,27,0),(28,85,27,0),(29,86,29,1),(30,87,29,0),(31,88,29,0),(32,89,30,1),(33,90,30,0),(34,91,30,0),(35,92,30,0),(36,93,31,1),(37,94,31,0),(38,95,31,0),(39,96,34,1),(40,97,38,1),(41,98,38,0),(42,99,38,0),(43,100,38,0),(44,101,38,0),(45,102,39,1),(46,103,39,0),(47,104,41,1),(48,105,41,0),(49,106,41,0),(50,107,43,1),(51,108,43,0),(52,109,44,1),(53,110,44,0),(54,111,44,0),(55,112,47,1),(56,113,47,0),(57,114,51,1),(58,115,51,0),(59,116,54,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-10-21',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,13,0),(2,13,0),(1,15,0),(2,15,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0),(3,31,0),(4,31,0),(3,34,0),(4,34,0),(3,38,0),(4,38,0),(3,39,0),(4,39,0),(3,41,0),(4,41,0),(3,43,0),(4,43,0),(3,44,0),(4,44,0),(3,47,0),(4,47,0),(3,51,0),(4,51,0),(3,54,0),(4,54,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'EcoTech Marine Radion XR30w G5 Pro LED Light Fixture','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','EH-176',0,11,0,1,0,1,0,0,1586,368,NULL,NULL,13.00,20.00,11.00,699.00,NULL,155292,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(2,'Philips Hue White and Color Ambiance A19 LED Smart Bulb','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','D5-194-A1',0,10,0,1,1,2,0,0,1612,NULL,NULL,NULL,19.00,20.00,20.00,514.00,NULL,121179,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(3,'Samsung Galaxy Tab S7+ 12.4-Inch Android Tablet','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','PQ-162',0,18,0,1,0,5,0,0,419,19,NULL,NULL,17.00,15.00,16.00,626.00,NULL,176745,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(4,'Apple MacBook Pro 16-Inch Laptop (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','HA-167',0,13,0,1,1,3,0,0,796,672,NULL,NULL,13.00,15.00,19.00,899.00,NULL,187597,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(5,'Sony WH-1000XM4 Wireless Noise-Canceling Headphones','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','9H-138',0,14,0,1,1,4,0,0,1195,513,NULL,NULL,15.00,19.00,18.00,695.00,NULL,54354,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(6,'DJI Mavic Air 2 Drone','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\"]','[]','TL-189',0,19,0,1,0,3,0,0,885,124,NULL,NULL,18.00,10.00,15.00,520.00,NULL,182819,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(7,'GoPro HERO9 Black Action Camera','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[]','6H-119',0,16,0,1,1,1,0,0,2123,644,NULL,NULL,15.00,10.00,15.00,549.00,NULL,104841,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(8,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','BH-161-A1',0,15,0,1,1,2,0,0,1850,1406,NULL,NULL,20.00,20.00,17.00,529.00,NULL,199033,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(9,'Nest Learning Thermostat (3rd Generation)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','NA-164-A1',0,10,0,1,0,3,0,0,2056,NULL,NULL,NULL,19.00,10.00,12.00,702.00,NULL,168068,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(10,'Ring Video Doorbell Pro','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-7.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','ZR-118',0,18,0,1,0,2,0,0,273,238,NULL,NULL,16.00,12.00,16.00,866.00,NULL,28342,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(11,'Amazon Echo Show 10 (3rd Gen)','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','XE-190',0,17,0,1,1,3,0,0,2256,402,NULL,NULL,10.00,17.00,11.00,668.00,NULL,79375,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(12,'Samsung QN90A Neo QLED 4K Smart TV (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','CN-134',0,17,0,1,0,5,0,0,1930,1042,NULL,NULL,11.00,20.00,16.00,855.00,NULL,168149,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(13,'LG OLED C1 Series 4K Smart TV','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','DD-106-A1',0,10,0,1,1,3,0,0,1723,NULL,NULL,NULL,20.00,17.00,17.00,536.00,NULL,187606,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(14,'Sony X950H 4K Ultra HD Smart LED TV','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]','[]','RN-181',0,11,0,1,0,4,0,0,418,165,NULL,NULL,15.00,10.00,19.00,743.00,NULL,7013,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(15,'Apple Watch Series 7','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[]','B2-146-A1',0,11,0,1,1,1,0,0,2474,NULL,NULL,NULL,15.00,17.00,16.00,714.00,NULL,65404,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(16,'Fitbit Charge 5 Fitness Tracker (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','PY-182',0,17,0,1,0,3,0,0,427,170,NULL,NULL,11.00,11.00,16.00,737.00,NULL,144742,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(17,'Garmin Fenix 7X Sapphire Solar GPS Watch','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','EI-160',0,10,0,1,0,2,0,0,1276,940,NULL,NULL,14.00,15.00,19.00,766.00,NULL,103134,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(18,'Microsoft Surface Pro 8','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','V4-171',0,20,0,1,0,1,0,0,2441,2351,NULL,NULL,11.00,11.00,11.00,828.00,NULL,94046,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(19,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','LA-123-A1',0,12,0,1,1,2,0,0,951,NULL,NULL,NULL,17.00,19.00,11.00,880.00,NULL,155447,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(20,'HP Spectre x360 14-Inch Convertible Laptop (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','CZ-173-A1',0,16,0,1,1,4,0,0,2461,1845.75,NULL,NULL,10.00,11.00,19.00,526.00,NULL,98516,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(21,'Razer Blade 15 Advanced Gaming Laptop','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','NM-108',0,18,0,1,0,3,0,0,1928,1682,NULL,NULL,16.00,16.00,11.00,630.00,NULL,51572,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(22,'Alienware m15 R6 Gaming Laptop','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-1.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','43-181',0,10,0,1,1,2,0,0,714,154,NULL,NULL,20.00,11.00,11.00,538.00,NULL,120382,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(23,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','NA-169-A1',0,12,0,1,1,1,0,0,866,NULL,NULL,NULL,11.00,19.00,20.00,543.00,NULL,30820,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(24,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','AZ-105-A1',0,16,0,1,1,1,0,0,2065,1486.8,NULL,NULL,15.00,18.00,15.00,849.00,NULL,197207,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(25,'SteelSeries Arctis Pro Wireless Gaming Headset','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','K8-195',0,19,0,1,1,1,0,0,1003,611,NULL,NULL,13.00,15.00,16.00,815.00,NULL,188783,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(26,'Elgato Stream Deck XL','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','TE-188-A1',0,14,0,1,0,3,0,0,605,NULL,NULL,NULL,13.00,19.00,11.00,651.00,NULL,3766,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(27,'Nintendo Switch OLED Model','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','MY-184-A1',0,14,0,1,0,2,0,0,878,NULL,NULL,NULL,14.00,13.00,20.00,501.00,NULL,13407,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(28,'PlayStation 5 Console (Digital)','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','AU-122',0,14,0,1,1,2,0,0,272,185,NULL,NULL,12.00,11.00,14.00,514.00,NULL,152023,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(29,'Xbox Series X Console','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','AP-124-A1',0,18,0,1,1,5,0,0,2154,NULL,NULL,NULL,10.00,19.00,14.00,665.00,NULL,124215,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(30,'Oculus Quest 2 VR Headset','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','YA-174-A1',0,11,0,1,0,1,0,0,2132,NULL,NULL,NULL,14.00,17.00,17.00,767.00,NULL,16569,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(31,'HTC Vive Cosmos Elite VR Headset','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','VA-130-A1',0,15,0,1,0,3,0,0,668,NULL,NULL,NULL,16.00,14.00,20.00,769.00,NULL,102272,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(32,'Samsung Odyssey G9 49-Inch Curved Gaming Monitor (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]','[]','TU-190',0,12,0,1,1,4,0,0,1632,1493,NULL,NULL,14.00,19.00,13.00,588.00,NULL,157547,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(33,'LG UltraGear 27GN950-B 4K Gaming Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]','[]','K1-172',0,10,0,1,0,1,0,0,1885,570,NULL,NULL,10.00,13.00,12.00,500.00,NULL,133962,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(34,'Acer Predator X38 Pbmiphzx 38-Inch Curved Gaming Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','VW-167-A1',0,17,0,1,1,1,0,0,1722,NULL,NULL,NULL,19.00,14.00,13.00,831.00,NULL,126320,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(35,'ASUS ROG Swift PG279QM 27-Inch Gaming Monitor','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','RH-145',0,20,0,1,1,4,0,0,2408,270,NULL,NULL,19.00,11.00,20.00,634.00,NULL,67032,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(36,'BenQ EW3280U 32-Inch 4K HDR Entertainment Monitor (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-5.jpg\"]','[]','AA-146',0,17,0,1,1,1,0,0,2009,1888,NULL,NULL,11.00,18.00,14.00,692.00,NULL,185049,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(37,'Dell UltraSharp U2720Q 27-Inch 4K USB-C Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-3.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','7R-133',0,11,0,1,1,3,0,0,505,333,NULL,NULL,15.00,11.00,14.00,522.00,NULL,130153,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(38,'HP Z27k G3 4K USB-C Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','S5-110-A1',0,17,0,1,1,4,0,0,1499,NULL,NULL,NULL,20.00,20.00,20.00,764.00,NULL,91984,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(39,'LG 27UK850-W 27-Inch 4K UHD IPS Monitor','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]','[]','7O-191-A1',0,18,0,1,0,5,0,0,979,NULL,NULL,NULL,14.00,14.00,12.00,664.00,NULL,183521,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(40,'Samsung Odyssey G7 32-Inch Curved Gaming Monitor (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-10.jpg\"]','[]','LX-121',0,13,0,1,0,3,0,0,2224,512,NULL,NULL,14.00,12.00,10.00,701.00,NULL,126229,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(41,'Sony X900H 4K Ultra HD Smart LED TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','7L-119-A1',0,13,0,1,0,2,0,0,303,NULL,NULL,NULL,14.00,16.00,19.00,595.00,NULL,107395,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(42,'TCL 6-Series 4K UHD Dolby Vision HDR QLED Roku Smart TV','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\"]','[]','GB-129',0,10,0,1,1,3,0,0,1731,226,NULL,NULL,11.00,10.00,20.00,864.00,NULL,89369,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(43,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]','[]','WC-179-A1',0,20,0,1,0,2,0,0,2283,NULL,NULL,NULL,17.00,10.00,15.00,546.00,NULL,105769,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(44,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','MC-194-A1',0,18,0,1,1,3,0,0,1246,922.04,NULL,NULL,17.00,20.00,15.00,735.00,NULL,40880,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(45,'LG C1 Series 4K OLED Smart TV','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','IA-109',0,11,0,1,0,3,0,0,2062,1871,NULL,NULL,18.00,13.00,20.00,717.00,NULL,15945,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(46,'Samsung QN85A Neo QLED 4K Smart TV','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','ML-158',0,14,0,1,1,5,0,0,557,366,NULL,NULL,13.00,11.00,18.00,778.00,NULL,31180,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(47,'Sony A90J 4K OLED Smart TV','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','N0-117-A1',0,14,0,1,0,2,0,0,1940,NULL,NULL,NULL,16.00,11.00,16.00,776.00,NULL,33687,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(48,'Apple TV 4K (2nd Generation) (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','L6-176',0,11,0,1,0,2,0,0,1126,122,NULL,NULL,16.00,12.00,11.00,671.00,NULL,123952,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(49,'Roku Ultra 2020 Streaming Media Player','The headset also offers MS Teams Certifications and other features like Busylight, Calls controls, Voice guiding, and Wireless range (ft): Up to 100 feet. Best-in-class. Boom The most recent Jabra Evolve2 75 USB-A MS Teams Stereo Headset offers professional-grade call performance that leads the industry, yet Evolve2 75 wins best-in-class.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-20.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','0L-113',0,12,0,1,0,4,0,0,1784,1415,NULL,NULL,16.00,18.00,16.00,878.00,NULL,108010,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(50,'Amazon Fire TV Stick 4K Max','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-8.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','WX-141',0,17,0,1,1,5,0,0,1846,1223,NULL,NULL,19.00,14.00,19.00,544.00,NULL,63376,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(51,'Google Chromecast with Google TV','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','OC-195-A1',0,14,0,1,0,2,0,0,2025,NULL,NULL,NULL,11.00,19.00,11.00,634.00,NULL,121720,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(52,'NVIDIA SHIELD TV Pro (Digital)','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\"]','[]','O3-166',0,19,0,1,1,5,0,0,603,218,NULL,NULL,15.00,17.00,20.00,651.00,NULL,37050,'2024-10-20 21:50:44','2024-10-20 21:50:45','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(53,'Sonos Beam Gen 2 Soundbar','With this intelligent headset, you can stay connected and productive from the first call of the day to the last train home. With an ergonomic earcup design, this headset invented a brand-new dual-foam technology. You will be comfortable from the first call to the last thanks to the re-engineered leatherette ear cushion design that allows for better airflow.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','5V-197',0,17,0,1,1,5,0,0,646,58,NULL,NULL,11.00,11.00,12.00,868.00,NULL,184687,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(54,'Bose Smart Soundbar 900','Additionally, this includes a redesigned microphone boom arm that is 33 percent shorter than the Evolve 75 and offers the industry-leading call performance for which Jabra headsets are known.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','CZ-155-A1',0,17,0,1,1,4,0,0,2261,NULL,NULL,NULL,20.00,17.00,19.00,625.00,NULL,176430,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(55,'JBL Bar 9.1 Soundbar with Dolby Atmos','We can provide exceptional noise isolation and the best all-day comfort by mixing firm foam for the outer with soft foam for the interior of the ear cushions. So that you may receive Active Noise-Cancellation (ANC) performance that is even greater in a headset that you can wear for whatever length you wish.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-13.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','FQ-164',0,19,0,1,0,3,0,0,1437,443,NULL,NULL,19.00,17.00,18.00,765.00,NULL,122488,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(56,'Sennheiser Ambeo Soundbar (Digital)','Jabra Evolve2 75 USB-A MS Teams Stereo Headset The Jabra Evolve2 75 USB-A MS Teams Stereo Headset has replaced previous hybrid working standards. Industry-leading call quality thanks to top-notch audio engineering.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-4.jpg\"]','[]','2H-185',0,12,0,1,1,4,0,0,738,298,NULL,NULL,15.00,14.00,12.00,744.00,NULL,18841,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(57,'Sony HT-A9 Home Theater System','It complies with Microsoft\'s Open Office criteria and is specially tuned for outstanding conversations in open-plan workplaces and other loud environments when the microphone boom arm is lowered in Performance Mode','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Galaxy A8 tablet</span>\n                        <h3 class=\"tp-product-details-desc-title\">Your world at a glance</h3>\n                        <p>\n                            With a slim design, a vibrant entertainment system, and <br>\n                            outstanding performance, the new Galaxy Tab A7 is a stylish new <br>\n                            companion for your life.Dive head-first into the things you love, <br>\n                            and easily share your favorite moments. Learn, explore, connect <br>\n                            and be inspired.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Draw inspiration with S Pen</h3>\n                        <p>\n                            S Pen is a bundle of writing instruments in one. Its natural grip, <br>\n                            low latency and impressive pressure sensitivity will make it your go-to for everything from drawing to editing documents. And S Pen won\'t get misplaced thanks.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-1.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/main/products/product-details-desc-2.jpg\" alt=\"product\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Carry with <br>\n                            Confidence and style\n                        </h3>\n                        <p>\n                            Wrap your tablet in a sleek case that\'s as stylish as it is convenient. Galaxy Tab S6 Lite Book Cover folds around and clings magnetically, so you can easily gear up as you\'re headed out the door. There\'s even a\n                            compartment for S pen, so you can be sure it doesn\'t get left behind.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Speed Memory Power = Epic Races</h3>\n                        <img src=\"/storage/main/products/product-details-desc-3.jpg\" alt=\"product\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','2S-172',0,15,0,1,1,4,0,0,443,225,NULL,NULL,18.00,16.00,16.00,610.00,NULL,174708,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(58,'Philips Hue White and Color Ambiance A19 LED Smart Bulb',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'D5-194-A1',0,10,0,1,0,2,1,0,1612,NULL,NULL,NULL,19.00,20.00,20.00,514.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(59,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'BH-161-A1',0,15,0,1,0,2,1,0,1850,1406,NULL,NULL,20.00,20.00,17.00,529.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(60,'Bose SoundLink Revolve+ Portable Bluetooth Speaker (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'BH-161-A1-A2',0,15,0,1,0,2,1,0,1850,1665,NULL,NULL,20.00,20.00,17.00,529.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(61,'Nest Learning Thermostat (3rd Generation)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'NA-164-A1',0,10,0,1,0,3,1,0,2056,NULL,NULL,NULL,19.00,10.00,12.00,702.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(62,'Nest Learning Thermostat (3rd Generation)',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'NA-164-A1-A2',0,10,0,1,0,3,1,0,2056,NULL,NULL,NULL,19.00,10.00,12.00,702.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(63,'Nest Learning Thermostat (3rd Generation)',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'NA-164-A1-A3',0,10,0,1,0,3,1,0,2056,NULL,NULL,NULL,19.00,10.00,12.00,702.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(64,'LG OLED C1 Series 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'DD-106-A1',0,10,0,1,0,3,1,0,1723,NULL,NULL,NULL,20.00,17.00,17.00,536.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(65,'LG OLED C1 Series 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'DD-106-A1-A2',0,10,0,1,0,3,1,0,1723,NULL,NULL,NULL,20.00,17.00,17.00,536.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(66,'LG OLED C1 Series 4K Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'DD-106-A1-A3',0,10,0,1,0,3,1,0,1723,NULL,NULL,NULL,20.00,17.00,17.00,536.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(67,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'B2-146-A1',0,11,0,1,0,1,1,0,2474,NULL,NULL,NULL,15.00,17.00,16.00,714.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(68,'Apple Watch Series 7',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'B2-146-A1-A2',0,11,0,1,0,1,1,0,2474,NULL,NULL,NULL,15.00,17.00,16.00,714.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(69,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'LA-123-A1',0,12,0,1,0,2,1,0,951,NULL,NULL,NULL,17.00,19.00,11.00,880.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(70,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'LA-123-A1-A2',0,12,0,1,0,2,1,0,951,NULL,NULL,NULL,17.00,19.00,11.00,880.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(71,'Lenovo ThinkPad X1 Carbon Gen 9 Laptop',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'LA-123-A1-A3',0,12,0,1,0,2,1,0,951,NULL,NULL,NULL,17.00,19.00,11.00,880.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(72,'HP Spectre x360 14-Inch Convertible Laptop (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'CZ-173-A1',0,16,0,1,0,4,1,0,2461,1845.75,NULL,NULL,10.00,11.00,19.00,526.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(73,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'NA-169-A1',0,12,0,1,0,1,1,0,866,NULL,NULL,NULL,11.00,19.00,20.00,543.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(74,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'NA-169-A1-A2',0,12,0,1,0,1,1,0,866,NULL,NULL,NULL,11.00,19.00,20.00,543.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(75,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'NA-169-A1-A3',0,12,0,1,0,1,1,0,866,NULL,NULL,NULL,11.00,19.00,20.00,543.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(76,'Corsair K95 RGB Platinum XT Mechanical Gaming Keyboard',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'NA-169-A1-A4',0,12,0,1,0,1,1,0,866,NULL,NULL,NULL,11.00,19.00,20.00,543.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(77,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'AZ-105-A1',0,16,0,1,0,1,1,0,2065,1486.8,NULL,NULL,15.00,18.00,15.00,849.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(78,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'AZ-105-A1-A2',0,16,0,1,0,1,1,0,2065,1507.45,NULL,NULL,15.00,18.00,15.00,849.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(79,'Logitech G Pro X Superlight Wireless Gaming Mouse (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'AZ-105-A1-A3',0,16,0,1,0,1,1,0,2065,1486.8,NULL,NULL,15.00,18.00,15.00,849.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(80,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'TE-188-A1',0,14,0,1,0,3,1,0,605,NULL,NULL,NULL,13.00,19.00,11.00,651.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(81,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'TE-188-A1-A2',0,14,0,1,0,3,1,0,605,NULL,NULL,NULL,13.00,19.00,11.00,651.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(82,'Elgato Stream Deck XL',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'TE-188-A1-A3',0,14,0,1,0,3,1,0,605,NULL,NULL,NULL,13.00,19.00,11.00,651.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(83,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'MY-184-A1',0,14,0,1,0,2,1,0,878,NULL,NULL,NULL,14.00,13.00,20.00,501.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(84,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'MY-184-A1-A2',0,14,0,1,0,2,1,0,878,NULL,NULL,NULL,14.00,13.00,20.00,501.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(85,'Nintendo Switch OLED Model',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'MY-184-A1-A3',0,14,0,1,0,2,1,0,878,NULL,NULL,NULL,14.00,13.00,20.00,501.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(86,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'AP-124-A1',0,18,0,1,0,5,1,0,2154,NULL,NULL,NULL,10.00,19.00,14.00,665.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(87,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'AP-124-A1-A2',0,18,0,1,0,5,1,0,2154,NULL,NULL,NULL,10.00,19.00,14.00,665.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(88,'Xbox Series X Console',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'AP-124-A1-A3',0,18,0,1,0,5,1,0,2154,NULL,NULL,NULL,10.00,19.00,14.00,665.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(89,'Oculus Quest 2 VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'YA-174-A1',0,11,0,1,0,1,1,0,2132,NULL,NULL,NULL,14.00,17.00,17.00,767.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(90,'Oculus Quest 2 VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'YA-174-A1-A2',0,11,0,1,0,1,1,0,2132,NULL,NULL,NULL,14.00,17.00,17.00,767.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(91,'Oculus Quest 2 VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'YA-174-A1-A3',0,11,0,1,0,1,1,0,2132,NULL,NULL,NULL,14.00,17.00,17.00,767.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(92,'Oculus Quest 2 VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'YA-174-A1-A4',0,11,0,1,0,1,1,0,2132,NULL,NULL,NULL,14.00,17.00,17.00,767.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(93,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]',NULL,'VA-130-A1',0,15,0,1,0,3,1,0,668,NULL,NULL,NULL,16.00,14.00,20.00,769.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(94,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'VA-130-A1-A2',0,15,0,1,0,3,1,0,668,NULL,NULL,NULL,16.00,14.00,20.00,769.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(95,'HTC Vive Cosmos Elite VR Headset',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'VA-130-A1-A3',0,15,0,1,0,3,1,0,668,NULL,NULL,NULL,16.00,14.00,20.00,769.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(96,'Acer Predator X38 Pbmiphzx 38-Inch Curved Gaming Monitor',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'VW-167-A1',0,17,0,1,0,1,1,0,1722,NULL,NULL,NULL,19.00,14.00,13.00,831.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(97,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'S5-110-A1',0,17,0,1,0,4,1,0,1499,NULL,NULL,NULL,20.00,20.00,20.00,764.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(98,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'S5-110-A1-A2',0,17,0,1,0,4,1,0,1499,NULL,NULL,NULL,20.00,20.00,20.00,764.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(99,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'S5-110-A1-A3',0,17,0,1,0,4,1,0,1499,NULL,NULL,NULL,20.00,20.00,20.00,764.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(100,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'S5-110-A1-A4',0,17,0,1,0,4,1,0,1499,NULL,NULL,NULL,20.00,20.00,20.00,764.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(101,'HP Z27k G3 4K USB-C Monitor',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'S5-110-A1-A5',0,17,0,1,0,4,1,0,1499,NULL,NULL,NULL,20.00,20.00,20.00,764.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(102,'LG 27UK850-W 27-Inch 4K UHD IPS Monitor',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'7O-191-A1',0,18,0,1,0,5,1,0,979,NULL,NULL,NULL,14.00,14.00,12.00,664.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(103,'LG 27UK850-W 27-Inch 4K UHD IPS Monitor',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'7O-191-A1-A2',0,18,0,1,0,5,1,0,979,NULL,NULL,NULL,14.00,14.00,12.00,664.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(104,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'7L-119-A1',0,13,0,1,0,2,1,0,303,NULL,NULL,NULL,14.00,16.00,19.00,595.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(105,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'7L-119-A1-A2',0,13,0,1,0,2,1,0,303,NULL,NULL,NULL,14.00,16.00,19.00,595.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(106,'Sony X900H 4K Ultra HD Smart LED TV',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'7L-119-A1-A3',0,13,0,1,0,2,1,0,303,NULL,NULL,NULL,14.00,16.00,19.00,595.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(107,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'WC-179-A1',0,20,0,1,0,2,1,0,2283,NULL,NULL,NULL,17.00,10.00,15.00,546.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(108,'Vizio OLED65-H1 65-Inch 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'WC-179-A1-A2',0,20,0,1,0,2,1,0,2283,NULL,NULL,NULL,17.00,10.00,15.00,546.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(109,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'MC-194-A1',0,18,0,1,0,3,1,0,1246,922.04,NULL,NULL,17.00,20.00,15.00,735.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(110,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'MC-194-A1-A2',0,18,0,1,0,3,1,0,1246,1071.56,NULL,NULL,17.00,20.00,15.00,735.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(111,'Hisense U8G Quantum Series 4K ULED Android TV (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'MC-194-A1-A3',0,18,0,1,0,3,1,0,1246,909.58,NULL,NULL,17.00,20.00,15.00,735.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(112,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'N0-117-A1',0,14,0,1,0,2,1,0,1940,NULL,NULL,NULL,16.00,11.00,16.00,776.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(113,'Sony A90J 4K OLED Smart TV',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'N0-117-A1-A2',0,14,0,1,0,2,1,0,1940,NULL,NULL,NULL,16.00,11.00,16.00,776.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(114,'Google Chromecast with Google TV',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'OC-195-A1',0,14,0,1,0,2,1,0,2025,NULL,NULL,NULL,11.00,19.00,11.00,634.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(115,'Google Chromecast with Google TV',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'OC-195-A1-A2',0,14,0,1,0,2,1,0,2025,NULL,NULL,NULL,11.00,19.00,11.00,634.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(116,'Bose Smart Soundbar 900',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'CZ-155-A1',0,17,0,1,0,4,1,0,2261,NULL,NULL,NULL,20.00,17.00,19.00,625.00,NULL,0,'2024-10-20 21:50:45','2024-10-20 21:50:45','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,1,NULL,NULL,35,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\"]'),(2,10,NULL,NULL,44,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\"]'),(3,8,NULL,NULL,31,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(4,5,NULL,NULL,36,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(5,3,NULL,NULL,47,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(6,3,NULL,NULL,33,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(7,2,NULL,NULL,12,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(8,6,NULL,NULL,30,5.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(9,9,NULL,NULL,4,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\"]'),(10,3,NULL,NULL,7,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\"]'),(11,2,NULL,NULL,36,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(12,1,NULL,NULL,9,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(13,7,NULL,NULL,6,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(14,2,NULL,NULL,23,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\"]'),(15,1,NULL,NULL,19,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\"]'),(16,6,NULL,NULL,21,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(17,1,NULL,NULL,50,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(18,10,NULL,NULL,54,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(19,10,NULL,NULL,38,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\"]'),(20,10,NULL,NULL,24,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(21,5,NULL,NULL,50,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(22,4,NULL,NULL,24,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(23,8,NULL,NULL,46,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(24,1,NULL,NULL,31,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(25,10,NULL,NULL,11,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(26,6,NULL,NULL,20,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(27,7,NULL,NULL,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(29,6,NULL,NULL,15,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\"]'),(30,9,NULL,NULL,16,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\"]'),(31,9,NULL,NULL,34,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(32,8,NULL,NULL,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(33,7,NULL,NULL,50,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\"]'),(34,9,NULL,NULL,37,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(35,5,NULL,NULL,32,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(36,4,NULL,NULL,21,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(37,7,NULL,NULL,26,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\"]'),(39,5,NULL,NULL,1,4.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(40,9,NULL,NULL,35,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\"]'),(41,8,NULL,NULL,51,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\"]'),(42,10,NULL,NULL,52,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\"]'),(43,5,NULL,NULL,41,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\"]'),(44,2,NULL,NULL,52,5.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\"]'),(45,3,NULL,NULL,3,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\"]'),(46,5,NULL,NULL,11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\"]'),(47,7,NULL,NULL,47,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(48,9,NULL,NULL,2,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(49,5,NULL,NULL,30,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(50,5,NULL,NULL,34,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\"]'),(51,8,NULL,NULL,43,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(53,7,NULL,NULL,44,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(54,9,NULL,NULL,7,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(55,10,NULL,NULL,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(56,5,NULL,NULL,6,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\"]'),(57,3,NULL,NULL,48,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(58,9,NULL,NULL,53,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(59,4,NULL,NULL,46,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(61,8,NULL,NULL,33,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(62,3,NULL,NULL,49,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(63,3,NULL,NULL,42,2.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(65,8,NULL,NULL,23,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\"]'),(66,2,NULL,NULL,34,4.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\"]'),(67,10,NULL,NULL,10,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(68,9,NULL,NULL,41,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(69,10,NULL,NULL,7,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\"]'),(70,3,NULL,NULL,25,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(71,1,NULL,NULL,30,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\"]'),(72,6,NULL,NULL,10,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(73,7,NULL,NULL,33,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(74,10,NULL,NULL,42,3.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(75,2,NULL,NULL,31,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(76,3,NULL,NULL,6,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(77,8,NULL,NULL,50,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(78,1,NULL,NULL,3,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(79,1,NULL,NULL,14,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-18.jpg\"]'),(80,1,NULL,NULL,40,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\"]'),(81,8,NULL,NULL,44,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(82,9,NULL,NULL,27,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]'),(83,6,NULL,NULL,49,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(84,6,NULL,NULL,11,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(85,3,NULL,NULL,21,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(86,2,NULL,NULL,21,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(87,7,NULL,NULL,17,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(88,3,NULL,NULL,36,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(89,8,NULL,NULL,15,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\"]'),(90,6,NULL,NULL,18,1.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(91,9,NULL,NULL,46,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(92,3,NULL,NULL,28,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\"]'),(93,3,NULL,NULL,55,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(94,5,NULL,NULL,10,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(95,4,NULL,NULL,8,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(96,6,NULL,NULL,4,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\"]'),(97,4,NULL,NULL,44,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]'),(98,3,NULL,NULL,20,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\"]'),(99,7,NULL,NULL,34,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(100,3,NULL,NULL,31,5.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\"]'),(101,1,NULL,NULL,56,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(102,1,NULL,NULL,52,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(104,2,NULL,NULL,55,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(106,3,NULL,NULL,5,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(107,1,NULL,NULL,18,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(108,6,NULL,NULL,27,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(109,10,NULL,NULL,53,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(110,3,NULL,NULL,9,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(112,6,NULL,NULL,17,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(113,6,NULL,NULL,28,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\"]'),(114,1,NULL,NULL,5,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(115,6,NULL,NULL,33,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\"]'),(116,2,NULL,NULL,28,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(117,8,NULL,NULL,10,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(119,4,NULL,NULL,3,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(120,8,NULL,NULL,29,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(121,1,NULL,NULL,48,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]'),(122,4,NULL,NULL,18,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(123,7,NULL,NULL,16,5.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(125,9,NULL,NULL,36,1.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(126,7,NULL,NULL,57,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\"]'),(127,4,NULL,NULL,25,5.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\"]'),(128,9,NULL,NULL,20,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\"]'),(129,1,NULL,NULL,8,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(132,7,NULL,NULL,2,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(133,9,NULL,NULL,55,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(134,2,NULL,NULL,8,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(135,3,NULL,NULL,13,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\"]'),(136,5,NULL,NULL,54,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-19.jpg\"]'),(137,8,NULL,NULL,30,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\"]'),(138,9,NULL,NULL,3,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(140,5,NULL,NULL,16,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(143,7,NULL,NULL,28,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(145,1,NULL,NULL,25,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(147,10,NULL,NULL,29,1.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(148,4,NULL,NULL,34,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\"]'),(152,9,NULL,NULL,12,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(153,5,NULL,NULL,40,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\"]'),(154,3,NULL,NULL,11,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(156,7,NULL,NULL,29,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]'),(157,7,NULL,NULL,48,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(158,2,NULL,NULL,57,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(159,8,NULL,NULL,3,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(160,5,NULL,NULL,39,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(161,4,NULL,NULL,1,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\"]'),(162,6,NULL,NULL,48,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\"]'),(165,8,NULL,NULL,47,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\"]'),(166,8,NULL,NULL,57,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(167,4,NULL,NULL,38,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\"]'),(169,7,NULL,NULL,30,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\"]'),(171,8,NULL,NULL,8,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\"]'),(173,10,NULL,NULL,1,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(175,6,NULL,NULL,8,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\"]'),(176,1,NULL,NULL,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(177,10,NULL,NULL,47,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(178,8,NULL,NULL,53,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(180,3,NULL,NULL,22,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(181,9,NULL,NULL,25,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\"]'),(182,8,NULL,NULL,12,1.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\"]'),(183,4,NULL,NULL,48,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\"]'),(187,7,NULL,NULL,42,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(189,8,NULL,NULL,45,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(190,2,NULL,NULL,37,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(191,8,NULL,NULL,1,4.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\"]'),(192,5,NULL,NULL,37,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(193,6,NULL,NULL,7,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(194,9,NULL,NULL,15,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(195,10,NULL,NULL,45,3.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\"]'),(196,6,NULL,NULL,25,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\"]'),(197,2,NULL,NULL,3,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(198,7,NULL,NULL,12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(199,1,NULL,NULL,55,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\"]'),(200,9,NULL,NULL,57,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(201,2,NULL,NULL,48,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(202,2,NULL,NULL,43,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(205,7,NULL,NULL,40,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\"]'),(206,7,NULL,NULL,53,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(208,5,NULL,NULL,45,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\"]'),(210,9,NULL,NULL,10,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\"]'),(211,7,NULL,NULL,36,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(212,2,NULL,NULL,14,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(213,1,NULL,NULL,1,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(214,4,NULL,NULL,29,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(215,3,NULL,NULL,12,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(216,6,NULL,NULL,56,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(217,6,NULL,NULL,16,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(218,1,NULL,NULL,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\"]'),(219,1,NULL,NULL,57,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\"]'),(220,3,NULL,NULL,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(222,5,NULL,NULL,12,1.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(226,2,NULL,NULL,30,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(227,2,NULL,NULL,35,1.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(228,9,NULL,NULL,5,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\"]'),(229,7,NULL,NULL,4,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\"]'),(230,4,NULL,NULL,50,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(231,6,NULL,NULL,5,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(233,2,NULL,NULL,33,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(234,5,NULL,NULL,4,1.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(235,10,NULL,NULL,41,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(236,4,NULL,NULL,37,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(237,10,NULL,NULL,48,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(238,6,NULL,NULL,1,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(239,4,NULL,NULL,57,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(240,1,NULL,NULL,37,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(242,6,NULL,NULL,37,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(243,4,NULL,NULL,47,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\"]'),(244,4,NULL,NULL,56,3.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(246,5,NULL,NULL,18,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\"]'),(247,10,NULL,NULL,50,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\"]'),(250,8,NULL,NULL,25,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(251,7,NULL,NULL,49,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]'),(253,6,NULL,NULL,40,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(256,5,NULL,NULL,55,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-19.jpg\"]'),(257,8,NULL,NULL,11,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\"]'),(259,1,NULL,NULL,2,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(260,5,NULL,NULL,2,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(261,9,NULL,NULL,45,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\"]'),(262,10,NULL,NULL,46,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(266,8,NULL,NULL,20,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(267,5,NULL,NULL,24,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(269,5,NULL,NULL,49,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(271,7,NULL,NULL,45,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(272,2,NULL,NULL,2,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(273,9,NULL,NULL,49,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(274,7,NULL,NULL,9,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(276,3,NULL,NULL,4,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(277,2,NULL,NULL,10,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(278,6,NULL,NULL,53,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(279,4,NULL,NULL,26,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(280,8,NULL,NULL,6,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\"]'),(281,5,NULL,NULL,46,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(283,3,NULL,NULL,1,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(284,8,NULL,NULL,54,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(285,3,NULL,NULL,35,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\"]'),(286,2,NULL,NULL,29,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\"]'),(287,1,NULL,NULL,29,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-19.jpg\"]'),(288,10,NULL,NULL,23,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(289,6,NULL,NULL,38,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\"]'),(290,3,NULL,NULL,26,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\"]'),(292,9,NULL,NULL,19,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(297,5,NULL,NULL,17,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-15.jpg\"]'),(298,4,NULL,NULL,33,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\"]'),(301,10,NULL,NULL,32,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(302,10,NULL,NULL,4,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(303,2,NULL,NULL,42,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(304,2,NULL,NULL,17,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\"]'),(306,2,NULL,NULL,51,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(307,9,NULL,NULL,33,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(308,6,NULL,NULL,44,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\"]'),(310,7,NULL,NULL,31,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\"]'),(312,4,NULL,NULL,39,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(313,6,NULL,NULL,45,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(314,10,NULL,NULL,9,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\"]'),(315,10,NULL,NULL,26,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(319,5,NULL,NULL,25,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(320,9,NULL,NULL,50,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(323,9,NULL,NULL,13,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(324,7,NULL,NULL,11,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\"]'),(326,5,NULL,NULL,14,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(328,6,NULL,NULL,57,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(329,1,NULL,NULL,4,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(333,5,NULL,NULL,5,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(334,8,NULL,NULL,13,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(335,7,NULL,NULL,25,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(336,1,NULL,NULL,7,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\"]'),(337,7,NULL,NULL,3,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\"]'),(338,6,NULL,NULL,47,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\"]'),(341,4,NULL,NULL,32,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(342,4,NULL,NULL,13,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-19.jpg\"]'),(343,7,NULL,NULL,15,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(344,10,NULL,NULL,39,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(350,6,NULL,NULL,14,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(351,4,NULL,NULL,51,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(354,1,NULL,NULL,33,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\"]'),(355,10,NULL,NULL,22,1.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\"]'),(356,8,NULL,NULL,55,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(360,1,NULL,NULL,20,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\"]'),(361,8,NULL,NULL,40,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(362,8,NULL,NULL,36,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\"]'),(365,2,NULL,NULL,49,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-12.jpg\"]'),(366,4,NULL,NULL,2,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\"]'),(368,4,NULL,NULL,4,4.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-20.jpg\"]'),(369,6,NULL,NULL,41,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\"]'),(373,6,NULL,NULL,29,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(374,4,NULL,NULL,43,1.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(375,10,NULL,NULL,13,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\"]'),(376,7,NULL,NULL,10,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(378,9,NULL,NULL,9,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\"]'),(379,6,NULL,NULL,43,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(380,10,NULL,NULL,31,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(383,1,NULL,NULL,27,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(384,6,NULL,NULL,54,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\"]'),(386,7,NULL,NULL,1,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\"]'),(387,1,NULL,NULL,39,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\"]'),(388,7,NULL,NULL,56,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\"]'),(389,6,NULL,NULL,23,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(390,4,NULL,NULL,19,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(392,2,NULL,NULL,5,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(393,9,NULL,NULL,18,5.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\"]'),(394,1,NULL,NULL,42,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(396,6,NULL,NULL,55,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(397,9,NULL,NULL,8,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\"]'),(399,10,NULL,NULL,28,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(400,10,NULL,NULL,2,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(401,1,NULL,NULL,53,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(404,4,NULL,NULL,30,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(407,3,NULL,NULL,23,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\"]'),(410,6,NULL,NULL,26,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(411,7,NULL,NULL,20,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(412,2,NULL,NULL,15,4.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(414,5,NULL,NULL,20,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\"]'),(418,1,NULL,NULL,26,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(424,3,NULL,NULL,30,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\"]'),(426,4,NULL,NULL,35,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-18.jpg\"]'),(427,8,NULL,NULL,37,5.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\"]'),(429,2,NULL,NULL,41,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(430,1,NULL,NULL,47,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(431,3,NULL,NULL,2,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(433,3,NULL,NULL,38,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-13.jpg\"]'),(435,2,NULL,NULL,26,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\"]'),(436,2,NULL,NULL,18,1.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(437,8,NULL,NULL,16,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(439,5,NULL,NULL,31,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\"]'),(442,6,NULL,NULL,22,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(444,2,NULL,NULL,27,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(447,8,NULL,NULL,34,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(449,3,NULL,NULL,32,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-20.jpg\"]'),(451,4,NULL,NULL,55,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]'),(454,10,NULL,NULL,56,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\"]'),(455,9,NULL,NULL,32,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\"]'),(456,9,NULL,NULL,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(460,9,NULL,NULL,52,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(461,3,NULL,NULL,19,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(462,8,NULL,NULL,5,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]'),(467,7,NULL,NULL,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(470,2,NULL,NULL,6,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\"]'),(472,9,NULL,NULL,24,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-18.jpg\"]'),(474,5,NULL,NULL,8,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\"]'),(475,7,NULL,NULL,7,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-13.jpg\"]'),(476,4,NULL,NULL,22,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(478,1,NULL,NULL,17,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(480,7,NULL,NULL,32,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(481,5,NULL,NULL,57,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(485,4,NULL,NULL,40,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\"]'),(486,9,NULL,NULL,23,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]'),(490,7,NULL,NULL,39,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\"]'),(499,8,NULL,NULL,48,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(500,5,NULL,NULL,22,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(507,8,NULL,NULL,19,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(508,4,NULL,NULL,31,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(509,10,NULL,NULL,27,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-20.jpg\"]'),(511,3,NULL,NULL,41,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(513,1,NULL,NULL,28,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(514,9,NULL,NULL,40,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(516,9,NULL,NULL,47,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(521,7,NULL,NULL,52,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\"]'),(523,2,NULL,NULL,44,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-16.jpg\"]'),(527,10,NULL,NULL,17,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-15.jpg\"]'),(530,9,NULL,NULL,48,3.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(535,2,NULL,NULL,25,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\"]'),(537,6,NULL,NULL,50,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\"]'),(539,1,NULL,NULL,54,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\"]'),(541,2,NULL,NULL,1,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-3.jpg\"]'),(546,2,NULL,NULL,16,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]'),(553,7,NULL,NULL,46,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(560,5,NULL,NULL,28,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\"]'),(565,3,NULL,NULL,50,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]'),(568,9,NULL,NULL,30,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]'),(572,1,NULL,NULL,41,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\"]'),(576,8,NULL,NULL,38,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(580,6,NULL,NULL,2,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(585,8,NULL,NULL,28,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(591,5,NULL,NULL,53,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(592,1,NULL,NULL,36,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(598,6,NULL,NULL,35,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\"]'),(600,10,NULL,NULL,35,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\"]'),(601,8,NULL,NULL,22,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\"]'),(609,3,NULL,NULL,44,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(610,8,NULL,NULL,2,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\"]'),(612,5,NULL,NULL,56,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\"]'),(614,2,NULL,NULL,38,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-8.jpg\"]'),(615,2,NULL,NULL,47,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-20.jpg\"]'),(622,3,NULL,NULL,27,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-19.jpg\"]'),(626,10,NULL,NULL,6,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(633,3,NULL,NULL,34,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\"]'),(634,8,NULL,NULL,18,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\"]'),(638,4,NULL,NULL,14,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(641,5,NULL,NULL,3,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(648,7,NULL,NULL,37,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]'),(652,1,NULL,NULL,38,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(653,5,NULL,NULL,38,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(657,3,NULL,NULL,14,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(658,9,NULL,NULL,39,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\"]'),(661,2,NULL,NULL,53,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\"]'),(663,2,NULL,NULL,39,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-13.jpg\"]'),(664,6,NULL,NULL,42,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-19.jpg\"]'),(666,4,NULL,NULL,41,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\"]'),(671,2,NULL,NULL,11,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\"]'),(679,2,NULL,NULL,45,3.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(680,4,NULL,NULL,12,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-19.jpg\"]'),(681,6,NULL,NULL,36,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\"]'),(685,5,NULL,NULL,26,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(688,2,NULL,NULL,32,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-16.jpg\"]'),(689,5,NULL,NULL,43,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-17.jpg\"]'),(693,4,NULL,NULL,28,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\"]'),(694,10,NULL,NULL,20,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\"]'),(695,10,NULL,NULL,15,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(698,10,NULL,NULL,8,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\"]'),(709,9,NULL,NULL,26,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(711,1,NULL,NULL,49,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(715,3,NULL,NULL,52,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(719,8,NULL,NULL,7,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\"]'),(720,5,NULL,NULL,33,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(737,4,NULL,NULL,54,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\"]'),(741,1,NULL,NULL,43,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\"]'),(743,1,NULL,NULL,22,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(744,9,NULL,NULL,44,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-16.jpg\"]'),(752,9,NULL,NULL,43,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]'),(764,5,NULL,NULL,48,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\"]'),(765,2,NULL,NULL,50,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(773,3,NULL,NULL,37,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(777,6,NULL,NULL,6,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-19.jpg\"]'),(784,10,NULL,NULL,57,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-9.jpg\"]'),(787,2,NULL,NULL,54,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\"]'),(791,8,NULL,NULL,35,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(792,3,NULL,NULL,15,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\"]'),(793,8,NULL,NULL,56,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\"]'),(794,7,NULL,NULL,13,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(795,9,NULL,NULL,38,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-13.jpg\"]'),(799,10,NULL,NULL,14,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(801,4,NULL,NULL,20,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\"]'),(804,1,NULL,NULL,45,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(813,8,NULL,NULL,26,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\"]'),(817,1,NULL,NULL,32,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\"]'),(826,7,NULL,NULL,19,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(827,8,NULL,NULL,32,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(828,5,NULL,NULL,7,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(831,5,NULL,NULL,19,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(832,10,NULL,NULL,43,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-16.jpg\"]'),(847,3,NULL,NULL,53,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]'),(858,10,NULL,NULL,33,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]'),(860,8,NULL,NULL,9,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(862,2,NULL,NULL,24,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(879,7,NULL,NULL,35,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-18.jpg\"]'),(881,8,NULL,NULL,49,2.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\"]'),(882,3,NULL,NULL,46,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-6.jpg\"]'),(886,1,NULL,NULL,10,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]'),(895,2,NULL,NULL,13,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(903,1,NULL,NULL,34,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(904,10,NULL,NULL,19,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]'),(916,5,NULL,NULL,9,2.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-6.jpg\"]'),(919,5,NULL,NULL,27,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(923,3,NULL,NULL,24,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\"]'),(937,5,NULL,NULL,29,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(938,9,NULL,NULL,54,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-1.jpg\"]'),(940,10,NULL,NULL,34,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]'),(941,2,NULL,NULL,56,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\"]'),(943,6,NULL,NULL,34,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-18.jpg\"]'),(944,2,NULL,NULL,19,2.00,'Clean & perfect source code','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\"]'),(949,6,NULL,NULL,31,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-20.jpg\"]'),(950,10,NULL,NULL,37,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-6.jpg\"]'),(951,5,NULL,NULL,21,1.00,'Best ecommerce CMS online store!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\"]'),(955,2,NULL,NULL,46,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(962,9,NULL,NULL,14,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\"]'),(968,7,NULL,NULL,51,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\"]'),(971,6,NULL,NULL,3,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-20.jpg\"]'),(973,10,NULL,NULL,18,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-17.jpg\"]'),(974,7,NULL,NULL,8,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\"]'),(987,7,NULL,NULL,21,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\"]'),(989,3,NULL,NULL,8,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-details-desc-2.jpg\"]'),(991,7,NULL,NULL,43,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-19.jpg\"]'),(999,10,NULL,NULL,25,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:50:47','2024-10-20 21:50:47','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-10-20 21:50:36','2024-10-20 21:50:36');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-10-20 21:50:36','2024-10-20 21:50:36'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-10-20 21:50:36','2024-10-20 21:50:36'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-10-20 21:50:36','2024-10-20 21:50:36');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(2,'Performance',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(3,'Battery',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(4,'Display',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL),(2,'Technical Specification',NULL,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,5),(1,9),(1,11),(1,16),(1,18),(1,20),(1,21),(1,23),(1,25),(1,26),(1,31),(1,35),(1,36),(1,38),(1,40),(1,43),(1,48),(2,1),(2,2),(2,4),(2,8),(2,13),(2,17),(2,27),(2,28),(2,29),(2,32),(2,37),(2,39),(2,42),(2,44),(2,47),(2,50),(2,53),(2,56),(2,57),(3,3),(3,6),(3,7),(3,10),(3,12),(3,14),(3,15),(3,19),(3,22),(3,24),(3,30),(3,33),(3,34),(3,41),(3,45),(3,46),(3,49),(3,51),(3,52),(3,54),(3,55);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(2,'None',0.000000,2,'published','2024-10-20 21:50:36','2024-10-20 21:50:36'),(3,'Import Tax',15.000000,3,'published','2024-10-20 21:50:36','2024-10-20 21:50:36');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL),(2,'Payment',1,'published','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL),(3,'Order &amp; Returns',2,'published','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-10-20 21:50:32','2024-10-20 21:50:32'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-10-20 21:50:32','2024-10-20 21:50:32');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Mock Turtle. \'Hold your tongue!\' added the March Hare, who had not gone much farther before she had wept when she got back to the whiting,\' said the Duchess, digging her sharp little chin into.',1,0,'main/galleries/1.jpg',1,'published','2024-10-20 21:50:46','2024-10-20 21:50:46'),(2,'New Day','Tortoise--\' \'Why did they live on?\' said Alice, \'and those twelve creatures,\' (she was obliged to say \'creatures,\' you see, so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said.',1,0,'main/galleries/2.jpg',1,'published','2024-10-20 21:50:46','2024-10-20 21:50:46'),(3,'Happy Day','But she did it so VERY tired of this. I vote the young Crab, a little sharp bark just over her head impatiently; and, turning to Alice, flinging the baby was howling so much surprised, that for two.',1,0,'main/galleries/3.jpg',1,'published','2024-10-20 21:50:46','2024-10-20 21:50:46'),(4,'Nature','He was an uncomfortably sharp chin. However, she did not venture to say \'I once tasted--\' but checked herself hastily, and said \'What else had you to get through was more than three.\' \'Your hair.',1,0,'main/galleries/4.jpg',1,'published','2024-10-20 21:50:46','2024-10-20 21:50:46'),(5,'Morning','Her first idea was that it is!\' \'Why should it?\' muttered the Hatter. \'Does YOUR watch tell you how the Dodo replied very gravely. \'What else had you to learn?\' \'Well, there was silence for some.',1,0,'main/galleries/5.jpg',1,'published','2024-10-20 21:50:46','2024-10-20 21:50:46');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Queen, who were all ornamented with hearts. Next came the royal children; there were no arches left, and all the rest, Between yourself and me.\' \'That\'s the reason they\'re called lessons,\' the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice again. \'No, I give you fair warning,\' shouted the Queen, \'and he shall tell you what year it is?\' \'Of course not,\' Alice replied in an offended tone. And the moral of that is--\\\"Birds of a.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:50:46','2024-10-20 21:50:46'),(2,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Queen, who were all ornamented with hearts. Next came the royal children; there were no arches left, and all the rest, Between yourself and me.\' \'That\'s the reason they\'re called lessons,\' the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice again. \'No, I give you fair warning,\' shouted the Queen, \'and he shall tell you what year it is?\' \'Of course not,\' Alice replied in an offended tone. And the moral of that is--\\\"Birds of a.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:50:46','2024-10-20 21:50:46'),(3,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Queen, who were all ornamented with hearts. Next came the royal children; there were no arches left, and all the rest, Between yourself and me.\' \'That\'s the reason they\'re called lessons,\' the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice again. \'No, I give you fair warning,\' shouted the Queen, \'and he shall tell you what year it is?\' \'Of course not,\' Alice replied in an offended tone. And the moral of that is--\\\"Birds of a.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:50:46','2024-10-20 21:50:46'),(4,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Queen, who were all ornamented with hearts. Next came the royal children; there were no arches left, and all the rest, Between yourself and me.\' \'That\'s the reason they\'re called lessons,\' the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice again. \'No, I give you fair warning,\' shouted the Queen, \'and he shall tell you what year it is?\' \'Of course not,\' Alice replied in an offended tone. And the moral of that is--\\\"Birds of a.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:50:46','2024-10-20 21:50:46'),(5,'[{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Queen, who were all ornamented with hearts. Next came the royal children; there were no arches left, and all the rest, Between yourself and me.\' \'That\'s the reason they\'re called lessons,\' the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"Alice again. \'No, I give you fair warning,\' shouted the Queen, \'and he shall tell you what year it is?\' \'Of course not,\' Alice replied in an offended tone. And the moral of that is--\\\"Birds of a.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:50:46','2024-10-20 21:50:46');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','f17014fea8e83e1082d52806728b3bdb',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','76e139069379d563bcd7519437ea8ed5',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','b39c1641e70debf1d51c5b6656405533',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','de486fcdc583992b1c81c4294da8186d',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','e29d354ab721b372f17cfcff6542c53a',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',16004,'main/general/404.png','[]','2024-10-20 21:50:30','2024-10-20 21:50:30',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-10-20 21:50:30','2024-10-20 21:50:30',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-10-20 21:50:30','2024-10-20 21:50:30',NULL,'public'),(4,0,'auth-banner','auth-banner',2,'image/png',48468,'main/general/auth-banner.png','[]','2024-10-20 21:50:30','2024-10-20 21:50:30',NULL,'public'),(5,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(6,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(7,0,'cta-shape-1','cta-shape-1',2,'image/png',23294,'main/general/cta-shape-1.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(8,0,'cta-shape-2','cta-shape-2',2,'image/png',16820,'main/general/cta-shape-2.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(9,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',1822,'main/general/favicon.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(11,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(12,0,'logo-white','logo-white',2,'image/png',21450,'main/general/logo-white.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(13,0,'logo','logo',2,'image/png',22334,'main/general/logo.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(15,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(16,0,'preloader-icon','preloader-icon',2,'image/png',4160,'main/general/preloader-icon.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(17,0,'signature','signature',2,'image/png',2330,'main/general/signature.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(18,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-10-20 21:50:31','2024-10-20 21:50:31',NULL,'public'),(29,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL,'public'),(30,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL,'public'),(31,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL,'public'),(32,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL,'public'),(33,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-10-20 21:50:32','2024-10-20 21:50:32',NULL,'public'),(34,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(35,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(36,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(37,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(38,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(39,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(40,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(41,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(42,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(43,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-10-20 21:50:33','2024-10-20 21:50:33',NULL,'public'),(44,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(45,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(46,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(47,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(48,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(49,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(50,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(51,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(52,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(53,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(54,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-10-20 21:50:36','2024-10-20 21:50:36',NULL,'public'),(55,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(56,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(57,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(58,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(59,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(60,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(61,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(62,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(63,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(64,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(65,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(66,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(67,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(68,0,'1','1',7,'image/png',9022,'main/stores/1.png','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(69,0,'10','10',7,'image/png',4384,'main/stores/10.png','[]','2024-10-20 21:50:37','2024-10-20 21:50:37',NULL,'public'),(70,0,'11','11',7,'image/png',4706,'main/stores/11.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(71,0,'12','12',7,'image/png',5075,'main/stores/12.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(72,0,'13','13',7,'image/png',3700,'main/stores/13.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(73,0,'14','14',7,'image/png',4239,'main/stores/14.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(74,0,'15','15',7,'image/png',5304,'main/stores/15.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(75,0,'16','16',7,'image/png',4796,'main/stores/16.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(76,0,'17','17',7,'image/png',4919,'main/stores/17.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(77,0,'2','2',7,'image/png',8598,'main/stores/2.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(78,0,'3','3',7,'image/png',7888,'main/stores/3.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(79,0,'4','4',7,'image/png',8393,'main/stores/4.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(80,0,'5','5',7,'image/png',10159,'main/stores/5.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(81,0,'6','6',7,'image/png',10312,'main/stores/6.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(82,0,'7','7',7,'image/png',3764,'main/stores/7.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(83,0,'8','8',7,'image/png',4237,'main/stores/8.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(84,0,'9','9',7,'image/png',4096,'main/stores/9.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(85,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(86,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(87,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(88,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(89,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-10-20 21:50:38','2024-10-20 21:50:38',NULL,'public'),(90,0,'shape-1','shape-1',8,'image/png',19103,'main/sliders/shape-1.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(91,0,'shape-2','shape-2',8,'image/png',815,'main/sliders/shape-2.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(92,0,'shape-3','shape-3',8,'image/png',689,'main/sliders/shape-3.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(93,0,'shape-4','shape-4',8,'image/png',458,'main/sliders/shape-4.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(94,0,'slider-1','slider-1',8,'image/png',7405,'main/sliders/slider-1.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(95,0,'slider-2','slider-2',8,'image/png',8434,'main/sliders/slider-2.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(96,0,'slider-3','slider-3',8,'image/png',7794,'main/sliders/slider-3.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(97,0,'1','1',9,'image/png',4294,'main/product-categories/1.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(98,0,'2','2',9,'image/png',4294,'main/product-categories/2.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(99,0,'3','3',9,'image/png',4294,'main/product-categories/3.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(100,0,'4','4',9,'image/png',4294,'main/product-categories/4.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(101,0,'5','5',9,'image/png',4294,'main/product-categories/5.png','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(102,0,'category-thumb-1','category-thumb-1',9,'image/jpeg',4294,'main/product-categories/category-thumb-1.jpg','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(103,0,'category-thumb-10','category-thumb-10',9,'image/jpeg',4294,'main/product-categories/category-thumb-10.jpg','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(104,0,'category-thumb-11','category-thumb-11',9,'image/jpeg',4294,'main/product-categories/category-thumb-11.jpg','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(105,0,'category-thumb-12','category-thumb-12',9,'image/jpeg',4294,'main/product-categories/category-thumb-12.jpg','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(106,0,'category-thumb-3','category-thumb-3',9,'image/jpeg',4294,'main/product-categories/category-thumb-3.jpg','[]','2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,'public'),(107,0,'category-thumb-4','category-thumb-4',9,'image/jpeg',4294,'main/product-categories/category-thumb-4.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(108,0,'category-thumb-5','category-thumb-5',9,'image/jpeg',4294,'main/product-categories/category-thumb-5.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(109,0,'category-thumb-6','category-thumb-6',9,'image/jpeg',4294,'main/product-categories/category-thumb-6.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(110,0,'category-thumb-8','category-thumb-8',9,'image/jpeg',4294,'main/product-categories/category-thumb-8.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(111,0,'category-thumb-9','category-thumb-9',9,'image/jpeg',4294,'main/product-categories/category-thumb-9.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(112,0,'menu-1','menu-1',9,'image/jpeg',4294,'main/product-categories/menu-1.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(113,0,'menu-2','menu-2',9,'image/jpeg',4294,'main/product-categories/menu-2.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(114,0,'menu-3','menu-3',9,'image/jpeg',4294,'main/product-categories/menu-3.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(115,0,'product-1','product-1',10,'image/jpeg',9803,'main/products/product-1.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(116,0,'product-10','product-10',10,'image/jpeg',9803,'main/products/product-10.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(117,0,'product-11','product-11',10,'image/jpeg',9803,'main/products/product-11.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(118,0,'product-12','product-12',10,'image/jpeg',9803,'main/products/product-12.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(119,0,'product-13','product-13',10,'image/jpeg',9803,'main/products/product-13.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(120,0,'product-14','product-14',10,'image/jpeg',9803,'main/products/product-14.jpg','[]','2024-10-20 21:50:42','2024-10-20 21:50:42',NULL,'public'),(121,0,'product-15','product-15',10,'image/jpeg',9803,'main/products/product-15.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(122,0,'product-16','product-16',10,'image/jpeg',9803,'main/products/product-16.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(123,0,'product-17','product-17',10,'image/jpeg',9803,'main/products/product-17.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(124,0,'product-18','product-18',10,'image/jpeg',9803,'main/products/product-18.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(125,0,'product-19','product-19',10,'image/jpeg',9803,'main/products/product-19.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(126,0,'product-2','product-2',10,'image/jpeg',9803,'main/products/product-2.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(127,0,'product-20','product-20',10,'image/jpeg',9803,'main/products/product-20.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(128,0,'product-3','product-3',10,'image/jpeg',9803,'main/products/product-3.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(129,0,'product-4','product-4',10,'image/jpeg',9803,'main/products/product-4.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(130,0,'product-5','product-5',10,'image/jpeg',9803,'main/products/product-5.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(131,0,'product-6','product-6',10,'image/jpeg',9803,'main/products/product-6.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(132,0,'product-7','product-7',10,'image/jpeg',9803,'main/products/product-7.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(133,0,'product-8','product-8',10,'image/jpeg',9803,'main/products/product-8.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(134,0,'product-9','product-9',10,'image/jpeg',9803,'main/products/product-9.jpg','[]','2024-10-20 21:50:43','2024-10-20 21:50:43',NULL,'public'),(135,0,'product-details-desc-1','product-details-desc-1',10,'image/jpeg',9803,'main/products/product-details-desc-1.jpg','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(136,0,'product-details-desc-2','product-details-desc-2',10,'image/jpeg',9803,'main/products/product-details-desc-2.jpg','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(137,0,'product-details-desc-3','product-details-desc-3',10,'image/jpeg',9803,'main/products/product-details-desc-3.jpg','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(138,0,'1','1',11,'image/jpeg',15433,'main/video/1.jpg','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(139,0,'2','2',11,'image/jpeg',18347,'main/video/2.jpg','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(140,0,'video-1','video-1',11,'video/mp4',4959871,'main/video/video-1.mp4','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(141,0,'video-2','video-2',11,'video/mp4',1077550,'main/video/video-2.mp4','[]','2024-10-20 21:50:44','2024-10-20 21:50:44',NULL,'public'),(142,0,'1','1',12,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-10-20 21:50:45','2024-10-20 21:50:45',NULL,'public'),(143,0,'2','2',12,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(144,0,'slider-1','slider-1',12,'image/png',8207,'main/banners/slider-1.png','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(145,0,'slider-2','slider-2',12,'image/png',8497,'main/banners/slider-2.png','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(146,0,'slider-3','slider-3',12,'image/png',6239,'main/banners/slider-3.png','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(147,0,'gadget-banner-1','gadget-banner-1',13,'image/jpeg',3870,'main/gadgets/gadget-banner-1.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(148,0,'gadget-banner-2','gadget-banner-2',13,'image/jpeg',3870,'main/gadgets/gadget-banner-2.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(149,0,'gadget-girl','gadget-girl',13,'image/png',4417,'main/gadgets/gadget-girl.png','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(150,0,'1','1',14,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(151,0,'2','2',14,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(152,0,'3','3',14,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(153,0,'4','4',14,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(154,0,'5','5',14,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(158,0,'icon-1','icon-1',15,'image/png',4492,'main/contact/icon-1.png','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(159,0,'icon-2','icon-2',15,'image/png',5753,'main/contact/icon-2.png','[]','2024-10-20 21:50:46','2024-10-20 21:50:46',NULL,'public'),(160,0,'icon-3','icon-3',15,'image/png',5987,'main/contact/icon-3.png','[]','2024-10-20 21:50:47','2024-10-20 21:50:47',NULL,'public'),(161,0,'line','line',16,'image/png',6598,'main/shapes/line.png','[]','2024-10-20 21:50:47','2024-10-20 21:50:47',NULL,'public'),(162,0,'quote','quote',16,'image/png',592,'main/shapes/quote.png','[]','2024-10-20 21:50:47','2024-10-20 21:50:47',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-10-20 21:50:30','2024-10-20 21:50:30',NULL),(2,0,'general',NULL,'general',1,'2024-10-20 21:50:30','2024-10-20 21:50:30',NULL),(3,0,'users',NULL,'users',1,'2024-10-20 21:50:31','2024-10-20 21:50:31',NULL),(4,0,'brands',NULL,'brands',1,'2024-10-20 21:50:32','2024-10-20 21:50:32',NULL),(5,0,'customers',NULL,'customers',1,'2024-10-20 21:50:33','2024-10-20 21:50:33',NULL),(6,0,'blog',NULL,'blog',1,'2024-10-20 21:50:36','2024-10-20 21:50:36',NULL),(7,0,'stores',NULL,'stores',1,'2024-10-20 21:50:37','2024-10-20 21:50:37',NULL),(8,0,'sliders',NULL,'sliders',1,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL),(9,0,'product-categories',NULL,'product-categories',1,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL),(10,0,'products',NULL,'products',1,'2024-10-20 21:50:42','2024-10-20 21:50:42',NULL),(11,0,'video',NULL,'video',1,'2024-10-20 21:50:44','2024-10-20 21:50:44',NULL),(12,0,'banners',NULL,'banners',1,'2024-10-20 21:50:45','2024-10-20 21:50:45',NULL),(13,0,'gadgets',NULL,'gadgets',1,'2024-10-20 21:50:46','2024-10-20 21:50:46',NULL),(14,0,'galleries',NULL,'galleries',1,'2024-10-20 21:50:46','2024-10-20 21:50:46',NULL),(15,0,'contact',NULL,'contact',1,'2024-10-20 21:50:46','2024-10-20 21:50:46',NULL),(16,0,'shapes',NULL,'shapes',1,'2024-10-20 21:50:47','2024-10-20 21:50:47',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-10-20 21:50:47','2024-10-20 21:50:47');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(9,1,7,3,'Botble\\Page\\Models\\Page','/brands',NULL,0,'Shop Brands',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(12,1,7,NULL,NULL,'/products/steelseries-arctis-pro-wireless-gaming-headset',NULL,0,'Product Detail',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(13,1,7,4,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(14,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(15,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(16,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(18,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(19,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(20,1,19,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(21,1,19,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(22,1,19,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(23,1,19,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(24,1,19,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(25,1,19,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(26,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(29,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Blog Detail',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(30,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(32,2,0,11,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(33,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(34,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(35,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(37,3,0,9,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(38,3,0,10,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(39,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(40,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47'),(41,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-10-20 21:50:47','2024-10-20 21:50:47');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(2,'My Account','my-account','published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(3,'Information','information','published','2024-10-20 21:50:47','2024-10-20 21:50:47');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#115061\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(2,'is_light','[0]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(3,'subtitle','[\"Starting at <b>$274.00<\\/b>\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(4,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(5,'background_color','[\"#115061\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(6,'is_light','[0]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(7,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(8,'button_label','[\"Shop Now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(9,'background_color','[\"#E3EDF6\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(10,'is_light','[1]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(11,'subtitle','[\"Starting at <b>$999.00<\\/b>\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(12,'button_label','[\"Shop Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:50:41','2024-10-20 21:50:41'),(13,'faq_ids','[[2,6,7,8,9]]',1,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(14,'faq_ids','[[2,7,8,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(15,'faq_ids','[[1,2,3,4,7]]',3,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(16,'faq_ids','[[3,7,8,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(17,'faq_ids','[[2,4,6,7,8]]',5,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(18,'faq_ids','[[4,6,7,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(19,'faq_ids','[[2,3,4,7,9]]',7,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(20,'faq_ids','[[1,2,4,5,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(21,'faq_ids','[[2,4,5,6,7]]',9,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(22,'faq_ids','[[3,6,7,8,9]]',10,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(23,'faq_ids','[[2,4,5,7,9]]',11,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(24,'faq_ids','[[1,2,5,6,9]]',12,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(25,'faq_ids','[[1,2,4,5,9]]',13,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(26,'faq_ids','[[4,5,6,7,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(27,'faq_ids','[[1,4,5,6,9]]',15,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(28,'faq_ids','[[1,5,6,8,9]]',16,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(29,'faq_ids','[[3,5,6,8,9]]',17,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(30,'faq_ids','[[1,2,3,4,6]]',18,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(31,'faq_ids','[[1,3,4,6,8]]',19,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(32,'faq_ids','[[2,6,7,8,9]]',20,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(33,'faq_ids','[[2,4,5,7,10]]',21,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(34,'faq_ids','[[2,3,4,6,7]]',22,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(35,'faq_ids','[[1,5,6,7,9]]',23,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(36,'faq_ids','[[1,2,3,4,8]]',24,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(37,'faq_ids','[[1,2,4,7,8]]',25,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(38,'faq_ids','[[3,5,8,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(39,'faq_ids','[[3,4,6,8,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(40,'faq_ids','[[1,2,5,6,8]]',28,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(41,'faq_ids','[[1,2,6,7,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(42,'faq_ids','[[1,3,4,5,7]]',30,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(43,'faq_ids','[[3,5,6,9,10]]',31,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(44,'faq_ids','[[4,5,6,7,8]]',32,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(45,'faq_ids','[[4,5,6,7,10]]',33,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(46,'faq_ids','[[2,3,6,7,8]]',34,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(47,'faq_ids','[[4,6,8,9,10]]',35,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(48,'faq_ids','[[3,5,7,8,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(49,'faq_ids','[[1,3,8,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(50,'faq_ids','[[1,2,3,7,9]]',38,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(51,'faq_ids','[[1,4,6,9,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(52,'faq_ids','[[1,5,6,7,9]]',40,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(53,'faq_ids','[[1,2,5,8,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(54,'faq_ids','[[1,7,8,9,10]]',42,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(55,'faq_ids','[[1,2,5,7,9]]',43,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(56,'faq_ids','[[3,4,5,8,10]]',44,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(57,'faq_ids','[[2,3,5,7,10]]',45,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(58,'faq_ids','[[1,3,4,6,8]]',46,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(59,'faq_ids','[[1,2,3,5,7]]',47,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(60,'faq_ids','[[1,2,4,7,8]]',48,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(61,'faq_ids','[[2,3,5,7,9]]',49,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(62,'faq_ids','[[4,5,6,9,10]]',50,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(63,'faq_ids','[[5,6,7,8,10]]',51,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:44','2024-10-20 21:50:44'),(64,'faq_ids','[[1,5,6,8,10]]',52,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:45','2024-10-20 21:50:45'),(65,'faq_ids','[[3,4,6,7,10]]',53,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:45','2024-10-20 21:50:45'),(66,'faq_ids','[[3,5,6,7,8]]',54,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:45','2024-10-20 21:50:45'),(67,'faq_ids','[[3,4,6,8,10]]',55,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:45','2024-10-20 21:50:45'),(68,'faq_ids','[[1,2,3,4,7]]',56,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:45','2024-10-20 21:50:45'),(69,'faq_ids','[[2,3,7,8,10]]',57,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:50:45','2024-10-20 21:50:45'),(70,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(71,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(72,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(73,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(74,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(75,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(76,'title','[\"Selected novelty \\n Products\"]',3,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(77,'subtitle','[\"Only $99.00\"]',3,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(78,'title','[\"Top Rated \\n Products\"]',4,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(79,'subtitle','[\"Only $55.00\"]',4,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(80,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',5,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(81,'subtitle','[\"Tablet Collection 2023\"]',5,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(82,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(83,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',6,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(84,'subtitle','[\"Tablet Collection 2023\"]',6,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(85,'button_label','[\"Shop Now\"]',6,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(86,'title','[\"Samsung Galaxy Tab S6, Wifi Tablet\"]',7,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(87,'subtitle','[\"Tablet Collection 2023\"]',7,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(88,'button_label','[\"Shop Now\"]',7,'Botble\\Ads\\Models\\Ads','2024-10-20 21:50:46','2024-10-20 21:50:46'),(89,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-10-20 21:50:47','2024-10-20 21:50:47'),(90,'breadcrumb_style','[\"align-center\"]',7,'Botble\\Page\\Models\\Page','2024-10-20 21:50:47','2024-10-20 21:50:47');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(166,'2023_12_12_105220_drop_translations_table',1),(167,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(168,'2023_12_25_040604_ec_create_review_replies_table',1),(169,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(170,'2024_01_16_070706_fix_translation_tables',1),(171,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(172,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(173,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(174,'2024_03_21_100334_update_section_title_shape',1),(175,'2024_03_25_000001_update_captcha_settings_for_contact',1),(176,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(177,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(178,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(179,'2024_03_29_042242_migrate_old_captcha_settings',1),(180,'2024_03_29_093946_create_ec_order_return_histories_table',1),(181,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(182,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(183,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(184,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(185,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(186,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(187,'2024_04_19_063914_create_custom_fields_table',1),(188,'2024_04_27_100730_improve_analytics_setting',1),(189,'2024_05_07_073153_improve_table_wishlist',1),(190,'2024_05_07_082630_create_mp_messages_table',1),(191,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(192,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(193,'2024_05_15_021503_fix_invoice_path',1),(194,'2024_06_20_160724_create_ec_shared_wishlists_table',1),(195,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',1),(196,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',1),(197,'2024_07_04_083133_create_payment_logs_table',1),(198,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(199,'2024_07_12_100000_change_random_hash_for_media',1),(200,'2024_07_14_071826_make_customer_email_nullable',1),(201,'2024_07_15_104916_add_video_media_column_to_ec_products_table',1),(202,'2024_07_19_131849_add_documents_to_mp_stores_table',1),(203,'2024_07_26_052530_add_percentage_to_tax_rules_table',1),(204,'2024_07_30_091615_fix_order_column_in_categories_table',1),(205,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',1),(206,'2024_08_17_094600_add_image_into_countries',1),(207,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',1),(208,'2024_08_19_132849_create_specification_tables',1),(209,'2024_08_27_141244_add_block_reason_to_ec_customers_table',1),(210,'2024_09_07_060744_add_author_column_to_specification_tables',1),(211,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',1),(212,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',1),(213,'2024_09_17_125408_add_square_logo_to_stores_table',1),(214,'2024_09_25_073928_remove_wrong_product_slugs',1),(215,'2024_09_30_024515_create_sessions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','alexandria.olson@example.net','+15856514471','801 Evan Mountains Apt. 043','BF','Oregon','South Carley',2,'main/stores/1.png',NULL,'main/stores/cover-5.png','Deleniti incidunt atque excepturi ipsum similique qui. Rerum minima quo est repellendus incidunt. Id explicabo harum voluptas sint. Aut voluptas voluptatibus nulla qui voluptatem. Iure asperiores veritatis voluptatem qui autem. Nihil dolores deserunt sunt quisquam ex. Consequatur perspiciatis qui minus nemo esse consequatur.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','verdman@example.org','+18285023766','253 Leuschke Views','AT','Illinois','Abdielfurt',6,'main/stores/2.png',NULL,'main/stores/cover-1.png','Repellendus accusamus reprehenderit quis soluta et doloremque consequatur dolor. Sit voluptates error hic. Et perferendis blanditiis aut officiis. Nihil saepe ipsa id suscipit a. Ex dicta vel fugit numquam debitis aut. Perferendis repellat voluptatem voluptatem. Veritatis aut voluptate asperiores beatae sed iure.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','kiara55@example.com','+17572301298','28370 Maggio Heights','DJ','Pennsylvania','Mullerbury',6,'main/stores/3.png',NULL,'main/stores/cover-3.png','A provident possimus error totam quas est est. Nesciunt quis voluptas occaecati maiores sed dolorum. Omnis et et quisquam fugiat quis eveniet mollitia reiciendis. Adipisci iusto hic quam molestiae. Necessitatibus dolorem incidunt id fuga saepe sunt. Earum ullam tempore consequuntur et omnis. Voluptatum reiciendis quam eum nisi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','dooley.allie@example.net','+12545081602','19133 Dickens Prairie Apt. 548','GY','Oregon','East Kara',2,'main/stores/4.png',NULL,'main/stores/cover-1.png','Illo velit officiis natus culpa natus aut nobis. In omnis accusamus officia dolor voluptatem placeat cum. Qui suscipit aut et sunt ipsum rerum. Sint expedita omnis ex minus a et nisi. Eum tenetur enim facere consequuntur ullam veritatis aut laudantium. Quaerat placeat eum voluptatum ea voluptas soluta enim.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','jailyn20@example.com','+12605098041','50933 Bogisich Station','YE','New York','Estevanberg',2,'main/stores/5.png',NULL,'main/stores/cover-4.png','Qui tempora illo placeat animi pariatur. Ut culpa dicta facilis laborum est. Adipisci eos in enim quod quisquam exercitationem. Consectetur blanditiis rerum atque sequi voluptatibus. Iste corporis et iste. Veritatis aut id ea. Saepe deserunt quibusdam enim quo qui. Dignissimos cum unde dolor repellendus doloremque.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','nora46@example.org','+19298058073','17643 Daren Junctions','AU','Oklahoma','South Orlo',3,'main/stores/6.png',NULL,'main/stores/cover-1.png','At fuga et id ut rem perferendis assumenda. Nam et assumenda exercitationem fuga quaerat ratione cumque. Commodi vitae quo possimus eveniet. Qui aspernatur dolorem et cumque alias est. Rem sapiente eligendi aut perferendis modi veniam. Aut occaecati sit debitis quo molestiae. Dignissimos quo suscipit magni et explicabo.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','creola.oconnell@example.org','+12624762382','4735 Rowe Greens','AZ','Kentucky','Abbottfort',6,'main/stores/7.png',NULL,'main/stores/cover-3.png','Sunt numquam temporibus voluptatem commodi voluptas. Tempore velit sit non tenetur temporibus minus ea ut. Quas officiis minus facilis atque fugiat voluptatem assumenda. Error id cumque aut unde. Voluptates facere omnis blanditiis in sit praesentium et. Quos eius debitis nulla cupiditate exercitationem. Aliquid non id rerum aut id assumenda quia. Modi occaecati similique nostrum corrupti.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','pacocha.ines@example.net','+19102043941','498 Soledad Street','CF','Virginia','Port Colton',2,'main/stores/8.png',NULL,'main/stores/cover-3.png','Eligendi nulla dolores at quasi. Vitae beatae quidem eaque vel. Molestiae consequatur incidunt fugiat et praesentium dolorem itaque. Deleniti in fuga id tempore aut quo. Quaerat corrupti non eum voluptatem. In explicabo suscipit sed quaerat. Asperiores delectus quis ut. Est aliquam aliquid atque. Et dolorum molestias ducimus. Nam doloremque commodi sed eum ut ad assumenda perspiciatis.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:50:41','2024-10-20 21:50:41',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$NWrnz7AZ30eiCCG3jle/qevQwdJvJsdnCQLYW.PQRyhWSSc/qccgy','{\"name\":\"Josianne Jast\",\"number\":\"+14045276929\",\"full_name\":\"Delmer Franecki\",\"description\":\"Wilton Deckow\"}','2024-10-20 21:50:39','2024-10-20 21:50:39','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$bcSbzKB47SAy/rt9st.lK.b7yFVbb3wq0ErUYs7SCVdn/1vdhz1/.','{\"name\":\"Daphne Thiel\",\"number\":\"+14793198819\",\"full_name\":\"Trever Schinner\",\"description\":\"Dr. Imani Douglas\"}','2024-10-20 21:50:39','2024-10-20 21:50:39','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$adHqvZUbS/3dX8tm9Gqv0uMeSHnobM6yXDCzI5ZDaFguifK5Pqr1C','{\"name\":\"Trudie Herman\",\"number\":\"+12346862691\",\"full_name\":\"Mortimer Langworth\",\"description\":\"Mittie White III\"}','2024-10-20 21:50:39','2024-10-20 21:50:39','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$OCXJtbURO9RDo3fNoZgf/eaSOtOgE.Qe6UP007AH0JgmU030uPICC','{\"name\":\"Prof. Estell Fadel PhD\",\"number\":\"+19297395645\",\"full_name\":\"Mabelle Mayer\",\"description\":\"Marcelle Hackett\"}','2024-10-20 21:50:39','2024-10-20 21:50:39','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$SQFG9XK3m80FYQgtsUpdQO0bn.tDnjv058tdLfdfBXIv3K.dlz4Wi','{\"name\":\"Magnolia Beatty\",\"number\":\"+12397696001\",\"full_name\":\"Prof. Darrion Kunze Sr.\",\"description\":\"Braeden Emard\"}','2024-10-20 21:50:40','2024-10-20 21:50:40','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$d6G4xVFXZa/WIB7ANdjOdOY92OGJofcJrbjMddBNWPZp3kvnceovq','{\"name\":\"Alyce Graham\",\"number\":\"+16802446610\",\"full_name\":\"Roxanne Ondricka\",\"description\":\"Lucy Kreiger\"}','2024-10-20 21:50:40','2024-10-20 21:50:40','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$xpNQR2p1sE2F6bugGHEqNOlX8y1aCdxDEt32.vGqWJbRY84l5cEzq','{\"name\":\"Miss Rosetta Ferry DVM\",\"number\":\"+12723648101\",\"full_name\":\"Jovany Bednar\",\"description\":\"Rosalind Ferry\"}','2024-10-20 21:50:40','2024-10-20 21:50:40','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"1\" key=\"home-slider\" customize_font_family_of_description=\"1\" font_family_of_description=\"Oregano\" shape_1=\"main/sliders/shape-1.png\" shape_2=\"main/sliders/shape-2.png\" shape_3=\"main/sliders/shape-3.png\" shape_4=\"main/sliders/shape-4.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ecommerce-categories style=\"slider\" category_ids=\"6,10,13,16,30\" enable_lazy_loading=\"no\"][/ecommerce-categories][site-features style=\"1\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"no\"][/site-features][ecommerce-product-groups title=\"Trending Products\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-flash-sale style=\"1\" title=\"Deal of The Day\" flash_sale_id=\"1\" limit=\"4\" button_label=\"View All Deals\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-flash-sale][ecommerce-products style=\"grid\" category_ids=\"20\" limit=\"12\" with_sidebar=\"on\" image=\"main/gadgets/gadget-girl.png\" action_label=\"More Products\" ads_ids=\"3,4\" enable_lazy_loading=\"yes\"][/ecommerce-products][ads style=\"4\" key_1=\"B5ZA76ZWMWAE\" key_2=\"F1LTQS976YPY\" key_3=\"IHPZ2WBSYJUK\" enable_lazy_loading=\"yes\"][/ads][ecommerce-products style=\"slider\" title=\"New Arrivals\" by=\"collection\" collection_ids=\"1\" limit=\"12\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups style=\"columns\" limit=\"3\" tabs=\"on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][blog-posts title=\"Latest news & articles\" type=\"latest\" limit=\"3\" button_label=\"View All\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][gallery style=\"1\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(2,'Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(3,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(7,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(9,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(10,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(11,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(12,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-05-09\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47'),(13,'Return Policy','<h1>Return Policy</h1>\n<p>Thank you for shopping at [Your Company Name]. We are committed to ensuring that you are completely satisfied with\n    your purchase. If for any reason you are not entirely happy with your purchase, we\'re here to help.</p>\n\n<h2>Returns</h2>\n<p>You have [X] calendar days to return an item from the date you received it.</p>\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must\n    be in the original packaging.</p>\n<p>Your item needs to have the receipt or proof of purchase.</p>\n\n<h2>Refunds</h2>\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will\n    immediately notify you on the status of your refund after inspecting the item.</p>\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will\n    receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\n\n<h2>Shipping</h2>\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are\n    non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n\n<h2>Contact Us</h2>\n<p>If you have any questions on how to return your item to us, contact us at:</p>\n<ul>\n    <li>Email: [Your Email Address]</li>\n    <li>Phone: [Your Phone Number]</li>\n    <li>Address: [Your Physical Address]</li>\n</ul>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:50:47','2024-10-20 21:50:47');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (6,1),(1,1),(5,2),(4,2),(5,3),(6,3),(2,4),(4,4),(5,5),(6,5),(4,6),(6,6),(4,7),(2,7),(6,8),(3,8),(4,9),(6,9),(6,10),(3,10),(2,11),(1,11),(3,12),(6,12),(5,13),(6,13),(6,14),(3,14),(6,15),(3,15),(3,16),(4,16),(6,17),(4,17),(4,18),(5,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (8,1),(1,1),(5,1),(3,2),(5,2),(8,2),(8,3),(3,3),(5,3),(4,4),(6,4),(3,4),(6,5),(7,5),(2,6),(3,6),(8,6),(7,7),(1,7),(8,7),(8,8),(6,8),(7,8),(5,9),(4,9),(1,9),(2,10),(4,10),(8,10),(6,11),(5,11),(3,11),(6,12),(3,12),(5,12),(5,13),(2,13),(3,13),(6,14),(4,14),(3,14),(4,15),(8,15),(7,16),(5,16),(1,16),(8,17),(5,17),(4,17),(2,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','I learn music.\' \'Ah! that accounts for it,\' said the Gryphon: \'I went to school in the wood,\' continued the King. (The jury all brightened up again.) \'Please your Majesty,\' said Two, in a twinkling!.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',100,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Oh dear! I\'d nearly forgotten that I\'ve got to go through next walking about at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1173,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(3,'The Top 2020 Handbag Trends to Know','So they sat down again in a fight with another hedgehog, which seemed to be lost, as she tucked it away under her arm, with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent, I tell.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1509,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(4,'How to Match the Color of Your Handbag With an Outfit','Hatter: \'but you could manage it?) \'And what are they doing?\' Alice whispered to the whiting,\' said the Dormouse; \'VERY ill.\' Alice tried to say \'I once tasted--\' but checked herself hastily, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',2343,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(5,'How to Care for Leather Bags','Gryphon. \'Do you take me for a conversation. Alice felt a little faster?\" said a whiting before.\' \'I can hardly breathe.\' \'I can\'t remember things as I get it home?\' when it saw mine coming!\' \'How.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',910,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','It doesn\'t look like one, but the cook was leaning over the fire, and at once in the air. This time there could be no use now,\' thought Alice, as she heard a little worried. \'Just about as curious.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',1132,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(7,'Essential Qualities of Highly Successful Music','Knave was standing before them, in chains, with a pair of gloves and the little golden key, and when she first saw the White Rabbit with pink eyes ran close by it, and they lived at the end of the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',944,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(8,'9 Things I Love About Shaving My Head','He says it kills all the jelly-fish out of this pool? I am in the house, \"Let us both go to on the floor: in another moment, when she had never had to do that,\' said the Queen, \'and he shall tell.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1061,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(9,'Why Teamwork Really Makes The Dream Work','As she said aloud. \'I must be shutting up like a wild beast, screamed \'Off with his whiskers!\' For some minutes the whole pack of cards!\' At this moment the King, and the Panther received knife and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1503,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(10,'The World Caters to Average People','Alice got up and bawled out, \"He\'s murdering the time! Off with his tea spoon at the stick, running a very deep well. Either the well was very glad she had felt quite relieved to see if she had.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',1309,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(11,'The litigants on the screen are not actors','I got up in such a simple question,\' added the Gryphon; and then turned to the whiting,\' said the Duchess; \'and most things twinkled after that--only the March Hare interrupted in a thick wood. \'The.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',246,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(12,'Hiring the Right Sales Team at the Right Time','ME.\' \'You!\' said the King, and the two creatures, who had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD not remember the simple rules their friends had.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',1480,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(13,'Fully Embrace the Return of 90s fashion','Hatter was the White Rabbit put on your shoes and stockings for you now, dears? I\'m sure I don\'t know,\' he went on eagerly: \'There is such a thing before, and behind them a new idea to Alice, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',562,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(14,'Exploring the English Countryside','Footman remarked, \'till tomorrow--\' At this moment Alice felt a very deep well. Either the well was very deep, or she fell very slowly, for she had plenty of time as she swam nearer to watch them.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',1889,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(15,'Here’s the First Valentino’s New Makeup Collection','QUITE right, I\'m afraid,\' said Alice, surprised at her with large eyes full of smoke from one minute to another! However, I\'ve got to the little golden key, and when she went on, half to herself.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1942,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(16,'Follow Your own Design process, whatever gets','I do it again and again.\' \'You are old,\' said the Caterpillar. This was such a long time with one eye; \'I seem to be\"--or if you\'d like it very much,\' said Alice, very much at first, perhaps,\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',2021,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(17,'Freelancer Days 2024, What’s new?','March Hare said to the Knave of Hearts, who only bowed and smiled in reply. \'Please come back in a Little Bill It was the Hatter. \'You might just as the White Rabbit, \'but it doesn\'t matter which.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1271,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37'),(18,'Quality Foods Requirments For Every Human Body’s','And took them quite away!\' \'Consider your verdict,\' he said do. Alice looked round, eager to see if she had grown up,\' she said to Alice; and Alice looked up, and there stood the Queen said--\' \'Get.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-10.jpg',2180,NULL,'2024-10-20 21:50:37','2024-10-20 21:50:37');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-10-20 21:50:32','2024-10-20 21:50:32');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','0c7f6e793a1bd2295fb80b32fd77114e',NULL,'2024-10-20 21:50:47'),(2,'api_enabled','0',NULL,'2024-10-20 21:50:47'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2024-10-20 21:50:47'),(6,'theme','shofy',NULL,'2024-10-20 21:50:47'),(7,'show_admin_bar','1',NULL,'2024-10-20 21:50:47'),(8,'admin_favicon','main/general/favicon.png',NULL,'2024-10-20 21:50:47'),(9,'admin_logo','main/general/logo-white.png',NULL,'2024-10-20 21:50:47'),(10,'announcement_lazy_loading','1',NULL,'2024-10-20 21:50:47'),(11,'marketplace_requires_vendor_documentations_verification','0',NULL,'2024-10-20 21:50:47'),(12,'payment_cod_status','1',NULL,'2024-10-20 21:50:47'),(13,'payment_bank_transfer_status','1',NULL,'2024-10-20 21:50:47'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-10-20 21:50:47'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-10-20 21:50:47'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-10-20 21:50:47'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-10-20 21:50:47'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-10-20 21:50:47'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-10-20 21:50:47'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-10-20 21:50:47'),(21,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2024-10-20 21:50:47'),(22,'ecommerce_enable_product_specification','1',NULL,'2024-10-20 21:50:47'),(23,'permalink-botble-blog-models-post','blog',NULL,'2024-10-20 21:50:47'),(24,'permalink-botble-blog-models-category','blog',NULL,'2024-10-20 21:50:47'),(25,'language_hide_default','1',NULL,'2024-10-20 21:50:47'),(26,'language_switcher_display','dropdown',NULL,'2024-10-20 21:50:47'),(27,'language_display','all',NULL,'2024-10-20 21:50:47'),(28,'language_hide_languages','[]',NULL,'2024-10-20 21:50:47'),(29,'ecommerce_store_name','Shofy',NULL,'2024-10-20 21:50:47'),(30,'ecommerce_store_phone','1800979769',NULL,'2024-10-20 21:50:47'),(31,'ecommerce_store_address','502 New Street',NULL,'2024-10-20 21:50:47'),(32,'ecommerce_store_state','Brighton VIC',NULL,'2024-10-20 21:50:47'),(33,'ecommerce_store_city','Brighton VIC',NULL,'2024-10-20 21:50:47'),(34,'ecommerce_store_country','AU',NULL,'2024-10-20 21:50:47'),(35,'announcement_max_width','1390',NULL,'2024-10-20 21:50:47'),(36,'announcement_text_color','#fff',NULL,'2024-10-20 21:50:47'),(37,'announcement_background_color','transparent',NULL,'2024-10-20 21:50:47'),(38,'announcement_placement','theme',NULL,'2024-10-20 21:50:47'),(39,'announcement_text_alignment','start',NULL,'2024-10-20 21:50:47'),(40,'announcement_dismissible','0',NULL,'2024-10-20 21:50:47'),(41,'simple_slider_using_assets','0',NULL,'2024-10-20 21:50:47'),(42,'theme-shofy-site_name','Shofy',NULL,NULL),(43,'theme-shofy-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(44,'theme-shofy-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(45,'theme-shofy-copyright','© %Y All Rights Reserved.',NULL,NULL),(46,'theme-shofy-tp_primary_font','Roboto',NULL,NULL),(47,'theme-shofy-primary_color','#0C55AA',NULL,NULL),(48,'theme-shofy-favicon','main/general/favicon.png',NULL,NULL),(49,'theme-shofy-logo','main/general/logo.png',NULL,NULL),(50,'theme-shofy-logo_light','main/general/logo-white.png',NULL,NULL),(51,'theme-shofy-header_style','1',NULL,NULL),(52,'theme-shofy-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(53,'theme-shofy-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(54,'theme-shofy-hotline','8 800 332 65-66',NULL,NULL),(55,'theme-shofy-email','contact@fartmart.co',NULL,NULL),(56,'theme-shofy-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(57,'theme-shofy-homepage_id','1',NULL,NULL),(58,'theme-shofy-blog_page_id','5',NULL,NULL),(59,'theme-shofy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(60,'theme-shofy-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(61,'theme-shofy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(62,'theme-shofy-number_of_products_per_page','24',NULL,NULL),(63,'theme-shofy-number_of_cross_sale_product','6',NULL,NULL),(64,'theme-shofy-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(65,'theme-shofy-ecommerce_product_item_style','1',NULL,NULL),(66,'theme-shofy-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-section_title_shape_decorated','style-3',NULL,NULL),(76,'theme-shofy-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-login_background','main/general/auth-banner.png',NULL,NULL),(79,'theme-shofy-register_background','main/general/auth-banner.png',NULL,NULL),(80,'theme-shofy-merchant_return_policy_url','return-policy',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The best tablet Collection 2023','main/sliders/slider-1.png','/products','Exclusive offer <span>-35%</span> off this week',0,'2024-10-20 21:50:41','2024-10-20 21:50:41'),(2,1,'The best note book collection 2023','main/sliders/slider-2.png','/products','Exclusive offer <span>-10%</span> off this week',1,'2024-10-20 21:50:41','2024-10-20 21:50:41'),(3,1,'The best phone collection 2023','main/sliders/slider-3.png','/products','Exclusive offer <span>-10%</span> off this week',2,'2024-10-20 21:50:41','2024-10-20 21:50:41');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-10-20 21:50:41','2024-10-20 21:50:41');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:50:32','2024-10-20 21:50:32'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:50:32','2024-10-20 21:50:32'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:50:32','2024-10-20 21:50:32'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:50:32','2024-10-20 21:50:32'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:50:32','2024-10-20 21:50:32'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:50:36','2024-10-20 21:50:36'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:50:36','2024-10-20 21:50:36'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:50:36','2024-10-20 21:50:36'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:50:36','2024-10-20 21:50:36'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:50:36','2024-10-20 21:50:36'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:50:36','2024-10-20 21:50:36'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:50:37','2024-10-20 21:50:37'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:50:37','2024-10-20 21:50:37'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:50:41','2024-10-20 21:50:41'),(52,'new-arrivals',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(53,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(54,'featured',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(55,'new-arrivals',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(56,'best-sellers',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(57,'mobile-phone',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(58,'computers-laptops',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(59,'top-brands',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(60,'weekly-best-selling',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(61,'cpu-heat-pipes',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(62,'cpu-coolers',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(64,'headphones',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(65,'wireless-headphones',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(66,'tws-earphones',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(67,'smart-watch',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(68,'gaming-console',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(69,'playstation',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(70,'gifts',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(71,'computers',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(72,'desktop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(73,'laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(74,'tablet',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(75,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(76,'smartphones-tablets',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(77,'tv-video-music',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(78,'cameras',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(79,'cooking',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(80,'accessories',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(81,'with-bluetooth',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(82,'sports',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(83,'electronics-gadgets',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(84,'micrscope',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(85,'remote-control',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(86,'monitor',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(87,'thermometer',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(88,'backpack',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(89,'headphones',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:50:42','2024-10-20 21:50:42'),(90,'ecotech-marine-radion-xr30w-g5-pro-led-light-fixture',1,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(91,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',2,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(92,'samsung-galaxy-tab-s7-124-inch-android-tablet',3,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(93,'apple-macbook-pro-16-inch-laptop-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(94,'sony-wh-1000xm4-wireless-noise-canceling-headphones',5,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(95,'dji-mavic-air-2-drone',6,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(96,'gopro-hero9-black-action-camera',7,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(97,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(98,'nest-learning-thermostat-3rd-generation',9,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(99,'ring-video-doorbell-pro',10,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(100,'amazon-echo-show-10-3rd-gen',11,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(101,'samsung-qn90a-neo-qled-4k-smart-tv-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(102,'lg-oled-c1-series-4k-smart-tv',13,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(103,'sony-x950h-4k-ultra-hd-smart-led-tv',14,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(104,'apple-watch-series-7',15,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(105,'fitbit-charge-5-fitness-tracker-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(106,'garmin-fenix-7x-sapphire-solar-gps-watch',17,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(107,'microsoft-surface-pro-8',18,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(108,'lenovo-thinkpad-x1-carbon-gen-9-laptop',19,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(109,'hp-spectre-x360-14-inch-convertible-laptop-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(110,'razer-blade-15-advanced-gaming-laptop',21,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(111,'alienware-m15-r6-gaming-laptop',22,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(112,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',23,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(113,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(114,'steelseries-arctis-pro-wireless-gaming-headset',25,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(115,'elgato-stream-deck-xl',26,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(116,'nintendo-switch-oled-model',27,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(117,'playstation-5-console-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(118,'xbox-series-x-console',29,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(119,'oculus-quest-2-vr-headset',30,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(120,'htc-vive-cosmos-elite-vr-headset',31,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(121,'samsung-odyssey-g9-49-inch-curved-gaming-monitor-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(122,'lg-ultragear-27gn950-b-4k-gaming-monitor',33,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(123,'acer-predator-x38-pbmiphzx-38-inch-curved-gaming-monitor',34,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(124,'asus-rog-swift-pg279qm-27-inch-gaming-monitor',35,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(125,'benq-ew3280u-32-inch-4k-hdr-entertainment-monitor-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(126,'dell-ultrasharp-u2720q-27-inch-4k-usb-c-monitor',37,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(127,'hp-z27k-g3-4k-usb-c-monitor',38,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(128,'lg-27uk850-w-27-inch-4k-uhd-ips-monitor',39,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(129,'samsung-odyssey-g7-32-inch-curved-gaming-monitor-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(130,'sony-x900h-4k-ultra-hd-smart-led-tv',41,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(131,'tcl-6-series-4k-uhd-dolby-vision-hdr-qled-roku-smart-tv',42,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(132,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',43,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(133,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(134,'lg-c1-series-4k-oled-smart-tv',45,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(135,'samsung-qn85a-neo-qled-4k-smart-tv',46,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(136,'sony-a90j-4k-oled-smart-tv',47,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(137,'apple-tv-4k-2nd-generation-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(138,'roku-ultra-2020-streaming-media-player',49,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(139,'amazon-fire-tv-stick-4k-max',50,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(140,'google-chromecast-with-google-tv',51,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:44'),(141,'nvidia-shield-tv-pro-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:44','2024-10-20 21:50:48'),(142,'sonos-beam-gen-2-soundbar',53,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:45','2024-10-20 21:50:45'),(143,'bose-smart-soundbar-900',54,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:45','2024-10-20 21:50:45'),(144,'jbl-bar-91-soundbar-with-dolby-atmos',55,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:45','2024-10-20 21:50:45'),(145,'sennheiser-ambeo-soundbar-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:45','2024-10-20 21:50:48'),(146,'sony-ht-a9-home-theater-system',57,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:45','2024-10-20 21:50:45'),(147,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:50:46','2024-10-20 21:50:46'),(148,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:50:46','2024-10-20 21:50:46'),(149,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:50:46','2024-10-20 21:50:46'),(150,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:50:46','2024-10-20 21:50:46'),(151,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:50:46','2024-10-20 21:50:46'),(152,'home',1,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(153,'categories',2,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(154,'brands',3,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(155,'coupons',4,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(156,'blog',5,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(157,'contact',6,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(158,'faqs',7,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(159,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(160,'our-story',9,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(161,'careers',10,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(162,'shipping',11,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(163,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(164,'return-policy',13,'Botble\\Page\\Models\\Page','','2024-10-20 21:50:47','2024-10-20 21:50:47'),(165,'philips-hue-white-and-color-ambiance-a19-led-smart-bulb',58,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(166,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(167,'bose-soundlink-revolve-portable-bluetooth-speaker-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(168,'nest-learning-thermostat-3rd-generation',61,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(169,'nest-learning-thermostat-3rd-generation',62,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(170,'nest-learning-thermostat-3rd-generation',63,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(171,'lg-oled-c1-series-4k-smart-tv',64,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(172,'lg-oled-c1-series-4k-smart-tv',65,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(173,'lg-oled-c1-series-4k-smart-tv',66,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(174,'apple-watch-series-7',67,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(175,'apple-watch-series-7',68,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(176,'lenovo-thinkpad-x1-carbon-gen-9-laptop',69,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(177,'lenovo-thinkpad-x1-carbon-gen-9-laptop',70,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(178,'lenovo-thinkpad-x1-carbon-gen-9-laptop',71,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(179,'hp-spectre-x360-14-inch-convertible-laptop-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(180,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',73,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(181,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',74,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(182,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',75,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(183,'corsair-k95-rgb-platinum-xt-mechanical-gaming-keyboard',76,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(184,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(185,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',78,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(186,'logitech-g-pro-x-superlight-wireless-gaming-mouse-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(187,'elgato-stream-deck-xl',80,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(188,'elgato-stream-deck-xl',81,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(189,'elgato-stream-deck-xl',82,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(190,'nintendo-switch-oled-model',83,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(191,'nintendo-switch-oled-model',84,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(192,'nintendo-switch-oled-model',85,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(193,'xbox-series-x-console',86,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(194,'xbox-series-x-console',87,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(195,'xbox-series-x-console',88,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(196,'oculus-quest-2-vr-headset',89,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(197,'oculus-quest-2-vr-headset',90,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(198,'oculus-quest-2-vr-headset',91,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(199,'oculus-quest-2-vr-headset',92,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(200,'htc-vive-cosmos-elite-vr-headset',93,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(201,'htc-vive-cosmos-elite-vr-headset',94,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(202,'htc-vive-cosmos-elite-vr-headset',95,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(203,'acer-predator-x38-pbmiphzx-38-inch-curved-gaming-monitor',96,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(204,'hp-z27k-g3-4k-usb-c-monitor',97,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(205,'hp-z27k-g3-4k-usb-c-monitor',98,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(206,'hp-z27k-g3-4k-usb-c-monitor',99,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(207,'hp-z27k-g3-4k-usb-c-monitor',100,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(208,'hp-z27k-g3-4k-usb-c-monitor',101,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(209,'lg-27uk850-w-27-inch-4k-uhd-ips-monitor',102,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(210,'lg-27uk850-w-27-inch-4k-uhd-ips-monitor',103,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(211,'sony-x900h-4k-ultra-hd-smart-led-tv',104,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(212,'sony-x900h-4k-ultra-hd-smart-led-tv',105,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(213,'sony-x900h-4k-ultra-hd-smart-led-tv',106,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(214,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',107,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(215,'vizio-oled65-h1-65-inch-4k-oled-smart-tv',108,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(216,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',109,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(217,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',110,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(218,'hisense-u8g-quantum-series-4k-uled-android-tv-digital',111,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(219,'sony-a90j-4k-oled-smart-tv',112,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(220,'sony-a90j-4k-oled-smart-tv',113,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(221,'google-chromecast-with-google-tv',114,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(222,'google-chromecast-with-google-tv',115,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:48','2024-10-20 21:50:48'),(223,'bose-smart-soundbar-900',116,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:50:49','2024-10-20 21:50:49');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:50:37','2024-10-20 21:50:37');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/3.jpg','Developer','published','2024-10-20 21:50:41','2024-10-20 21:50:41'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/1.jpg','CO Founder','published','2024-10-20 21:50:41','2024-10-20 21:50:41'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/8.jpg','UI/UX Designer','published','2024-10-20 21:50:41','2024-10-20 21:50:41'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/6.jpg','Bank of America','published','2024-10-20 21:50:41','2024-10-20 21:50:41');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cooper29@hane.net',NULL,'$2y$12$30dBmrDdSSVWCKUaNQlrCOiWzqLsfDwNl7fA5AXcZ9NTrdksBCFLy',NULL,'2024-10-20 21:50:32','2024-10-20 21:50:32','Stacy','Kassulke','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(4,'SiteContactWidget','footer_primary_sidebar','shofy',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(9,'NewsletterWidget','footer_top_sidebar','shofy',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(12,'BlogSearchWidget','blog_sidebar','shofy',1,'{\"id\":\"BlogSearchWidget\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(13,'BlogAboutMeWidget','blog_sidebar','shofy',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/7.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(14,'BlogPostsWidget','blog_sidebar','shofy',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(15,'BlogCategoriesWidget','blog_sidebar','shofy',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(16,'BlogTagsWidget','blog_sidebar','shofy',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-10-20 21:50:47','2024-10-20 21:50:47'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[6,7,10,13,16,30],\"style\":\"slider\",\"display_children\":false}','2024-10-20 21:50:47','2024-10-20 21:50:47');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 11:50:50
