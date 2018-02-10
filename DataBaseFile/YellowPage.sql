-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: YellowPage
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

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
-- Table structure for table `Companys`
--

DROP TABLE IF EXISTS `Companys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Companys` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_phone` varchar(15) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`),
  KEY `areas` (`area_id`),
  CONSTRAINT `areas` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companys`
--

LOCK TABLES `Companys` WRITE;
/*!40000 ALTER TABLE `Companys` DISABLE KEYS */;
INSERT INTO `Companys` VALUES (10,'qwe','123',1),(12,'moaasdasd','23123',11);
/*!40000 ALTER TABLE `Companys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`area_id`),
  KEY `citys` (`city_id`),
  CONSTRAINT `citys` FOREIGN KEY (`city_id`) REFERENCES `citys` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Manwat',1),(2,'Tammoh',1),(3,'ترسا',1),(4,'شبرامنت',1),(5,'ميت قادوس',1),(6,'ميت شماس',1),(7,'نزلة الاشطر',1),(8,'الحرانية',1),(9,'بنى سويف',1),(10,'أم خنان',1),(11,'عابدين',2),(12,'بولاق',2),(13,'المطرية',2),(14,'المرج',2),(15,'مصر الجديدة',2),(16,'مدينة نصر',2),(17,'روض الفرج',2),(18,'الزيتون',2),(19,'الشرابية',2),(20,'الساحل',2),(21,'الباب الجديد شرق',3),(22,'أمبروزو ومحرم بك',3),(23,'راغب باشا',3),(24,'جامع سلطان',3),(25,'سان ستيفانو',3),(26,'  كرموز شرق',3),(27,'  كرموز غرب',3),(28,' نوبار باشا',3),(29,'  الصوري',3),(30,'المرغني  ',3),(31,'قرية النسيمية',4),(32,'قرية شها النموذجية',4),(33,'قريه الدبوسي',4),(34,'قرية كفر الحطبة',4),(35,'قرية ميت الكرماء',4),(36,'قرية منشأة البدوي',4),(37,'قرية كفر العرب',4),(38,'قرية ميت نابت',4),(39,'قرية ميت مزاح',4),(40,'قرية الريدانية',4),(41,'البورة',5),(42,'البورة',5),(43,'الحساني',5),(44,'الزاوية',5),(45,'الشغبة',5),(46,'العدر',5),(47,'المطيعة',5),(48,'النمايسة',5),(49,'بني حسين',5),(50,'بني غالب',5),(51,'منطقه 1',6),(52,'منطقه 2',6),(53,'منطقه 3',6),(54,'منطقه 4',6),(55,'منطقه 5',6),(56,'منطقه 6',6),(57,'منطقه 7',6),(58,'منطقه 8',6),(59,'منطقه 9',6),(60,'منطقه 10',6),(61,'منطقه 1\r\n',7),(62,'منطقه 1',7),(63,'منطقه 2',7),(64,'منطقه 3',7),(65,'منطقه 4',7),(66,'منطقه 5',7),(67,'منطقه 6',7),(68,'منطقه 7',7),(69,'منطقه 8',7),(70,'منطقه 9',7),(71,'منطقه 10',7),(72,'منطقه 1',8),(73,'منطقه 2',8),(74,'منطقه 3',8),(75,'منطقه 4',8),(76,'منطقه 5',8),(77,'منطقه 6',8),(78,'منطقه 7',8),(79,'منطقه 8',8),(80,'منطقه 9',8),(81,'منطقه 10',8),(82,'منطقه 1',9),(83,'منطقه 2',9),(84,'منطقه 3',9),(85,'منطقه 4',9),(86,'منطقه 5',9),(87,'منطقه 6',9),(88,'منطقه 7',9),(89,'منطقه 8',9),(90,'منطقه 9',9),(91,'منطقه 10',9),(92,'منطقه 2',7),(93,'منطقه 3',7),(94,'منطقه 4',7),(95,'منطقه 5',7),(96,'منطقه 6',7),(97,'منطقه 7',7),(98,'منطقه 8',7),(99,'منطقه 9',7),(100,'منطقه 10',7),(101,'منطقه 1',8),(102,'منطقه 2',8),(103,'منطقه 3',8),(104,'منطقه 4',8),(105,'منطقه 5',8),(106,'منطقه 6',8),(107,'منطقه 7',8),(108,'منطقه 8',8),(109,'منطقه 9',8),(110,'منطقه 10',8),(111,'منطقه 1',9),(112,'منطقه 2',9),(113,'منطقه 3',9),(114,'منطقه 4',9),(115,'منطقه 5',9),(116,'منطقه 6',9),(117,'منطقه 7',9),(118,'منطقه 8',9),(119,'منطقه 9',9),(120,'منطقه 10',9),(121,'منطقه 1',10),(122,'منطقه 2',10),(123,'منطقه 3',10),(124,'منطقه 4',10),(125,'منطقه 5',10),(126,'منطقه 6',10),(127,'منطقه 7',10),(128,'منطقه 8',10),(129,'منطقه 9',10),(130,'منطقه 10',10);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Midical Com'),(2,'شركات الكترونيات'),(3,'شركات ادويه'),(4,'شركات دعايه واعلان'),(5,'شركات طباعه'),(6,'شركات ادوات منزليه'),(7,'شركات ادوات صحيه'),(8,'شركات تعبئخ وتغليف'),(9,'شركات مواد كميائيه'),(10,'شركات هندسية'),(11,'New Category'),(12,'New CAt 2'),(13,'new cat');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citys`
--

DROP TABLE IF EXISTS `citys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citys` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citys`
--

LOCK TABLES `citys` WRITE;
/*!40000 ALTER TABLE `citys` DISABLE KEYS */;
INSERT INTO `citys` VALUES (1,'Giza'),(2,'Cairo'),(3,'Alexndrya'),(4,'Mansora'),(5,'Asyot'),(6,'Zuies'),(7,'BorSaed'),(8,'Zgazeg'),(9,'Elminya'),(10,'Sohag');
/*!40000 ALTER TABLE `citys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_category`
--

DROP TABLE IF EXISTS `company_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_category` (
  `com_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`com_cat_id`),
  KEY `company_category_ibfk_1` (`company_id`),
  KEY `companycat` (`category_id`),
  CONSTRAINT `company_category_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `Companys` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `companycat` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_category`
--

LOCK TABLES `company_category` WRITE;
/*!40000 ALTER TABLE `company_category` DISABLE KEYS */;
INSERT INTO `company_category` VALUES (16,1,10),(18,2,12);
/*!40000 ALTER TABLE `company_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `Path` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `companyphoto` (`company_id`),
  CONSTRAINT `companyphoto` FOREIGN KEY (`company_id`) REFERENCES `Companys` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (15,'mohamed',10),(17,'Screenshot from 2018-02-09 05-50-36.png',12);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0' COMMENT '0 => for user 1 => for admin',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@gmail.com',1),(2,'mohamed','mohamed','mohamed@mohamed.com',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-10 22:33:19
