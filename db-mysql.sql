CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `API_apiuser`
--

DROP TABLE IF EXISTS `API_apiuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_apiuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `password` varchar(500) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `department` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` int DEFAULT NULL,
  `user_role_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`),
  KEY `API_apiuser_user_role_id_49b4d01b_fk_API_userrole_id` (`user_role_id`),
  CONSTRAINT `API_apiuser_user_role_id_49b4d01b_fk_API_userrole_id` FOREIGN KEY (`user_role_id`) REFERENCES `API_userrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_apiuser`
--

LOCK TABLES `API_apiuser` WRITE;
/*!40000 ALTER TABLE `API_apiuser` DISABLE KEYS */;
INSERT INTO `API_apiuser` VALUES (1,'2022-04-18 13:03:18.000941','admin','01780159571','pbkdf2_sha256$320000$esj5EjGhQlyUfa2cUSDhM7$j30CX+48SeBeAJ9RMT85wjHxc/g1GuupH0d0F1eiom8=',NULL,'ranjanpaul66@gmail.com',NULL,NULL,0,'admin','2022-04-17 07:07:55.510096',NULL,1),(2,'2022-04-17 15:18:23.619265','admin','01780159572','pbkdf2_sha256$320000$esj5EjGhQlyUfa2cUSDhM7$j30CX+48SeBeAJ9RMT85wjHxc/g1GuupH0d0F1eiom8=',NULL,'ranjanpaul166@gmail.com',NULL,NULL,0,'admin','2022-04-17 07:39:26.556002',NULL,1),(3,NULL,'admin','01700000000','pbkdf2_sha256$320000$UFOys5vA0FnUNNfMi6uNzJ$Isb0V6jlsk/w2jD+ytO0wMnRdrVmEJhft1PhaQdm9xg=',NULL,'employee@gmail.com',NULL,NULL,0,'admin','2022-04-17 07:41:45.516609',NULL,1),(4,NULL,'admin','01700000001','pbkdf2_sha256$320000$rhKa7fU92uyYMnk1oyTapg$hHw9nqRqF2QzsmHoPBLc+osn0aAyj1UDjbS7h9nyQDI=',NULL,'employee1@gmail.com',NULL,NULL,0,'admin','2022-04-17 07:43:28.276768',NULL,1),(5,NULL,'admin','01700000002','pbkdf2_sha256$320000$CsU9AlWd2Tw1luWufY19Kq$niJIQWLr0S8ZU/nGIez8leQ2mUi4X6uuXJCVTdG7Sig=',NULL,'employee2@gmail.com',NULL,NULL,0,'admin','2022-04-17 07:44:12.594576',NULL,1),(6,'2022-04-17 08:55:06.790150','admin','01700000004','pbkdf2_sha256$320000$nEVn9ba5ww161hIMTKfFUL$SicnND/V/mGBUoKfApENklhyJCjLg+6RA15pwMKh3CA=',NULL,'employee3@gmail.com',NULL,NULL,0,'admin','2022-04-17 07:45:59.958484',NULL,1),(7,'2022-04-18 13:41:14.111346','employee','01700000005','pbkdf2_sha256$320000$lAkvQjlOcK1NbITMBr7Gcz$2bqGZ/ItkrvOehjYsbBIpZE5gro5V3Ea0giC2rrbfZU=',NULL,'employee4@gmail.com',NULL,NULL,0,'employee','2022-04-17 09:48:32.198913',NULL,3),(8,'2022-04-18 13:36:45.863847','employee','01700000006','pbkdf2_sha256$320000$slvgT2sH5DFMiW6HgtsZAl$pVeG4nHotRjcI+6fzAa+PuZ/idiwEccIVusPW9gAJvg=',NULL,'employee5@gmail.com',NULL,NULL,0,'employee','2022-04-17 09:48:58.444550',NULL,3),(9,'2022-04-18 13:00:28.554911','employee','01700000007','pbkdf2_sha256$320000$uwAjcBa92Ff9z0ZXyhHwei$U3FXorUDR0o1X1qdW9sTiqE2UYoD6U8jIqu466HdeII=',NULL,'employee6@gmail.com',NULL,NULL,0,'employee','2022-04-17 09:49:27.338878',NULL,3),(10,'2022-04-18 13:35:32.841580','employee','01700000008','pbkdf2_sha256$320000$6QQmqdIUk5JudP5e8Sgfws$Pces5MzZOtoACv6PDhi5OWUYQfAtpSmrar6U86PG/94=',NULL,'employee8@gmail.com',NULL,NULL,0,'employee','2022-04-17 09:52:41.142649',NULL,3),(11,'2022-04-18 13:09:39.029380','restaurent','01700000010','pbkdf2_sha256$320000$VIbaxoQkBdT9hePpxIJt1s$fH8ct83ccPeMNsPg6DBPQT9XFc6BzpIAJ7geLd/3PT8=',NULL,'restaurent@gmail.com',NULL,NULL,0,'restaurent','2022-04-17 11:44:43.684257',NULL,2),(12,'2022-04-18 13:10:25.022799','restaurent 2','01700000011','pbkdf2_sha256$320000$dnrimJSBw4IEi8QIMXzbFd$C9P+mxlSXIe08SG/TQggDOK+T/pr+0u16In9/jSyj6M=',NULL,'restaurent1@gmail.com',NULL,NULL,0,'restaurent','2022-04-17 12:39:22.830385',NULL,2),(13,'2022-04-18 13:14:03.414205','restaurent 3','01700000012','pbkdf2_sha256$320000$awwkxrBt3cBCgtruohxwax$BoRsNY/o133007/6R/hJX900h6Z96guYwHSkpl94+PY=',NULL,'restaurent3@gmail.com',NULL,NULL,0,'restaurent','2022-04-17 15:17:22.261509',NULL,2),(14,'2022-04-18 13:15:59.213043','restaurent 2','01700000013','pbkdf2_sha256$320000$RlWRj27y92w6ND2eRQEstf$7xbmZe+k4dyd616ZEA2qr/ek6AMgHY1N/gtsM5GjCw4=',NULL,'restaurent2@gmail.com',NULL,NULL,0,'restaurent','2022-04-18 13:15:25.460179',NULL,2);
/*!40000 ALTER TABLE `API_apiuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_apiuser_groups`
--

DROP TABLE IF EXISTS `API_apiuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_apiuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apiuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `API_apiuser_groups_apiuser_id_group_id_2945a28f_uniq` (`apiuser_id`,`group_id`),
  KEY `API_apiuser_groups_group_id_4c7344cb_fk_auth_group_id` (`group_id`),
  CONSTRAINT `API_apiuser_groups_apiuser_id_eb664eba_fk_API_apiuser_id` FOREIGN KEY (`apiuser_id`) REFERENCES `API_apiuser` (`id`),
  CONSTRAINT `API_apiuser_groups_group_id_4c7344cb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_apiuser_groups`
--

LOCK TABLES `API_apiuser_groups` WRITE;
/*!40000 ALTER TABLE `API_apiuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `API_apiuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_apiuser_user_permissions`
--

DROP TABLE IF EXISTS `API_apiuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_apiuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apiuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `API_apiuser_user_permiss_apiuser_id_permission_id_ae7bf36b_uniq` (`apiuser_id`,`permission_id`),
  KEY `API_apiuser_user_per_permission_id_04121655_fk_auth_perm` (`permission_id`),
  CONSTRAINT `API_apiuser_user_per_apiuser_id_abc5d61d_fk_API_apius` FOREIGN KEY (`apiuser_id`) REFERENCES `API_apiuser` (`id`),
  CONSTRAINT `API_apiuser_user_per_permission_id_04121655_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_apiuser_user_permissions`
--

LOCK TABLES `API_apiuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `API_apiuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `API_apiuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_menu`
--

DROP TABLE IF EXISTS `API_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menus` longtext NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` int NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `restaurant_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `vote_count` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `API_menu_restaurant_id_date_a768c536_uniq` (`restaurant_id`,`date`),
  KEY `API_menu_user_id_d1e40755_fk_API_apiuser_id` (`user_id`),
  CONSTRAINT `API_menu_restaurant_id_fdb7d2b8_fk_API_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `API_restaurant` (`id`),
  CONSTRAINT `API_menu_user_id_d1e40755_fk_API_apiuser_id` FOREIGN KEY (`user_id`) REFERENCES `API_apiuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_menu`
--

LOCK TABLES `API_menu` WRITE;
/*!40000 ALTER TABLE `API_menu` DISABLE KEYS */;
INSERT INTO `API_menu` VALUES (11,'Spicy Frid Rice,Chicken,Dal','2022-04-18','2022-04-18 13:10:04.720292',11,'2022-04-18 13:41:32.907996',NULL,6,11,1),(12,'Frid Rice,Chicken,Dal','2022-04-18','2022-04-18 13:11:40.669428',12,'2022-04-18 13:11:40.669452',NULL,7,12,0),(13,'Pasta,Chicken,Pokora','2022-04-18','2022-04-18 13:14:19.832799',13,'2022-04-18 13:14:19.832828',NULL,8,13,3),(14,'Veg: Dal Makhani,Chicken,Pokora','2022-04-18','2022-04-18 13:16:54.781044',14,'2022-04-18 13:37:11.769065',NULL,9,14,0),(15,'Frid Rice,Chicken,Dal','2022-04-17','2022-04-18 13:10:04.720292',11,'2022-04-18 13:41:32.907996',NULL,6,11,1),(16,'Spicy Frid Rice,Chicken,Dal','2022-04-17','2022-04-18 13:10:04.720292',12,'2022-04-18 13:41:32.907996',NULL,7,12,0),(17,'Veg: Dal Makhani,Chicken,Pokora','2022-04-17','2022-04-18 13:41:32.907996',14,'2022-04-18 13:41:32.907996',NULL,8,14,2),(18,'Frid Rice,Chicken,Dal','2022-04-16','2022-04-18 13:10:04.720292',11,'2022-04-18 13:41:32.907996',NULL,6,11,1),(19,'Spicy Frid Rice,Chicken,Dal','2022-04-16','2022-04-18 13:10:04.720292',12,'2022-04-18 13:41:32.907996',NULL,7,12,0),(20,'Veg: Dal Makhani,Chicken,Pokora','2022-04-16','2022-04-18 13:41:32.907996',14,'2022-04-18 13:41:32.907996',NULL,8,14,2);
/*!40000 ALTER TABLE `API_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_restaurant`
--

DROP TABLE IF EXISTS `API_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_restaurant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `API_restaurant_user_id_ef308c94_uniq` (`user_id`),
  CONSTRAINT `API_restaurant_user_id_ef308c94_fk_API_apiuser_id` FOREIGN KEY (`user_id`) REFERENCES `API_apiuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_restaurant`
--

LOCK TABLES `API_restaurant` WRITE;
/*!40000 ALTER TABLE `API_restaurant` DISABLE KEYS */;
INSERT INTO `API_restaurant` VALUES (6,'Dhaka Blue one','2022-04-18 13:05:53.955175',1,NULL,11),(7,'Chittagong 5 stars','2022-04-18 13:06:34.922086',1,NULL,12),(8,'Khulna 5 stars','2022-04-18 13:06:50.584550',1,NULL,13),(9,'Khulna 5 stars','2022-04-18 13:15:40.928435',1,NULL,14);
/*!40000 ALTER TABLE `API_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_userrole`
--

DROP TABLE IF EXISTS `API_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_userrole` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_userrole`
--

LOCK TABLES `API_userrole` WRITE;
/*!40000 ALTER TABLE `API_userrole` DISABLE KEYS */;
INSERT INTO `API_userrole` VALUES (1,'super admin','2021-05-11 14:53:49.114969','2021-05-11 14:53:49.114969'),(2,'resturent user','2021-05-11 14:53:49.114969','2021-05-11 14:53:49.114969'),(3,'employee','2021-05-11 14:53:49.114969','2021-05-11 14:53:49.114969');
/*!40000 ALTER TABLE `API_userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_votebyuser`
--

DROP TABLE IF EXISTS `API_votebyuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_votebyuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `selected_menu_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `API_votebyuser_selected_menu_id_date_created_by_40a4b7cc_uniq` (`selected_menu_id`,`date`,`created_by`),
  CONSTRAINT `API_votebyuser_selected_menu_id_39d58d37_fk_API_menu_id` FOREIGN KEY (`selected_menu_id`) REFERENCES `API_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_votebyuser`
--

LOCK TABLES `API_votebyuser` WRITE;
/*!40000 ALTER TABLE `API_votebyuser` DISABLE KEYS */;
INSERT INTO `API_votebyuser` VALUES (1,'2022-04-18',14,'2022-04-18 13:34:51.661619',9),(2,'2022-04-18',14,'2022-04-18 13:36:11.139346',10),(3,'2022-04-18',11,'2022-04-18 13:37:11.778232',8),(4,'2022-04-18',14,'2022-04-18 13:41:32.912471',7);
/*!40000 ALTER TABLE `API_votebyuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `API_winnerrestaurant`
--

DROP TABLE IF EXISTS `API_winnerrestaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `API_winnerrestaurant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `selected_menu` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `date` date NOT NULL,
  `menus` varchar(250) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `API_winnerrestaurant_restaurant_id_date_00d75060_uniq` (`restaurant_id`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `API_winnerrestaurant`
--

LOCK TABLES `API_winnerrestaurant` WRITE;
/*!40000 ALTER TABLE `API_winnerrestaurant` DISABLE KEYS */;
INSERT INTO `API_winnerrestaurant` VALUES (1,17,8,'2022-04-17','menus','restaurant_name'),(2,20,8,'2022-04-16','menus','restaurant_name'),(3,11,6,'2022-04-18','Spicy Frid Rice,Chicken,Dal','Dhaka Blue one');
/*!40000 ALTER TABLE `API_winnerrestaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add api user',6,'add_apiuser'),(22,'Can change api user',6,'change_apiuser'),(23,'Can delete api user',6,'delete_apiuser'),(24,'Can view api user',6,'view_apiuser'),(25,'Can add user role',7,'add_userrole'),(26,'Can change user role',7,'change_userrole'),(27,'Can delete user role',7,'delete_userrole'),(28,'Can view user role',7,'view_userrole'),(29,'Can add restaurant',8,'add_restaurant'),(30,'Can change restaurant',8,'change_restaurant'),(31,'Can delete restaurant',8,'delete_restaurant'),(32,'Can view restaurant',8,'view_restaurant'),(33,'Can add menu',9,'add_menu'),(34,'Can change menu',9,'change_menu'),(35,'Can delete menu',9,'delete_menu'),(36,'Can view menu',9,'view_menu'),(37,'Can add vote by user',10,'add_votebyuser'),(38,'Can change vote by user',10,'change_votebyuser'),(39,'Can delete vote by user',10,'delete_votebyuser'),(40,'Can view vote by user',10,'view_votebyuser'),(41,'Can add winner restaurant',11,'add_winnerrestaurant'),(42,'Can change winner restaurant',11,'change_winnerrestaurant'),(43,'Can delete winner restaurant',11,'delete_winnerrestaurant'),(44,'Can view winner restaurant',11,'view_winnerrestaurant'),(45,'Can add blacklisted token',12,'add_blacklistedtoken'),(46,'Can change blacklisted token',12,'change_blacklistedtoken'),(47,'Can delete blacklisted token',12,'delete_blacklistedtoken'),(48,'Can view blacklisted token',12,'view_blacklistedtoken'),(49,'Can add outstanding token',13,'add_outstandingtoken'),(50,'Can change outstanding token',13,'change_outstandingtoken'),(51,'Can delete outstanding token',13,'delete_outstandingtoken'),(52,'Can view outstanding token',13,'view_outstandingtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_API_apiuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_API_apiuser_id` FOREIGN KEY (`user_id`) REFERENCES `API_apiuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'API','apiuser'),(9,'API','menu'),(8,'API','restaurant'),(7,'API','userrole'),(10,'API','votebyuser'),(11,'API','winnerrestaurant'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(12,'token_blacklist','blacklistedtoken'),(13,'token_blacklist','outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-16 15:56:01.579389'),(2,'contenttypes','0002_remove_content_type_name','2022-04-16 15:56:01.631798'),(3,'auth','0001_initial','2022-04-16 15:56:01.840833'),(4,'auth','0002_alter_permission_name_max_length','2022-04-16 15:56:01.880784'),(5,'auth','0003_alter_user_email_max_length','2022-04-16 15:56:01.903736'),(6,'auth','0004_alter_user_username_opts','2022-04-16 15:56:01.913162'),(7,'auth','0005_alter_user_last_login_null','2022-04-16 15:56:01.922281'),(8,'auth','0006_require_contenttypes_0002','2022-04-16 15:56:01.926659'),(9,'auth','0007_alter_validators_add_error_messages','2022-04-16 15:56:01.935753'),(10,'auth','0008_alter_user_username_max_length','2022-04-16 15:56:01.946037'),(11,'auth','0009_alter_user_last_name_max_length','2022-04-16 15:56:01.955725'),(12,'auth','0010_alter_group_name_max_length','2022-04-16 15:56:01.997520'),(13,'auth','0011_update_proxy_permissions','2022-04-16 15:56:02.005928'),(14,'auth','0012_alter_user_first_name_max_length','2022-04-16 15:56:02.013840'),(15,'API','0001_initial','2022-04-16 15:56:02.347969'),(16,'admin','0001_initial','2022-04-16 15:56:02.468292'),(17,'admin','0002_logentry_remove_auto_add','2022-04-16 15:56:02.484417'),(18,'admin','0003_logentry_add_action_flag_choices','2022-04-16 15:56:02.499045'),(19,'sessions','0001_initial','2022-04-16 15:56:02.533898'),(20,'API','0002_userrole_apiuser_user_role','2022-04-16 16:02:05.035065'),(21,'API','0003_restaurant_menu','2022-04-16 17:26:01.757757'),(22,'API','0004_menu_vote_count_votebyuser','2022-04-16 17:36:08.803840'),(23,'API','0005_votebyuser_created_at_votebyuser_created_by_and_more','2022-04-17 12:08:25.652389'),(24,'API','0006_winnerrestaurant','2022-04-18 03:36:32.873515'),(25,'token_blacklist','0001_initial','2022-04-18 04:53:52.621990'),(26,'token_blacklist','0002_outstandingtoken_jti_hex','2022-04-18 04:53:52.676268'),(27,'token_blacklist','0003_auto_20171017_2007','2022-04-18 04:53:52.712446'),(28,'token_blacklist','0004_auto_20171017_2013','2022-04-18 04:53:52.764645'),(29,'token_blacklist','0005_remove_outstandingtoken_jti','2022-04-18 04:53:52.799926'),(30,'token_blacklist','0006_auto_20171017_2113','2022-04-18 04:53:52.823528'),(31,'token_blacklist','0007_auto_20171017_2214','2022-04-18 04:53:52.947892'),(32,'token_blacklist','0008_migrate_to_bigautofield','2022-04-18 04:53:53.112431'),(33,'token_blacklist','0010_fix_migrate_to_bigautofield','2022-04-18 04:53:53.135464'),(34,'token_blacklist','0011_linearizes_history','2022-04-18 04:53:53.140381'),(35,'token_blacklist','0012_alter_outstandingtoken_user','2022-04-18 04:53:53.153569'),(36,'API','0007_winnerrestaurant_menus','2022-04-18 14:19:00.709903'),(37,'API','0008_winnerrestaurant_restaurant_name','2022-04-18 14:25:21.767469');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1,'2022-04-18 04:54:16.596881',1);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_API_apius` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_API_apius` FOREIGN KEY (`user_id`) REFERENCES `API_apiuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTEyMTM2MSwiaWF0IjoxNjUwMjU3MzYxLCJqdGkiOiIyMzlkOTM2OWNiNmE0NWY4OTM0NTExM2FkYmZlNzgxMSIsInVzZXJfaWQiOjl9.YTZ1ePotp1HtAhMMkLMeE0-UDY5PCoCrQYzMKKwM_ZA',NULL,'2022-04-28 04:49:21.000000',NULL,'239d9369cb6a45f89345113adbfe7811'),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTEzMTU0MCwiaWF0IjoxNjUwMjY3NTQwLCJqdGkiOiJhNGM3OTM0YjhlZTA0MjNlODJmYjk1MjFmZTZhYWNkZiIsInVzZXJfaWQiOjl9.KZ8Ias6iPRrwL-GaAsKLe89YdTL_BKhxsBvmNHHxsTg','2022-04-18 07:39:00.168832','2022-04-28 07:39:00.000000',9,'a4c7934b8ee0423e82fb9521fe6aacdf'),(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTEzMTU0MCwiaWF0IjoxNjUwMjY3NTQwLCJqdGkiOiIxNmYxNDE0OTM5ZTc0ODY2OTNjMTg5ZjcwNmRkNzMxMyIsInVzZXJfaWQiOjl9.8RV_0D0ANrEEa-906z9HzMh3ypDbllZuy1SgB8ZCnt8','2022-04-18 07:39:00.174968','2022-04-28 07:39:00.000000',9,'16f1414939e7486693c189f706dd7313'),(4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE0MzkyMywiaWF0IjoxNjUwMjc5OTIzLCJqdGkiOiJiMTUzZDgwNjY1ODU0M2JhYjU2YTE1ODY5NjY0OTIzZSIsInVzZXJfaWQiOjl9.HOk-a1HYvI1fxE4pT5MufW9K0GngOYrzt6CVMjkdLDc','2022-04-18 11:05:23.203359','2022-04-28 11:05:23.000000',9,'b153d806658543bab56a15869664923e'),(5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE0MzkyMywiaWF0IjoxNjUwMjc5OTIzLCJqdGkiOiJjZTk2MDRmODhlMzY0ODc0OWNlNTc5YjkzZGJlNjI0NSIsInVzZXJfaWQiOjl9.WGskand1IpsixtWAT9Nw5OjuRFFdb_csrPbDzhUnY7E','2022-04-18 11:05:23.209332','2022-04-28 11:05:23.000000',9,'ce9604f88e3648749ce579b93dbe6245'),(6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MDgyOCwiaWF0IjoxNjUwMjg2ODI4LCJqdGkiOiJhZWZkZGQxOGM1YTg0ZjdmODEyOTYzMmMzODc5YjI4YSIsInVzZXJfaWQiOjl9.MoSLhlHpMPMI49lmsqltdTfYn_ICgsj7PVbht1XqbQg','2022-04-18 13:00:28.547262','2022-04-28 13:00:28.000000',9,'aefddd18c5a84f7f8129632c3879b28a'),(7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MDgyOCwiaWF0IjoxNjUwMjg2ODI4LCJqdGkiOiIwZTZmZjQ0NWI1OTM0YzM5YWJiNjg4NzE3YjExZDQzNSIsInVzZXJfaWQiOjl9.83aQGwbhRsg1MT7nwECZXXHB8aCL6rIlASFvJ_Arhb8','2022-04-18 13:00:28.552860','2022-04-28 13:00:28.000000',9,'0e6ff445b5934c39abb688717b11d435'),(8,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MDkzMywiaWF0IjoxNjUwMjg2OTMzLCJqdGkiOiJhMDJjNzQ4MjE5ZmI0OTM1YTY3MDZmYjc4YWU3MDQ4MiIsInVzZXJfaWQiOjExfQ.bpBwpREUolhMmrLAVTmBnixEfFzXdnlteYJtPC7fF7U','2022-04-18 13:02:13.525608','2022-04-28 13:02:13.000000',11,'a02c748219fb4935a6706fb78ae70482'),(9,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MDkzMywiaWF0IjoxNjUwMjg2OTMzLCJqdGkiOiIxYjdlZTNjMTE2ODI0N2ZiYWNlMjM2MGIzOTJiMzJlYSIsInVzZXJfaWQiOjExfQ.2qh18W1Ifr1P92R9pWr1KtafApdciX1Jwu1MWORE9RM','2022-04-18 13:02:13.528369','2022-04-28 13:02:13.000000',11,'1b7ee3c1168247fbace2360b392b32ea'),(10,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MDk5NywiaWF0IjoxNjUwMjg2OTk3LCJqdGkiOiIyMjA3NjFmNWYzZmQ0ZjhiOGQ3ODBiYmRlMDg1YjBmMCIsInVzZXJfaWQiOjF9.b9EVIqe0J0m42MvRN8GNuWS8irvzP0LxYx4oN2qlshs','2022-04-18 13:03:17.994763','2022-04-28 13:03:17.000000',1,'220761f5f3fd4f8b8d780bbde085b0f0'),(11,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MDk5NywiaWF0IjoxNjUwMjg2OTk3LCJqdGkiOiIwOTZkOTRlNDEwNTU0MzNhOWQ1MGQwYTk1OGM2OGMwYyIsInVzZXJfaWQiOjF9.TMvuhl_B9l3lYl4dNgZL0ahAAxZQb6nnLnyqhy-j5hU','2022-04-18 13:03:17.998082','2022-04-28 13:03:17.000000',1,'096d94e41055433a9d50d0a958c68c0c'),(12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTM0MiwiaWF0IjoxNjUwMjg3MzQyLCJqdGkiOiJkY2FhMmRlMzMzM2U0MDc1OTA3NTZkODBjMWE4MTkzZSIsInVzZXJfaWQiOjExfQ.URULfQ9R_R-c3DsAVhcsNvxuqoGeiG4SnPBJA_ydhjE','2022-04-18 13:09:02.802762','2022-04-28 13:09:02.000000',11,'dcaa2de3333e407590756d80c1a8193e'),(13,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTM0MiwiaWF0IjoxNjUwMjg3MzQyLCJqdGkiOiIxNzk0MjM5NmM4MTM0YWFmYjMwMzEzZTQwNzFhYmMzMCIsInVzZXJfaWQiOjExfQ.7A7y4Qa7BpP6r8Q83BCPi9938p5--l1MKgjswPhC-38','2022-04-18 13:09:02.808295','2022-04-28 13:09:02.000000',11,'17942396c8134aafb30313e4071abc30'),(14,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTM3OSwiaWF0IjoxNjUwMjg3Mzc5LCJqdGkiOiIzMTkxZGRmZjRhYzg0Njc3YWYyMDcwMzY5MGU3ZmQ0ZCIsInVzZXJfaWQiOjExfQ.KzMHx3OeqN1VAqv0VUeIRyTQ3Z3n_7lpGwtKPoKHhAQ','2022-04-18 13:09:39.023887','2022-04-28 13:09:39.000000',11,'3191ddff4ac84677af20703690e7fd4d'),(15,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTM3OSwiaWF0IjoxNjUwMjg3Mzc5LCJqdGkiOiI1MDk5NDQ2ZWU2ZmE0NWM2ODkyNzRkNGExY2Y4MDE3MCIsInVzZXJfaWQiOjExfQ.8ibi-AtTmSwAK6WhDbGe7nKWVHWWRfvjZI6gXJSHykE','2022-04-18 13:09:39.027344','2022-04-28 13:09:39.000000',11,'5099446ee6fa45c689274d4a1cf80170'),(16,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTQyNSwiaWF0IjoxNjUwMjg3NDI1LCJqdGkiOiJiMjE3MjA3NDA3NjI0OTkxYWQyOGI3MTRlM2U5ZjE0OCIsInVzZXJfaWQiOjEyfQ.Ajs1BrZc9vbB7Y1A_1jucl2QpYOOED1xOvwhfuMTODA','2022-04-18 13:10:25.017231','2022-04-28 13:10:25.000000',12,'b217207407624991ad28b714e3e9f148'),(17,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTQyNSwiaWF0IjoxNjUwMjg3NDI1LCJqdGkiOiIwMmViZWE2OWFiZWY0YjRiOTNkMGRmNWYzYzdiZTQzOCIsInVzZXJfaWQiOjEyfQ.d3YcMWytmntUK2PXv30xzkRQLgxaceQiI4_Pn2jRL7o','2022-04-18 13:10:25.020238','2022-04-28 13:10:25.000000',12,'02ebea69abef4b4b93d0df5f3c7be438'),(18,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTU2MCwiaWF0IjoxNjUwMjg3NTYwLCJqdGkiOiI3MzBhZjg5YTY3OTg0MjNkODM1YmY2NDA1YjVjMzUzZiIsInVzZXJfaWQiOjEzfQ.9qucdeas2RgRzy2-Z8CgYgzA2R-0U3VS2tEtf6CG09g','2022-04-18 13:12:40.721257','2022-04-28 13:12:40.000000',13,'730af89a6798423d835bf6405b5c353f'),(19,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTU2MCwiaWF0IjoxNjUwMjg3NTYwLCJqdGkiOiJjYTM3YzAxN2FmMDA0YmI3OWI1YjY3MjhlMzhkODNiYyIsInVzZXJfaWQiOjEzfQ.G6Jysp6ZqwzOMb31p6Va2KC56izfmc2zIvsMaasI6eg','2022-04-18 13:12:40.724397','2022-04-28 13:12:40.000000',13,'ca37c017af004bb79b5b6728e38d83bc'),(20,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTY0MywiaWF0IjoxNjUwMjg3NjQzLCJqdGkiOiI3YWU1ZGEyOWRlYzY0YTcxYjEwZmFhMTRmMzY2MTIyOCIsInVzZXJfaWQiOjEzfQ.bBXPMytz0f_acpOUK8hRj48FDEg71gTJf0wUvVHCl14','2022-04-18 13:14:03.408811','2022-04-28 13:14:03.000000',13,'7ae5da29dec64a71b10faa14f3661228'),(21,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTY0MywiaWF0IjoxNjUwMjg3NjQzLCJqdGkiOiJiZTMzNWE5ZmVlNjc0NmNiOWRhMDVlN2IwY2M1NDAwOCIsInVzZXJfaWQiOjEzfQ.k68RxDeUV1KlR0OjSc5Z9JgGnxJP61rKiEyh6E2YOvY','2022-04-18 13:14:03.411780','2022-04-28 13:14:03.000000',13,'be335a9fee6746cb9da05e7b0cc54008'),(22,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTc1OSwiaWF0IjoxNjUwMjg3NzU5LCJqdGkiOiJiMzBmOGMyNDBlMjY0ZjIyOTQ5ODU5ZjNiYWMzZDVkNyIsInVzZXJfaWQiOjE0fQ.sYM8zrU7eJo5cYtRh2JeeIgJjgv1IjaEhpnZxWkzZV8','2022-04-18 13:15:59.207276','2022-04-28 13:15:59.000000',14,'b30f8c240e264f22949859f3bac3d5d7'),(23,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MTc1OSwiaWF0IjoxNjUwMjg3NzU5LCJqdGkiOiJhMjRhZGY3ZjliYTE0ZWIwYjYyMjUxMmUxZmM0YjMxNCIsInVzZXJfaWQiOjE0fQ.hklszE9cM_HC0xXta5JF22PN5YLfAkBk4Wy5Sp_nsCY','2022-04-18 13:15:59.210565','2022-04-28 13:15:59.000000',14,'a24adf7f9ba14eb0b622512e1fc4b314'),(24,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MjkzMiwiaWF0IjoxNjUwMjg4OTMyLCJqdGkiOiIwN2M2Y2MxOTQxNjA0ZmRkYjQ4Y2E3NDAxMWM4OTJmMiIsInVzZXJfaWQiOjEwfQ.iGfeDOB4nn07pjGU4Zr91CW0_5uN1sp5RImXM7z-GDA','2022-04-18 13:35:32.836230','2022-04-28 13:35:32.000000',10,'07c6cc1941604fddb48ca74011c892f2'),(25,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MjkzMiwiaWF0IjoxNjUwMjg4OTMyLCJqdGkiOiJmNWYyZjdhODA0NDg0Y2FlYTNhZTEyNjQyYTAyMTRjMiIsInVzZXJfaWQiOjEwfQ.NJsmlkpf-eHHHO9m5gMk7nE6fE2VPbF7Xx-dGmLDSKY','2022-04-18 13:35:32.839198','2022-04-28 13:35:32.000000',10,'f5f2f7a804484caea3ae12642a0214c2'),(26,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MzAwNSwiaWF0IjoxNjUwMjg5MDA1LCJqdGkiOiIyNGEzYjNjNjYxNWQ0YWUzODI2ZTliOGUxNjY3MmZjZCIsInVzZXJfaWQiOjh9.Nf4F7058DJmB5pQbsqrL5HbYilf_oE-pRJt8wsz-A58','2022-04-18 13:36:45.856426','2022-04-28 13:36:45.000000',8,'24a3b3c6615d4ae3826e9b8e16672fcd'),(27,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MzAwNSwiaWF0IjoxNjUwMjg5MDA1LCJqdGkiOiJjMTk5YTA1MDA5YTU0ZmYxYjA3ZmYwODJlMDQwMTFkNSIsInVzZXJfaWQiOjh9.9_520H2zprsMmV4iUSiUwUG_XFLVkIZCnfVHD3oyXWg','2022-04-18 13:36:45.861245','2022-04-28 13:36:45.000000',8,'c199a05009a54ff1b07ff082e04011d5'),(28,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MzI3NCwiaWF0IjoxNjUwMjg5Mjc0LCJqdGkiOiJkNjY1MGVlMjVhNDA0Y2I2OTcyNWJiN2EzNTRiMWIyOSIsInVzZXJfaWQiOjd9.Top57gGo4QQG7P4yr4-NoSXmyhruEk9LWNfyIfuUz_c','2022-04-18 13:41:14.104495','2022-04-28 13:41:14.000000',7,'d6650ee25a404cb69725bb7a354b1b29'),(29,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY1MTE1MzI3NCwiaWF0IjoxNjUwMjg5Mjc0LCJqdGkiOiIwZjAwODQ0ZThiMDc0NzNiYjdjYmVlMGEyMTEyYTBkNyIsInVzZXJfaWQiOjd9.A0Il9Rs5DNdfYd-5-EYMJZuR2glVrNvAuKoN4XlnCK4','2022-04-18 13:41:14.107293','2022-04-28 13:41:14.000000',7,'0f00844e8b07473bb7cbee0a2112a0d7');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 20:44:41
