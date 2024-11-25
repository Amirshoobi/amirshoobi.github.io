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
INSERT INTO `activations` VALUES (1,1,'c8lY8tiiWU1Q3hyNECD6xgvN26Na0iHv',1,'2024-10-20 21:51:29','2024-10-20 21:51:29','2024-10-20 21:51:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-10-21 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-10-20 21:51:39','2024-10-20 21:51:39',1,NULL,NULL,'custom_ad',NULL),(2,'Ads 2','2029-10-21 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-10-20 21:51:39','2024-10-20 21:51:39',1,NULL,NULL,'custom_ad',NULL),(3,'Ads 3','2029-10-21 00:00:00','not_set','L1WDL8YGZUOR','grocery/banners/1.jpg','/products',0,3,'published','2024-10-20 21:51:39','2024-10-20 21:51:39',1,NULL,NULL,'custom_ad',NULL),(4,'Ads 4','2029-10-21 00:00:00','not_set','GA3K1VZWNMPF','grocery/banners/2.png','/products',0,4,'published','2024-10-20 21:51:39','2024-10-20 21:51:39',1,NULL,NULL,'custom_ad',NULL);
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','? Fresh arrivals just in! Shop now for quality groceries and elevate your meals!',0,NULL,NULL,0,1,'2024-10-21 04:51:37',NULL,1,'2024-10-20 21:51:37','2024-10-20 21:51:37'),(2,'Announcement 2','? Explore new flavors hassle-free. Enjoy free delivery on orders over $50!',0,NULL,NULL,0,1,'2024-10-21 04:51:37',NULL,1,'2024-10-20 21:51:37','2024-10-20 21:51:37'),(3,'Announcement 3','? Quality guaranteed! Hassle-free returns within 30 days for your peace of mind.',0,NULL,NULL,0,1,'2024-10-21 04:51:37',NULL,1,'2024-10-20 21:51:37','2024-10-20 21:51:37');
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
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Qui quia tempore ipsa dicta aperiam. Minus ducimus vel nulla dolor quo inventore. Est aspernatur et natus voluptatibus quo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(2,'Fashion',0,'Laborum et non quis non. Est sunt labore ut rem. Rerum sunt non dolorum consequuntur doloremque tempore a.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(3,'Electronic',0,'Ea corrupti sit rerum est consequatur. Id praesentium rerum cupiditate sed quis ipsum maiores. Incidunt quo ipsum saepe ullam qui quas totam. Distinctio voluptatem incidunt aut atque sint.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(4,'Commercial',0,'Aperiam molestiae nobis est praesentium et. Quis excepturi enim harum vel eos corporis. Iure perspiciatis corporis est sunt unde et officiis quos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(5,'Organic Fruits',0,'Debitis delectus temporibus est veritatis corporis. Quos maiores illum rerum et itaque rerum itaque id. Ipsam aliquid dolores eveniet officiis. Voluptas et in molestiae officia. Est a est unde ab.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(6,'Ecological',0,'Et quia harum eos. Facilis hic officia eaque impedit beatae temporibus. Id magni ut nemo corporis qui repellat culpa. Vel magnam autem incidunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-10-20 21:51:34','2024-10-20 21:51:34');
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
INSERT INTO `contacts` VALUES (1,'Michelle Emmerich DVM','feil.kendrick@example.net','+1-857-617-1939','315 Erin Alley\nWest Nikitahaven, AL 52063','Aut molestiae quae quos tempora voluptatum.','Voluptatem fugit aliquid magni adipisci. Aut molestiae dolores asperiores quaerat vel. Cumque illo qui aut explicabo cupiditate. Dolorem numquam itaque ea alias. Fuga assumenda eius molestiae. Nulla dolore enim et deleniti velit dolorum eius deserunt. Reiciendis temporibus est earum quibusdam aut corporis nihil. Ea atque in omnis aperiam aliquid omnis. Placeat sed omnis sunt rem.',NULL,'read','2024-10-20 21:51:32','2024-10-20 21:51:32'),(2,'Mellie Lueilwitz','ihackett@example.net','+1-423-906-1002','42152 Austin Port Suite 862\nWest Mona, CA 47698-7310','Iusto dolore iusto a ea ut.','Labore laudantium nam doloremque. Excepturi neque et nemo velit ad possimus. Omnis officia cupiditate non. Nisi ea et beatae quo numquam. Fugit impedit aut nihil quibusdam ullam mollitia. Ea aut cupiditate itaque iure molestiae reiciendis error. Modi dolorem sint aut inventore et doloremque. Similique quia vero necessitatibus autem ex totam. Et tempora non consequatur sed eum. Et labore debitis et quia.',NULL,'unread','2024-10-20 21:51:32','2024-10-20 21:51:32'),(3,'Ashlee Marquardt','kyle35@example.net','+17694230021','637 Hegmann Manors\nWest Jedidiah, KS 74711-4669','Cupiditate sed sed delectus est est.','Aut sed libero veritatis nihil. Ut dicta quis sed omnis porro alias. Dolores a natus similique laboriosam voluptatem aut. Iure voluptate aut consectetur praesentium id dolores. Et debitis ut architecto quam. Dolor et et harum mollitia voluptatem id. Necessitatibus est vel omnis aperiam sint non et. Quis veniam et vel atque dolor cumque cupiditate. Ut iusto minus quia consectetur. Libero veritatis a veniam similique sequi quaerat maxime.',NULL,'unread','2024-10-20 21:51:32','2024-10-20 21:51:32'),(4,'Aubree Schamberger','mccullough.marcellus@example.net','714-579-9192','29414 Wisoky Springs Suite 805\nNew Kaleshire, MS 92855-6282','Vel sequi modi voluptatem eligendi.','Sunt quo optio unde ipsam nam. Ut illo at aut molestiae vel odio. Explicabo omnis earum consequatur et. Aut non non et officia iusto consectetur. In autem harum esse est. Sint et fugit quia excepturi alias eligendi sint consequatur. Nihil quis voluptas nulla illo sint. Animi quisquam nihil veniam earum et consequatur dolor. Quia nobis architecto tempore. Ullam illum enim id atque. Excepturi itaque rerum temporibus voluptatum esse deleniti sed.',NULL,'unread','2024-10-20 21:51:32','2024-10-20 21:51:32'),(5,'Armand Jerde','sigurd.bosco@example.org','720-230-2301','323 McLaughlin View\nPort Rudolphside, ND 88434-7346','Esse eveniet facilis vitae omnis.','Consequatur consequatur quia velit repellendus. Eum et laudantium voluptatem et et et et. Reprehenderit facilis veniam amet sunt magni harum consectetur. In perspiciatis quia veritatis fuga sapiente est hic laborum. Ut illo dolores vel ipsum. Debitis ut neque necessitatibus officiis. Cupiditate autem amet dolorum occaecati ex vero. Necessitatibus quis porro soluta sit deleniti.',NULL,'unread','2024-10-20 21:51:32','2024-10-20 21:51:32'),(6,'Guillermo Hintz','marion.yost@example.com','240.635.5060','7921 Ronny Crossing Suite 332\nRyanton, KY 68983-2572','Quia illo sed inventore alias.','Exercitationem asperiores praesentium eos porro rerum qui illum. Labore qui officiis aut voluptatem. Vel facere enim eligendi. Occaecati est laboriosam eligendi maiores mollitia. Inventore porro fugit incidunt. Harum et quae enim eveniet quibusdam tenetur est. Repellendus nemo quasi mollitia itaque hic. Dolor alias laudantium autem qui. Ut porro omnis tempora. Qui sint eligendi aut qui. Quas est quo sit tempore. Aut doloribus soluta quos ullam totam.',NULL,'read','2024-10-20 21:51:32','2024-10-20 21:51:32'),(7,'Cathryn Heaney','kailyn.ziemann@example.org','+1-562-937-2857','57471 Ada Mall\nNorth Daijaton, IN 49436','Praesentium iste et facilis corporis.','Est modi corporis inventore consectetur dolore sit odio. Tempore tenetur atque sapiente facilis est eligendi. Excepturi beatae ea dolor commodi magni corporis ipsum. Maiores et est eveniet voluptatibus numquam porro aperiam. Et at corrupti ea aut quae. Temporibus deserunt soluta aliquam ex. Dolor est eligendi delectus est. Fuga in animi porro aut unde natus impedit.',NULL,'unread','2024-10-20 21:51:32','2024-10-20 21:51:32'),(8,'Pablo Kautzer PhD','nitzsche.ruthe@example.com','+19492481571','5360 Hartmann Island\nSouth Jonberg, VT 04160','Optio aliquid est modi impedit laudantium.','Et numquam accusantium laudantium non voluptas quaerat consectetur. Earum sed qui minima facilis. Deleniti vitae officiis quas ullam magnam. Fuga sed voluptatibus quaerat rerum et. Quasi iure sapiente nobis quam cupiditate quidem. Ad esse sint deleniti quas alias. Optio ullam eum dolores voluptas consequatur quo dolor. Consequatur quam quae qui consequatur facilis sapiente.',NULL,'read','2024-10-20 21:51:32','2024-10-20 21:51:32'),(9,'Jermain Smith','genevieve37@example.com','(757) 370-1187','421 Gleason Forges\nPatiencechester, NH 60552-3784','Quod totam dolore ducimus voluptate tempora sed.','Ut consectetur dolorem id aut nihil ducimus. Autem similique quia dolorem dolores. Velit accusantium natus quod fugit commodi cupiditate facere. Explicabo ratione autem rerum ut rem doloremque placeat. Fuga libero nihil voluptatum non non. Molestiae alias voluptatem voluptatem tempora aut officia praesentium nisi. Saepe explicabo accusantium ut dolores sit quia vel. Quia cum cum quia sunt nesciunt.',NULL,'read','2024-10-20 21:51:32','2024-10-20 21:51:32'),(10,'Madelyn Koch','ashley07@example.org','469.557.3594','845 Thiel Parkway Apt. 095\nPort Michel, TX 44423-1967','Alias reprehenderit molestiae vel eum.','Aliquam ut praesentium est neque unde. Quaerat dolore sapiente incidunt officiis explicabo reprehenderit consequatur. Doloribus quasi sed odit quo aut eos. Voluptates enim aut voluptas libero molestias et. Sunt molestiae voluptate cumque molestiae dicta. Ad et dolores qui vitae. Iure quia ad est accusantium eos repellat saepe. Quia voluptatem quo dolores aut et est adipisci. Blanditiis id consectetur repudiandae eaque eius id itaque. Architecto eos ut sapiente.',NULL,'unread','2024-10-20 21:51:32','2024-10-20 21:51:32');
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
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-10-20 21:51:29','2024-10-20 21:51:29');
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(2,'EUR','€',0,2,1,0,0.84,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(3,'VND','₫',0,0,2,0,23203,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(4,'NGN','₦',1,2,2,0,895.52,'2024-10-20 21:51:29','2024-10-20 21:51:29');
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Pearline Spinka','customer@botble.com','+13804147074','FI','Missouri','Bartolettimouth','910 Clifford Land Suite 046',1,1,'2024-10-20 21:51:30','2024-10-20 21:51:30','99147'),(2,'Pearline Spinka','customer@botble.com','+12103567061','ET','Montana','Lizziechester','13188 Devante Mountains Apt. 053',1,0,'2024-10-20 21:51:30','2024-10-20 21:51:30','83997-6292'),(3,'Ahmed O\'Reilly Jr.','vendor@botble.com','+17639694555','CY','Delaware','Magalifort','650 Crist Plaza Apt. 454',2,1,'2024-10-20 21:51:30','2024-10-20 21:51:30','85338'),(4,'Ahmed O\'Reilly Jr.','vendor@botble.com','+17608169221','BB','Arizona','Townefort','399 Leone Turnpike',2,0,'2024-10-20 21:51:30','2024-10-20 21:51:30','92000'),(5,'Evelyn Brakus','braeden89@example.org','+12604533367','AL','Pennsylvania','Lake Rigoberto','569 Auer Pass',3,1,'2024-10-20 21:51:31','2024-10-20 21:51:31','44776-8135'),(6,'Prof. Fernando Conroy','hkreiger@example.net','+16675437123','NU','Kentucky','East Floy','5193 Beer Plains',4,1,'2024-10-20 21:51:31','2024-10-20 21:51:31','39598'),(7,'Sarai Hettinger','laura.hand@example.net','+17475260689','BT','Ohio','South Shea','1242 Ruecker Lights Suite 390',5,1,'2024-10-20 21:51:31','2024-10-20 21:51:31','86087'),(8,'Kyla Ruecker','malika96@example.net','+17543381302','GI','Alabama','North Alejandrin','597 Barrows Plains',6,1,'2024-10-20 21:51:31','2024-10-20 21:51:31','64608'),(9,'Dr. Nicole Reilly MD','pstreich@example.net','+13419610348','TD','Hawaii','Litzyton','77106 Luna Estate Apt. 011',7,1,'2024-10-20 21:51:32','2024-10-20 21:51:32','39323'),(10,'Dorothy Kovacek','ewill@example.org','+13516030110','IE','New Mexico','Lake Favianport','654 Tyree Freeway',8,1,'2024-10-20 21:51:32','2024-10-20 21:51:32','50820'),(11,'Mrs. Laila Ondricka II','kennedy46@example.com','+15206236206','UM','Nebraska','Jenkinston','61856 Kshlerin View Suite 409',9,1,'2024-10-20 21:51:32','2024-10-20 21:51:32','03068-1471'),(12,'Dr. Werner Ritchie','aleffler@example.net','+16514771817','TZ','Minnesota','Lake Ericberg','288 Koss River Suite 492',10,1,'2024-10-20 21:51:32','2024-10-20 21:51:32','60292-2892');
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
INSERT INTO `ec_customers` VALUES (1,'Pearline Spinka','customer@botble.com','$2y$12$GVJnWDsfvDSH4kfcHTzfq.XfilybiaGGJWhUh2OOnsSNGo9wR.02u','main/customers/7.jpg','1985-10-04','+15647750849',NULL,'2024-10-20 21:51:30','2024-10-20 21:51:30','2024-10-21 04:51:30',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(2,'Ahmed O\'Reilly Jr.','vendor@botble.com','$2y$12$Zhq2ExQ1da39RVscJ9NGoOU2yIzK39ayeV56k2mOx0XYf9r7ibe1i','main/customers/5.jpg','1980-10-01','+17623925256',NULL,'2024-10-20 21:51:30','2024-10-20 21:51:35','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(3,'Evelyn Brakus','braeden89@example.org','$2y$12$tA/qoM6U8KZd9lWAY1xFrefd8xFyoScqxXqh2QSCpWiIzrw11hJ02','main/customers/1.jpg','1986-09-28','+14694299172',NULL,'2024-10-20 21:51:31','2024-10-20 21:51:35','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(4,'Prof. Fernando Conroy','hkreiger@example.net','$2y$12$ak0RQbDR1PwVRsWVb6fPmeoaY/0T1.SUCy2WyK2datf36adOqDbwm','main/customers/2.jpg','1992-09-28','+19142852257',NULL,'2024-10-20 21:51:31','2024-10-20 21:51:35','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(5,'Sarai Hettinger','laura.hand@example.net','$2y$12$pHrFjDSa70ZJy5aHLtxkquIDF81kBYUcE3rLBg94whPIrPkke7w4y','main/customers/3.jpg','1999-10-06','+18209598346',NULL,'2024-10-20 21:51:31','2024-10-20 21:51:35','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(6,'Kyla Ruecker','malika96@example.net','$2y$12$iFIy9NafgZ51BYIJQMgoFOZwQN3Aeb2XRk/CpJsoKW4cRnBoKDJie','main/customers/4.jpg','1986-10-19','+17035504692',NULL,'2024-10-20 21:51:31','2024-10-20 21:51:36','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(7,'Dr. Nicole Reilly MD','pstreich@example.net','$2y$12$OJHg2sgLlXI99yy/YwXgTuf9vn3OOnXD2LubRi2h7du3gyySBbefa','main/customers/5.jpg','2001-09-22','+19403942648',NULL,'2024-10-20 21:51:32','2024-10-20 21:51:36','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(8,'Dorothy Kovacek','ewill@example.org','$2y$12$hw58VyArPXDLZUkhc1bpB.XL6mrFE9Y6WvjQPHTprZM/OdXZ8qtDG','main/customers/6.jpg','1986-10-17','+19037696709',NULL,'2024-10-20 21:51:32','2024-10-20 21:51:36','2024-10-21 04:51:30',NULL,1,'2024-10-21 04:51:35','activated',NULL,NULL,NULL,0),(9,'Mrs. Laila Ondricka II','kennedy46@example.com','$2y$12$YtT5mJV0PIQnXpMRItPyq.c4YEUDPEM2todD6HZSMnKOpmpqU2xKK','main/customers/7.jpg','1979-09-25','+19852913549',NULL,'2024-10-20 21:51:32','2024-10-20 21:51:36','2024-10-21 04:51:30',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(10,'Dr. Werner Ritchie','aleffler@example.net','$2y$12$k/zKvkN07m946dNSdhl0v.5RT/qfhhNuI3ZuVmlDF9ZtdWBygxb7C','main/customers/8.jpg','1992-09-28','+15802106452',NULL,'2024-10-20 21:51:32','2024-10-20 21:51:36','2024-10-21 04:51:30',NULL,0,NULL,'activated',NULL,NULL,NULL,0);
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
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','BJD6BTNBVSYO','2024-10-20 04:51:34',NULL,NULL,0,935,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(2,'Discount 2','QH4S2K9PIE5V','2024-10-20 04:51:34',NULL,NULL,0,567,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(3,'Discount 3','R5Y5TE4CR11S','2024-10-20 04:51:34',NULL,NULL,0,469,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(4,'Discount 4','SVSS83I1UY6I','2024-10-20 04:51:34','2024-11-09 04:51:34',NULL,0,192,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(5,'Discount 5','AKGKXQZLVDH8','2024-10-20 04:51:34','2024-11-14 04:51:34',NULL,0,216,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(6,'Discount 6','BWZTNBE5TSC0','2024-10-20 04:51:34','2024-11-02 04:51:34',NULL,0,620,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(7,'Discount 7','QKWJTYUXQ836','2024-10-20 04:51:34',NULL,NULL,0,77,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(8,'Discount 8','IF17EYQZAK6T','2024-10-20 04:51:34','2024-10-26 04:51:34',NULL,0,335,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(9,'Discount 9','FGM4NFK8ZGND','2024-10-20 04:51:34','2024-11-02 04:51:34',NULL,0,875,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL),(10,'Discount 10','PXTOWBTZKDJB','2024-10-20 04:51:34','2024-11-20 04:51:34',NULL,0,495,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,NULL);
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,221.96,20,1),(1,2,24.78,19,5),(1,3,768.18,6,4),(1,4,785.26,17,5),(1,5,708.8,11,2),(1,6,674.04,18,5),(1,7,1069.04,11,4),(1,8,162.18,18,4),(1,9,6.6,18,1),(1,10,512.2,6,4);
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-11-06 00:00:00','published','2024-10-20 21:51:39','2024-10-20 21:51:39');
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(2,1,'2 Year',10,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(3,1,'3 Year',20,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(4,2,'4GB',0,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(5,2,'8GB',10,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(6,2,'16GB',20,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(7,3,'Core i5',0,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(8,3,'Core i7',10,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(9,3,'Core i9',20,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(10,4,'128GB',0,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(11,4,'256GB',10,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(12,4,'512GB',20,9999,0,'2024-10-20 21:51:34','2024-10-20 21:51:34');
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-10-20 21:51:34','2024-10-20 21:51:34');
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-10-20 21:51:29','2024-10-20 21:51:29',0),(2,'Size','size','text',1,1,1,'published',1,'2024-10-20 21:51:29','2024-10-20 21:51:29',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-10-20 21:51:29','2024-10-20 21:51:29',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-10-20 21:51:29','2024-10-20 21:51:29',0);
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(6,2,'S','s',NULL,NULL,1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(7,2,'M','m',NULL,NULL,0,2,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(8,2,'L','l',NULL,NULL,0,3,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-10-20 21:51:29','2024-10-20 21:51:29'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-10-20 21:51:29','2024-10-20 21:51:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Frozen Food',0,NULL,'published',0,'grocery/product-categories/1.jpg',1,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(2,'Baby Food',1,NULL,'published',0,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(3,'Strawberry',1,NULL,'published',1,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(4,'Ice Cream',1,NULL,'published',2,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(5,'Meat & Seafood',0,NULL,'published',1,'grocery/product-categories/2.jpg',1,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(6,'Chicken',5,NULL,'published',0,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(7,'Fish',5,NULL,'published',1,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(8,'Beef',5,NULL,'published',2,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(9,'Milk & Dairy',0,NULL,'published',2,'grocery/product-categories/3.jpg',1,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(10,'Milk',9,NULL,'published',0,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(11,'Cheese',9,NULL,'published',1,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(12,'Yogurt',9,NULL,'published',2,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(13,'Beverages',0,NULL,'published',3,'grocery/product-categories/4.jpg',1,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(14,'Vegetables',0,NULL,'published',4,'grocery/product-categories/5.jpg',1,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(15,'Carrot',14,NULL,'published',0,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(16,'Tomato',14,NULL,'published',1,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(17,'Potato',14,NULL,'published',2,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(18,'Fruits',0,NULL,'published',5,'grocery/product-categories/6.jpg',1,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(19,'Banana',18,NULL,'published',0,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL),(20,'Mango',18,NULL,'published',1,NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL);
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
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,3),(1,6),(1,11),(1,15),(1,17),(1,23),(1,27),(2,2),(2,6),(2,10),(2,12),(2,13),(2,16),(2,18),(2,22),(3,15),(3,16),(3,23),(3,28),(3,29),(3,30),(4,4),(4,10),(4,22),(5,5),(5,6),(5,14),(5,15),(5,17),(5,21),(6,5),(6,7),(6,12),(6,13),(6,24),(6,30),(7,5),(7,9),(7,18),(7,19),(7,21),(7,24),(7,26),(7,30),(8,8),(8,10),(8,17),(8,26),(8,29),(8,30),(9,2),(9,8),(9,9),(9,10),(9,11),(9,22),(9,25),(9,28),(10,15),(10,17),(10,19),(10,21),(10,25),(10,26),(11,9),(11,18),(11,20),(12,7),(12,14),(12,22),(12,23),(12,27),(12,28),(13,3),(14,1),(14,7),(14,8),(14,14),(14,16),(14,19),(14,20),(14,21),(14,23),(14,27),(15,1),(15,2),(15,3),(15,4),(15,5),(15,13),(15,24),(16,8),(16,11),(16,12),(16,24),(16,26),(17,1),(17,6),(17,18),(17,20),(17,29),(18,1),(18,3),(18,9),(18,12),(18,13),(18,16),(18,25),(18,29),(19,4),(19,7),(19,11),(19,14),(19,25),(19,27),(19,28),(20,4),(20,19),(20,20);
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
INSERT INTO `ec_product_collection_products` VALUES (1,1),(1,4),(1,7),(1,15),(1,19),(1,27),(1,30),(2,8),(2,11),(2,12),(2,14),(2,23),(3,2),(3,3),(3,9),(3,10),(3,16),(3,25),(3,26),(3,28),(3,29),(4,5),(4,6),(4,13),(4,17),(4,18),(4,20),(4,21),(4,22),(4,24);
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
INSERT INTO `ec_product_collections` VALUES (1,'Weekly Gadget Spotlight','weekly-gadget-spotlight',NULL,NULL,'published','2024-10-20 21:51:37','2024-10-20 21:51:37',0),(2,'Electronics Trendsetters','electronics-trendsetters',NULL,NULL,'published','2024-10-20 21:51:37','2024-10-20 21:51:37',0),(3,'Digital Workspace Gear','digital-workspace-gear',NULL,NULL,'published','2024-10-20 21:51:37','2024-10-20 21:51:37',0),(4,'Cutting-Edge Tech Showcase','cutting-edge-tech-showcase',NULL,NULL,'published','2024-10-20 21:51:37','2024-10-20 21:51:37',0);
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,15,0,0.00,'fixed',1),(1,23,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,28,0,0.00,'fixed',1),(1,29,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,22,0,0.00,'fixed',1),(2,23,0,0.00,'fixed',1),(2,27,0,0.00,'fixed',1),(3,5,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,26,0,0.00,'fixed',1),(3,27,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,23,0,0.00,'fixed',1),(4,24,0,0.00,'fixed',1),(4,26,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(5,19,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(5,26,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(6,21,0,0.00,'fixed',1),(6,28,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(7,24,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(9,3,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,16,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(9,27,0,0.00,'fixed',1),(9,28,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,21,0,0.00,'fixed',1),(10,25,0,0.00,'fixed',1),(11,2,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,8,0,0.00,'fixed',1),(11,17,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,30,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,5,0,0.00,'fixed',1),(12,7,0,0.00,'fixed',1),(12,17,0,0.00,'fixed',1),(12,22,0,0.00,'fixed',1),(12,29,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,21,0,0.00,'fixed',1),(13,24,0,0.00,'fixed',1),(13,30,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,25,0,0.00,'fixed',1),(14,26,0,0.00,'fixed',1),(14,30,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,14,0,0.00,'fixed',1),(15,18,0,0.00,'fixed',1),(15,22,0,0.00,'fixed',1),(15,23,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,5,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,28,0,0.00,'fixed',1),(16,29,0,0.00,'fixed',1),(17,1,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,13,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,18,0,0.00,'fixed',1),(17,20,0,0.00,'fixed',1),(17,24,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(18,26,0,0.00,'fixed',1),(18,29,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,7,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,25,0,0.00,'fixed',1),(20,26,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(21,25,0,0.00,'fixed',1),(21,27,0,0.00,'fixed',1),(21,30,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,15,0,0.00,'fixed',1),(23,16,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,28,0,0.00,'fixed',1),(24,1,0,0.00,'fixed',1),(24,5,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,23,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(24,28,0,0.00,'fixed',1),(25,1,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,5,0,0.00,'fixed',1),(25,9,0,0.00,'fixed',1),(25,10,0,0.00,'fixed',1),(25,26,0,0.00,'fixed',1),(26,8,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,11,0,0.00,'fixed',1),(26,25,0,0.00,'fixed',1),(26,27,0,0.00,'fixed',1),(27,3,0,0.00,'fixed',1),(27,16,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(27,21,0,0.00,'fixed',1),(27,22,0,0.00,'fixed',1),(27,28,0,0.00,'fixed',1),(28,5,0,0.00,'fixed',1),(28,18,0,0.00,'fixed',1),(28,21,0,0.00,'fixed',1),(28,23,0,0.00,'fixed',1),(28,26,0,0.00,'fixed',1),(28,27,0,0.00,'fixed',1),(28,29,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,3,0,0.00,'fixed',1),(29,13,0,0.00,'fixed',1),(29,18,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,27,0,0.00,'fixed',1),(30,3,0,0.00,'fixed',1),(30,9,0,0.00,'fixed',1),(30,12,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(30,20,0,0.00,'fixed',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(2,4,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(3,8,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(4,8,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(5,12,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(6,12,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(7,16,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(8,16,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(9,20,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(10,20,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(11,24,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(12,24,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(13,28,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(14,28,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(15,32,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(16,33,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(17,41,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(18,42,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(19,43,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(20,50,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(21,51,'ecommerce/digital-product-files/product-8.jpg','{\"filename\":\"product-8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-8\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38'),(22,52,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-10-21 04:51:38\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2024-10-20 21:51:38','2024-10-20 21:51:38');
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
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,15),(1,18),(2,6),(2,12),(2,21),(2,27),(3,9),(3,24),(3,30);
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(2,'New','#006554','published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(3,'Sale','#9A3B00','published','2024-10-20 21:51:29','2024-10-20 21:51:29');
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
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'33.78 cm',0,0),(1,7,'76.53 cm',0,0),(1,8,'2560x1440',0,0),(2,6,'1.8 cm',0,0),(2,7,'22.99 cm',0,0),(2,8,'3840x2160',0,0),(3,1,'89.47 cm',0,0),(3,2,'20.91 cm',0,0),(3,3,'97.35 cm',0,0),(3,4,'57.95 cm',0,0),(3,5,'6.71 cm',0,0),(4,6,'94.21 cm',0,0),(4,7,'74.57 cm',0,0),(4,8,'2560x1440',0,0),(5,1,'31.97 cm',0,0),(5,2,'54.66 cm',0,0),(5,3,'61.93 cm',0,0),(5,4,'87.25 cm',0,0),(5,5,'71.79 cm',0,0),(6,6,'39.36 cm',0,0),(6,7,'31.87 cm',0,0),(6,8,'3840x2160',0,0),(7,6,'96.01 cm',0,0),(7,7,'78.66 cm',0,0),(7,8,'2560x1440',0,0),(8,1,'41.69 cm',0,0),(8,2,'42.69 cm',0,0),(8,3,'75.41 cm',0,0),(8,4,'56.47 cm',0,0),(8,5,'16.66 cm',0,0),(9,6,'31.04 cm',0,0),(9,7,'76.64 cm',0,0),(9,8,'3840x2160',0,0),(10,6,'46.73 cm',0,0),(10,7,'10.98 cm',0,0),(10,8,'2560x1440',0,0),(11,1,'16.61 cm',0,0),(11,2,'45.81 cm',0,0),(11,3,'18.35 cm',0,0),(11,4,'43.79 cm',0,0),(11,5,'85.32 cm',0,0),(12,1,'3.15 cm',0,0),(12,2,'73.25 cm',0,0),(12,3,'5.63 cm',0,0),(12,4,'61.34 cm',0,0),(12,5,'38.96 cm',0,0),(13,6,'65.11 cm',0,0),(13,7,'68.39 cm',0,0),(13,8,'1920x1080',0,0),(14,6,'25.33 cm',0,0),(14,7,'67.26 cm',0,0),(14,8,'2560x1440',0,0),(15,6,'77.75 cm',0,0),(15,7,'68.98 cm',0,0),(15,8,'2560x1440',0,0),(16,6,'92.47 cm',0,0),(16,7,'23.77 cm',0,0),(16,8,'1920x1080',0,0),(17,6,'17.89 cm',0,0),(17,7,'62.38 cm',0,0),(17,8,'3840x2160',0,0),(18,6,'78.77 cm',0,0),(18,7,'27.88 cm',0,0),(18,8,'2560x1440',0,0),(19,6,'69.63 cm',0,0),(19,7,'89.76 cm',0,0),(19,8,'3840x2160',0,0),(20,1,'76.99 cm',0,0),(20,2,'26.3 cm',0,0),(20,3,'67.31 cm',0,0),(20,4,'46.45 cm',0,0),(20,5,'12.73 cm',0,0),(21,6,'78.44 cm',0,0),(21,7,'6.85 cm',0,0),(21,8,'1920x1080',0,0),(22,6,'99.14 cm',0,0),(22,7,'20.7 cm',0,0),(22,8,'3840x2160',0,0),(23,1,'95.69 cm',0,0),(23,2,'70.41 cm',0,0),(23,3,'80.07 cm',0,0),(23,4,'44.35 cm',0,0),(23,5,'81.11 cm',0,0),(24,1,'37.47 cm',0,0),(24,2,'27.09 cm',0,0),(24,3,'48.12 cm',0,0),(24,4,'98.86 cm',0,0),(24,5,'66.04 cm',0,0),(25,6,'61.73 cm',0,0),(25,7,'93.53 cm',0,0),(25,8,'2560x1440',0,0),(26,6,'64.16 cm',0,0),(26,7,'58.29 cm',0,0),(26,8,'2560x1440',0,0),(27,1,'56.17 cm',0,0),(27,2,'78.58 cm',0,0),(27,3,'33.36 cm',0,0),(27,4,'79.3 cm',0,0),(27,5,'76.76 cm',0,0),(28,6,'63.59 cm',0,0),(28,7,'45.53 cm',0,0),(28,8,'2560x1440',0,0),(29,6,'32.25 cm',0,0),(29,7,'40.04 cm',0,0),(29,8,'1920x1080',0,0),(30,6,'43.86 cm',0,0),(30,7,'40.19 cm',0,0),(30,8,'1920x1080',0,0);
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
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,3),(1,4),(2,3),(2,4),(2,5),(3,2),(3,3),(3,6),(4,2),(4,5),(4,6),(5,2),(5,3),(5,5),(6,2),(6,3),(6,6),(7,1),(7,2),(7,3),(8,1),(8,3),(8,5),(9,1),(9,4),(9,5),(10,4),(10,5),(10,6),(11,1),(11,2),(11,3),(12,2),(12,4),(12,5),(13,1),(13,2),(13,5),(14,2),(14,3),(14,6),(15,1),(15,3),(15,6),(16,2),(16,4),(16,6),(17,1),(17,5),(17,6),(18,2),(18,3),(18,4),(19,1),(19,3),(19,4),(20,1),(20,2),(20,4),(21,2),(21,3),(21,5),(22,1),(22,3),(22,6),(23,2),(23,4),(23,6),(24,2),(24,3),(24,5),(25,2),(25,4),(25,6),(26,3),(26,4),(26,6),(27,2),(27,4),(27,5),(28,2),(28,4),(28,5),(29,2),(29,4),(29,6),(30,4),(30,5),(30,6);
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(2,'Mobile',NULL,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(3,'Iphone',NULL,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(4,'Printer',NULL,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(5,'Office',NULL,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(6,'IT',NULL,'published','2024-10-20 21:51:32','2024-10-20 21:51:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(5,2,3),(7,2,4),(13,2,7),(17,2,9),(19,2,10),(3,3,2),(15,3,8),(9,5,5),(11,5,6),(2,6,1),(8,6,4),(14,6,7),(20,6,10),(6,7,3),(10,7,5),(12,7,6),(4,9,2),(16,10,8),(18,10,9),(25,11,13),(27,11,14),(43,11,22),(47,11,24),(51,11,26),(33,12,17),(39,12,20),(41,12,21),(45,12,23),(23,13,12),(29,13,15),(31,13,16),(37,13,19),(21,14,11),(35,14,18),(49,15,25),(53,15,27),(22,16,11),(30,16,15),(26,17,13),(32,17,16),(36,17,18),(44,18,22),(46,18,23),(52,18,26),(54,18,27),(24,19,12),(34,19,17),(38,19,19),(48,19,24),(50,19,25),(28,20,14),(40,20,20),(42,20,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,31,3,1),(2,32,4,1),(3,33,4,0),(4,34,5,1),(5,35,5,0),(6,36,5,0),(7,37,7,1),(8,38,7,0),(9,39,13,1),(10,40,13,0),(11,41,20,1),(12,42,20,0),(13,43,20,0),(14,44,22,1),(15,45,22,0),(16,46,22,0),(17,47,22,0),(18,48,23,1),(19,49,23,0),(20,50,24,1),(21,51,24,0),(22,52,24,0),(23,53,29,1),(24,54,29,0),(25,55,29,0),(26,56,30,1),(27,57,30,0);
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,7,0),(2,7,0),(1,13,0),(2,13,0),(3,20,0),(4,20,0),(3,22,0),(4,22,0),(3,23,0),(4,23,0),(3,24,0),(4,24,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Organic Apples','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','QY-122',0,17,0,1,0,4,0,0,575,358,NULL,NULL,14.00,18.00,20.00,583.00,NULL,154771,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(2,'Whole Grain Bread','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','PW-191',0,17,0,1,1,5,0,0,2048,42,NULL,NULL,13.00,15.00,10.00,860.00,NULL,157893,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(3,'Free-Range Eggs','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','ZH-127-A1',0,13,0,1,0,1,0,0,1302,NULL,NULL,NULL,11.00,17.00,20.00,838.00,NULL,150937,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(4,'Fresh Salmon Fillet (Digital)','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','TD-129-A1',0,17,0,1,0,2,0,0,1420,1121.8,NULL,NULL,10.00,14.00,17.00,642.00,NULL,118565,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(5,'Organic Spinach','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','SS-163-A1',0,11,0,1,1,4,0,0,1772,NULL,NULL,NULL,19.00,13.00,16.00,717.00,NULL,143490,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(6,'Grass-Fed Ground Beef','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','3U-156',0,18,0,1,0,2,0,0,1232,822,NULL,NULL,14.00,15.00,13.00,617.00,NULL,99355,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(7,'Almond Milk','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\"]','[]','OL-167-A1',0,14,0,1,1,3,0,0,1909,NULL,NULL,NULL,14.00,16.00,13.00,701.00,NULL,23930,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(8,'Quinoa (Digital)','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','FA-131',0,13,0,1,1,5,0,0,1977,318,NULL,NULL,13.00,19.00,11.00,535.00,NULL,141244,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(9,'Avocado','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','XV-100',0,15,0,1,0,4,0,0,632,12,NULL,NULL,10.00,12.00,15.00,611.00,NULL,28749,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(10,'Greek Yogurt','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[]','9S-165',0,11,0,1,1,3,0,0,984,788,NULL,NULL,10.00,16.00,15.00,702.00,NULL,24851,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(11,'Sweet Potatoes','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','X7-194',0,15,0,1,0,4,0,0,1483,348,NULL,NULL,17.00,20.00,12.00,793.00,NULL,187129,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(12,'Organic Cherry Tomatoes (Digital)','Creamy almond butter for a tasty and nutritious spread.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-13.jpg\"]','[]','P6-145',0,12,0,1,1,4,0,0,1893,1789,NULL,NULL,11.00,12.00,14.00,564.00,NULL,54382,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(13,'Honeycrisp Apples','Cottage cheese, a protein-rich and versatile dairy product.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','3I-114-A1',0,18,0,1,0,1,0,0,323,NULL,NULL,NULL,19.00,11.00,12.00,567.00,NULL,186884,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(14,'Brown Rice','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-2.jpg\"]','[]','CI-186',0,10,0,1,0,5,0,0,2233,1181,NULL,NULL,17.00,16.00,10.00,694.00,NULL,78742,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(15,'Organic Chicken Breast','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-20.jpg\"]','[]','QZ-145',0,20,0,1,1,3,0,0,2079,1727,NULL,NULL,18.00,10.00,11.00,752.00,NULL,158840,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(16,'Extra Virgin Olive Oil (Digital)','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','ZD-177',0,13,0,1,1,2,0,0,892,54,NULL,NULL,11.00,17.00,17.00,743.00,NULL,50464,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(17,'Cucumber','Sweet corn, a delicious and versatile vegetable.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','HE-122',0,10,0,1,1,3,0,0,2434,2156,NULL,NULL,10.00,14.00,14.00,750.00,NULL,149412,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(18,'Black Beans','Green tea bags for a soothing and antioxidant-rich beverage.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','UH-193',0,14,0,1,1,4,0,0,676,16,NULL,NULL,14.00,15.00,17.00,827.00,NULL,71698,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(19,'Chia Seeds','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','91-197',0,20,0,1,1,3,0,0,2459,146,NULL,NULL,15.00,11.00,17.00,566.00,NULL,61678,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(20,'Whole Wheat Pasta (Digital)','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','HW-148-A1',0,13,0,1,0,3,0,0,572,474.76,NULL,NULL,15.00,19.00,20.00,683.00,NULL,70299,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(21,'Mixed Nuts','Sweet and juicy organic strawberries for a delightful treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','J0-200',0,14,0,1,1,3,0,0,709,414,NULL,NULL,15.00,19.00,14.00,589.00,NULL,1152,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(22,'Green Tea Bags','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[]','00-195-A1',0,20,0,1,0,1,0,0,2081,NULL,NULL,NULL,16.00,14.00,12.00,622.00,NULL,17874,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(23,'Organic Strawberries','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','JX-155-A1',0,13,0,1,1,1,0,0,1709,NULL,NULL,NULL,14.00,14.00,12.00,711.00,NULL,112605,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(24,'Quinoa Flour (Digital)','Balsamic salad dressing to enhance the flavor of your salads.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-8.jpg\"]','[]','NQ-115-A1',0,10,0,1,1,2,0,0,1356,1098.36,NULL,NULL,12.00,12.00,10.00,607.00,NULL,2153,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(25,'Organic Baby Kale','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','GP-200',0,20,0,1,1,3,0,0,901,274,NULL,NULL,12.00,16.00,19.00,686.00,NULL,56840,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(26,'Salad Dressing','Whole wheat pasta, a healthier alternative with a nutty flavor.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\"]','[]','4E-152',0,13,0,1,1,2,0,0,1772,493,NULL,NULL,12.00,15.00,15.00,544.00,NULL,76334,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(27,'Sweet Corn','Fresh and crisp organic apples for a healthy snack or delicious recipes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','KH-153',0,17,0,1,0,1,0,0,1350,1068,NULL,NULL,10.00,14.00,10.00,659.00,NULL,189113,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(28,'Almond Butter (Digital)','Whole pineapple for a tropical and refreshing treat.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','GK-193',0,14,0,1,1,3,0,0,767,171,NULL,NULL,10.00,13.00,20.00,833.00,NULL,194817,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(29,'Whole Pineapple','A mix of nuts for a tasty and energy-boosting trail mix.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-15.jpg\"]','[]','FE-105-A1',0,12,0,1,0,5,0,0,2066,NULL,NULL,NULL,18.00,17.00,18.00,688.00,NULL,87485,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(30,'Cottage Cheese','Quinoa flour, a gluten-free alternative for baking.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Organic Avocado</span>\n                        <h3 class=\"tp-product-details-desc-title\">Freshness You Can Taste</h3>\n                        <p>\n                            Indulge in the rich, creamy texture and vibrant flavor of our organic avocados. Sourced from sustainable farms, each avocado is handpicked to ensure peak ripeness and quality. Whether sliced on toast or mashed into guacamole, our avocados are the perfect addition to any meal.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Nutrient-Rich Goodness</h3>\n                        <p>\n                            Packed with essential vitamins and minerals, our organic avocados are not only delicious but also incredibly nutritious. High in heart-healthy fats and fiber, they\'re an excellent choice for grocerytaining a balanced diet. Add them to salads, smoothies, or sandwiches for a nutritious boost.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-1.jpg\" alt=\"Organic Avocado\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/grocery/products/product-2.jpg\" alt=\"Sliced Avocado\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Convenient Packaging\n                        </h3>\n                        <p>\n                            Our organic avocados come carefully packaged to preserve their freshness. Each avocado is nestled in eco-friendly padding to prevent bruising during transit. Rest assured that when you open your package, you\'ll find perfectly ripe avocados ready to enjoy.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Grown with Care</h3>\n                        <img src=\"/storage/grocery/products/product-3.jpg\" alt=\"Avocado Farm\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','GO-122-A1',0,10,0,1,1,1,0,0,1075,NULL,NULL,NULL,10.00,19.00,10.00,607.00,NULL,97564,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(31,'Free-Range Eggs',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'ZH-127-A1',0,13,0,1,0,1,1,0,1302,NULL,NULL,NULL,11.00,17.00,20.00,838.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(32,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'TD-129-A1',0,17,0,1,0,2,1,0,1420,1121.8,NULL,NULL,10.00,14.00,17.00,642.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(33,'Fresh Salmon Fillet (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'TD-129-A1-A2',0,17,0,1,0,2,1,0,1420,1065,NULL,NULL,10.00,14.00,17.00,642.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(34,'Organic Spinach',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'SS-163-A1',0,11,0,1,0,4,1,0,1772,NULL,NULL,NULL,19.00,13.00,16.00,717.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(35,'Organic Spinach',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'SS-163-A1-A2',0,11,0,1,0,4,1,0,1772,NULL,NULL,NULL,19.00,13.00,16.00,717.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(36,'Organic Spinach',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'SS-163-A1-A3',0,11,0,1,0,4,1,0,1772,NULL,NULL,NULL,19.00,13.00,16.00,717.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(37,'Almond Milk',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'OL-167-A1',0,14,0,1,0,3,1,0,1909,NULL,NULL,NULL,14.00,16.00,13.00,701.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(38,'Almond Milk',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'OL-167-A1-A2',0,14,0,1,0,3,1,0,1909,NULL,NULL,NULL,14.00,16.00,13.00,701.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:38','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(39,'Honeycrisp Apples',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]',NULL,'3I-114-A1',0,18,0,1,0,1,1,0,323,NULL,NULL,NULL,19.00,11.00,12.00,567.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(40,'Honeycrisp Apples',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'3I-114-A1-A2',0,18,0,1,0,1,1,0,323,NULL,NULL,NULL,19.00,11.00,12.00,567.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(41,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'HW-148-A1',0,13,0,1,0,3,1,0,572,474.76,NULL,NULL,15.00,19.00,20.00,683.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(42,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'HW-148-A1-A2',0,13,0,1,0,3,1,0,572,406.12,NULL,NULL,15.00,19.00,20.00,683.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(43,'Whole Wheat Pasta (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'HW-148-A1-A3',0,13,0,1,0,3,1,0,572,429,NULL,NULL,15.00,19.00,20.00,683.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(44,'Green Tea Bags',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'00-195-A1',0,20,0,1,0,1,1,0,2081,NULL,NULL,NULL,16.00,14.00,12.00,622.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(45,'Green Tea Bags',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'00-195-A1-A2',0,20,0,1,0,1,1,0,2081,NULL,NULL,NULL,16.00,14.00,12.00,622.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(46,'Green Tea Bags',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'00-195-A1-A3',0,20,0,1,0,1,1,0,2081,NULL,NULL,NULL,16.00,14.00,12.00,622.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(47,'Green Tea Bags',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'00-195-A1-A4',0,20,0,1,0,1,1,0,2081,NULL,NULL,NULL,16.00,14.00,12.00,622.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(48,'Organic Strawberries',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'JX-155-A1',0,13,0,1,0,1,1,0,1709,NULL,NULL,NULL,14.00,14.00,12.00,711.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(49,'Organic Strawberries',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'JX-155-A1-A2',0,13,0,1,0,1,1,0,1709,NULL,NULL,NULL,14.00,14.00,12.00,711.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(50,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'NQ-115-A1',0,10,0,1,0,2,1,0,1356,1098.36,NULL,NULL,12.00,12.00,10.00,607.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(51,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'NQ-115-A1-A2',0,10,0,1,0,2,1,0,1356,1179.72,NULL,NULL,12.00,12.00,10.00,607.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(52,'Quinoa Flour (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'NQ-115-A1-A3',0,10,0,1,0,2,1,0,1356,1057.68,NULL,NULL,12.00,12.00,10.00,607.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(53,'Whole Pineapple',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'FE-105-A1',0,12,0,1,0,5,1,0,2066,NULL,NULL,NULL,18.00,17.00,18.00,688.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(54,'Whole Pineapple',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'FE-105-A1-A2',0,12,0,1,0,5,1,0,2066,NULL,NULL,NULL,18.00,17.00,18.00,688.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(55,'Whole Pineapple',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'FE-105-A1-A3',0,12,0,1,0,5,1,0,2066,NULL,NULL,NULL,18.00,17.00,18.00,688.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(56,'Cottage Cheese',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'GO-122-A1',0,10,0,1,0,1,1,0,1075,NULL,NULL,NULL,10.00,19.00,10.00,607.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(57,'Cottage Cheese',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'GO-122-A1-A2',0,10,0,1,0,1,1,0,1075,NULL,NULL,NULL,10.00,19.00,10.00,607.00,NULL,0,'2024-10-20 21:51:38','2024-10-20 21:51:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL);
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
INSERT INTO `ec_reviews` VALUES (1,6,NULL,NULL,2,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(2,2,NULL,NULL,5,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(3,6,NULL,NULL,29,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(4,2,NULL,NULL,15,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(5,3,NULL,NULL,21,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(6,4,NULL,NULL,29,3.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(7,8,NULL,NULL,15,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(8,2,NULL,NULL,24,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(9,9,NULL,NULL,26,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(10,8,NULL,NULL,19,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(11,10,NULL,NULL,6,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(12,6,NULL,NULL,13,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(13,7,NULL,NULL,29,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(14,7,NULL,NULL,3,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(15,3,NULL,NULL,24,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(16,4,NULL,NULL,11,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(17,4,NULL,NULL,21,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\"]'),(18,4,NULL,NULL,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(19,5,NULL,NULL,15,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(20,7,NULL,NULL,6,5.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(21,6,NULL,NULL,6,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(22,1,NULL,NULL,18,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(23,2,NULL,NULL,20,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(24,6,NULL,NULL,14,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(26,4,NULL,NULL,16,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(27,10,NULL,NULL,12,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(28,6,NULL,NULL,16,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(29,10,NULL,NULL,7,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(30,8,NULL,NULL,5,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(31,5,NULL,NULL,28,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(33,8,NULL,NULL,24,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(34,2,NULL,NULL,4,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(35,1,NULL,NULL,11,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(36,7,NULL,NULL,16,1.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(37,8,NULL,NULL,30,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(38,9,NULL,NULL,22,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(39,10,NULL,NULL,16,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(41,7,NULL,NULL,28,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(42,2,NULL,NULL,7,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(43,7,NULL,NULL,2,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(44,8,NULL,NULL,7,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\"]'),(45,10,NULL,NULL,23,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(46,2,NULL,NULL,8,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(47,3,NULL,NULL,26,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(48,2,NULL,NULL,26,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(49,3,NULL,NULL,9,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(50,2,NULL,NULL,30,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(51,6,NULL,NULL,24,1.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(52,8,NULL,NULL,2,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(53,4,NULL,NULL,6,3.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(54,4,NULL,NULL,20,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(56,6,NULL,NULL,3,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(57,3,NULL,NULL,1,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\"]'),(58,8,NULL,NULL,3,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(59,4,NULL,NULL,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(60,1,NULL,NULL,10,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(61,2,NULL,NULL,28,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(63,1,NULL,NULL,15,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(65,1,NULL,NULL,6,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(66,1,NULL,NULL,2,2.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(67,2,NULL,NULL,10,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(68,6,NULL,NULL,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(69,4,NULL,NULL,5,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(70,8,NULL,NULL,23,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(71,9,NULL,NULL,17,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(72,3,NULL,NULL,13,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-11.jpg\"]'),(73,10,NULL,NULL,30,5.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(74,1,NULL,NULL,29,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(75,3,NULL,NULL,14,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(76,10,NULL,NULL,20,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(77,9,NULL,NULL,20,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(78,4,NULL,NULL,8,3.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(79,10,NULL,NULL,26,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(80,5,NULL,NULL,23,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(81,3,NULL,NULL,27,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(82,9,NULL,NULL,29,4.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(83,2,NULL,NULL,2,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(85,9,NULL,NULL,14,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(86,7,NULL,NULL,22,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(88,7,NULL,NULL,10,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(89,7,NULL,NULL,5,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(91,8,NULL,NULL,1,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(92,9,NULL,NULL,19,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(93,6,NULL,NULL,5,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(94,7,NULL,NULL,13,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\"]'),(97,4,NULL,NULL,30,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(98,7,NULL,NULL,1,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(101,7,NULL,NULL,9,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(102,7,NULL,NULL,19,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(103,7,NULL,NULL,26,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(104,5,NULL,NULL,18,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(105,10,NULL,NULL,5,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(106,4,NULL,NULL,7,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\"]'),(108,6,NULL,NULL,11,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(111,8,NULL,NULL,8,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(113,5,NULL,NULL,27,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(114,9,NULL,NULL,27,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(115,6,NULL,NULL,10,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(116,5,NULL,NULL,30,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(118,6,NULL,NULL,15,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(119,5,NULL,NULL,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(120,6,NULL,NULL,22,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(121,8,NULL,NULL,18,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(122,2,NULL,NULL,21,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(123,1,NULL,NULL,23,1.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(124,1,NULL,NULL,7,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(126,6,NULL,NULL,20,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-11.jpg\"]'),(127,1,NULL,NULL,28,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(128,9,NULL,NULL,9,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(129,10,NULL,NULL,8,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(130,3,NULL,NULL,3,4.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\"]'),(131,10,NULL,NULL,15,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(132,1,NULL,NULL,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(133,7,NULL,NULL,20,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(136,5,NULL,NULL,26,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(137,10,NULL,NULL,22,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(138,1,NULL,NULL,24,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(141,4,NULL,NULL,26,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(144,7,NULL,NULL,8,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\"]'),(145,2,NULL,NULL,3,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-11.jpg\"]'),(148,5,NULL,NULL,19,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(149,4,NULL,NULL,23,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\"]'),(150,7,NULL,NULL,21,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(151,9,NULL,NULL,3,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(152,3,NULL,NULL,8,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(154,4,NULL,NULL,10,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(157,5,NULL,NULL,17,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(158,9,NULL,NULL,18,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(163,2,NULL,NULL,25,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(164,8,NULL,NULL,29,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(165,9,NULL,NULL,15,3.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(166,5,NULL,NULL,3,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(167,10,NULL,NULL,27,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(168,5,NULL,NULL,9,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(169,9,NULL,NULL,30,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(173,1,NULL,NULL,25,1.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(174,2,NULL,NULL,16,2.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(176,3,NULL,NULL,16,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(179,4,NULL,NULL,22,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(182,6,NULL,NULL,9,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(183,2,NULL,NULL,17,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(185,5,NULL,NULL,2,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(189,7,NULL,NULL,24,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(193,6,NULL,NULL,28,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(198,3,NULL,NULL,29,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(203,1,NULL,NULL,17,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(204,6,NULL,NULL,4,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(207,10,NULL,NULL,25,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(211,3,NULL,NULL,5,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(212,10,NULL,NULL,19,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\"]'),(216,1,NULL,NULL,13,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(217,9,NULL,NULL,13,2.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(218,1,NULL,NULL,27,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(219,3,NULL,NULL,6,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(220,5,NULL,NULL,5,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(221,10,NULL,NULL,10,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(222,4,NULL,NULL,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(227,1,NULL,NULL,21,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(228,4,NULL,NULL,19,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(229,3,NULL,NULL,11,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\"]'),(230,6,NULL,NULL,18,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(231,2,NULL,NULL,1,4.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(240,8,NULL,NULL,22,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(245,10,NULL,NULL,18,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(247,7,NULL,NULL,17,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(249,8,NULL,NULL,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(250,9,NULL,NULL,24,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(251,7,NULL,NULL,18,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(252,5,NULL,NULL,1,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(253,7,NULL,NULL,25,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(255,1,NULL,NULL,22,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(256,10,NULL,NULL,11,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\"]'),(261,8,NULL,NULL,28,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(263,3,NULL,NULL,20,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(266,8,NULL,NULL,20,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(267,9,NULL,NULL,28,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(268,1,NULL,NULL,16,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(269,2,NULL,NULL,11,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(270,2,NULL,NULL,6,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(274,2,NULL,NULL,27,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(276,9,NULL,NULL,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\"]'),(277,10,NULL,NULL,24,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(278,8,NULL,NULL,25,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(282,3,NULL,NULL,4,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(283,1,NULL,NULL,1,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(284,5,NULL,NULL,10,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(286,2,NULL,NULL,29,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(297,1,NULL,NULL,26,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(301,4,NULL,NULL,15,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(302,8,NULL,NULL,6,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(304,1,NULL,NULL,30,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(307,3,NULL,NULL,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(309,1,NULL,NULL,5,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\"]'),(311,8,NULL,NULL,4,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(312,5,NULL,NULL,14,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(314,7,NULL,NULL,14,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(315,10,NULL,NULL,21,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(323,5,NULL,NULL,4,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(325,9,NULL,NULL,25,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(327,6,NULL,NULL,25,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(332,1,NULL,NULL,9,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(338,3,NULL,NULL,18,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(340,6,NULL,NULL,21,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(342,2,NULL,NULL,12,1.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(344,3,NULL,NULL,10,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(345,5,NULL,NULL,11,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\"]'),(349,10,NULL,NULL,9,2.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-11.jpg\"]'),(353,1,NULL,NULL,19,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(356,9,NULL,NULL,7,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(358,4,NULL,NULL,25,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(359,5,NULL,NULL,24,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\"]'),(364,7,NULL,NULL,15,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(365,4,NULL,NULL,28,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(366,9,NULL,NULL,2,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(370,5,NULL,NULL,22,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(372,5,NULL,NULL,21,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(374,8,NULL,NULL,17,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(378,5,NULL,NULL,13,4.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(382,10,NULL,NULL,17,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(387,10,NULL,NULL,14,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(388,3,NULL,NULL,17,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(398,4,NULL,NULL,2,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(403,9,NULL,NULL,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(406,8,NULL,NULL,11,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(411,9,NULL,NULL,21,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(412,10,NULL,NULL,2,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(417,2,NULL,NULL,19,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\"]'),(419,9,NULL,NULL,12,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\"]'),(424,6,NULL,NULL,8,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(426,10,NULL,NULL,28,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\"]'),(430,4,NULL,NULL,3,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(435,3,NULL,NULL,2,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\"]'),(442,6,NULL,NULL,27,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(445,7,NULL,NULL,12,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(447,2,NULL,NULL,9,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(448,8,NULL,NULL,26,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(449,4,NULL,NULL,18,5.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\"]'),(471,5,NULL,NULL,20,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(472,4,NULL,NULL,17,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(481,7,NULL,NULL,23,1.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-10.jpg\"]'),(495,7,NULL,NULL,7,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(504,6,NULL,NULL,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(508,10,NULL,NULL,13,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(516,10,NULL,NULL,1,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(519,1,NULL,NULL,8,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(521,3,NULL,NULL,15,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(523,2,NULL,NULL,18,2.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-9.jpg\"]'),(525,4,NULL,NULL,27,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(526,8,NULL,NULL,16,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(540,10,NULL,NULL,4,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(544,9,NULL,NULL,1,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(547,8,NULL,NULL,9,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(550,9,NULL,NULL,4,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\"]'),(555,6,NULL,NULL,1,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(558,6,NULL,NULL,19,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(560,5,NULL,NULL,16,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(561,9,NULL,NULL,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(564,9,NULL,NULL,5,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(571,9,NULL,NULL,16,4.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(574,7,NULL,NULL,27,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(575,1,NULL,NULL,3,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\"]'),(580,5,NULL,NULL,29,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(608,8,NULL,NULL,14,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(614,9,NULL,NULL,8,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(638,1,NULL,NULL,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\"]'),(655,10,NULL,NULL,29,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(657,6,NULL,NULL,23,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(665,3,NULL,NULL,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\"]'),(679,4,NULL,NULL,4,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(689,1,NULL,NULL,14,2.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-9.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(694,4,NULL,NULL,1,5.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-6.jpg\"]'),(695,5,NULL,NULL,8,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(699,3,NULL,NULL,25,4.00,'Clean & perfect source code','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-7.jpg\"]'),(705,4,NULL,NULL,24,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-8.jpg\"]'),(719,6,NULL,NULL,30,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(727,8,NULL,NULL,12,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(744,1,NULL,NULL,4,3.00,'Best ecommerce CMS online store!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(745,8,NULL,NULL,21,1.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(783,7,NULL,NULL,11,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\"]'),(809,3,NULL,NULL,12,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(820,5,NULL,NULL,25,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(831,6,NULL,NULL,26,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-11.jpg\"]'),(853,3,NULL,NULL,30,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-11.jpg\"]'),(855,4,NULL,NULL,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-8.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(913,3,NULL,NULL,23,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-8.jpg\"]'),(924,2,NULL,NULL,14,3.00,'Good app, good backup service and support. Good documentation.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(929,2,NULL,NULL,23,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-7.jpg\",\"grocery\\/products\\/product-10.jpg\"]'),(932,5,NULL,NULL,6,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-1.jpg\",\"grocery\\/products\\/product-3.jpg\"]'),(971,7,NULL,NULL,4,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-2.jpg\",\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-5.jpg\",\"grocery\\/products\\/product-9.jpg\"]'),(977,2,NULL,NULL,13,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-10-20 21:51:40','2024-10-20 21:51:40','[\"grocery\\/products\\/product-3.jpg\",\"grocery\\/products\\/product-4.jpg\",\"grocery\\/products\\/product-6.jpg\",\"grocery\\/products\\/product-7.jpg\"]');
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-10-20 21:51:32','2024-10-20 21:51:32');
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-10-20 21:51:32','2024-10-20 21:51:32'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-10-20 21:51:32','2024-10-20 21:51:32'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-10-20 21:51:32','2024-10-20 21:51:32');
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
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL);
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
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(2,'Performance',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(3,'Battery',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(4,'Display',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL);
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
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL),(2,'Technical Specification',NULL,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,NULL);
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
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL);
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
INSERT INTO `ec_tax_products` VALUES (1,5),(1,7),(1,10),(1,12),(1,13),(1,15),(1,17),(1,20),(1,22),(1,23),(1,25),(2,8),(2,9),(2,14),(2,16),(2,19),(2,24),(2,26),(2,27),(2,28),(2,29),(3,1),(3,2),(3,3),(3,4),(3,6),(3,11),(3,18),(3,21),(3,30);
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(2,'None',0.000000,2,'published','2024-10-20 21:51:32','2024-10-20 21:51:32'),(3,'Import Tax',15.000000,3,'published','2024-10-20 21:51:32','2024-10-20 21:51:32');
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
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL),(2,'Payment',1,'published','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL),(3,'Order &amp; Returns',2,'published','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL);
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-10-20 21:51:29','2024-10-20 21:51:29'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-10-20 21:51:29','2024-10-20 21:51:29');
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
INSERT INTO `galleries` VALUES (1,'Perfect','ME.\' \'You!\' said the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said to Alice, and she drew herself up on tiptoe, and peeped over the jury-box with the Gryphon.',1,0,'main/galleries/1.jpg',1,'published','2024-10-20 21:51:39','2024-10-20 21:51:39'),(2,'New Day','And the Eaglet bent down its head impatiently, and walked a little hot tea upon its nose. The Dormouse again took a minute or two, looking for the hot day made her next remark. \'Then the Dormouse.',1,0,'main/galleries/2.jpg',1,'published','2024-10-20 21:51:39','2024-10-20 21:51:39'),(3,'Happy Day','Alice said with a great hurry to change the subject of conversation. While she was now about a foot high: then she looked up, but it makes rather a handsome pig, I think.\' And she kept tossing the.',1,0,'main/galleries/3.jpg',1,'published','2024-10-20 21:51:39','2024-10-20 21:51:39'),(4,'Nature','The three soldiers wandered about in the sun. (IF you don\'t know one,\' said Alice. \'Oh, don\'t bother ME,\' said Alice loudly. \'The idea of the garden, and marked, with one finger, as he came, \'Oh!.',1,0,'main/galleries/4.jpg',1,'published','2024-10-20 21:51:39','2024-10-20 21:51:39'),(5,'Morning','Mock Turtle went on at last, they must be Mabel after all, and I shall only look up in a mournful tone, \'he won\'t do a thing before, and she tried to look about her and to hear his history. I must.',1,0,'main/galleries/5.jpg',1,'published','2024-10-20 21:51:39','2024-10-20 21:51:39');
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
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"The Mouse looked at it again: but he would not join the dance. \'\\\"What matters it how far we go?\\\" his scaly friend replied. \\\"There is another shore, you know, and he checked himself suddenly: the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never was so full of the table, half hoping that the reason is--\' here the conversation dropped, and the Mock.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice could bear: she got used to it!\' pleaded poor Alice in a tone of delight, and rushed at the stick, running a very difficult game indeed. The players all played at once in her brother\'s Latin.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"However, I\'ve got to the table for it, he was obliged to have no idea what you\'re talking about,\' said Alice. \'Well, I should think!\' (Dinah was the fan she was talking. Alice could bear: she got.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Alice did not come the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Hatter. This piece of rudeness was more and more faintly came, carried on the ground near the door, she.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:51:39','2024-10-20 21:51:39'),(2,'[{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"The Mouse looked at it again: but he would not join the dance. \'\\\"What matters it how far we go?\\\" his scaly friend replied. \\\"There is another shore, you know, and he checked himself suddenly: the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never was so full of the table, half hoping that the reason is--\' here the conversation dropped, and the Mock.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice could bear: she got used to it!\' pleaded poor Alice in a tone of delight, and rushed at the stick, running a very difficult game indeed. The players all played at once in her brother\'s Latin.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"However, I\'ve got to the table for it, he was obliged to have no idea what you\'re talking about,\' said Alice. \'Well, I should think!\' (Dinah was the fan she was talking. Alice could bear: she got.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Alice did not come the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Hatter. This piece of rudeness was more and more faintly came, carried on the ground near the door, she.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:51:39','2024-10-20 21:51:39'),(3,'[{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"The Mouse looked at it again: but he would not join the dance. \'\\\"What matters it how far we go?\\\" his scaly friend replied. \\\"There is another shore, you know, and he checked himself suddenly: the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never was so full of the table, half hoping that the reason is--\' here the conversation dropped, and the Mock.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice could bear: she got used to it!\' pleaded poor Alice in a tone of delight, and rushed at the stick, running a very difficult game indeed. The players all played at once in her brother\'s Latin.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"However, I\'ve got to the table for it, he was obliged to have no idea what you\'re talking about,\' said Alice. \'Well, I should think!\' (Dinah was the fan she was talking. Alice could bear: she got.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Alice did not come the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Hatter. This piece of rudeness was more and more faintly came, carried on the ground near the door, she.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:51:39','2024-10-20 21:51:39'),(4,'[{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"The Mouse looked at it again: but he would not join the dance. \'\\\"What matters it how far we go?\\\" his scaly friend replied. \\\"There is another shore, you know, and he checked himself suddenly: the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never was so full of the table, half hoping that the reason is--\' here the conversation dropped, and the Mock.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice could bear: she got used to it!\' pleaded poor Alice in a tone of delight, and rushed at the stick, running a very difficult game indeed. The players all played at once in her brother\'s Latin.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"However, I\'ve got to the table for it, he was obliged to have no idea what you\'re talking about,\' said Alice. \'Well, I should think!\' (Dinah was the fan she was talking. Alice could bear: she got.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Alice did not come the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Hatter. This piece of rudeness was more and more faintly came, carried on the ground near the door, she.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:51:39','2024-10-20 21:51:39'),(5,'[{\"img\":\"main\\/galleries\\/5.jpg\",\"description\":\"The Mouse looked at it again: but he would not join the dance. \'\\\"What matters it how far we go?\\\" his scaly friend replied. \\\"There is another shore, you know, and he checked himself suddenly: the.\"},{\"img\":\"main\\/galleries\\/3.jpg\",\"description\":\"He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never was so full of the table, half hoping that the reason is--\' here the conversation dropped, and the Mock.\"},{\"img\":\"main\\/galleries\\/2.jpg\",\"description\":\"Alice could bear: she got used to it!\' pleaded poor Alice in a tone of delight, and rushed at the stick, running a very difficult game indeed. The players all played at once in her brother\'s Latin.\"},{\"img\":\"main\\/galleries\\/1.jpg\",\"description\":\"However, I\'ve got to the table for it, he was obliged to have no idea what you\'re talking about,\' said Alice. \'Well, I should think!\' (Dinah was the fan she was talking. Alice could bear: she got.\"},{\"img\":\"main\\/galleries\\/4.jpg\",\"description\":\"Alice did not come the same thing, you know.\' \'And what are YOUR shoes done with?\' said the Hatter. This piece of rudeness was more and more faintly came, carried on the ground near the door, she.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-10-20 21:51:39','2024-10-20 21:51:39');
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
INSERT INTO `language_meta` VALUES (1,'en_US','d66388ab9ceca862c658bc5a458b26d5',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','9debaecd364a1fd9fa6429dee25e1267',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','caaedb2233c3c2f671912d42ecc60cb7',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','f6c34c3960e06c89993ceeee92dfd873',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','8dc25c111bf92e7b2f3a3530b3a6e2b9',3,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',16004,'main/general/404.png','[]','2024-10-20 21:51:27','2024-10-20 21:51:27',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-10-20 21:51:27','2024-10-20 21:51:27',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-10-20 21:51:27','2024-10-20 21:51:27',NULL,'public'),(4,0,'auth-banner','auth-banner',2,'image/png',48468,'main/general/auth-banner.png','[]','2024-10-20 21:51:27','2024-10-20 21:51:27',NULL,'public'),(5,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(6,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(7,0,'cta-shape-1','cta-shape-1',2,'image/png',23294,'main/general/cta-shape-1.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(8,0,'cta-shape-2','cta-shape-2',2,'image/png',16820,'main/general/cta-shape-2.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(9,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',1822,'main/general/favicon.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(11,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(12,0,'logo-white','logo-white',2,'image/png',21450,'main/general/logo-white.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(13,0,'logo','logo',2,'image/png',22334,'main/general/logo.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(15,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(16,0,'preloader-icon','preloader-icon',2,'image/png',4160,'main/general/preloader-icon.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(17,0,'signature','signature',2,'image/png',2330,'main/general/signature.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(18,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-10-20 21:51:28','2024-10-20 21:51:28',NULL,'public'),(29,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(30,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(31,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(32,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(33,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(34,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(35,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(36,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-10-20 21:51:29','2024-10-20 21:51:29',NULL,'public'),(37,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(38,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(39,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(40,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(41,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(42,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(43,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-10-20 21:51:30','2024-10-20 21:51:30',NULL,'public'),(44,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-10-20 21:51:32','2024-10-20 21:51:32',NULL,'public'),(45,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(46,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(47,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(48,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(49,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(50,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(51,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(52,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(53,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(54,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(55,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(56,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(57,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(58,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(59,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(60,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(61,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(62,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(63,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(64,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(65,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(66,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(67,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-10-20 21:51:33','2024-10-20 21:51:33',NULL,'public'),(68,0,'1','1',7,'image/png',9022,'main/stores/1.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(69,0,'10','10',7,'image/png',4384,'main/stores/10.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(70,0,'11','11',7,'image/png',4706,'main/stores/11.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(71,0,'12','12',7,'image/png',5075,'main/stores/12.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(72,0,'13','13',7,'image/png',3700,'main/stores/13.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(73,0,'14','14',7,'image/png',4239,'main/stores/14.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(74,0,'15','15',7,'image/png',5304,'main/stores/15.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(75,0,'16','16',7,'image/png',4796,'main/stores/16.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(76,0,'17','17',7,'image/png',4919,'main/stores/17.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(77,0,'2','2',7,'image/png',8598,'main/stores/2.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(78,0,'3','3',7,'image/png',7888,'main/stores/3.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(79,0,'4','4',7,'image/png',8393,'main/stores/4.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(80,0,'5','5',7,'image/png',10159,'main/stores/5.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(81,0,'6','6',7,'image/png',10312,'main/stores/6.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(82,0,'7','7',7,'image/png',3764,'main/stores/7.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(83,0,'8','8',7,'image/png',4237,'main/stores/8.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(84,0,'9','9',7,'image/png',4096,'main/stores/9.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(85,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(86,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(87,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-10-20 21:51:34','2024-10-20 21:51:34',NULL,'public'),(88,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-10-20 21:51:35','2024-10-20 21:51:35',NULL,'public'),(89,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-10-20 21:51:35','2024-10-20 21:51:35',NULL,'public'),(90,0,'shape-1','shape-1',9,'image/png',1299,'grocery/sliders/shape-1.png','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(91,0,'shape-2','shape-2',9,'image/png',1379,'grocery/sliders/shape-2.png','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(92,0,'shape-3','shape-3',9,'image/png',1972,'grocery/sliders/shape-3.png','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(93,0,'shape-4','shape-4',9,'image/png',2115,'grocery/sliders/shape-4.png','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(94,0,'slider-1','slider-1',9,'image/png',10852,'grocery/sliders/slider-1.png','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(95,0,'1','1',10,'image/jpeg',4294,'grocery/product-categories/1.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(96,0,'2','2',10,'image/jpeg',4294,'grocery/product-categories/2.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(97,0,'3','3',10,'image/jpeg',4294,'grocery/product-categories/3.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(98,0,'4','4',10,'image/jpeg',4294,'grocery/product-categories/4.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(99,0,'5','5',10,'image/jpeg',4294,'grocery/product-categories/5.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(100,0,'6','6',10,'image/jpeg',4294,'grocery/product-categories/6.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(101,0,'product-1','product-1',11,'image/jpeg',9803,'grocery/products/product-1.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(102,0,'product-10','product-10',11,'image/jpeg',9803,'grocery/products/product-10.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(103,0,'product-11','product-11',11,'image/jpeg',9803,'grocery/products/product-11.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(104,0,'product-2','product-2',11,'image/jpeg',9803,'grocery/products/product-2.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(105,0,'product-3','product-3',11,'image/jpeg',9803,'grocery/products/product-3.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(106,0,'product-4','product-4',11,'image/jpeg',9803,'grocery/products/product-4.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(107,0,'product-5','product-5',11,'image/jpeg',9803,'grocery/products/product-5.jpg','[]','2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,'public'),(108,0,'product-6','product-6',11,'image/jpeg',9803,'grocery/products/product-6.jpg','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(109,0,'product-7','product-7',11,'image/jpeg',9803,'grocery/products/product-7.jpg','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(110,0,'product-8','product-8',11,'image/jpeg',9803,'grocery/products/product-8.jpg','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(111,0,'product-9','product-9',11,'image/jpeg',9803,'grocery/products/product-9.jpg','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(112,0,'1','1',12,'image/jpeg',15433,'main/video/1.jpg','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(113,0,'2','2',12,'image/jpeg',18347,'main/video/2.jpg','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(114,0,'video-1','video-1',12,'video/mp4',4959871,'main/video/video-1.mp4','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(115,0,'video-2','video-2',12,'video/mp4',1077550,'main/video/video-2.mp4','[]','2024-10-20 21:51:38','2024-10-20 21:51:38',NULL,'public'),(116,0,'1','1',13,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(117,0,'2','2',13,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(118,0,'slider-1','slider-1',13,'image/png',8207,'main/banners/slider-1.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(119,0,'slider-2','slider-2',13,'image/png',8497,'main/banners/slider-2.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(120,0,'slider-3','slider-3',13,'image/png',6239,'main/banners/slider-3.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(121,0,'1','1',14,'image/jpeg',5896,'grocery/banners/1.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(122,0,'2','2',14,'image/png',19187,'grocery/banners/2.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(123,0,'3','3',14,'image/png',18807,'grocery/banners/3.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(124,0,'1','1',15,'image/jpeg',4294,'main/galleries/1.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(125,0,'2','2',15,'image/jpeg',4294,'main/galleries/2.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(126,0,'3','3',15,'image/jpeg',4294,'main/galleries/3.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(127,0,'4','4',15,'image/jpeg',4294,'main/galleries/4.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(128,0,'5','5',15,'image/jpeg',4294,'main/galleries/5.jpg','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(129,0,'icon-1','icon-1',16,'image/png',4492,'main/contact/icon-1.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(130,0,'icon-2','icon-2',16,'image/png',5753,'main/contact/icon-2.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(131,0,'icon-3','icon-3',16,'image/png',5987,'main/contact/icon-3.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(132,0,'deal-shape-1','deal-shape-1',17,'image/png',15197,'grocery/shapes/deal-shape-1.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(133,0,'deal-shape-2','deal-shape-2',17,'image/png',134069,'grocery/shapes/deal-shape-2.png','[]','2024-10-20 21:51:39','2024-10-20 21:51:39',NULL,'public'),(134,0,'deal-shape-3','deal-shape-3',17,'image/png',15956,'grocery/shapes/deal-shape-3.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public'),(135,0,'deal-shape-4','deal-shape-4',17,'image/png',120401,'grocery/shapes/deal-shape-4.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public'),(136,0,'deal-shape-5','deal-shape-5',17,'image/png',4772,'grocery/shapes/deal-shape-5.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public'),(137,0,'deal-shape-6','deal-shape-6',17,'image/png',23623,'grocery/shapes/deal-shape-6.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public'),(138,0,'deal-shape-7','deal-shape-7',17,'image/png',9679,'grocery/shapes/deal-shape-7.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public'),(139,0,'line','line',18,'image/png',6598,'main/shapes/line.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public'),(140,0,'quote','quote',18,'image/png',592,'main/shapes/quote.png','[]','2024-10-20 21:51:40','2024-10-20 21:51:40',NULL,'public');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-10-20 21:51:27','2024-10-20 21:51:27',NULL),(2,0,'general',NULL,'general',1,'2024-10-20 21:51:27','2024-10-20 21:51:27',NULL),(3,0,'users',NULL,'users',1,'2024-10-20 21:51:28','2024-10-20 21:51:28',NULL),(4,0,'brands',NULL,'brands',1,'2024-10-20 21:51:29','2024-10-20 21:51:29',NULL),(5,0,'customers',NULL,'customers',1,'2024-10-20 21:51:29','2024-10-20 21:51:29',NULL),(6,0,'blog',NULL,'blog',1,'2024-10-20 21:51:32','2024-10-20 21:51:32',NULL),(7,0,'stores',NULL,'stores',1,'2024-10-20 21:51:34','2024-10-20 21:51:34',NULL),(8,0,'grocery',NULL,'grocery',0,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL),(11,0,'products',NULL,'products',8,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL),(12,0,'video',NULL,'video',1,'2024-10-20 21:51:38','2024-10-20 21:51:38',NULL),(13,0,'banners',NULL,'banners',1,'2024-10-20 21:51:39','2024-10-20 21:51:39',NULL),(14,0,'banners',NULL,'banners',8,'2024-10-20 21:51:39','2024-10-20 21:51:39',NULL),(15,0,'galleries',NULL,'galleries',1,'2024-10-20 21:51:39','2024-10-20 21:51:39',NULL),(16,0,'contact',NULL,'contact',1,'2024-10-20 21:51:39','2024-10-20 21:51:39',NULL),(17,0,'shapes',NULL,'shapes',8,'2024-10-20 21:51:39','2024-10-20 21:51:39',NULL),(18,0,'shapes',NULL,'shapes',1,'2024-10-20 21:51:40','2024-10-20 21:51:40',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-10-20 21:51:40','2024-10-20 21:51:40');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(9,1,7,3,'Botble\\Page\\Models\\Page','/brands',NULL,0,'Shop Brands',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(12,1,7,NULL,NULL,'/products/organic-cherry-tomatoes',NULL,0,'Product Detail',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(13,1,7,4,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(14,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(15,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(16,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(18,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(19,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(20,1,19,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(21,1,19,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(22,1,19,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(23,1,19,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(24,1,19,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(25,1,19,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(26,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(29,1,26,NULL,NULL,'/blog/why-teamwork-really-makes-the-dream-work',NULL,0,'Blog Detail',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(30,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(32,2,0,11,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(33,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(34,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(35,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(37,3,0,9,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(38,3,0,10,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(39,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(40,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40'),(41,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-10-20 21:51:40','2024-10-20 21:51:40');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(2,'My Account','my-account','published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(3,'Information','information','published','2024-10-20 21:51:40','2024-10-20 21:51:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-10-20 21:51:37','2024-10-20 21:51:37'),(2,'faq_ids','[[1,2,3,5,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(3,'faq_ids','[[1,4,6,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(4,'faq_ids','[[1,2,3,6,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(5,'faq_ids','[[3,6,8,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(6,'faq_ids','[[1,3,8,9,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(7,'faq_ids','[[2,3,5,7,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(8,'faq_ids','[[4,6,7,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(9,'faq_ids','[[1,2,6,7,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(10,'faq_ids','[[2,5,6,8,9]]',9,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(11,'faq_ids','[[3,4,5,6,9]]',10,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(12,'faq_ids','[[4,7,8,9,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(13,'faq_ids','[[2,5,8,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(14,'faq_ids','[[1,3,5,8,9]]',13,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(15,'faq_ids','[[1,6,7,9,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(16,'faq_ids','[[1,2,4,5,7]]',15,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(17,'faq_ids','[[2,4,5,6,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(18,'faq_ids','[[1,3,4,7,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(19,'faq_ids','[[2,4,5,7,9]]',18,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(20,'faq_ids','[[1,2,3,5,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(21,'faq_ids','[[3,4,6,7,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(22,'faq_ids','[[5,6,8,9,10]]',21,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(23,'faq_ids','[[1,2,3,4,6]]',22,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(24,'faq_ids','[[2,3,4,7,8]]',23,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(25,'faq_ids','[[1,2,3,5,6]]',24,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(26,'faq_ids','[[1,2,7,9,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(27,'faq_ids','[[3,5,8,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(28,'faq_ids','[[5,6,7,8,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(29,'faq_ids','[[2,4,6,7,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(30,'faq_ids','[[3,5,6,7,10]]',29,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(31,'faq_ids','[[2,5,6,8,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-10-20 21:51:38','2024-10-20 21:51:38'),(32,'title','[\"Smartphone \\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-10-20 21:51:39','2024-10-20 21:51:39'),(33,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-10-20 21:51:39','2024-10-20 21:51:39'),(34,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-10-20 21:51:39','2024-10-20 21:51:39'),(35,'title','[\"HyperX Cloud II \\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-10-20 21:51:39','2024-10-20 21:51:39'),(36,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-10-20 21:51:39','2024-10-20 21:51:39'),(37,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-10-20 21:51:39','2024-10-20 21:51:39'),(38,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-10-20 21:51:40','2024-10-20 21:51:40'),(39,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-10-20 21:51:40','2024-10-20 21:51:40'),(40,'breadcrumb_style','[\"align-center\"]',7,'Botble\\Page\\Models\\Page','2024-10-20 21:51:40','2024-10-20 21:51:40');
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
INSERT INTO `mp_stores` VALUES (1,'GoPro','xdavis@example.org','+14159476528','58811 Lindgren Throughway','VC','Pennsylvania','Schinnershire',2,'main/stores/1.png',NULL,'main/stores/cover-3.png','Natus excepturi asperiores illum voluptatem. Molestiae accusantium accusamus placeat. Incidunt est voluptatem eaque aliquid in non. Eveniet dicta delectus optio iure nisi voluptatem qui. Labore laudantium quas blanditiis nam quia consequatur. Quos alias rerum ad nobis. Sint maxime iste asperiores vel id fugiat. Est molestiae mollitia commodi ut rerum minima sit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:36','2024-10-20 21:51:36',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','emelia.yundt@example.org','+18125832491','2794 Hegmann Greens Suite 307','SN','New Mexico','West Shaniachester',5,'main/stores/2.png',NULL,'main/stores/cover-4.png','Sed error eos rerum. Maxime quas at impedit hic. Soluta impedit impedit sint quia. Quis officiis modi dicta consequatur officia temporibus. Rerum nemo facere doloremque aliquam. Ea dicta illum quia aut quia. Voluptatum eos ut dolores quidem voluptates quae. Officiis repellendus exercitationem harum perferendis. Eos non saepe aliquid occaecati modi. Voluptatem autem sed qui velit explicabo odit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','watsica.gunnar@example.com','+16237098237','154 Brakus Drive Suite 176','TG','Montana','Port Robin',3,'main/stores/3.png',NULL,'main/stores/cover-4.png','Vero nam qui harum qui enim qui ducimus. Rerum pariatur possimus maxime ipsum accusantium in mollitia. Vel incidunt soluta aut ea fuga. Officia accusamus saepe rerum. Ad optio et in. Aperiam laborum et quis nobis perspiciatis magni quis. Inventore aut dolore sapiente et. Voluptatibus autem saepe et sed in beatae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','rory17@example.com','+14632869264','438 Abbie Village','BI','Indiana','Idellchester',7,'main/stores/4.png',NULL,'main/stores/cover-1.png','Quae eius aliquam debitis incidunt maiores laudantium. Qui aut repudiandae aspernatur amet ea dolores ut. Modi ipsa quas et non ut a vero dolor. Esse ipsum ad nam possimus et dicta. Quod omnis ut sit. A architecto asperiores quo ea maiores distinctio.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','izieme@example.net','+13469036775','349 Bartell Street Suite 393','LV','West Virginia','North Brennan',4,'main/stores/5.png',NULL,'main/stores/cover-3.png','Ut laudantium et tempora omnis magni ut ducimus. Qui alias vero labore ut omnis fugit dolore. Corrupti atque architecto dolor velit aut magnam et. Quam voluptas dolore ut. Exercitationem ut nam commodi mollitia corporis. Quo et necessitatibus tenetur eos possimus sed. Ratione non molestiae tenetur magnam corporis. Est tempore quasi blanditiis officia laboriosam dicta.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','dagmar30@example.org','+18487129990','29403 Sabina Viaduct','HK','Hawaii','West Angelinaville',2,'main/stores/6.png',NULL,'main/stores/cover-3.png','Eos ullam exercitationem repellat et. Deserunt eveniet voluptas odit sapiente neque veritatis eligendi. Facere fugit facilis debitis et voluptatem. Consequatur nihil quo vero aspernatur voluptates quo quia. Eos officiis repellendus eligendi sit sequi illum veritatis. Voluptate perspiciatis ex ratione iure incidunt et vel. Enim maiores fugit esse iste.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','carleton69@example.net','+13255248388','2582 Gracie Hollow Suite 644','AR','New Mexico','Vidalville',2,'main/stores/7.png',NULL,'main/stores/cover-5.png','Architecto omnis velit ut omnis consequatur. Quam ex ut consequuntur quod iusto. Nulla tenetur ut voluptas qui non consequuntur sint. Cupiditate est perspiciatis aut expedita esse maxime omnis. A et rem nobis autem quae quam. Rerum ut voluptatem veniam in possimus animi. Corporis voluptates non rerum animi expedita. Et ut et totam et itaque autem. Repellat dolorum accusamus et vero et eius.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','bridget61@example.org','+14753177884','2129 Pacocha Cape','OM','Wisconsin','Hahnview',4,'main/stores/8.png',NULL,'main/stores/cover-2.png','Quos natus voluptas mollitia sit tenetur. Cum ex quisquam quidem est eos ipsum quisquam id. Deleniti sed officiis laborum enim. Esse earum expedita consequatur earum voluptates voluptatem assumenda. Repellat minima debitis est sunt ipsum et. Exercitationem molestias quas delectus ut tenetur numquam. Dicta quaerat explicabo dolores blanditiis debitis eum est.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-10-20 21:51:37','2024-10-20 21:51:37',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$8lrnb44EimRHVQ1AikGd7ei1aD2i9QAURLey08S6szb0MwpFxJxo6','{\"name\":\"Prof. Dejon Kuhn III\",\"number\":\"+18013664546\",\"full_name\":\"Arlene Pollich\",\"description\":\"Chaim Bartell\"}','2024-10-20 21:51:35','2024-10-20 21:51:35','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$631kQJTnX5SJvXwDDTGEI.ALp0/p8yHJs3uobzPXh84lnbvDo5AAe','{\"name\":\"Prof. Carey Schaden\",\"number\":\"+16789212872\",\"full_name\":\"Elmo Block\",\"description\":\"Alexandro Waters\"}','2024-10-20 21:51:35','2024-10-20 21:51:35','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$FHh05CaZuPVu1.3CMuPrM.c9Justa9NItXQ0f/drgIKjCBmxTYqZ2','{\"name\":\"Neal Herzog\",\"number\":\"+18065714958\",\"full_name\":\"Prof. Serena Skiles\",\"description\":\"Dianna Weimann\"}','2024-10-20 21:51:35','2024-10-20 21:51:35','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$oi/ZhK0i534griLoc5dy.Osa04ctZINV5brNnyyGIMJCL8VqG2hYW','{\"name\":\"Mrs. Rubye Kessler\",\"number\":\"+16085851361\",\"full_name\":\"Prof. Ashly Johnston\",\"description\":\"Micheal Gottlieb\"}','2024-10-20 21:51:36','2024-10-20 21:51:36','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$JU3yxnOR.T/tLSN.Rf1mYe9YKmpKzo/Diq0ShTJr0vDAOzOIdwnkm','{\"name\":\"Felicita Jakubowski\",\"number\":\"+17657000190\",\"full_name\":\"Torey Gorczany\",\"description\":\"Ms. Kendra Glover PhD\"}','2024-10-20 21:51:36','2024-10-20 21:51:36','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$ZcfQG9eKRc7b4t8.6rmXJOjNzvAnCv34Lx82yhAcgENKWDQzKosHO','{\"name\":\"Benton Davis MD\",\"number\":\"+15742299242\",\"full_name\":\"Kaylee Durgan\",\"description\":\"Prof. Lisa Jacobi\"}','2024-10-20 21:51:36','2024-10-20 21:51:36','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$R9AY9OzW8pWslLeg1PqQR.911ypq6j7u4IDaOEF3lRj399NhxoSd2','{\"name\":\"Dr. Bryce Adams MD\",\"number\":\"+18508175404\",\"full_name\":\"Dr. Johnpaul Kris Sr.\",\"description\":\"Melyna McDermott\"}','2024-10-20 21:51:36','2024-10-20 21:51:36','bank_transfer',NULL);
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
INSERT INTO `pages` VALUES (1,'Home','[simple-slider customize_font_family_of_description=\"1\" font_family_of_description=\"Charm\" style=\"5\" key=\"home-slider\" shape_1=\"grocery/sliders/shape-1.png\" shape_2=\"grocery/sliders/shape-2.png\" shape_3=\"grocery/sliders/shape-3.png\" shape_4=\"grocery/sliders/shape-4.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ecommerce-categories category_ids=\"1,5,9,13,14,18\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" enable_lazy_loading=\"no\"][/ecommerce-categories][ecommerce-product-groups style=\"tabs\" title=\"Trending Products\" subtitle=\"All Product Shop\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-flash-sale style=\"2\" title=\"Grab the best Offer Of this Week!\" subtitle=\"Best Deals of the week!\" flash_sale_id=\"1\" limit=\"3\" background_image=\"grocery/banners/3.png\" enable_lazy_loading=\"yes\"][/ecommerce-flash-sale]<p> </p>[ecommerce-product-groups style=\"columns\" tabs=\"trending,top-rated\" limit=\"3\" ads=\"GA3K1VZWNMPF\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][testimonials style=\"3\" title=\"Our Happy Customers\" subtitle=\"Customer Reviews\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][ecommerce-products style=\"slider\" title=\"Bestsellers of the week\" subtitle=\" More to Discover\" category_ids=\"5\" limit=\"5\" with_sidebar=\"on\" ads_ids=\"3,4\" enable_lazy_loading=\"yes\"][/ecommerce-products][site-features style=\"4\" quantity=\"4\" title_1=\"Flexible Delivery\" icon_1=\"ti ti-truck-delivery\" title_2=\"100% Money Back\" icon_2=\"ti ti-currency-dollar\" title_3=\"Secure Payment\" icon_3=\"ti ti-credit-card\" title_4=\"24 Hour Support\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][app-downloads title=\"Get the app & get Your Groceries from home\" google_label=\"Google Play\" google_icon=\"ti ti-brand-google-play\" google_url=\"https://play.google.com/\" apple_label=\"Apple Store\" apple_icon=\"ti ti-brand-apple-filled\" apple_url=\"https://apps.apple.com/\" screenshot=\"main/general/cta-thumb-1.jpg\" shape_image_left=\"main/general/cta-shape-1.png\" shape_image_right=\"main/general/cta-shape-2.png\" enable_lazy_loading=\"yes\"][/app-downloads]',1,NULL,'full-width',NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(2,'Categories','[ads style=\"1\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories category_ids=\"1,5,9,13,14,18\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(3,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(7,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(9,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(10,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(11,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(12,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-05-09\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40'),(13,'Return Policy','<h1>Return Policy</h1>\n<p>Thank you for shopping at [Your Company Name]. We are committed to ensuring that you are completely satisfied with\n    your purchase. If for any reason you are not entirely happy with your purchase, we\'re here to help.</p>\n\n<h2>Returns</h2>\n<p>You have [X] calendar days to return an item from the date you received it.</p>\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must\n    be in the original packaging.</p>\n<p>Your item needs to have the receipt or proof of purchase.</p>\n\n<h2>Refunds</h2>\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will\n    immediately notify you on the status of your refund after inspecting the item.</p>\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will\n    receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\n\n<h2>Shipping</h2>\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are\n    non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n\n<h2>Contact Us</h2>\n<p>If you have any questions on how to return your item to us, contact us at:</p>\n<ul>\n    <li>Email: [Your Email Address]</li>\n    <li>Phone: [Your Phone Number]</li>\n    <li>Address: [Your Physical Address]</li>\n</ul>\n',1,NULL,NULL,NULL,'published','2024-10-20 21:51:40','2024-10-20 21:51:40');
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
INSERT INTO `post_categories` VALUES (5,1),(3,1),(4,2),(6,3),(2,3),(3,4),(2,4),(4,5),(2,5),(4,6),(3,6),(4,7),(5,8),(1,8),(4,9),(6,9),(3,10),(4,10),(5,11),(3,11),(3,12),(1,12),(4,13),(1,13),(5,14),(1,14),(4,15),(3,15),(2,16),(5,17),(1,17),(3,18),(4,18);
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
INSERT INTO `post_tags` VALUES (5,1),(8,1),(2,1),(1,2),(2,2),(7,3),(2,3),(1,3),(6,4),(1,4),(3,5),(6,5),(2,6),(7,7),(2,7),(3,7),(6,8),(1,8),(5,9),(1,9),(8,10),(1,10),(4,10),(4,11),(1,11),(6,11),(2,12),(6,12),(1,13),(2,13),(6,13),(3,14),(7,14),(4,14),(7,15),(5,15),(1,15),(8,16),(5,16),(3,16),(3,17),(5,17),(8,18),(1,18),(3,18);
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Queen\'s argument was, that her flamingo was gone across to the other arm curled round her at the Caterpillar\'s making such a dear quiet thing,\' Alice went on \'And how do you want to get to,\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',2077,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard of uglifying!\' it exclaimed. \'You know what they\'re like.\' \'I believe so,\' Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',515,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(3,'The Top 2020 Handbag Trends to Know','Alice quite jumped; but she added, to herself, \'to be going messages for a minute or two sobs choked his voice. \'Same as if he were trying to invent something!\' \'I--I\'m a little faster?\" said a.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',121,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(4,'How to Match the Color of Your Handbag With an Outfit','Alice. \'Only a thimble,\' said Alice as it was just in time to begin lessons: you\'d only have to ask the question?\' said the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',805,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(5,'How to Care for Leather Bags','Duchess, it had fallen into a graceful zigzag, and was just beginning to write with one elbow against the door, and tried to open her mouth; but she could see, as they lay sprawling about, reminding.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',161,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You gave us three or more; They all sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Queen, \'and take this child away with me,\' thought Alice, \'shall I.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',609,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(7,'Essential Qualities of Highly Successful Music','March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the other side of the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',132,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(8,'9 Things I Love About Shaving My Head','Elsie, Lacie, and Tillie; and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to be\"--or if you\'d like it put the Lizard in head downwards, and the m--\' But here, to.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1030,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(9,'Why Teamwork Really Makes The Dream Work','There was not even get her head to feel a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as it can be,\' said the Pigeon; \'but I know all the party went back for a little.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1358,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(10,'The World Caters to Average People','Alice, \'a great girl like you,\' (she might well say this), \'to go on crying in this affair, He trusts to you to sit down without being seen, when she was quite a commotion in the sea, some children.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',584,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(11,'The litigants on the screen are not actors','So she began nursing her child again, singing a sort of a tree in front of them, and he hurried off. Alice thought decidedly uncivil. \'But perhaps it was addressed to the Mock Turtle drew a long.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1716,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(12,'Hiring the Right Sales Team at the Right Time','I should be raving mad after all! I almost wish I could not think of nothing else to do, and in despair she put one arm out of that dark hall, and wander about among those beds of bright flowers and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',1545,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(13,'Fully Embrace the Return of 90s fashion','D,\' she added in a great hurry. \'You did!\' said the Dodo, \'the best way to hear her try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Gryphon, and, taking Alice by the little golden key and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',1559,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(14,'Exploring the English Countryside','This time Alice waited a little, \'From the Queen. \'I haven\'t opened it yet,\' said Alice; \'I must be kind to them,\' thought Alice, \'and those twelve creatures,\' (she was rather doubtful whether she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',2293,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(15,'Here’s the First Valentino’s New Makeup Collection','Kings and Queens, and among them Alice recognised the White Rabbit put on your shoes and stockings for you now, dears? I\'m sure I don\'t keep the same thing a bit!\' said the Caterpillar; and it set.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',2132,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(16,'Follow Your own Design process, whatever gets','March Hare said to herself, \'after such a noise inside, no one listening, this time, sat down again very sadly and quietly, and looked at Alice. \'I\'M not a mile high,\' said Alice. \'Anything you.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',1455,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(17,'Freelancer Days 2024, What’s new?','Caterpillar seemed to be lost, as she fell past it. \'Well!\' thought Alice to herself, \'I wonder if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no chance of getting.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-2.jpg',2138,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34'),(18,'Quality Foods Requirments For Every Human Body’s','March Hare interrupted, yawning. \'I\'m getting tired of being such a capital one for catching mice you can\'t think! And oh, my poor little thing was waving its right paw round, \'lives a Hatter: and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',2228,NULL,'2024-10-20 21:51:34','2024-10-20 21:51:34');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-10-20 21:51:29','2024-10-20 21:51:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','584f53e910daab984e448d3737933cce',NULL,'2024-10-20 21:51:40'),(2,'api_enabled','0',NULL,'2024-10-20 21:51:40'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2024-10-20 21:51:40'),(6,'theme','shofy-grocery',NULL,'2024-10-20 21:51:40'),(7,'show_admin_bar','1',NULL,'2024-10-20 21:51:40'),(8,'admin_favicon','main/general/favicon.png',NULL,'2024-10-20 21:51:40'),(9,'admin_logo','main/general/logo-white.png',NULL,'2024-10-20 21:51:40'),(10,'announcement_lazy_loading','1',NULL,'2024-10-20 21:51:40'),(11,'marketplace_requires_vendor_documentations_verification','0',NULL,'2024-10-20 21:51:40'),(12,'payment_cod_status','1',NULL,'2024-10-20 21:51:40'),(13,'payment_bank_transfer_status','1',NULL,'2024-10-20 21:51:40'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-10-20 21:51:40'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-10-20 21:51:40'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-10-20 21:51:40'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-10-20 21:51:40'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-10-20 21:51:40'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-10-20 21:51:40'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-10-20 21:51:40'),(21,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2024-10-20 21:51:40'),(22,'ecommerce_enable_product_specification','1',NULL,'2024-10-20 21:51:40'),(23,'permalink-botble-blog-models-post','blog',NULL,'2024-10-20 21:51:40'),(24,'permalink-botble-blog-models-category','blog',NULL,'2024-10-20 21:51:40'),(25,'language_hide_default','1',NULL,'2024-10-20 21:51:40'),(26,'language_switcher_display','dropdown',NULL,'2024-10-20 21:51:40'),(27,'language_display','all',NULL,'2024-10-20 21:51:40'),(28,'language_hide_languages','[]',NULL,'2024-10-20 21:51:40'),(29,'ecommerce_store_name','Shofy',NULL,'2024-10-20 21:51:40'),(30,'ecommerce_store_phone','1800979769',NULL,'2024-10-20 21:51:40'),(31,'ecommerce_store_address','502 New Street',NULL,'2024-10-20 21:51:40'),(32,'ecommerce_store_state','Brighton VIC',NULL,'2024-10-20 21:51:40'),(33,'ecommerce_store_city','Brighton VIC',NULL,'2024-10-20 21:51:40'),(34,'ecommerce_store_country','AU',NULL,'2024-10-20 21:51:40'),(35,'announcement_max_width',NULL,NULL,'2024-10-20 21:51:40'),(36,'announcement_text_color','#010f1c',NULL,'2024-10-20 21:51:40'),(37,'announcement_background_color','transparent',NULL,'2024-10-20 21:51:40'),(38,'announcement_placement','theme',NULL,'2024-10-20 21:51:40'),(39,'announcement_text_alignment','start',NULL,'2024-10-20 21:51:40'),(40,'announcement_dismissible','0',NULL,'2024-10-20 21:51:40'),(41,'simple_slider_using_assets','0',NULL,'2024-10-20 21:51:40'),(42,'theme-shofy-grocery-site_name','Shofy',NULL,NULL),(43,'theme-shofy-grocery-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(44,'theme-shofy-grocery-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(45,'theme-shofy-grocery-copyright','© %Y All Rights Reserved.',NULL,NULL),(46,'theme-shofy-grocery-tp_primary_font','Jost',NULL,NULL),(47,'theme-shofy-grocery-primary_color','#678E61',NULL,NULL),(48,'theme-shofy-grocery-favicon','main/general/favicon.png',NULL,NULL),(49,'theme-shofy-grocery-logo','main/general/logo.png',NULL,NULL),(50,'theme-shofy-grocery-logo_light','main/general/logo-white.png',NULL,NULL),(51,'theme-shofy-grocery-header_style','5',NULL,NULL),(52,'theme-shofy-grocery-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(53,'theme-shofy-grocery-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(54,'theme-shofy-grocery-hotline','8 800 332 65-66',NULL,NULL),(55,'theme-shofy-grocery-email','contact@fartmart.co',NULL,NULL),(56,'theme-shofy-grocery-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(57,'theme-shofy-grocery-homepage_id','1',NULL,NULL),(58,'theme-shofy-grocery-blog_page_id','5',NULL,NULL),(59,'theme-shofy-grocery-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(60,'theme-shofy-grocery-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(61,'theme-shofy-grocery-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(62,'theme-shofy-grocery-number_of_products_per_page','24',NULL,NULL),(63,'theme-shofy-grocery-number_of_cross_sale_product','6',NULL,NULL),(64,'theme-shofy-grocery-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(65,'theme-shofy-grocery-ecommerce_product_item_style','5',NULL,NULL),(66,'theme-shofy-grocery-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-grocery-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-grocery-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-grocery-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-grocery-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-grocery-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-grocery-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-grocery-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-grocery-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-grocery-section_title_shape_decorated','style-3',NULL,NULL),(76,'theme-shofy-grocery-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-grocery-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-grocery-login_background','main/general/auth-banner.png',NULL,NULL),(79,'theme-shofy-grocery-register_background','main/general/auth-banner.png',NULL,NULL),(80,'theme-shofy-grocery-merchant_return_policy_url','return-policy',NULL,NULL),(81,'theme-shofy-grocery-header_top_background_color','#fff',NULL,NULL),(82,'theme-shofy-grocery-header_top_text_color','#010f1c',NULL,NULL),(83,'theme-shofy-grocery-header_main_background_color','#678E61',NULL,NULL),(84,'theme-shofy-grocery-header_main_text_color','#fff',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Online <br> Grocery Store','grocery/sliders/slider-1.png','/products',NULL,0,'2024-10-20 21:51:37','2024-10-20 21:51:37');
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-10-20 21:51:37','2024-10-20 21:51:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:51:29','2024-10-20 21:51:29'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:51:29','2024-10-20 21:51:29'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:51:29','2024-10-20 21:51:29'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:51:29','2024-10-20 21:51:29'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-10-20 21:51:29','2024-10-20 21:51:29'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:51:32','2024-10-20 21:51:32'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:51:32','2024-10-20 21:51:32'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:51:32','2024-10-20 21:51:32'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:51:32','2024-10-20 21:51:32'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:51:32','2024-10-20 21:51:32'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-10-20 21:51:32','2024-10-20 21:51:32'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-10-20 21:51:34','2024-10-20 21:51:34'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-10-20 21:51:34','2024-10-20 21:51:34'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-10-20 21:51:37','2024-10-20 21:51:37'),(52,'frozen-food',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(53,'baby-food',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(54,'strawberry',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(55,'ice-cream',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(56,'meat-seafood',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(57,'chicken',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(58,'fish',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(59,'beef',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(60,'milk-dairy',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(61,'milk',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(62,'cheese',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(63,'yogurt',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(64,'beverages',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(65,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(66,'carrot',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(67,'tomato',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(68,'potato',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(69,'fruits',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(70,'banana',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(71,'mango',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-10-20 21:51:37','2024-10-20 21:51:37'),(72,'organic-apples',1,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(73,'whole-grain-bread',2,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(74,'free-range-eggs',3,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(75,'fresh-salmon-fillet-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(76,'organic-spinach',5,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(77,'grass-fed-ground-beef',6,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(78,'almond-milk',7,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(79,'quinoa-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(80,'avocado',9,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(81,'greek-yogurt',10,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(82,'sweet-potatoes',11,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(83,'organic-cherry-tomatoes-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(84,'honeycrisp-apples',13,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(85,'brown-rice',14,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(86,'organic-chicken-breast',15,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(87,'extra-virgin-olive-oil-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(88,'cucumber',17,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(89,'black-beans',18,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(90,'chia-seeds',19,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(91,'whole-wheat-pasta-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(92,'mixed-nuts',21,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(93,'green-tea-bags',22,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(94,'organic-strawberries',23,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(95,'quinoa-flour-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(96,'organic-baby-kale',25,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(97,'salad-dressing',26,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(98,'sweet-corn',27,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(99,'almond-butter-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:40'),(100,'whole-pineapple',29,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(101,'cottage-cheese',30,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:38','2024-10-20 21:51:38'),(102,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:51:39','2024-10-20 21:51:39'),(103,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:51:39','2024-10-20 21:51:39'),(104,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:51:39','2024-10-20 21:51:39'),(105,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:51:39','2024-10-20 21:51:39'),(106,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-10-20 21:51:39','2024-10-20 21:51:39'),(107,'home',1,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(108,'categories',2,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(109,'brands',3,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(110,'coupons',4,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(111,'blog',5,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(112,'contact',6,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(113,'faqs',7,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(114,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(115,'our-story',9,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(116,'careers',10,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(117,'shipping',11,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(118,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(119,'return-policy',13,'Botble\\Page\\Models\\Page','','2024-10-20 21:51:40','2024-10-20 21:51:40'),(120,'free-range-eggs',31,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(121,'fresh-salmon-fillet-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(122,'fresh-salmon-fillet-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(123,'organic-spinach',34,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(124,'organic-spinach',35,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(125,'organic-spinach',36,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(126,'almond-milk',37,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(127,'almond-milk',38,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(128,'honeycrisp-apples',39,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(129,'honeycrisp-apples',40,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(130,'whole-wheat-pasta-digital',41,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(131,'whole-wheat-pasta-digital',42,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(132,'whole-wheat-pasta-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(133,'green-tea-bags',44,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(134,'green-tea-bags',45,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(135,'green-tea-bags',46,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(136,'green-tea-bags',47,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(137,'organic-strawberries',48,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(138,'organic-strawberries',49,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(139,'quinoa-flour-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(140,'quinoa-flour-digital',51,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(141,'quinoa-flour-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(142,'whole-pineapple',53,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(143,'whole-pineapple',54,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(144,'whole-pineapple',55,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(145,'cottage-cheese',56,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40'),(146,'cottage-cheese',57,'Botble\\Ecommerce\\Models\\Product','products','2024-10-20 21:51:40','2024-10-20 21:51:40');
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
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-10-20 21:51:34','2024-10-20 21:51:34');
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
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/8.jpg','Developer','published','2024-10-20 21:51:37','2024-10-20 21:51:37'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/3.jpg','CO Founder','published','2024-10-20 21:51:37','2024-10-20 21:51:37'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/6.jpg','UI/UX Designer','published','2024-10-20 21:51:37','2024-10-20 21:51:37'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/2.jpg','Bank of America','published','2024-10-20 21:51:37','2024-10-20 21:51:37');
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
INSERT INTO `users` VALUES (1,'isobel.streich@mueller.org',NULL,'$2y$12$nuzDVRWu97QwJ0NVDAJuHO6UJthxXaNxeD2aDEN3REV2DVyPuMVwK',NULL,'2024-10-20 21:51:29','2024-10-20 21:51:29','Hudson','Rohan','admin',NULL,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-grocery',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-grocery',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-grocery',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-grocery',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(8,'NewsletterWidget','footer_top_sidebar','shofy-grocery',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(9,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-grocery',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(10,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-grocery',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(11,'BlogSearchWidget','blog_sidebar','shofy-grocery',1,'{\"id\":\"BlogSearchWidget\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(12,'BlogAboutMeWidget','blog_sidebar','shofy-grocery',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/5.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(13,'BlogPostsWidget','blog_sidebar','shofy-grocery',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(14,'BlogCategoriesWidget','blog_sidebar','shofy-grocery',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(15,'BlogTagsWidget','blog_sidebar','shofy-grocery',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(16,'ProductDetailInfoWidget','product_details_sidebar','shofy-grocery',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(17,'EcommerceBrands','products_listing_top_sidebar','shofy-grocery',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-10-20 21:51:40','2024-10-20 21:51:40'),(18,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-grocery',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,5,9,13,14,18],\"style\":\"grid\",\"display_children\":true}','2024-10-20 21:51:40','2024-10-20 21:51:40');
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

-- Dump completed on 2024-10-21 11:51:41
