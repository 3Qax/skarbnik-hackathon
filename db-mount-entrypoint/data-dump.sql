USE Skarbnik3;

-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Skarbnik3
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add class',7,'add_class'),(26,'Can change class',7,'change_class'),(27,'Can delete class',7,'delete_class'),(28,'Can view class',7,'view_class'),(29,'Can add payment',8,'add_payment'),(30,'Can change payment',8,'change_payment'),(31,'Can delete payment',8,'delete_payment'),(32,'Can view payment',8,'view_payment'),(33,'Can add payment detail',9,'add_paymentdetail'),(34,'Can change payment detail',9,'change_paymentdetail'),(35,'Can delete payment detail',9,'delete_paymentdetail'),(36,'Can view payment detail',9,'view_paymentdetail'),(37,'Can add student',10,'add_student'),(38,'Can change student',10,'change_student'),(39,'Can delete student',10,'delete_student'),(40,'Can view student',10,'view_student'),(41,'Can add user_login_activity',11,'add_userloginactivity'),(42,'Can change user_login_activity',11,'change_userloginactivity'),(43,'Can delete user_login_activity',11,'delete_userloginactivity');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `class_user_id_9e7332f9_fk_user_id_` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class`
VALUES  (1,'3b',29),
        (2,'4Ti1',31);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_id_` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_id_` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(7,'skarbnik','class'),(8,'skarbnik','payment'),(9,'skarbnik','paymentdetail'),(10,'skarbnik','student'),(6,'skarbnik','user'),(11,'skarbnik','userloginactivity');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-25 05:53:11.034162'),(2,'contenttypes','0002_remove_content_type_name','2018-11-25 05:53:14.954160'),(3,'auth','0001_initial','2018-11-25 05:53:19.037027'),(4,'auth','0002_alter_permission_name_max_length','2018-11-25 05:53:19.545002'),(5,'auth','0003_alter_user_email_max_length','2018-11-25 05:53:21.608382'),(6,'auth','0004_alter_user_username_opts','2018-11-25 05:53:22.399047'),(7,'auth','0005_alter_user_last_login_null','2018-11-25 05:53:23.517489'),(8,'auth','0006_require_contenttypes_0002','2018-11-25 05:53:23.826362'),(9,'auth','0007_alter_validators_add_error_messages','2018-11-25 05:53:24.046739'),(10,'auth','0008_alter_user_username_max_length','2018-11-25 05:53:24.312701'),(11,'auth','0009_alter_user_last_name_max_length','2018-11-25 05:53:24.579369'),(12,'skarbnik','0001_initial','2018-11-25 05:53:31.917621'),(13,'admin','0001_initial','2018-11-25 05:53:33.246225'),(14,'admin','0002_logentry_remove_auto_add','2018-11-25 05:53:33.827987'),(15,'admin','0003_logentry_add_action_flag_choices','2018-11-25 05:53:34.116047'),(16,'sessions','0001_initial','2018-11-25 05:53:35.604577'),(17,'skarbnik','0002_auto_20181125_0332','2018-11-25 05:53:36.323645'),(18,'skarbnik','0003_auto_20181125_0334','2018-11-25 05:53:36.658792'),(19,'skarbnik','0004_auto_20181125_0337','2018-11-25 05:53:36.979409'),(20,'skarbnik','0005_auto_20181125_0347','2018-11-25 05:53:37.514972'),(21,'skarbnik','0006_auto_20181125_0348','2018-11-25 05:53:37.870174'),(22,'skarbnik','0007_auto_20181125_0349','2018-11-25 05:53:38.696426'),(23,'skarbnik','0008_auto_20181125_0358','2018-11-25 05:53:38.915885'),(24,'skarbnik','0009_auto_20181125_0359','2018-11-25 05:53:39.321946'),(25,'skarbnik','0010_auto_20181125_0400','2018-11-25 05:53:41.442031'),(26,'skarbnik','0011_auto_20181125_0604','2018-11-25 06:13:34.901736'),(27,'payu','0001_initial','2018-11-27 18:32:15.000000'),(28,'skarbnik','0002_auto_20181129_1702','2018-11-29 17:02:59.000000'),(29,'skarbnik','0002_remove_payment_image','2019-01-07 17:31:27.000000'),(30,'skarbnik','0003_payment_image','2019-01-07 17:31:28.000000'),(31,'skarbnik','0004_paymentdetail_created','2019-01-26 18:47:10.000000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('26k53ezsdby4iz6067bs9wn2md35wo5y','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-01-02 19:57:16.000000'),('2r8zp5spk6ihnnskamrdkranem3780o2','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-15 12:15:07.000000'),('2w5sftzg5elx9c2yfa0yppcydfhsbvwf','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-29 17:12:15.000000'),('39ghngkf8nykrz4baq5ecz38htbgxu6g','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-02-09 17:23:42.000000'),('3fy7mhbs6ulhq91z8a6r8m8m58xkaa5t','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-13 21:53:41.000000'),('93456odlxiw1t9ry5yjbl3sqta73lyp5','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-01-10 19:41:56.000000'),('9k55flpki75zn07q71h7w7ek6f717xvz','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-22 22:03:18.000000'),('cfsuecadjfonnf90vnlw4m0jz1qgiuif','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-01-03 11:59:55.000000'),('h0lca6cqdv2ngyzht239f24zgtalffa9','NjQ0MTVjNzFkMjFlMGRmNGYwYjBmMTZhMzE4MGQwNWVhODZkNGI1Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYWQzMzE5ODk1ZjM1MGEyZDk0ZWI1MGFlMGMyOTJiZGI2NjQ2NDJhIn0=','2019-01-02 19:44:59.000000'),('jn3nmm5g2ps60na2u2z8t5fvb5qcoz4u','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-27 19:14:46.000000'),('ke0o7d3lplle4u20wzzruz4lck94rhc5','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-27 19:27:40.000000'),('lsni05f70e3yn5qtfbt4qmagma4odbmj','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-24 21:10:49.000000'),('mcweghekhdxopq9jy7kv2mioq0dung9m','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-16 21:27:12.000000'),('ph6e01wii0lhqvh84foy3c8kajtlp05w','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-01-21 17:24:17.000000'),('uhof92yfw2tqleb0o20doaaxsllglcjk','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-01-20 19:00:50.000000'),('v7tjeh1oxeryn14vqm9gykoveowo63ex','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2019-01-02 17:57:16.000000'),('vk2bunv2bt38zj9bupbth0xyfu6ev1s2','YzQ5MTUwZTY0M2FlNDBjYTM3NzY4MWE4ZWU3MzI2YWNjNmZhNmU1Njp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk5ODI0YWI1ZmJjZjI5ZmY4ZTYxN2FlZGQwMDUxZjkwYWU0NDZiNCJ9','2018-12-13 22:11:53.000000'),('xqzpq4nvqlir9cay7626byzhb6hvcp0s','NjQ0MTVjNzFkMjFlMGRmNGYwYjBmMTZhMzE4MGQwNWVhODZkNGI1Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYWQzMzE5ODk1ZjM1MGEyZDk0ZWI1MGFlMGMyOTJiZGI2NjQ2NDJhIn0=','2019-01-17 11:44:11.000000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `class_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `currency` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `payment_class_id_6d42dd19_fk_class_id_` (`class_id`),
  CONSTRAINT `payment_class_id_6d42dd19_fk_class_id_` FOREIGN KEY (`class_id`) REFERENCES `class` (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;



--        (4,'2018-12-24 08:32:07.000000','2019-01-01','2019-01-15',15.00,'Wyjście do kina','Uczniowe wezmę udział w wykładzie nt. kadrów filmowych na przykładzie filmu \"Nie otwieraj oczu\"',1,'', 'PLN'),
--        (5,'2018-12-24 08:41:04.000000','2019-01-01','2019-03-01',573.00,'Zielona szkoła','4 dniowa wycieczka w Góry Świętokrzyskie. Uczniowie będą m. in. wejdą na Łysicę i zobaczą Jaskinię Raj.',1,'', 'PLN'),
--        (6,'2018-12-24 08:45:43.000000','2019-01-01','2019-01-14',22.00,'Teatr','Spektakl pt. \"Szalone nożyczki\"',1,'', 'PLN'),

INSERT INTO `payment`
VALUES  (1,'2018-09-01 17:00:00.000000','2018-09-01','2018-09-14',35.00,'Ubezpieczenie','Obowiązkowe ubezpiecznie na rok szkolny 2018-2019 w PZU. Obowiązuje również poza terenem szkoły.',1,'', 'PLN'),
        (2,'2018-09-01 17:00:00.000000','2018-09-02','2018-09-14',12.50,'Ognisko integracyjne','Uczniowe wezmą udział w corocznym ognisku, mającym na celu nawiązanie nowych znajomości i zaprezentowanie się przed grupą.',1,'', 'PLN'),
        (3,'2018-09-01 17:00:00.000000','2018-09-03','2018-09-14',5.00,'Papier do ksero','Z zebranych pieniędzy zostanie zakupiony papier, który według potrzeb nauczyciele mogą wziąć od wychowawcy.',1,'', 'PLN'),

        (4,'2018-09-01 17:00:00.000000','2018-09-01','2018-09-14',42.50,'Ubezpieczenie','Składka na ubezpieczenie od NNW na ten rok szkolny. Obejmuje ono również wypadki poza terenem szkoły.',2,'','PLN'),
        (5,'2018-09-01 17:00:00.000000','2018-09-01','2018-09-17',60.00,'Ochrona','Roczna opłata za świadczenie usług nadzoru uczniów w szkole przez firmę JanuszSekjurPolEx.',2,'','PLN'),
        (6,'2018-09-01 17:00:00.000000','2018-09-01','2018-09-30',80.00,'Rada Rodziców','Składka na radę rodziców. Z przekazanych funduszy zostaną zakupione pomoce naukowe i sprzęt sportowy oraz ufundowane stypendia dla uczniów szczególnie uzdolnionych.',2,'','PLN'),
        (7,'2018-09-01 17:00:00.000000','2018-09-02','2018-09-11',5.00,'Ksero j.angielski','Opłata za papier do kserowania materiałów naukowych w tym testów i kartkówek.',2,'','PLN'),
        (8,'2018-09-01 17:00:00.000000','2018-09-13','2018-09-10',13.20,'Ćwiczeniówki j.niemiecki','Dzięki zakupowi ćwiczeniówek grupowo będą one tańsze niż w sprzedaży detalicznej.',2,'','PLN'),
        (9,'2018-09-01 17:00:00.000000','2018-09-23','2018-09-30',10.00,'Dzień chłopaka','Słodki poczęstunek dla chłopców.',2,'','PLN'),
        (10,'2018-09-01 17:00:00.000000','2018-10-07','2018-10-12',17.00,'Akademia filmowa','Wyjście na wykład o znaczeniu filmów dokumentalnych dla społeczeństwa i projekcja filmu „Smoleńsk”.',2,'','PLN'),
        (11,'2018-09-01 17:00:00.000000','2018-10-07','2018-10-14',10.00,'Dzień edukacji narodowej','Z zebranych funduszy zostaną zakupione kwiaty oraz czekoladki dla nauczycieli.',2,'','PLN'),
        (12,'2018-09-01 17:00:00.000000','2018-12-06','2018-12-20',10.00,'Wigilia klasowa','Składka na catering.',2,'','PLN'),
        (13,'2018-09-01 17:00:00.000000','2019-01-02','2019-01-09',20.00,'Zajęcia plastyczne','Ze środków zostaną zakupione materiał potrzebne na zajęcia plastyczne. Materiały będą przechowywane w szkole, co zapobiegnie sytuacji, gdy uczniowie będą nieprzygotowani do zajęć.',2,'','PLN'),
        (14,'2018-09-01 17:00:00.000000','2018-12-13','2019-01-10',5.00,'Egzamin zawodowy','Zakup wody dla uczniów oraz poczęstunku dla egzaminatorów.',2,'','PLN'),
        (15,'2018-09-01 17:00:00.000000','2019-01-02','2019-01-29',65.00,'Wyjście do filharmonii','Uczniowie zobaczą koncert Polskiej Orkiestry Dętej',2,'','PLN'),
        (16,'2018-09-01 17:00:00.000000','2019-02-15','2019-02-22',12.00,'Zdjęcia klasowe','Duże (15 x 21 cm) pamiątkowe zdjęcie klasowe.',2,'','PLN'),
        (17,'2018-09-01 17:00:00.000000','2019-02-18','2019-03-03',50.00,'Wycieczka do muzeum Powstania Warszawskiego','Podczas wycieczki zostaną omówione okoliczności wybuch Powstanie Warszawskiego oraz najważniejsze wydarzenia z tego okresu.',2,'','PLN'),
        (18,'2018-09-01 17:00:00.000000','2019-04-01','2019-04-12',17.00,'Akademia filmowa','Wykład o miłości, technologii i różnicach kulturowych podparty projekcją filmu pt. \„Oko na Julię\”.',2,'','PLN'),
        (19,'2018-09-01 17:00:00.000000','2018-12-09','2019-04-01',750.00,'Zielona szkoła','Uczniowie spędzą trzy dni w Londynie.',2,'','PLN'),
        (20,'2018-09-01 17:00:00.000000','2018-12-09','2019-04-04',5.00,'Wizyta w muzeum Wiktorii i Alberta','Jest to największe muzeum sztuki i rzemiosła artystycznego w Londynie. Stała kolekcja liczy ponad 4,5 mln eksponatów. Wyjście nieobowiązkowe.',2,'','GBP'),
        (21,'2018-09-01 17:00:00.000000','2019-04-20','2019-05-31',15.00,'Dzień dziecka','Z okazji dnia dziecka zostanie zorganizowane wyjście do Kina na film pt. „Infinity war”',2,'','PLN'),
        (22,'2018-09-01 17:00:00.000000','2019-06-01','2019-06-14',6.00,'Zakończenie roku szkolnego','Opłata za znaczek na świadectwo oraz składka na bukiet dla wychowawców klas.',2,'','PLN');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `skarbnik_paymentimage` (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `skarbnik_paymentimage_payment_id_ae274325_fk_payment_id_` (`payment_id`),
  CONSTRAINT `skarbnik_paymentimage_payment_id_ae274325_fk_payment_id_` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `payment_detail`
--

DROP TABLE IF EXISTS `payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_detail` (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `amount_paid` decimal(6,2) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `payment_detail_payment_id_a604359c_fk_payment_id_` (`payment_id`),
  KEY `payment_detail_student_id_62e589eb` (`student_id`),
  CONSTRAINT `payment_detail_payment_id_a604359c_fk_payment_id_` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_detail`
--

LOCK TABLES `payment_detail` WRITE;
/*!40000 ALTER TABLE `payment_detail` DISABLE KEYS */;
INSERT INTO `payment_detail`
VALUES  (1,35.00,1,3,'2019-01-26 18:46:56'),
        (2,12.50,2,3,'2019-01-26 18:46:56'),
        (3,5.00,3,3,'2019-01-26 18:46:56'),

        (4,42.50,4,4,'2019-01-26 18:46:56'),
        (5,60.00,5,4,'2019-01-26 18:46:56'),
        (6,80.00,6,4,'2019-01-26 18:46:56'),
        (7,5.00,7,4,'2019-01-26 18:46:56'),
        (8,13.20,8,4,'2019-01-26 18:46:56'),
        (9,10.00,9,4,'2019-01-26 18:46:56'),
        (10,17.00,10,4,'2019-01-26 18:46:56'),
        (11,10.00,11,4,'2019-01-26 18:46:56'),
        (12,10.00,12,4,'2019-01-26 18:46:56'),
        (13,20.00,13,4,'2019-01-26 18:46:56'),
        (14,5.00,14,4,'2019-01-26 18:46:56'),
        (15,65.00,15,4,'2019-01-26 18:46:56'),
        (16,12.00,16,4,'2019-01-26 18:46:56'),
        (17,50.00,17,4,'2019-01-26 18:46:56'),
        (18,17.00,18,4,'2019-01-26 18:46:56'),
        (19,250.00,19,4,'2019-01-26 18:46:56'),
        (20,150.00,19,4,'2019-01-26 18:46:56'),

        (21,42.50,4,2,'2019-01-26 18:46:56'),
        (22,60.00,5,2,'2019-01-26 18:46:56'),
        (23,80.00,6,2,'2019-01-26 18:46:56'),
        (24,5.00,7,2,'2019-01-26 18:46:56'),
        (25,13.20,8,2,'2019-01-26 18:46:56'),
        (26,10.00,9,2,'2019-01-26 18:46:56'),
        (27,17.00,10,2,'2019-01-26 18:46:56'),
        (28,10.00,11,2,'2019-01-26 18:46:56'),
        (29,10.00,12,2,'2019-01-26 18:46:56'),
        (30,20.00,13,2,'2019-01-26 18:46:56'),
        (31,5.00,14,2,'2019-01-26 18:46:56'),
        (32,65.00,15,2,'2019-01-26 18:46:56'),
        (33,12.00,16,2,'2019-01-26 18:46:56'),
        (34,50.00,17,2,'2019-01-26 18:46:56'),
        (35,200.00,19,2,'2019-01-26 18:46:56'),
        (36,300.00,19,2,'2019-01-26 18:46:56');

/*!40000 ALTER TABLE `payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payu_cancelrefundcapturerequests`
--

DROP TABLE IF EXISTS `payu_cancelrefundcapturerequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payu_cancelrefundcapturerequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `request_type` varchar(20) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL,
  `message` varchar(100) COLLATE utf8_bin NOT NULL,
  `mihpayid` varchar(100) COLLATE utf8_bin NOT NULL,
  `bank_ref_num` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `amount` decimal(19,6) NOT NULL,
  `error_code` varchar(10) COLLATE utf8_bin NOT NULL,
  `transaction_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payu_cancelrefundcap_transaction_id_98e9a552_fk_payu_tran` (`transaction_id`),
  CONSTRAINT `payu_cancelrefundcap_transaction_id_98e9a552_fk_payu_tran` FOREIGN KEY (`transaction_id`) REFERENCES `payu_transaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payu_cancelrefundcapturerequests`
--

LOCK TABLES `payu_cancelrefundcapturerequests` WRITE;
/*!40000 ALTER TABLE `payu_cancelrefundcapturerequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `payu_cancelrefundcapturerequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payu_transaction`
--

DROP TABLE IF EXISTS `payu_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payu_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `payment_gateway_type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `transaction_date_time` datetime DEFAULT NULL,
  `mode` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `amount` decimal(19,6) NOT NULL,
  `mihpayid` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bankcode` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `bank_ref_num` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `discount` decimal(19,6) NOT NULL,
  `additional_charges` decimal(19,6) NOT NULL,
  `txn_status_on_payu` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `hash_status` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payu_transaction`
--

LOCK TABLES `payu_transaction` WRITE;
/*!40000 ALTER TABLE `payu_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `payu_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skarbnik_userloginactivity`
--

DROP TABLE IF EXISTS `skarbnik_userloginactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skarbnik_userloginactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_IP` char(39) COLLATE utf8_bin DEFAULT NULL,
  `login_datetime` datetime NOT NULL,
  `login_username` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `user_agent_info` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skarbnik_userloginactivity`
--

LOCK TABLES `skarbnik_userloginactivity` WRITE;
/*!40000 ALTER TABLE `skarbnik_userloginactivity` DISABLE KEYS */;
INSERT INTO `skarbnik_userloginactivity`
VALUES (1,'127.0.0.1','2018-11-28 21:20:49','ignstę73','S','(\'skarbnik/1 CFNetwork/975.0.3 Darwin/18.2.0\')'),
       (2,'79.184.220.157','2018-11-28 22:20:48','ignstę73','S','(\'skarbnik/1 CFNetwork/975.0.3 Darwin/18.2.0\')');

/*!40000 ALTER TABLE `skarbnik_userloginactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id_`),
  KEY `student_class_id_84bfbaa2_fk_class_id_` (`class_id`),
  KEY `student_user_id_dcc2526f_fk_user_id_` (`user_id`),
  CONSTRAINT `student_class_id_84bfbaa2_fk_class_id_` FOREIGN KEY (`class_id`) REFERENCES `class` (`id_`),
  CONSTRAINT `student_user_id_dcc2526f_fk_user_id_` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student`
VALUES  (1,'Radosław Kozłowski',1,5),
        (2,'Zofia Kozłowska',2,5),

        (3,'Monika Stępień',1,6),
        (4,'Karol Stępień',2,6);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id_` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `email` varchar(120) COLLATE utf8_bin NOT NULL,
  `password` varchar(200) COLLATE utf8_bin NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user`
VALUES  ('2019-01-03 11:44:10.000000',0,'','',0,1,'2018-11-25 05:55:32.000000',1,'Daniel Jagiełło','danielj','daniel@gmail.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',0),
        ('2019-01-03 11:44:10.000000',0,'','',0,1,'2018-11-29 21:12:12.000000',2,'Jakub Tokarski','jakubt','jakub@gmail.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',0),
        ('2019-01-03 11:44:10.000000',0,'','',0,1,'2018-11-25 05:56:16.000000',3,'Filip Jaworski','filipj','filip@gmail.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',0),
        ('2019-01-03 11:44:10.000000',0,'','',0,1,'2018-11-29 21:12:12.000000',4,'Michał Krawczyk','michałk','michal@gmail.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',0),

        ('2018-11-28 21:20:49.000000',0,'','',0,1,'2018-11-25 08:31:26.000000',5,'Elwira Kozłowska','elwkoz21','elwira@gmial.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',1),
        ('2019-01-15 21:19:29.000000',0,'','',0,1,'2018-12-21 00:41:26.000000',6,'Ignacy Stępień','ignstę73','ignstę@gmial.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',1),

        ('2019-01-26 17:23:42.000000',0,'','',0,1,'2018-11-27 21:34:25.000000',7,'Paweł Wach','pawwac49','admin@gmail.com','pbkdf2_sha256$100000$XtlpRliHONvG$JtQPsSrKEtc/wVySNdfioYsfLhvHBxrzOq1eaS85KR0=',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_groups_user_id_group_id_40beef00_uniq` (`user_id`,`group_id`),
  KEY `user_groups_group_id_b76f8aba_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_groups_group_id_b76f8aba_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_groups_user_id_abaea130_fk_user_id_` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_permissions_user_id_permission_id_7dc6e2e0_uniq` (`user_id`,`permission_id`),
  KEY `user_user_permission_permission_id_9deb68a3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_user_permissions_user_id_ed4a47ea_fk_user_id_` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_`),
  CONSTRAINT `user_user_permission_permission_id_9deb68a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_permissions`
--

LOCK TABLES `user_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 12:37:30
