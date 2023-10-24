-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: clientdatabase
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `birth_cert`
--

DROP TABLE IF EXISTS `birth_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_cert` (
  `user_id` int NOT NULL,
  `birth_parents_id` varchar(255) NOT NULL,
  `birth_tin_no` varchar(255) DEFAULT NULL,
  `birth_owner_rel` varchar(255) DEFAULT NULL,
  `transaction_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_cert`
--

LOCK TABLES `birth_cert` WRITE;
/*!40000 ALTER TABLE `birth_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `birth_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_cert_parents`
--

DROP TABLE IF EXISTS `birth_cert_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_cert_parents` (
  `id` varchar(255) NOT NULL,
  `birth_father_fname` varchar(255) DEFAULT NULL,
  `birth_father_lname` varchar(255) DEFAULT NULL,
  `birth_father_mname` varchar(255) DEFAULT NULL,
  `birth_mother_fname` varchar(255) DEFAULT NULL,
  `birth_mother_mname` varchar(255) DEFAULT NULL,
  `birth_mother_lname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_cert_parents`
--

LOCK TABLES `birth_cert_parents` WRITE;
/*!40000 ALTER TABLE `birth_cert_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `birth_cert_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_cert_trans`
--

DROP TABLE IF EXISTS `birth_cert_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_cert_trans` (
  `transaction_id` int NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `reg_period` int NOT NULL,
  `copies_no` int NOT NULL,
  `print_type` int NOT NULL,
  `purpose_type` int NOT NULL,
  `val_id` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_cert_trans`
--

LOCK TABLES `birth_cert_trans` WRITE;
/*!40000 ALTER TABLE `birth_cert_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `birth_cert_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_address`
--

DROP TABLE IF EXISTS `bus_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_address` (
  `owner_addr_id` int NOT NULL,
  `cvl_id` int NOT NULL,
  `brgy_id` int NOT NULL,
  `owner_addr` varchar(255) NOT NULL,
  `zip_code` int NOT NULL,
  PRIMARY KEY (`owner_addr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_address`
--

LOCK TABLES `bus_address` WRITE;
/*!40000 ALTER TABLE `bus_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_contact`
--

DROP TABLE IF EXISTS `bus_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_contact` (
  `bus_owner_id` int NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `owner_tel_no` varchar(255) DEFAULT NULL,
  `owner_mob_no` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_contact`
--

LOCK TABLES `bus_contact` WRITE;
/*!40000 ALTER TABLE `bus_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_owner`
--

DROP TABLE IF EXISTS `bus_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_owner` (
  `bus_owner_id` int NOT NULL AUTO_INCREMENT,
  `owner_lname` varchar(255) NOT NULL,
  `owner_fname` varchar(255) NOT NULL,
  `owner_mname` varchar(255) NOT NULL,
  `owner_suffix` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_owner`
--

LOCK TABLES `bus_owner` WRITE;
/*!40000 ALTER TABLE `bus_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_permit`
--

DROP TABLE IF EXISTS `bus_permit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_permit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_id` int NOT NULL,
  `bus_gender` int NOT NULL,
  `bus_reg_no` varchar(255) DEFAULT NULL,
  `bus_tin_id` varchar(255) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `bus_fchise` varchar(255) NOT NULL,
  `bus_owner_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_permit`
--

LOCK TABLES `bus_permit` WRITE;
/*!40000 ALTER TABLE `bus_permit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_permit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_type`
--

DROP TABLE IF EXISTS `bus_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_type` (
  `bus_id` int NOT NULL AUTO_INCREMENT,
  `bus_type` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_type`
--

LOCK TABLES `bus_type` WRITE;
/*!40000 ALTER TABLE `bus_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedula_tax`
--

DROP TABLE IF EXISTS `cedula_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedula_tax` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ced_emp_type` int DEFAULT NULL,
  `ced_acc_no` varchar(255) DEFAULT NULL,
  `ced_res_due` date DEFAULT NULL,
  `ced_prof_id` int NOT NULL,
  `ced_val_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_tax`
--

LOCK TABLES `cedula_tax` WRITE;
/*!40000 ALTER TABLE `cedula_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `cedula_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copies_number`
--

DROP TABLE IF EXISTS `copies_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copies_number` (
  `copies_id` int NOT NULL,
  `copies_no` int NOT NULL,
  PRIMARY KEY (`copies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copies_number`
--

LOCK TABLES `copies_number` WRITE;
/*!40000 ALTER TABLE `copies_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `copies_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvl_status`
--

DROP TABLE IF EXISTS `cvl_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cvl_status` (
  `cvl_id` int NOT NULL,
  `cvl_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cvl_id`),
  KEY `idx_cvl_id` (`cvl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvl_status`
--

LOCK TABLES `cvl_status` WRITE;
/*!40000 ALTER TABLE `cvl_status` DISABLE KEYS */;
INSERT INTO `cvl_status` VALUES (0,NULL),(1,'Single'),(2,'Married'),(3,'Divorced'),(4,'Widowed');
/*!40000 ALTER TABLE `cvl_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `czn_status`
--

DROP TABLE IF EXISTS `czn_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czn_status` (
  `czn_id` int NOT NULL,
  `czn_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`czn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czn_status`
--

LOCK TABLES `czn_status` WRITE;
/*!40000 ALTER TABLE `czn_status` DISABLE KEYS */;
INSERT INTO `czn_status` VALUES (0,NULL),(1,'Citizen'),(2,'Permanent Resident'),(3,'Temporary Resident');
/*!40000 ALTER TABLE `czn_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_cert`
--

DROP TABLE IF EXISTS `death_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_cert` (
  `user_id` int NOT NULL,
  `death_fname` varchar(255) NOT NULL,
  `death_mname` varchar(255) NOT NULL,
  `death_lname` varchar(255) NOT NULL,
  `suffix_id` int DEFAULT NULL,
  `sex_id` int NOT NULL,
  `date_death` varchar(255) NOT NULL,
  `place_death` varchar(255) NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `transaction_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_cert`
--

LOCK TABLES `death_cert` WRITE;
/*!40000 ALTER TABLE `death_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `death_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_request`
--

DROP TABLE IF EXISTS `death_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_request` (
  `transaction_id` int NOT NULL,
  `req_fname` varchar(255) NOT NULL,
  `req_mname` varchar(255) NOT NULL,
  `req_lname` varchar(255) NOT NULL,
  `owner_relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_request`
--

LOCK TABLES `death_request` WRITE;
/*!40000 ALTER TABLE `death_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `death_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_transaction`
--

DROP TABLE IF EXISTS `death_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_transaction` (
  `transaction_id` int NOT NULL,
  `copies_no` int NOT NULL,
  `print_type` int NOT NULL,
  `val_id` int NOT NULL,
  `death_amount` int NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_transaction`
--

LOCK TABLES `death_transaction` WRITE;
/*!40000 ALTER TABLE `death_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `death_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_type`
--

DROP TABLE IF EXISTS `emp_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_type` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_type` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_type`
--

LOCK TABLES `emp_type` WRITE;
/*!40000 ALTER TABLE `emp_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_claim`
--

DROP TABLE IF EXISTS `id_claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_claim` (
  `claim_id` int NOT NULL AUTO_INCREMENT,
  `id_type` varchar(45) NOT NULL,
  PRIMARY KEY (`claim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_claim`
--

LOCK TABLES `id_claim` WRITE;
/*!40000 ALTER TABLE `id_claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manila_brgy`
--

DROP TABLE IF EXISTS `manila_brgy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_brgy` (
  `brgy_id` int NOT NULL AUTO_INCREMENT,
  `brgy_name` varchar(512) DEFAULT NULL,
  `city_name` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`brgy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_brgy`
--

LOCK TABLES `manila_brgy` WRITE;
/*!40000 ALTER TABLE `manila_brgy` DISABLE KEYS */;
INSERT INTO `manila_brgy` VALUES (1,'Barangay 773','Manila'),(2,'Barangay 774','Manila'),(3,'Barangay 775','Manila'),(4,'Barangay 776','Manila'),(5,'Barangay63','Manila'),(6,'Barangay 777','Manila'),(7,'Barangay 778','Manila'),(8,'Barangay 779','Manila'),(9,'Barangay 78','Manila'),(10,'Barangay 780','Manila'),(11,'Barangay64','Manila'),(12,'Barangay 781','Manila'),(13,'Barangay65','Manila'),(14,'Barangay 475','Manila'),(15,'Barangay 782','Manila'),(16,'Almanza Dos','Las Piñas'),(17,'Barangay 783','Manila'),(18,'Almanza Uno','Las Piñas'),(19,'Barangay 476','Manila'),(20,'Barangay 784','Manila'),(21,'Barangay 477','Manila'),(22,'Barangay 785','Manila'),(23,'B. F. International Village','Las Piñas'),(24,'Barangay 786','Manila'),(25,'Barangay 787','Manila'),(26,'Barangay 788','Manila'),(27,'Barangay 789','Manila'),(28,'Barangay 79','Manila'),(29,'Barangay 790','Manila'),(30,'Barangay66','Manila'),(31,'Barangay 791','Manila'),(32,'Barangay 792','Manila'),(33,'Barangay67','Manila'),(34,'Barangay 793','Manila'),(35,'Barangay 794','Manila'),(36,'Barangay 795','Manila'),(37,'Barangay68','Manila'),(38,'Barangay69','Manila'),(39,'Barangay7','Manila'),(40,'Barangay 478','Manila'),(41,'Barangay70','Manila'),(42,'Barangay71','Manila'),(43,'Barangay 479','Manila'),(44,'Barangay 48','Manila'),(45,'Barangay 480','Manila'),(46,'Barangay 481','Manila'),(47,'Barangay 482','Manila'),(48,'Barangay72','Manila'),(49,'Barangay 483','Manila'),(50,'Barangay73','Manila'),(51,'Barangay74','Manila'),(52,'Barangay 484','Manila'),(53,'Barangay75','Manila'),(54,'Daniel Fajardo','Las Piñas'),(55,'Barangay 485','Manila'),(56,'Barangay76','Manila'),(57,'Elias Aldana','Las Piñas'),(58,'Barangay77','Manila'),(59,'Ilaya','Las Piñas'),(60,'Manuyo Dos','Las Piñas'),(61,'Barangay 486','Manila'),(62,'Manuyo Uno','Las Piñas'),(63,'Barangay 487','Manila'),(64,'Barangay78','Manila'),(65,'Barangay 488','Manila'),(66,'Barangay79','Manila'),(67,'Barangay 489','Manila'),(68,'Barangay8','Manila'),(69,'Barangay 796','Manila'),(70,'Barangay 797','Manila'),(71,'Barangay80','Manila'),(72,'Pamplona Dos','Las Piñas'),(73,'Barangay 798','Manila'),(74,'Barangay81','Manila'),(75,'Barangay 799','Manila'),(76,'Pamplona Tres','Las Piñas'),(77,'Barangay 49','Manila'),(78,'Barangay 8','Manila'),(79,'Barangay82','Manila'),(80,'Barangay 490','Manila'),(81,'Barangay 80','Manila'),(82,'Barangay83','Manila'),(83,'Barangay 800','Manila'),(84,'Barangay 491','Manila'),(85,'Barangay84','Manila'),(86,'Barangay 801','Manila'),(87,'Barangay 492','Manila'),(88,'Barangay 802','Manila'),(89,'Barangay85','Manila'),(90,'Barangay 493','Manila'),(91,'Barangay 803','Manila'),(92,'Barangay 494','Manila'),(93,'Barangay 804','Manila'),(94,'Barangay 805','Manila'),(95,'Barangay 495','Manila'),(96,'Barangay 806','Manila'),(97,'Barangay 496','Manila'),(98,'Barangay 497','Manila'),(99,'Barangay 807','Manila'),(100,'Barangay 808','Manila'),(101,'Barangay 809','Manila'),(102,'Barangay 81','Manila'),(103,'Barangay 810','Manila'),(104,'Barangay 811','Manila'),(105,'Barangay 812','Manila'),(106,'Barangay 813','Manila'),(107,'Barangay 814','Manila'),(108,'Barangay 815','Manila'),(109,'Barangay 816','Manila'),(110,'Barangay 817','Manila'),(111,'Barangay 818','Manila'),(112,'Barangay 818-A','Manila'),(113,'Barangay 819','Manila'),(114,'Barangay 82','Manila'),(115,'Barangay 820','Manila'),(116,'Barangay 821','Manila'),(117,'Barangay 822','Manila'),(118,'Barangay 823','Manila'),(119,'Barangay 824','Manila'),(120,'Barangay 825','Manila'),(121,'Barangay 826','Manila'),(122,'Barangay 827','Manila'),(123,'Barangay 828','Manila'),(124,'Barangay 829','Manila'),(125,'Barangay 83','Manila'),(126,'Pamplona Uno','Las Piñas'),(127,'Barangay 830','Manila'),(128,'Barangay 831','Manila'),(129,'Barangay 832','Manila'),(130,'Barangay 833','Manila'),(131,'Barangay 834','Manila'),(132,'Barangay 835','Manila'),(133,'Pilar','Las Piñas'),(134,'Barangay 836','Manila'),(135,'Pulang Lupa Dos','Las Piñas'),(136,'Barangay 837','Manila'),(137,'Barangay 838','Manila'),(138,'Pulang Lupa Uno','Las Piñas'),(139,'Barangay 839','Manila'),(140,'Talon Dos','Las Piñas'),(141,'Barangay 84','Manila'),(142,'Barangay 840','Manila'),(143,'Talon Kuatro','Las Piñas'),(144,'Talon Singko','Las Piñas'),(145,'Barangay 841','Manila'),(146,'Talon Tres','Las Piñas'),(147,'Barangay 842','Manila'),(148,'Talon Uno','Las Piñas'),(149,'Barangay 843','Manila'),(150,'Barangay 844','Manila'),(151,'Zapote','Las Piñas'),(152,'Barangay 845','Manila'),(153,'Barangay 846','Manila'),(154,'Bangkal','Makati'),(155,'Barangay 847','Manila'),(156,'Bel-Air','Makati'),(157,'Barangay 848','Manila'),(158,'Barangay 849','Manila'),(159,'Carmona','Makati'),(160,'Barangay 85','Manila'),(161,'Cembo','Makati'),(162,'Barangay 850','Manila'),(163,'Barangay 851','Manila'),(164,'Barangay 852','Manila'),(165,'Comembo','Makati'),(166,'Barangay 853','Manila'),(167,'Barangay 855','Manila'),(168,'Barangay 856','Manila'),(169,'Barangay 857','Manila'),(170,'Barangay 858','Manila'),(171,'Barangay 859','Manila'),(172,'Barangay 86','Manila'),(173,'Barangay 860','Manila'),(174,'Barangay 861','Manila'),(175,'Barangay 862','Manila'),(176,'Barangay 863','Manila'),(177,'Barangay 864','Manila'),(178,'Barangay 865','Manila'),(179,'Barangay86','Manila'),(180,'Barangay 866','Manila'),(181,'Barangay87','Manila'),(182,'Barangay 867','Manila'),(183,'Barangay 868','Manila'),(184,'Barangay88','Manila'),(185,'Barangay 869','Manila'),(186,'Barangay89','Manila'),(187,'Barangay 87','Manila'),(188,'Barangay 870','Manila'),(189,'Barangay9','Manila'),(190,'Barangay 871','Manila'),(191,'Barangay90','Manila'),(192,'Barangay91','Manila'),(193,'Barangay92','Manila'),(194,'Barangay93','Manila'),(195,'Barangay 498','Manila'),(196,'Barangay94','Manila'),(197,'Barangay 499','Manila'),(198,'Barangay95','Manila'),(199,'Barangay 5','Manila'),(200,'Barangay 872','Manila'),(201,'Barangay96','Manila'),(202,'Barangay 873','Manila'),(203,'Barangay 50','Manila'),(204,'Barangay97','Manila'),(205,'Barangay 874','Manila'),(206,'Barangay 875','Manila'),(207,'Dasmariñas','Makati'),(208,'Barangay 876','Manila'),(209,'East Rembo','Makati'),(210,'Barangay 877','Manila'),(211,'Forbes Park','Makati'),(212,'Barangay98','Manila'),(213,'Guadalupe Nuevo','Makati'),(214,'Barangay99','Manila'),(215,'Guadalupe Viejo','Makati'),(216,'Barangay 2','Manila'),(217,'Kasilawan','Makati'),(218,'Barangay 20','Manila'),(219,'La Paz','Makati'),(220,'Magallanes','Makati'),(221,'Barangay 200','Manila'),(222,'Olympia','Makati'),(223,'Barangay 201','Manila'),(224,'Palanan','Makati'),(225,'Barangay 202','Manila'),(226,'Pembo','Makati'),(227,'Barangay 202-A','Manila'),(228,'Pinagkaisahan','Makati'),(229,'Barangay 203','Manila'),(230,'Pio del Pilar','Makati'),(231,'Barangay 204','Manila'),(232,'Pitogo','Makati'),(233,'Barangay 205','Manila'),(234,'Poblacion','Makati'),(235,'Barangay 206','Manila'),(236,'Post Proper Northside','Makati'),(237,'Barangay 207','Manila'),(238,'Post Proper Southside','Makati'),(239,'Rizal','Makati'),(240,'San Antonio','Makati'),(241,'Barangay 500','Manila'),(242,'San Isidro','Makati'),(243,'San Lorenzo','Makati'),(244,'Barangay 501','Manila'),(245,'Santa Cruz','Makati'),(246,'Barangay 502','Manila'),(247,'Singkamas','Makati'),(248,'Barangay 208','Manila'),(249,'South Cembo','Makati'),(250,'Barangay 209','Manila'),(251,'Tejeros','Makati'),(252,'Barangay 210','Manila'),(253,'Urdaneta','Makati'),(254,'Barangay 211','Manila'),(255,'Barangay 212','Manila'),(256,'Barangay 213','Manila'),(257,'Valenzuela','Makati'),(258,'West Rembo','Makati'),(259,'Acacia','Malabon'),(260,'Baritan','Malabon'),(261,'Barangay 214','Manila'),(262,'Bayan-bayanan','Malabon'),(263,'Barangay 215','Manila'),(264,'Catmon','Malabon'),(265,'Barangay 216','Manila'),(266,'Concepcion','Malabon'),(267,'Barangay 217','Manila'),(268,'Dampalit','Malabon'),(269,'Barangay 218','Manila'),(270,'Flores','Malabon'),(271,'Barangay 219','Manila'),(272,'Hulong Duhat','Malabon'),(273,'Barangay 503','Manila'),(274,'Ibaba','Malabon'),(275,'Barangay 504','Manila'),(276,'Longos','Malabon'),(277,'Barangay 505','Manila'),(278,'Maysilo','Malabon'),(279,'Barangay 506','Manila'),(280,'Barangay 220','Manila'),(281,'Barangay 507','Manila'),(282,'Barangay 508','Manila'),(283,'Muzon','Malabon'),(284,'Niugan','Malabon'),(285,'Barangay 221','Manila'),(286,'Panghulo','Malabon'),(287,'Barangay 222','Manila'),(288,'Potrero','Malabon'),(289,'Barangay 223','Manila'),(290,'San Agustin','Malabon'),(291,'Barangay 878','Manila'),(292,'Barangay 224','Manila'),(293,'Santolan','Malabon'),(294,'Barangay 879','Manila'),(295,'Barangay 509','Manila'),(296,'Barangay 225','Manila'),(297,'Barangay 88','Manila'),(298,'Tañong','Malabon'),(299,'Barangay 226','Manila'),(300,'Barangay 51','Manila'),(301,'Tinajeros','Malabon'),(302,'Barangay 227','Manila'),(303,'Tonsuya','Malabon'),(304,'Barangay 228','Manila'),(305,'Tugatog','Malabon'),(306,'Barangay 229','Manila'),(307,'Addition Hills','Mandaluyong'),(308,'Barangay 230','Manila'),(309,'Bagong Silang','Mandaluyong'),(310,'Barangay 231','Manila'),(311,'Barangay 880','Manila'),(312,'Barangay 232','Manila'),(313,'Barangay 881','Manila'),(314,'Barangay 882','Manila'),(315,'Barangka Drive','Mandaluyong'),(316,'Barangay 883','Manila'),(317,'Barangay 884','Manila'),(318,'Barangay 885','Manila'),(319,'Barangay 886','Manila'),(320,'Barangay 887','Manila'),(321,'Barangay 233','Manila'),(322,'Barangka Ibaba','Mandaluyong'),(323,'Barangay 888','Manila'),(324,'Barangay 889','Manila'),(325,'Barangka Ilaya','Mandaluyong'),(326,'Barangka Itaas','Mandaluyong'),(327,'Buayang Bato','Mandaluyong'),(328,'Burol','Mandaluyong'),(329,'Barangay 89','Manila'),(330,'Daang Bakal','Mandaluyong'),(331,'Barangay 234','Manila'),(332,'Barangay 890','Manila'),(333,'Hagdang Bato Itaas','Mandaluyong'),(334,'Barangay 891','Manila'),(335,'Barangay 235','Manila'),(336,'Barangay 510','Manila'),(337,'Hagdang Bato Libis','Mandaluyong'),(338,'Barangay 892','Manila'),(339,'Barangay 236','Manila'),(340,'Harapin Ang Bukas','Mandaluyong'),(341,'Barangay 237','Manila'),(342,'Highway Hills','Mandaluyong'),(343,'Barangay 893','Manila'),(344,'Barangay 238','Manila'),(345,'Barangay 894','Manila'),(346,'Barangay 895','Manila'),(347,'Barangay 239','Manila'),(348,'Barangay 511','Manila'),(349,'Barangay 896','Manila'),(350,'Barangay 897','Manila'),(351,'Barangay 240','Manila'),(352,'Barangay 512','Manila'),(353,'Barangay 898','Manila'),(354,'Barangay 241','Manila'),(355,'Barangay 513','Manila'),(356,'Barangay 899','Manila'),(357,'Barangay 242','Manila'),(358,'Barangay 9','Manila'),(359,'Barangay 514','Manila'),(360,'Barangay 243','Manila'),(361,'Barangay 515','Manila'),(362,'Barangay 244','Manila'),(363,'Barangay 516','Manila'),(364,'Barangay 245','Manila'),(365,'Barangay 246','Manila'),(366,'Barangay 247','Manila'),(367,'Barangay 248','Manila'),(368,'Barangay 249','Manila'),(369,'Barangay 25','Manila'),(370,'Barangay 250','Manila'),(371,'Hulo','Mandaluyong'),(372,'Barangay 251','Manila'),(373,'Mabini-J. Rizal','Mandaluyong'),(374,'Barangay 252','Manila'),(375,'Malamig','Mandaluyong'),(376,'Barangay 90','Manila'),(377,'Barangay 253','Manila'),(378,'Barangay 254','Manila'),(379,'Barangay 255','Manila'),(380,'Barangay 900','Manila'),(381,'Mauway','Mandaluyong'),(382,'Barangay 901','Manila'),(383,'Barangay 256','Manila'),(384,'Namayan','Mandaluyong'),(385,'Barangay 902','Manila'),(386,'Barangay 257','Manila'),(387,'Barangay 903','Manila'),(388,'New Zañiga','Mandaluyong'),(389,'Barangay 904','Manila'),(390,'Barangay 517','Manila'),(391,'Old Zañiga','Mandaluyong'),(392,'Barangay 905','Manila'),(393,'Barangay 91','Manila'),(394,'Barangay 518','Manila'),(395,'Barangay 92','Manila'),(396,'Barangay 519','Manila'),(397,'Barangay 93','Manila'),(398,'Barangay 94','Manila'),(399,'Barangay 52','Manila'),(400,'Barangay 95','Manila'),(401,'Barangay 96','Manila'),(402,'Barangay 520','Manila'),(403,'Barangay 97','Manila'),(404,'Barangay 521','Manila'),(405,'Barangay 522','Manila'),(406,'Barangay 258','Manila'),(407,'Barangay 523','Manila'),(408,'Pag-asa','Mandaluyong'),(409,'Barangay 524','Manila'),(410,'Barangay 525','Manila'),(411,'Plainview','Mandaluyong'),(412,'Barangay 259','Manila'),(413,'Pleasant Hills','Mandaluyong'),(414,'Barangay 526','Manila'),(415,'Barangay 26','Manila'),(416,'Poblacion','Mandaluyong'),(417,'Barangay 527','Manila'),(418,'Barangay 260','Manila'),(419,'San Jose','Mandaluyong'),(420,'Barangay 528','Manila'),(421,'Barangay 261','Manila'),(422,'Barangay 529','Manila'),(423,'Barangay 98','Manila'),(424,'Barangay 262','Manila'),(425,'Barangay 99','Manila'),(426,'Barangay 263','Manila'),(427,'Barangka','Marikina'),(428,'Calumpang','Marikina'),(429,'Concepcion Dos','Marikina'),(430,'Concepcion Uno','Marikina'),(431,'Fortune','Marikina'),(432,'Industrial Valley','Marikina'),(433,'Jesus de La Peña','Marikina'),(434,'Malanday','Marikina'),(435,'Marikina Heights','Marikina'),(436,'Nangka','Marikina'),(437,'Parang','Marikina'),(438,'San Roque','Marikina'),(439,'Santa Elena','Marikina'),(440,'Santo Niño','Marikina'),(441,'Barangay 264','Manila'),(442,'Tañong','Marikina'),(443,'Barangay 53','Manila'),(444,'Tumana','Marikina'),(445,'Barangay 265','Manila'),(446,'Barangay 530','Manila'),(447,'Alabang','Muntinlupa'),(448,'Barangay 266','Manila'),(449,'Barangay 531','Manila'),(450,'Bayanan','Muntinlupa'),(451,'Barangay 267','Manila'),(452,'Buli','Muntinlupa'),(453,'Cupang','Muntinlupa'),(454,'Barangay 268','Manila'),(455,'New Alabang Village','Muntinlupa'),(456,'Vergara','Mandaluyong'),(457,'Barangay 532','Manila'),(458,'Poblacion','Muntinlupa'),(459,'Wack-wack Greenhills','Mandaluyong'),(460,'Barangay 533','Manila'),(461,'Barangay','Manila'),(462,'Barangay 534','Manila'),(463,'Barangay 269','Manila'),(464,'Barangay 535','Manila'),(465,'Barangay 270','Manila'),(466,'Barangay 536','Manila'),(467,'Barangay 537','Manila'),(468,'Barangay 538','Manila'),(469,'Barangay 539','Manila'),(470,'Barangay 271','Manila'),(471,'Barangay 54','Manila'),(472,'Barangay 272','Manila'),(473,'Barangay 540','Manila'),(474,'Barangay 273','Manila'),(475,'Barangay 541','Manila'),(476,'Barangay0','Manila'),(477,'Barangay 274','Manila'),(478,'Barangay 542','Manila'),(479,'Barangay 275','Manila'),(480,'Barangay 276','Manila'),(481,'Barangay00','Manila'),(482,'Barangay 28','Manila'),(483,'Barangay01','Manila'),(484,'Barangay 281','Manila'),(485,'Barangay 543','Manila'),(486,'Barangay02','Manila'),(487,'Barangay 282','Manila'),(488,'Barangay03','Manila'),(489,'Barangay 283','Manila'),(490,'Barangay04','Manila'),(491,'Barangay 284','Manila'),(492,'Barangay 544','Manila'),(493,'Barangay05','Manila'),(494,'Barangay 285','Manila'),(495,'Barangay 545','Manila'),(496,'Barangay06','Manila'),(497,'Barangay 286','Manila'),(498,'Barangay07','Manila'),(499,'Barangay08','Manila'),(500,'Barangay09','Manila'),(501,'Barangay1','Manila'),(502,'Barangay 546','Manila'),(503,'Barangay 287','Manila'),(504,'Barangay 547','Manila'),(505,'Barangay 288','Manila'),(506,'Barangay 548','Manila'),(507,'Barangay 289','Manila'),(508,'Barangay 549','Manila'),(509,'Barangay 29','Manila'),(510,'Barangay 55','Manila'),(511,'Barangay 550','Manila'),(512,'Barangay 551','Manila'),(513,'Barangay 552','Manila'),(514,'Barangay 290','Manila'),(515,'Barangay 553','Manila'),(516,'Putatan','Muntinlupa'),(517,'Barangay 291','Manila'),(518,'Barangay 554','Manila'),(519,'Barangay 292','Manila'),(520,'Barangay 555','Manila'),(521,'Barangay 293','Manila'),(522,'Barangay 294','Manila'),(523,'Barangay 295','Manila'),(524,'Barangay 556','Manila'),(525,'Barangay 296','Manila'),(526,'Barangay 557','Manila'),(527,'Barangay 297','Manila'),(528,'Barangay 558','Manila'),(529,'Barangay 559','Manila'),(530,'Barangay 298','Manila'),(531,'Barangay 56','Manila'),(532,'Barangay 560','Manila'),(533,'Sucat','Muntinlupa'),(534,'Barangay 561','Manila'),(535,'Barangay 562','Manila'),(536,'Barangay 563','Manila'),(537,'Barangay 564','Manila'),(538,'Barangay 299','Manila'),(539,'Barangay 3','Manila'),(540,'Barangay 30','Manila'),(541,'Barangay 300','Manila'),(542,'Barangay10','Manila'),(543,'Barangay 301','Manila'),(544,'Barangay11','Manila'),(545,'Barangay 302','Manila'),(546,'Barangay 303','Manila'),(547,'Barangay 304','Manila'),(548,'Barangay12','Manila'),(549,'Barangay 305','Manila'),(550,'Barangay16','Manila'),(551,'Barangay 306','Manila'),(552,'Barangay17','Manila'),(553,'Barangay18','Manila'),(554,'Barangay19','Manila'),(555,'Barangay2','Manila'),(556,'Barangay20','Manila'),(557,'Barangay 307','Manila'),(558,'Barangay21','Manila'),(559,'Barangay22','Manila'),(560,'Barangay 308','Manila'),(561,'Barangay23','Manila'),(562,'Barangay 565','Manila'),(563,'Barangay 309','Manila'),(564,'Barangay 566','Manila'),(565,'Barangay 567','Manila'),(566,'Tunasan','Muntinlupa'),(567,'Bagumbayan North','Navotas'),(568,'Bagumbayan South','Navotas'),(569,'Barangay 31','Manila'),(570,'Bangculasi','Navotas'),(571,'Barangay 568','Manila'),(572,'Barangay 310','Manila'),(573,'Barangay 569','Manila'),(574,'Barangay 311','Manila'),(575,'Barangay 57','Manila'),(576,'Barangay 312','Manila'),(577,'Barangay 570','Manila'),(578,'Barangay 313','Manila'),(579,'Barangay 571','Manila'),(580,'Barangay 314','Manila'),(581,'Barangay 572','Manila'),(582,'Barangay 315','Manila'),(583,'Barangay 573','Manila'),(584,'Barangay 316','Manila'),(585,'Barangay 317','Manila'),(586,'Barangay 318','Manila'),(587,'Barangay 319','Manila'),(588,'Barangay24','Manila'),(589,'Barangay 32','Manila'),(590,'Barangay25','Manila'),(591,'Barangay26','Manila'),(592,'Barangay27','Manila'),(593,'Barangay28','Manila'),(594,'Barangay29','Manila'),(595,'Barangay3','Manila'),(596,'Barangay30','Manila'),(597,'Daanghari','Navotas'),(598,'Barangay31','Manila'),(599,'NBBS Dagat-dagatan','Navotas'),(600,'Barangay32','Manila'),(601,'NBBS Kaunlaran','Navotas'),(602,'NBBS Proper','Navotas'),(603,'Barangay33','Manila'),(604,'Navotas East','Navotas'),(605,'Barangay34','Manila'),(606,'Barangay35','Manila'),(607,'Barangay36','Manila'),(608,'Barangay 574','Manila'),(609,'Navotas West','Navotas'),(610,'Barangay37','Manila'),(611,'Barangay 575','Manila'),(612,'North Bay Boulevard North','Navotas'),(613,'Barangay38','Manila'),(614,'Barangay 576','Manila'),(615,'Barangay 577','Manila'),(616,'Barangay39','Manila'),(617,'Barangay4','Manila'),(618,'Barangay 578','Manila'),(619,'Barangay40','Manila'),(620,'Barangay 320','Manila'),(621,'Barangay41','Manila'),(622,'Barangay 579','Manila'),(623,'Barangay42','Manila'),(624,'Barangay43','Manila'),(625,'Barangay44','Manila'),(626,'San Jose','Navotas'),(627,'Barangay 321','Manila'),(628,'Barangay45','Manila'),(629,'Barangay 58','Manila'),(630,'Barangay 322','Manila'),(631,'Barangay46','Manila'),(632,'Barangay 580','Manila'),(633,'Barangay 323','Manila'),(634,'Barangay47','Manila'),(635,'Barangay 581','Manila'),(636,'Barangay 582','Manila'),(637,'Barangay 583','Manila'),(638,'Barangay 584','Manila'),(639,'Barangay 324','Manila'),(640,'Barangay 585','Manila'),(641,'Barangay48','Manila'),(642,'Barangay 325','Manila'),(643,'Barangay 586','Manila'),(644,'Barangay49','Manila'),(645,'Barangay 326','Manila'),(646,'Barangay5','Manila'),(647,'Barangay 327','Manila'),(648,'Barangay 328','Manila'),(649,'Barangay 329','Manila'),(650,'Barangay50','Manila'),(651,'Barangay 33','Manila'),(652,'Barangay51','Manila'),(653,'Barangay 330','Manila'),(654,'Barangay52','Manila'),(655,'Barangay 331','Manila'),(656,'Barangay53','Manila'),(657,'Barangay 332','Manila'),(658,'Barangay54','Manila'),(659,'Barangay55','Manila'),(660,'Barangay56','Manila'),(661,'Barangay57','Manila'),(662,'Barangay58','Manila'),(663,'Barangay59','Manila'),(664,'Barangay6','Manila'),(665,'Barangay60','Manila'),(666,'Barangay 587','Manila'),(667,'Barangay61','Manila'),(668,'Barangay 587-A','Manila'),(669,'Barangay 588','Manila'),(670,'Barangay 589','Manila'),(671,'Barangay 59','Manila'),(672,'Barangay62','Manila'),(673,'San Rafael Village','Navotas'),(674,'Barangay 590','Manila'),(675,'San Roque','Navotas'),(676,'Barangay 591','Manila'),(677,'Sipac-Almacen','Navotas'),(678,'Barangay 592','Manila'),(679,'Tangos North','Navotas'),(680,'Barangay 593','Manila'),(681,'Tangos South','Navotas'),(682,'Tanza 1','Navotas'),(683,'Tanza 2','Navotas'),(684,'B. F. Homes','Parañaque'),(685,'Baclaran','Parañaque'),(686,'Don Bosco','Parañaque'),(687,'Barangay 594','Manila'),(688,'Don Galo','Parañaque'),(689,'La Huerta','Parañaque'),(690,'Barangay 595','Manila'),(691,'Marcelo Green Village','Parañaque'),(692,'Barangay 30','Pasay'),(693,'Barangay 596','Manila'),(694,'Merville','Parañaque'),(695,'Barangay 597','Manila'),(696,'Barangay 31','Pasay'),(697,'Barangay 598','Manila'),(698,'Barangay 599','Manila'),(699,'Moonwalk','Parañaque'),(700,'Barangay 6','Manila'),(701,'Barangay 60','Manila'),(702,'Barangay 32','Pasay'),(703,'San Antonio','Parañaque'),(704,'Barangay 600','Manila'),(705,'Barangay 33','Pasay'),(706,'San Dionisio','Parañaque'),(707,'Barangay 34','Pasay'),(708,'San Isidro','Parañaque'),(709,'San Martin de Porres','Parañaque'),(710,'Barangay 35','Pasay'),(711,'Santo Niño','Parañaque'),(712,'Barangay 601','Manila'),(713,'Barangay 36','Pasay'),(714,'Sun Valley','Parañaque'),(715,'Barangay 602','Manila'),(716,'Tambo','Parañaque'),(717,'Vitalez','Parañaque'),(718,'Barangay','Pasay'),(719,'Barangay0','Pasay'),(720,'Barangay00','Pasay'),(721,'Barangay01','Pasay'),(722,'Barangay 603','Manila'),(723,'Barangay 604','Manila'),(724,'Barangay 605','Manila'),(725,'Barangay 606','Manila'),(726,'Barangay 607','Manila'),(727,'Barangay 608','Manila'),(728,'Barangay 609','Manila'),(729,'Barangay 333','Manila'),(730,'Barangay 61','Manila'),(731,'Barangay 334','Manila'),(732,'Barangay 37','Pasay'),(733,'Barangay 335','Manila'),(734,'Barangay 38','Pasay'),(735,'Barangay 610','Manila'),(736,'Barangay 336','Manila'),(737,'Barangay 39','Pasay'),(738,'Barangay 337','Manila'),(739,'Barangay 4','Pasay'),(740,'Barangay 338','Manila'),(741,'Barangay 40','Pasay'),(742,'Barangay 339','Manila'),(743,'Barangay 41','Pasay'),(744,'Barangay 34','Manila'),(745,'Barangay 42','Pasay'),(746,'Barangay 340','Manila'),(747,'Barangay 43','Pasay'),(748,'Barangay02','Pasay'),(749,'Barangay 44','Pasay'),(750,'Barangay03','Pasay'),(751,'Barangay 45','Pasay'),(752,'Barangay 46','Pasay'),(753,'Barangay 341','Manila'),(754,'Barangay 47','Pasay'),(755,'Barangay 342','Manila'),(756,'Barangay 48','Pasay'),(757,'Barangay 343','Manila'),(758,'Barangay 344','Manila'),(759,'Barangay 345','Manila'),(760,'Barangay04','Pasay'),(761,'Barangay 346','Manila'),(762,'Barangay05','Pasay'),(763,'Barangay 347','Manila'),(764,'Barangay06','Pasay'),(765,'Barangay07','Pasay'),(766,'Barangay 348','Manila'),(767,'Barangay08','Pasay'),(768,'Barangay09','Pasay'),(769,'Barangay 349','Manila'),(770,'Barangay 35','Manila'),(771,'Barangay 350','Manila'),(772,'Barangay1','Pasay'),(773,'Barangay 351','Manila'),(774,'Barangay 352','Manila'),(775,'Barangay 353','Manila'),(776,'Barangay 49','Pasay'),(777,'Barangay 354','Manila'),(778,'Barangay 5','Pasay'),(779,'Barangay 50','Pasay'),(780,'Barangay 51','Pasay'),(781,'Barangay 52','Pasay'),(782,'Barangay 53','Pasay'),(783,'Barangay 54','Pasay'),(784,'Barangay10','Pasay'),(785,'Barangay 611','Manila'),(786,'Barangay11','Pasay'),(787,'Barangay 612','Manila'),(788,'Barangay12','Pasay'),(789,'Barangay13','Pasay'),(790,'Barangay 613','Manila'),(791,'Barangay 55','Pasay'),(792,'Barangay14','Pasay'),(793,'Barangay 614','Manila'),(794,'Barangay 56','Pasay'),(795,'Barangay15','Pasay'),(796,'Barangay 57','Pasay'),(797,'Barangay 58','Pasay'),(798,'Barangay 59','Pasay'),(799,'Barangay 6','Pasay'),(800,'Barangay 60','Pasay'),(801,'Barangay 61','Pasay'),(802,'Barangay 62','Pasay'),(803,'Barangay 63','Pasay'),(804,'Barangay 64','Pasay'),(805,'Barangay 65','Pasay'),(806,'Barangay 66','Pasay'),(807,'Barangay 67','Pasay'),(808,'Barangay 68','Pasay'),(809,'Barangay 69','Pasay'),(810,'Barangay 7','Pasay'),(811,'Barangay 70','Pasay'),(812,'Barangay 71','Pasay'),(813,'Barangay 72','Pasay'),(814,'Barangay 73','Pasay'),(815,'Barangay 74','Pasay'),(816,'Barangay 75','Pasay'),(817,'Barangay 615','Manila'),(818,'Barangay 76','Pasay'),(819,'Barangay 616','Manila'),(820,'Barangay 77','Pasay'),(821,'Barangay 617','Manila'),(822,'Barangay16','Pasay'),(823,'Barangay 78','Pasay'),(824,'Barangay 618','Manila'),(825,'Barangay17','Pasay'),(826,'Barangay 79','Pasay'),(827,'Barangay18','Pasay'),(828,'Barangay 619','Manila'),(829,'Barangay 8','Pasay'),(830,'Barangay19','Pasay'),(831,'Barangay 80','Pasay'),(832,'Barangay2','Pasay'),(833,'Barangay20','Pasay'),(834,'Barangay 81','Pasay'),(835,'Barangay 355','Manila'),(836,'Barangay21','Pasay'),(837,'Barangay 82','Pasay'),(838,'Barangay22','Pasay'),(839,'Barangay 356','Manila'),(840,'Barangay 83','Pasay'),(841,'Barangay 84','Pasay'),(842,'Barangay 85','Pasay'),(843,'Barangay 86','Pasay'),(844,'Barangay 357','Manila'),(845,'Barangay 87','Pasay'),(846,'Barangay 88','Pasay'),(847,'Barangay 358','Manila'),(848,'Barangay 89','Pasay'),(849,'Barangay 9','Pasay'),(850,'Barangay 90','Pasay'),(851,'Barangay 359','Manila'),(852,'Barangay 91','Pasay'),(853,'Barangay 92','Pasay'),(854,'Barangay 36','Manila'),(855,'Barangay 93','Pasay'),(856,'Barangay 360','Manila'),(857,'Barangay 94','Pasay'),(858,'Barangay 361','Manila'),(859,'Barangay 95','Pasay'),(860,'Barangay 362','Manila'),(861,'Barangay 363','Manila'),(862,'Barangay 364','Manila'),(863,'Barangay 365','Manila'),(864,'Barangay 366','Manila'),(865,'Barangay 367','Manila'),(866,'Barangay23','Pasay'),(867,'Barangay 368','Manila'),(868,'Barangay24','Pasay'),(869,'Barangay25','Pasay'),(870,'Barangay 62','Manila'),(871,'Barangay 369','Manila'),(872,'Barangay 96','Pasay'),(873,'Barangay26','Pasay'),(874,'Barangay 620','Manila'),(875,'Barangay 37','Manila'),(876,'Barangay 97','Pasay'),(877,'Barangay 621','Manila'),(878,'Barangay 370','Manila'),(879,'Barangay27','Pasay'),(880,'Barangay 98','Pasay'),(881,'Barangay 622','Manila'),(882,'Barangay 371','Manila'),(883,'Barangay28','Pasay'),(884,'Barangay 99','Pasay'),(885,'Barangay 623','Manila'),(886,'Barangay 372','Manila'),(887,'Bagong Ilog','Pasig'),(888,'Barangay 373','Manila'),(889,'Bagong Katipunan','Pasig'),(890,'Barangay 374','Manila'),(891,'Bambang','Pasig'),(892,'Barangay 375','Manila'),(893,'Barangay 624','Manila'),(894,'Buting','Pasig'),(895,'Caniogan','Pasig'),(896,'Dela Paz','Pasig'),(897,'Kalawaan','Pasig'),(898,'Barangay 625','Manila'),(899,'Barangay 376','Manila'),(900,'Kapasigan','Pasig'),(901,'Barangay 626','Manila'),(902,'Barangay 377','Manila'),(903,'Kapitolyo','Pasig'),(904,'Barangay 378','Manila'),(905,'Malinao','Pasig'),(906,'Barangay 379','Manila'),(907,'Manggahan','Pasig'),(908,'Barangay 38','Manila'),(909,'Maybunga','Pasig'),(910,'Oranbo','Pasig'),(911,'Palatiw','Pasig'),(912,'Pinagbuhatan','Pasig'),(913,'Barangay 627','Manila'),(914,'Pineda','Pasig'),(915,'Barangay 380','Manila'),(916,'Barangay29','Pasay'),(917,'Barangay 381','Manila'),(918,'Barangay3','Pasay'),(919,'Barangay 628','Manila'),(920,'Barangay30','Pasay'),(921,'Rosario','Pasig'),(922,'Barangay31','Pasay'),(923,'Barangay 629','Manila'),(924,'Sagad','Pasig'),(925,'Barangay32','Pasay'),(926,'Barangay 63','Manila'),(927,'San Antonio','Pasig'),(928,'Barangay33','Pasay'),(929,'Barangay34','Pasay'),(930,'Barangay 630','Manila'),(931,'Barangay35','Pasay'),(932,'Barangay36','Pasay'),(933,'Barangay 631','Manila'),(934,'Barangay37','Pasay'),(935,'Barangay 632','Manila'),(936,'Barangay 633','Manila'),(937,'Barangay 634','Manila'),(938,'Barangay38','Pasay'),(939,'Barangay 635','Manila'),(940,'Barangay39','Pasay'),(941,'Barangay 636','Manila'),(942,'Barangay4','Pasay'),(943,'Barangay40','Pasay'),(944,'Barangay41','Pasay'),(945,'Barangay42','Pasay'),(946,'Barangay43','Pasay'),(947,'Barangay 382','Manila'),(948,'Barangay 383','Manila'),(949,'Barangay44','Pasay'),(950,'Barangay45','Pasay'),(951,'Barangay 384','Manila'),(952,'Barangay46','Pasay'),(953,'Barangay 385','Manila'),(954,'San Joaquin','Pasig'),(955,'Barangay 386','Manila'),(956,'San Jose','Pasig'),(957,'Barangay 387','Manila'),(958,'Barangay47','Pasay'),(959,'Barangay 388','Manila'),(960,'San Miguel','Pasig'),(961,'Barangay48','Pasay'),(962,'Barangay 389','Manila'),(963,'Barangay49','Pasay'),(964,'San Nicolas','Pasig'),(965,'Barangay 39','Manila'),(966,'Santa Cruz','Pasig'),(967,'Barangay 390','Manila'),(968,'Barangay5','Pasay'),(969,'Santa Lucia','Pasig'),(970,'Barangay50','Pasay'),(971,'Santa Rosa','Pasig'),(972,'Barangay51','Pasay'),(973,'Barangay52','Pasay'),(974,'Santo Tomas','Pasig'),(975,'Barangay53','Pasay'),(976,'Barangay54','Pasay'),(977,'Barangay55','Pasay'),(978,'Barangay56','Pasay'),(979,'Barangay57','Pasay'),(980,'Barangay58','Pasay'),(981,'Barangay59','Pasay'),(982,'Barangay6','Pasay'),(983,'Barangay 391','Manila'),(984,'Barangay60','Pasay'),(985,'Barangay 392','Manila'),(986,'Barangay61','Pasay'),(987,'Barangay 637','Manila'),(988,'Barangay62','Pasay'),(989,'Barangay63','Pasay'),(990,'Barangay 638','Manila'),(991,'Barangay 393','Manila'),(992,'Barangay64','Pasay'),(993,'Barangay 639','Manila'),(994,'Barangay 394','Manila'),(995,'Barangay65','Pasay'),(996,'Barangay66','Pasay'),(997,'Barangay 64','Manila'),(998,'Barangay67','Pasay'),(999,'Barangay68','Pasay'),(1000,'Barangay 640','Manila'),(1001,'Barangay69','Pasay'),(1002,'Barangay7','Pasay'),(1003,'Barangay 641','Manila'),(1004,'Barangay70','Pasay'),(1005,'Barangay71','Pasay'),(1006,'Barangay 642','Manila'),(1007,'Barangay72','Pasay'),(1008,'Barangay 643','Manila'),(1009,'Barangay 644','Manila'),(1010,'Barangay73','Pasay'),(1011,'Barangay74','Pasay'),(1012,'Barangay75','Pasay'),(1013,'Barangay76','Pasay'),(1014,'Barangay77','Pasay'),(1015,'Barangay78','Pasay'),(1016,'Barangay 645','Manila'),(1017,'Barangay 395','Manila'),(1018,'Barangay 646','Manila'),(1019,'Barangay 396','Manila'),(1020,'Barangay 647','Manila'),(1021,'Barangay79','Pasay'),(1022,'Barangay 397','Manila'),(1023,'Santolan','Pasig'),(1024,'Barangay8','Pasay'),(1025,'Barangay 648','Manila'),(1026,'Barangay 398','Manila'),(1027,'Barangay80','Pasay'),(1028,'Sumilang','Pasig'),(1029,'Barangay 399','Manila'),(1030,'Barangay81','Pasay'),(1031,'Ugong','Pasig'),(1032,'Barangay 4','Manila'),(1033,'Barangay 649','Manila'),(1034,'Aguho','Pateros'),(1035,'Barangay 400','Manila'),(1036,'Barangay 65','Manila'),(1037,'Magtanggol','Pateros'),(1038,'Barangay 401','Manila'),(1039,'Barangay 650','Manila'),(1040,'Barangay 402','Manila'),(1041,'Barangay 651','Manila'),(1042,'Barangay 403','Manila'),(1043,'Barangay 652','Manila'),(1044,'Barangay 653','Manila'),(1045,'Barangay 654','Manila'),(1046,'Barangay 655','Manila'),(1047,'Barangay 656','Manila'),(1048,'Barangay 404','Manila'),(1049,'Barangay 657','Manila'),(1050,'Barangay 658','Manila'),(1051,'Barangay 405','Manila'),(1052,'Barangay 659','Manila'),(1053,'Barangay 406','Manila'),(1054,'Barangay 659-A','Manila'),(1055,'Barangay 407','Manila'),(1056,'Barangay 408','Manila'),(1057,'Barangay 409','Manila'),(1058,'Barangay82','Pasay'),(1059,'Barangay 66','Manila'),(1060,'Barangay 41','Manila'),(1061,'Barangay83','Pasay'),(1062,'Barangay84','Pasay'),(1063,'Barangay 660','Manila'),(1064,'Barangay 410','Manila'),(1065,'Barangay 660-A','Manila'),(1066,'Barangay 411','Manila'),(1067,'Barangay 661','Manila'),(1068,'Barangay 412','Manila'),(1069,'Barangay 662','Manila'),(1070,'Barangay 413','Manila'),(1071,'Barangay 663','Manila'),(1072,'Barangay 414','Manila'),(1073,'Barangay 663-A','Manila'),(1074,'Barangay 415','Manila'),(1075,'Barangay 664','Manila'),(1076,'Barangay 664-A','Manila'),(1077,'Barangay 666','Manila'),(1078,'Barangay 667','Manila'),(1079,'Barangay 416','Manila'),(1080,'Barangay 668','Manila'),(1081,'Barangay 417','Manila'),(1082,'Barangay 669','Manila'),(1083,'Barangay 418','Manila'),(1084,'Barangay 419','Manila'),(1085,'Barangay85','Pasay'),(1086,'Barangay 67','Manila'),(1087,'Barangay86','Pasay'),(1088,'Barangay 670','Manila'),(1089,'Barangay87','Pasay'),(1090,'Barangay88','Pasay'),(1091,'Martires del 96','Pateros'),(1092,'Barangay89','Pasay'),(1093,'Poblacion','Pateros'),(1094,'Barangay9','Pasay'),(1095,'Barangay90','Pasay'),(1096,'San Pedro','Pateros'),(1097,'Barangay91','Pasay'),(1098,'San Roque','Pateros'),(1099,'Barangay92','Pasay'),(1100,'Barangay93','Pasay'),(1101,'Santa Ana','Pateros'),(1102,'Barangay94','Pasay'),(1103,'Santo Rosario-Kanluran','Pateros'),(1104,'Barangay95','Pasay'),(1105,'Santo Rosario-Silangan','Pateros'),(1106,'Tabacalera','Pateros'),(1107,'Barangay96','Pasay'),(1108,'Barangay 42','Manila'),(1109,'Alicia','Quezon City'),(1110,'Barangay97','Pasay'),(1111,'Barangay 420','Manila'),(1112,'Barangay98','Pasay'),(1113,'Barangay99','Pasay'),(1114,'Barangay 421','Manila'),(1115,'Barangay 2','Pasay'),(1116,'Barangay 422','Manila'),(1117,'Amihan','Quezon City'),(1118,'Barangay 423','Manila'),(1119,'Barangay 671','Manila'),(1120,'Barangay 424','Manila'),(1121,'Barangay 672','Manila'),(1122,'Barangay 20','Pasay'),(1123,'Barangay 425','Manila'),(1124,'Barangay 673','Manila'),(1125,'Barangay 200','Pasay'),(1126,'Barangay 426','Manila'),(1127,'Barangay 674','Manila'),(1128,'Barangay 427','Manila'),(1129,'Barangay 675','Manila'),(1130,'Barangay 676','Manila'),(1131,'Barangay 677','Manila'),(1132,'Barangay 678','Manila'),(1133,'Barangay 679','Manila'),(1134,'Barangay 428','Manila'),(1135,'Barangay 68','Manila'),(1136,'Barangay 429','Manila'),(1137,'Barangay 680','Manila'),(1138,'Barangay 43','Manila'),(1139,'Barangay 430','Manila'),(1140,'Apolonio Samson','Quezon City'),(1141,'Barangay 431','Manila'),(1142,'Barangay 681','Manila'),(1143,'Aurora','Quezon City'),(1144,'Barangay 432','Manila'),(1145,'Barangay 682','Manila'),(1146,'Baesa','Quezon City'),(1147,'Barangay 433','Manila'),(1148,'Barangay 201','Pasay'),(1149,'Barangay 683','Manila'),(1150,'Barangay 434','Manila'),(1151,'Barangay 21','Pasay'),(1152,'Barangay 684','Manila'),(1153,'Barangay 435','Manila'),(1154,'Barangay 22','Pasay'),(1155,'Barangay 685','Manila'),(1156,'Barangay 23','Pasay'),(1157,'Barangay 686','Manila'),(1158,'Barangay 24','Pasay'),(1159,'Barangay 25','Pasay'),(1160,'Barangay 687','Manila'),(1161,'Barangay 26','Pasay'),(1162,'Barangay 688','Manila'),(1163,'Barangay 689','Manila'),(1164,'Barangay 69','Manila'),(1165,'Barangay 690','Manila'),(1166,'Barangay 691','Manila'),(1167,'Barangay 692','Manila'),(1168,'Bagbag','Quezon City'),(1169,'Barangay 436','Manila'),(1170,'Barangay 693','Manila'),(1171,'Barangay 437','Manila'),(1172,'Barangay 438','Manila'),(1173,'Barangay 439','Manila'),(1174,'Barangay 694','Manila'),(1175,'Barangay 695','Manila'),(1176,'Barangay 696','Manila'),(1177,'Barangay 697','Manila'),(1178,'Barangay 44','Manila'),(1179,'Barangay 698','Manila'),(1180,'Barangay 440','Manila'),(1181,'Barangay 699','Manila'),(1182,'Barangay 441','Manila'),(1183,'Barangay 7','Manila'),(1184,'Barangay 70','Manila'),(1185,'Barangay 442','Manila'),(1186,'Barangay 700','Manila'),(1187,'Barangay 443','Manila'),(1188,'Bagong Lipunan ng Crame','Quezon City'),(1189,'Barangay 444','Manila'),(1190,'Bagong Pag-asa','Quezon City'),(1191,'Barangay 27','Pasay'),(1192,'Bagong Silangan','Quezon City'),(1193,'Barangay 28','Pasay'),(1194,'Barangay 701','Manila'),(1195,'Barangay 29','Pasay'),(1196,'Bagumbayan','Quezon City'),(1197,'Barangay 3','Pasay'),(1198,'Bagumbuhay','Quezon City'),(1199,'Barangay 445','Manila'),(1200,'Bahay Toro','Quezon City'),(1201,'Barangay 446','Manila'),(1202,'Balingasa','Quezon City'),(1203,'Barangay 702','Manila'),(1204,'Barangay 703','Manila'),(1205,'Balong Bato','Quezon City'),(1206,'Batasan Hills','Quezon City'),(1207,'Barangay 704','Manila'),(1208,'Bayanihan','Quezon City'),(1209,'Barangay 705','Manila'),(1210,'Barangay 447','Manila'),(1211,'Barangay 706','Manila'),(1212,'Barangay 707','Manila'),(1213,'Barangay 448','Manila'),(1214,'Barangay 708','Manila'),(1215,'Barangay 709','Manila'),(1216,'Barangay 449','Manila'),(1217,'Barangay 71','Manila'),(1218,'Barangay 45','Manila'),(1219,'Barangay 450','Manila'),(1220,'Barangay 710','Manila'),(1221,'Barangay 711','Manila'),(1222,'Barangay 712','Manila'),(1223,'Blue Ridge A','Quezon City'),(1224,'Barangay 713','Manila'),(1225,'Barangay 714','Manila'),(1226,'Blue Ridge B','Quezon City'),(1227,'Barangay 451','Manila'),(1228,'Barangay 715','Manila'),(1229,'Botocan','Quezon City'),(1230,'Barangay 452','Manila'),(1231,'Barangay 453','Manila'),(1232,'Barangay 454','Manila'),(1233,'Barangay 716','Manila'),(1234,'Barangay 455','Manila'),(1235,'Barangay 717','Manila'),(1236,'Bungad','Quezon City'),(1237,'Barangay 456','Manila'),(1238,'Barangay 718','Manila'),(1239,'Barangay 457','Manila'),(1240,'Barangay 719','Manila'),(1241,'Barangay 458','Manila'),(1242,'Pariancillo Villa','Valenzuela'),(1243,'Barangay 72','Manila'),(1244,'Barangay 459','Manila'),(1245,'Paso de Blas','Valenzuela'),(1246,'Barangay 720','Manila'),(1247,'Barangay 46','Manila'),(1248,'Pasolo','Valenzuela'),(1249,'Barangay 721','Manila'),(1250,'Barangay 460','Manila'),(1251,'Poblacion','Valenzuela'),(1252,'Barangay 722','Manila'),(1253,'Barangay 461','Manila'),(1254,'Pulo','Valenzuela'),(1255,'Barangay 723','Manila'),(1256,'Punturin','Valenzuela'),(1257,'Rincon','Valenzuela'),(1258,'Barangay 724','Manila'),(1259,'Tagalag','Valenzuela'),(1260,'Barangay 462','Manila'),(1261,'Ugong','Valenzuela'),(1262,'Barangay 725','Manila'),(1263,'Viente Reales','Valenzuela'),(1264,'Barangay 726','Manila'),(1265,'Barangay 463','Manila'),(1266,'Wawang Pulo','Valenzuela'),(1267,'Barangay 727','Manila'),(1268,'Barangay 464','Manila'),(1269,'Barangay0','Caloocan'),(1270,'Barangay 465','Manila'),(1271,'Barangay00','Caloocan'),(1272,'Barangay 466','Manila'),(1273,'Barangay01','Caloocan'),(1274,'Barangay 467','Manila'),(1275,'Barangay 468','Manila'),(1276,'Barangay 728','Manila'),(1277,'Camp Aguinaldo','Quezon City'),(1278,'Barangay 469','Manila'),(1279,'Barangay 729','Manila'),(1280,'Barangay 47','Manila'),(1281,'Barangay 73','Manila'),(1282,'Barangay 470','Manila'),(1283,'Barangay 730','Manila'),(1284,'Barangay 471','Manila'),(1285,'Capri','Quezon City'),(1286,'Barangay 731','Manila'),(1287,'Barangay 472','Manila'),(1288,'Central','Quezon City'),(1289,'Barangay 473','Manila'),(1290,'Claro','Quezon City'),(1291,'Barangay 474','Manila'),(1292,'Commonwealth','Quezon City'),(1293,'Culiat','Quezon City'),(1294,'Barangay02','Caloocan'),(1295,'Barangay03','Caloocan'),(1296,'Barangay04','Caloocan'),(1297,'Damar','Quezon City'),(1298,'Barangay05','Caloocan'),(1299,'Damayan','Quezon City'),(1300,'Barangay06','Caloocan'),(1301,'Barangay07','Caloocan'),(1302,'Damayang Lagi','Quezon City'),(1303,'Barangay08','Caloocan'),(1304,'Del Monte','Quezon City'),(1305,'Barangay09','Caloocan'),(1306,'Dioquino Zobel','Quezon City'),(1307,'Barangay1','Caloocan'),(1308,'Barangay10','Caloocan'),(1309,'Don Manuel','Quezon City'),(1310,'Barangay 732','Manila'),(1311,'Barangay11','Caloocan'),(1312,'Doña Imelda','Quezon City'),(1313,'Barangay 733','Manila'),(1314,'Barangay12','Caloocan'),(1315,'Doña Josefa','Quezon City'),(1316,'Barangay 734','Manila'),(1317,'Barangay13','Caloocan'),(1318,'Duyan-duyan','Quezon City'),(1319,'Barangay 735','Manila'),(1320,'Barangay14','Caloocan'),(1321,'Barangay 736','Manila'),(1322,'Barangay15','Caloocan'),(1323,'Barangay 737','Manila'),(1324,'Barangay 738','Manila'),(1325,'Barangay 739','Manila'),(1326,'Barangay32','Manila'),(1327,'Barangay33','Manila'),(1328,'Barangay 74','Manila'),(1329,'Barangay34','Manila'),(1330,'Barangay 740','Manila'),(1331,'Barangay35','Manila'),(1332,'Barangay 741','Manila'),(1333,'Barangay36','Manila'),(1334,'Barangay 742','Manila'),(1335,'Barangay 743','Manila'),(1336,'Barangay37','Manila'),(1337,'Barangay 744','Manila'),(1338,'Barangay38','Manila'),(1339,'Barangay16','Caloocan'),(1340,'Barangay39','Manila'),(1341,'Barangay17','Caloocan'),(1342,'E. Rodriguez','Quezon City'),(1343,'Barangay 745','Manila'),(1344,'Barangay18','Caloocan'),(1345,'East Kamias','Quezon City'),(1346,'Barangay19','Caloocan'),(1347,'Barangay2','Caloocan'),(1348,'Escopa I','Quezon City'),(1349,'Barangay20','Caloocan'),(1350,'Barangay21','Caloocan'),(1351,'Barangay22','Caloocan'),(1352,'Barangay23','Caloocan'),(1353,'Barangay 746','Manila'),(1354,'Escopa II','Quezon City'),(1355,'Barangay24','Caloocan'),(1356,'Barangay 747','Manila'),(1357,'Barangay25','Caloocan'),(1358,'Barangay26','Caloocan'),(1359,'Barangay 748','Manila'),(1360,'Escopa III','Quezon City'),(1361,'Barangay27','Caloocan'),(1362,'Barangay4','Manila'),(1363,'Escopa IV','Quezon City'),(1364,'Barangay 749','Manila'),(1365,'Barangay40','Manila'),(1366,'Barangay 75','Manila'),(1367,'Barangay 750','Manila'),(1368,'Barangay41','Manila'),(1369,'Barangay28','Caloocan'),(1370,'Barangay42','Manila'),(1371,'Barangay29','Caloocan'),(1372,'Barangay3','Caloocan'),(1373,'Barangay43','Manila'),(1374,'Barangay 751','Manila'),(1375,'Barangay30','Caloocan'),(1376,'Barangay44','Manila'),(1377,'Barangay 752','Manila'),(1378,'Barangay45','Manila'),(1379,'Barangay 753','Manila'),(1380,'Barangay46','Manila'),(1381,'Barangay 754','Manila'),(1382,'Barangay47','Manila'),(1383,'Barangay 755','Manila'),(1384,'Barangay48','Manila'),(1385,'Barangay 756','Manila'),(1386,'Barangay49','Manila'),(1387,'Barangay 757','Manila'),(1388,'Barangay5','Manila'),(1389,'Barangay 758','Manila'),(1390,'Barangay50','Manila'),(1391,'Barangay 759','Manila'),(1392,'Barangay51','Manila'),(1393,'Barangay 76','Manila'),(1394,'Barangay52','Manila'),(1395,'Barangay 760','Manila'),(1396,'Barangay53','Manila'),(1397,'Barangay54','Manila'),(1398,'Barangay55','Manila'),(1399,'Barangay56','Manila'),(1400,'Barangay57','Manila'),(1401,'Barangay31','Caloocan'),(1402,'Fairview','Quezon City'),(1403,'Barangay32','Caloocan'),(1404,'Greater Lagro','Quezon City'),(1405,'Barangay33','Caloocan'),(1406,'Barangay34','Caloocan'),(1407,'Gulod','Quezon City'),(1408,'Barangay35','Caloocan'),(1409,'Holy Spirit','Quezon City'),(1410,'Barangay36','Caloocan'),(1411,'Horseshoe','Quezon City'),(1412,'Barangay37','Caloocan'),(1413,'Barangay58','Manila'),(1414,'Immaculate Concepcion','Quezon City'),(1415,'Barangay38','Caloocan'),(1416,'Barangay59','Manila'),(1417,'Barangay6','Manila'),(1418,'Barangay60','Manila'),(1419,'Barangay61','Manila'),(1420,'Barangay62','Manila'),(1421,'Barangay63','Manila'),(1422,'Barangay39','Caloocan'),(1423,'Barangay64','Manila'),(1424,'Barangay4','Caloocan'),(1425,'Barangay65','Manila'),(1426,'Barangay40','Caloocan'),(1427,'Barangay66','Manila'),(1428,'Barangay41','Caloocan'),(1429,'Barangay42','Caloocan'),(1430,'Barangay67','Manila'),(1431,'Barangay43','Caloocan'),(1432,'Barangay68','Manila'),(1433,'Kaligayahan','Quezon City'),(1434,'Barangay69','Manila'),(1435,'Kalusugan','Quezon City'),(1436,'Barangay7','Manila'),(1437,'Kamuning','Quezon City'),(1438,'Katipunan','Quezon City'),(1439,'Barangay70','Manila'),(1440,'Kaunlaran','Quezon City'),(1441,'Barangay71','Manila'),(1442,'Barangay72','Manila'),(1443,'Kristong Hari','Quezon City'),(1444,'Barangay73','Manila'),(1445,'Krus na Ligas','Quezon City'),(1446,'Barangay74','Manila'),(1447,'Laging Handa','Quezon City'),(1448,'Barangay75','Manila'),(1449,'Libis','Quezon City'),(1450,'Barangay76','Manila'),(1451,'Lourdes','Quezon City'),(1452,'Barangay77','Manila'),(1453,'Barangay78','Manila'),(1454,'Barangay44','Caloocan'),(1455,'Loyola Heights','Quezon City'),(1456,'Barangay45','Caloocan'),(1457,'Maharlika','Quezon City'),(1458,'Barangay46','Caloocan'),(1459,'Barangay47','Caloocan'),(1460,'Malaya','Quezon City'),(1461,'Barangay48','Caloocan'),(1462,'Mangga','Quezon City'),(1463,'Barangay49','Caloocan'),(1464,'Manresa','Quezon City'),(1465,'Barangay 761','Manila'),(1466,'Mariana','Quezon City'),(1467,'Mariblo','Quezon City'),(1468,'Marilag','Quezon City'),(1469,'Barangay 762','Manila'),(1470,'Masagana','Quezon City'),(1471,'Barangay 763','Manila'),(1472,'Masambong','Quezon City'),(1473,'Barangay 764','Manila'),(1474,'Matandang Balara','Quezon City'),(1475,'Barangay 765','Manila'),(1476,'Barangay5','Caloocan'),(1477,'Milagrosa','Quezon City'),(1478,'Barangay 766','Manila'),(1479,'Barangay50','Caloocan'),(1480,'N. S. Amoranto','Quezon City'),(1481,'Barangay 767','Manila'),(1482,'Barangay51','Caloocan'),(1483,'Nagkaisang Nayon','Quezon City'),(1484,'Barangay52','Caloocan'),(1485,'Barangay53','Caloocan'),(1486,'Barangay54','Caloocan'),(1487,'Barangay55','Caloocan'),(1488,'Barangay56','Caloocan'),(1489,'Barangay57','Caloocan'),(1490,'Barangay58','Caloocan'),(1491,'Barangay59','Caloocan'),(1492,'Barangay6','Caloocan'),(1493,'Barangay79','Manila'),(1494,'Barangay60','Caloocan'),(1495,'Barangay61','Caloocan'),(1496,'Barangay8','Manila'),(1497,'Barangay62','Caloocan'),(1498,'Barangay80','Manila'),(1499,'Barangay81','Manila'),(1500,'Barangay82','Manila'),(1501,'Barangay83','Manila'),(1502,'Barangay 768','Manila'),(1503,'Barangay84','Manila'),(1504,'Barangay 769','Manila'),(1505,'Barangay85','Manila'),(1506,'Barangay 77','Manila'),(1507,'Barangay86','Manila'),(1508,'Barangay 770','Manila'),(1509,'Nayong Kanluran','Quezon City'),(1510,'Barangay87','Manila'),(1511,'Barangay 771','Manila'),(1512,'New Era','Quezon City'),(1513,'Barangay88','Manila'),(1514,'North Fairview','Quezon City'),(1515,'Barangay89','Manila'),(1516,'Novaliches Proper','Quezon City'),(1517,'Barangay9','Manila'),(1518,'Barangay90','Manila'),(1519,'Obrero','Quezon City'),(1520,'Barangay91','Manila'),(1521,'Barangay63','Caloocan'),(1522,'Old Capitol Site','Quezon City'),(1523,'Barangay92','Manila'),(1524,'Barangay64','Caloocan'),(1525,'Barangay 772','Manila'),(1526,'Barangay65','Caloocan'),(1527,'Barangay66','Caloocan'),(1528,'Barangay67','Caloocan'),(1529,'Barangay68','Caloocan'),(1530,'Paang Bundok','Quezon City'),(1531,'Barangay69','Caloocan'),(1532,'Barangay7','Caloocan'),(1533,'Barangay70','Caloocan'),(1534,'Pag-ibig sa Nayon','Quezon City'),(1535,'Barangay71','Caloocan'),(1536,'Barangay72','Caloocan'),(1537,'Paligsahan','Quezon City'),(1538,'Barangay73','Caloocan'),(1539,'Paltok','Quezon City'),(1540,'Pansol','Quezon City'),(1541,'Paraiso','Quezon City'),(1542,'Pasong Putik Proper','Quezon City'),(1543,'Barangay74','Caloocan'),(1544,'Barangay 445','Manila'),(1545,'Pasong Tamo','Quezon City'),(1546,'Barangay75','Caloocan'),(1547,'Payatas','Quezon City'),(1548,'Barangay 446','Manila'),(1549,'Barangay76','Caloocan'),(1550,'Phil-Am','Quezon City'),(1551,'Barangay 447','Manila'),(1552,'Pinagkaisahan','Quezon City'),(1553,'Barangay 448','Manila'),(1554,'Pinyahan','Quezon City'),(1555,'Barangay 449','Manila'),(1556,'Project 6','Quezon City'),(1557,'Barangay93','Manila'),(1558,'Quirino 2-A','Quezon City'),(1559,'Barangay94','Manila'),(1560,'Barangay95','Manila'),(1561,'Barangay96','Manila'),(1562,'Quirino 2-B','Quezon City'),(1563,'Barangay97','Manila'),(1564,'Quirino 2-C','Quezon City'),(1565,'Quirino 3-A','Quezon City'),(1566,'Ramon Magsaysay','Quezon City'),(1567,'Roxas','Quezon City'),(1568,'Sacred Heart','Quezon City'),(1569,'Barangay77','Caloocan'),(1570,'Saint Ignatius','Quezon City'),(1571,'Barangay78','Caloocan'),(1572,'Barangay 45','Manila'),(1573,'Saint Peter','Quezon City'),(1574,'Barangay79','Caloocan'),(1575,'Barangay8','Caloocan'),(1576,'Salvacion','Quezon City'),(1577,'Barangay 450','Manila'),(1578,'Barangay98','Manila'),(1579,'San Agustin','Quezon City'),(1580,'Barangay 451','Manila'),(1581,'Barangay99','Manila'),(1582,'Barangay 452','Manila'),(1583,'Barangay 2','Manila'),(1584,'Barangay 453','Manila'),(1585,'Barangay 20','Manila'),(1586,'Barangay 454','Manila'),(1587,'Barangay 200','Manila'),(1588,'Barangay 455','Manila'),(1589,'Barangay80','Caloocan'),(1590,'Barangay 201','Manila'),(1591,'Barangay81','Caloocan'),(1592,'Barangay82','Caloocan'),(1593,'Barangay 202','Manila'),(1594,'Barangay83','Caloocan'),(1595,'Barangay 202-A','Manila'),(1596,'Barangay84','Caloocan'),(1597,'San Antonio','Quezon City'),(1598,'Barangay 203','Manila'),(1599,'San Bartolome','Quezon City'),(1600,'Barangay 204','Manila'),(1601,'San Isidro','Quezon City'),(1602,'Barangay 205','Manila'),(1603,'Barangay 206','Manila'),(1604,'San Isidro Labrador','Quezon City'),(1605,'Barangay 207','Manila'),(1606,'San Jose','Quezon City'),(1607,'Barangay 208','Manila'),(1608,'San Martin de Porres','Quezon City'),(1609,'Barangay 209','Manila'),(1610,'San Roque','Quezon City'),(1611,'Barangay85','Caloocan'),(1612,'Barangay 210','Manila'),(1613,'Barangay86','Caloocan'),(1614,'Barangay 211','Manila'),(1615,'Barangay 212','Manila'),(1616,'Barangay 213','Manila'),(1617,'Barangay87','Caloocan'),(1618,'Barangay 214','Manila'),(1619,'Barangay88','Caloocan'),(1620,'Barangay 215','Manila'),(1621,'Barangay9','Caloocan'),(1622,'Barangay 2','Caloocan'),(1623,'Barangay 216','Manila'),(1624,'Barangay 20','Caloocan'),(1625,'San Vicente','Quezon City'),(1626,'Barangay 217','Manila'),(1627,'Sangandaan','Quezon City'),(1628,'Barangay 218','Manila'),(1629,'Santa Cruz','Quezon City'),(1630,'Barangay 219','Manila'),(1631,'Santa Lucia','Quezon City'),(1632,'Barangay 220','Manila'),(1633,'Barangay 221','Manila'),(1634,'Santa Monica','Quezon City'),(1635,'Barangay 222','Manila'),(1636,'Santa Teresita','Quezon City'),(1637,'Barangay 223','Manila'),(1638,'Santo Cristo','Quezon City'),(1639,'Barangay 21','Caloocan'),(1640,'Barangay 224','Manila'),(1641,'Santo Domingo','Quezon City'),(1642,'Barangay 22','Caloocan'),(1643,'Barangay 225','Manila'),(1644,'Santo Niño','Quezon City'),(1645,'Barangay 23','Caloocan'),(1646,'Barangay 24','Caloocan'),(1647,'Barangay 226','Manila'),(1648,'Barangay 25','Caloocan'),(1649,'Barangay 26','Caloocan'),(1650,'Barangay 227','Manila'),(1651,'Santol','Quezon City'),(1652,'Barangay 228','Manila'),(1653,'Sauyo','Quezon City'),(1654,'Barangay 229','Manila'),(1655,'Barangay 230','Manila'),(1656,'Barangay 231','Manila'),(1657,'Barangay 232','Manila'),(1658,'Barangay 233','Manila'),(1659,'Barangay 234','Manila'),(1660,'Barangay 235','Manila'),(1661,'Barangay 236','Manila'),(1662,'Barangay 237','Manila'),(1663,'Barangay 238','Manila'),(1664,'Barangay 239','Manila'),(1665,'Barangay 240','Manila'),(1666,'Barangay 241','Manila'),(1667,'Barangay 242','Manila'),(1668,'Sienna','Quezon City'),(1669,'Barangay 456','Manila'),(1670,'Sikatuna Village','Quezon City'),(1671,'Barangay 457','Manila'),(1672,'Silangan','Quezon City'),(1673,'Barangay 458','Manila'),(1674,'Socorro','Quezon City'),(1675,'Barangay 459','Manila'),(1676,'South Triangle','Quezon City'),(1677,'Barangay 46','Manila'),(1678,'Tagumpay','Quezon City'),(1679,'Barangay 460','Manila'),(1680,'Talayan','Quezon City'),(1681,'Barangay 461','Manila'),(1682,'Talipapa','Quezon City'),(1683,'Barangay 462','Manila'),(1684,'Tandang Sora','Quezon City'),(1685,'Barangay 463','Manila'),(1686,'Tatalon','Quezon City'),(1687,'Barangay 464','Manila'),(1688,'Teachers Village East','Quezon City'),(1689,'Barangay 465','Manila'),(1690,'Barangay 466','Manila'),(1691,'Barangay 27','Caloocan'),(1692,'Barangay 467','Manila'),(1693,'Barangay 28','Caloocan'),(1694,'Teachers Village West','Quezon City'),(1695,'Barangay 468','Manila'),(1696,'Barangay 469','Manila'),(1697,'Barangay 47','Manila'),(1698,'U.P. Campus','Quezon City'),(1699,'Barangay 243','Manila'),(1700,'Barangay 29','Caloocan'),(1701,'Barangay 470','Manila'),(1702,'U.P. Village','Quezon City'),(1703,'Barangay 244','Manila'),(1704,'Barangay 3','Caloocan'),(1705,'Barangay 471','Manila'),(1706,'Barangay 245','Manila'),(1707,'Barangay 30','Caloocan'),(1708,'Barangay 472','Manila'),(1709,'Barangay 246','Manila'),(1710,'Barangay 473','Manila'),(1711,'Barangay 247','Manila'),(1712,'Barangay 474','Manila'),(1713,'Barangay 248','Manila'),(1714,'Barangay 475','Manila'),(1715,'Barangay 249','Manila'),(1716,'Barangay 476','Manila'),(1717,'Barangay 25','Manila'),(1718,'Barangay 477','Manila'),(1719,'Barangay 250','Manila'),(1720,'Barangay 251','Manila'),(1721,'Barangay 252','Manila'),(1722,'Barangay 253','Manila'),(1723,'Barangay 254','Manila'),(1724,'Barangay 255','Manila'),(1725,'Barangay 256','Manila'),(1726,'Ugong Norte','Quezon City'),(1727,'Barangay 257','Manila'),(1728,'Unang Sigaw','Quezon City'),(1729,'Barangay 31','Caloocan'),(1730,'Barangay 258','Manila'),(1731,'Valencia','Quezon City'),(1732,'Barangay 259','Manila'),(1733,'Vasra','Quezon City'),(1734,'Barangay 26','Manila'),(1735,'Veterans Village','Quezon City'),(1736,'Villa Maria Clara','Quezon City'),(1737,'West Kamias','Quezon City'),(1738,'West Triangle','Quezon City'),(1739,'White Plains','Quezon City'),(1740,'Barangay 478','Manila'),(1741,'Addition Hills','San Juan'),(1742,'Barangay 479','Manila'),(1743,'Barangay 48','Manila'),(1744,'Barangay 480','Manila'),(1745,'Barangay 481','Manila'),(1746,'Barangay 482','Manila'),(1747,'Barangay 483','Manila'),(1748,'Barangay 484','Manila'),(1749,'Barangay 485','Manila'),(1750,'Barangay 486','Manila'),(1751,'Barangay 32','Caloocan'),(1752,'Barangay 487','Manila'),(1753,'Barangay 33','Caloocan'),(1754,'Barangay 34','Caloocan'),(1755,'Barangay 488','Manila'),(1756,'Barangay 489','Manila'),(1757,'Barangay 49','Manila'),(1758,'Barangay 260','Manila'),(1759,'Barangay 490','Manila'),(1760,'Barangay 261','Manila'),(1761,'Barangay 491','Manila'),(1762,'Barangay 262','Manila'),(1763,'Barangay 492','Manila'),(1764,'Barangay 263','Manila'),(1765,'Barangay 493','Manila'),(1766,'Barangay 264','Manila'),(1767,'Barangay 35','Caloocan'),(1768,'Barangay 494','Manila'),(1769,'Barangay 265','Manila'),(1770,'Barangay 36','Caloocan'),(1771,'Barangay 266','Manila'),(1772,'Barangay 495','Manila'),(1773,'Barangay 37','Caloocan'),(1774,'Barangay 267','Manila'),(1775,'Barangay 496','Manila'),(1776,'Barangay 38','Caloocan'),(1777,'Barangay 268','Manila'),(1778,'Barangay 39','Caloocan'),(1779,'Barangay 497','Manila'),(1780,'Barangay 269','Manila'),(1781,'Barangay 4','Caloocan'),(1782,'Barangay 498','Manila'),(1783,'Barangay 270','Manila'),(1784,'Barangay 40','Caloocan'),(1785,'Barangay 499','Manila'),(1786,'Barangay 271','Manila'),(1787,'Barangay 41','Caloocan'),(1788,'Barangay 5','Manila'),(1789,'Barangay 272','Manila'),(1790,'Barangay 42','Caloocan'),(1791,'Barangay 50','Manila'),(1792,'Barangay 273','Manila'),(1793,'Barangay 43','Caloocan'),(1794,'Barangay 500','Manila'),(1795,'Barangay 274','Manila'),(1796,'Barangay 501','Manila'),(1797,'Barangay 275','Manila'),(1798,'Barangay 502','Manila'),(1799,'Balong-Bato','San Juan'),(1800,'Barangay 276','Manila'),(1801,'Barangay 503','Manila'),(1802,'Barangay 28','Manila'),(1803,'Barangay 504','Manila'),(1804,'Barangay 505','Manila'),(1805,'Barangay 44','Caloocan'),(1806,'Barangay 506','Manila'),(1807,'Barangay 45','Caloocan'),(1808,'Barangay 507','Manila'),(1809,'Barangay 46','Caloocan'),(1810,'Barangay 508','Manila'),(1811,'Batis','San Juan'),(1812,'Barangay 47','Caloocan'),(1813,'Barangay 48','Caloocan'),(1814,'Barangay 509','Manila'),(1815,'Barangay 49','Caloocan'),(1816,'Barangay 51','Manila'),(1817,'Barangay 5','Caloocan'),(1818,'Barangay 50','Caloocan'),(1819,'Barangay 510','Manila'),(1820,'Barangay 51','Caloocan'),(1821,'Barangay 511','Manila'),(1822,'Barangay 52','Caloocan'),(1823,'Barangay 53','Caloocan'),(1824,'Barangay 512','Manila'),(1825,'Barangay 54','Caloocan'),(1826,'Barangay 513','Manila'),(1827,'Barangay 514','Manila'),(1828,'Barangay 281','Manila'),(1829,'Barangay 282','Manila'),(1830,'Corazon de Jesus','San Juan'),(1831,'Barangay 283','Manila'),(1832,'Ermitaño','San Juan'),(1833,'Barangay 284','Manila'),(1834,'Greenhills','San Juan'),(1835,'Barangay 285','Manila'),(1836,'Halo-halo','San Juan'),(1837,'Barangay 286','Manila'),(1838,'Barangay 515','Manila'),(1839,'Barangay 287','Manila'),(1840,'Barangay 516','Manila'),(1841,'Barangay 288','Manila'),(1842,'Barangay 517','Manila'),(1843,'Barangay 289','Manila'),(1844,'Barangay 518','Manila'),(1845,'Barangay 29','Manila'),(1846,'Barangay 519','Manila'),(1847,'Barangay 290','Manila'),(1848,'Barangay 52','Manila'),(1849,'Barangay 291','Manila'),(1850,'Barangay 520','Manila'),(1851,'Barangay 292','Manila'),(1852,'Barangay 521','Manila'),(1853,'Barangay 522','Manila'),(1854,'Barangay 293','Manila'),(1855,'Barangay 523','Manila'),(1856,'Barangay 294','Manila'),(1857,'Barangay 524','Manila'),(1858,'Barangay 295','Manila'),(1859,'Barangay 525','Manila'),(1860,'Barangay 296','Manila'),(1861,'Barangay 55','Caloocan'),(1862,'Barangay 297','Manila'),(1863,'Barangay 56','Caloocan'),(1864,'Barangay 298','Manila'),(1865,'Barangay 299','Manila'),(1866,'Barangay 3','Manila'),(1867,'Isabelita','San Juan'),(1868,'Barangay 30','Manila'),(1869,'Barangay 526','Manila'),(1870,'Kabayanan','San Juan'),(1871,'Barangay 300','Manila'),(1872,'Barangay 527','Manila'),(1873,'Barangay 301','Manila'),(1874,'Barangay 528','Manila'),(1875,'Barangay 529','Manila'),(1876,'Barangay 302','Manila'),(1877,'Barangay 53','Manila'),(1878,'Barangay 303','Manila'),(1879,'Barangay 530','Manila'),(1880,'Barangay 304','Manila'),(1881,'Barangay 531','Manila'),(1882,'Little Baguio','San Juan'),(1883,'Barangay 305','Manila'),(1884,'Barangay 532','Manila'),(1885,'Maytunas','San Juan'),(1886,'Barangay 306','Manila'),(1887,'Onse','San Juan'),(1888,'Barangay 307','Manila'),(1889,'Pasadeña','San Juan'),(1890,'Pedro Cruz','San Juan'),(1891,'Barangay 308','Manila'),(1892,'Barangay 309','Manila'),(1893,'Barangay 31','Manila'),(1894,'Progreso','San Juan'),(1895,'Barangay 310','Manila'),(1896,'Rivera','San Juan'),(1897,'Barangay 311','Manila'),(1898,'Salapan','San Juan'),(1899,'Barangay 312','Manila'),(1900,'San Perfecto','San Juan'),(1901,'Barangay 533','Manila'),(1902,'Barangay 313','Manila'),(1903,'Santa Lucia','San Juan'),(1904,'Barangay 534','Manila'),(1905,'Barangay 314','Manila'),(1906,'Tibagan','San Juan'),(1907,'West Crame','San Juan'),(1908,'Bagumbayan','Taguig'),(1909,'Bambang','Taguig'),(1910,'Calzada','Taguig'),(1911,'Central Bicutan','Taguig'),(1912,'Central Signal Village','Taguig'),(1913,'Barangay 57','Caloocan'),(1914,'Fort Bonifacio','Taguig'),(1915,'Barangay 58','Caloocan'),(1916,'Barangay 59','Caloocan'),(1917,'Barangay 6','Caloocan'),(1918,'Barangay 60','Caloocan'),(1919,'Barangay 61','Caloocan'),(1920,'Barangay 62','Caloocan'),(1921,'Barangay 63','Caloocan'),(1922,'Barangay 64','Caloocan'),(1923,'Barangay 65','Caloocan'),(1924,'Hagonoy','Taguig'),(1925,'Barangay 66','Caloocan'),(1926,'Barangay 535','Manila'),(1927,'Barangay 67','Caloocan'),(1928,'Ibayo-Tipas','Taguig'),(1929,'Barangay 68','Caloocan'),(1930,'Barangay 536','Manila'),(1931,'Barangay 69','Caloocan'),(1932,'Barangay 7','Caloocan'),(1933,'Barangay 70','Caloocan'),(1934,'Barangay 71','Caloocan'),(1935,'Barangay 72','Caloocan'),(1936,'Barangay 73','Caloocan'),(1937,'Barangay 74','Caloocan'),(1938,'Barangay 75','Caloocan'),(1939,'Barangay 76','Caloocan'),(1940,'Barangay 77','Caloocan'),(1941,'Katuparan','Taguig'),(1942,'Barangay 78','Caloocan'),(1943,'Barangay 79','Caloocan'),(1944,'Ligid-Tipas','Taguig'),(1945,'Barangay 537','Manila'),(1946,'Barangay 8','Caloocan'),(1947,'Lower Bicutan','Taguig'),(1948,'Barangay 538','Manila'),(1949,'Maharlika Village','Taguig'),(1950,'Barangay 539','Manila'),(1951,'Napindan','Taguig'),(1952,'Barangay 54','Manila'),(1953,'New Lower Bicutan','Taguig'),(1954,'Barangay 540','Manila'),(1955,'North Daang Hari','Taguig'),(1956,'Barangay 541','Manila'),(1957,'North Signal Village','Taguig'),(1958,'Barangay 542','Manila'),(1959,'Palingon','Taguig'),(1960,'Barangay 543','Manila'),(1961,'Pinagsama','Taguig'),(1962,'Barangay 544','Manila'),(1963,'San Miguel','Taguig'),(1964,'Barangay 545','Manila'),(1965,'Barangay 546','Manila'),(1966,'Barangay 547','Manila'),(1967,'Barangay 315','Manila'),(1968,'Barangay 548','Manila'),(1969,'Santa Ana','Taguig'),(1970,'Barangay 316','Manila'),(1971,'Barangay 549','Manila'),(1972,'Barangay 317','Manila'),(1973,'Barangay 55','Manila'),(1974,'Barangay 318','Manila'),(1975,'Barangay 550','Manila'),(1976,'Barangay 319','Manila'),(1977,'Barangay 551','Manila'),(1978,'Barangay 32','Manila'),(1979,'Barangay 552','Manila'),(1980,'Barangay 320','Manila'),(1981,'Barangay 553','Manila'),(1982,'Barangay 321','Manila'),(1983,'Barangay 554','Manila'),(1984,'Barangay 322','Manila'),(1985,'Barangay 555','Manila'),(1986,'South Daang Hari','Taguig'),(1987,'Barangay 323','Manila'),(1988,'Barangay 556','Manila'),(1989,'Barangay 324','Manila'),(1990,'Barangay 557','Manila'),(1991,'Barangay 325','Manila'),(1992,'Barangay 558','Manila'),(1993,'Barangay 559','Manila'),(1994,'Barangay 56','Manila'),(1995,'Barangay 560','Manila'),(1996,'Barangay 561','Manila'),(1997,'Barangay 562','Manila'),(1998,'Barangay 326','Manila'),(1999,'Barangay 563','Manila'),(2000,'Barangay 327','Manila'),(2001,'Barangay 564','Manila'),(2002,'Barangay 328','Manila'),(2003,'Barangay 565','Manila'),(2004,'Barangay 329','Manila'),(2005,'Barangay 566','Manila'),(2006,'Barangay 33','Manila'),(2007,'Barangay 567','Manila'),(2008,'Barangay 330','Manila'),(2009,'Barangay 331','Manila'),(2010,'Barangay 80','Caloocan'),(2011,'Barangay 81','Caloocan'),(2012,'Barangay 82','Caloocan'),(2013,'Barangay 332','Manila'),(2014,'Barangay 83','Caloocan'),(2015,'Barangay 333','Manila'),(2016,'Barangay 84','Caloocan'),(2017,'Barangay 85','Caloocan'),(2018,'Barangay 334','Manila'),(2019,'Barangay 86','Caloocan'),(2020,'Barangay 335','Manila'),(2021,'Barangay 87','Caloocan'),(2022,'Barangay 88','Caloocan'),(2023,'Barangay 336','Manila'),(2024,'Barangay 89','Caloocan'),(2025,'Barangay 337','Manila'),(2026,'Barangay 9','Caloocan'),(2027,'Barangay 568','Manila'),(2028,'Barangay 90','Caloocan'),(2029,'Barangay 91','Caloocan'),(2030,'Barangay 569','Manila'),(2031,'Barangay 92','Caloocan'),(2032,'Barangay 338','Manila'),(2033,'Barangay 57','Manila'),(2034,'Barangay 339','Manila'),(2035,'Barangay 570','Manila'),(2036,'South Signal Village','Taguig'),(2037,'Barangay 34','Manila'),(2038,'Barangay 571','Manila'),(2039,'Barangay 340','Manila'),(2040,'Barangay 93','Caloocan'),(2041,'Barangay 572','Manila'),(2042,'Barangay 341','Manila'),(2043,'Barangay 94','Caloocan'),(2044,'Barangay 573','Manila'),(2045,'Barangay 342','Manila'),(2046,'Barangay 95','Caloocan'),(2047,'Barangay 574','Manila'),(2048,'Barangay 343','Manila'),(2049,'Barangay 575','Manila'),(2050,'Barangay 344','Manila'),(2051,'Barangay 576','Manila'),(2052,'Barangay 345','Manila'),(2053,'Barangay 96','Caloocan'),(2054,'Barangay 577','Manila'),(2055,'Barangay 346','Manila'),(2056,'Barangay 97','Caloocan'),(2057,'Barangay 578','Manila'),(2058,'Barangay 347','Manila'),(2059,'Barangay 98','Caloocan'),(2060,'Barangay 579','Manila'),(2061,'Barangay 348','Manila'),(2062,'Barangay 99','Caloocan'),(2063,'Barangay 349','Manila'),(2064,'Almanza Dos','Las Piñas'),(2065,'Almanza Uno','Las Piñas'),(2066,'B. F. International Village','Las Piñas'),(2067,'Tanyag','Taguig'),(2068,'Daniel Fajardo','Las Piñas'),(2069,'Elias Aldana','Las Piñas'),(2070,'Tuktukan','Taguig'),(2071,'Ilaya','Las Piñas'),(2072,'Upper Bicutan','Taguig'),(2073,'Manuyo Dos','Las Piñas'),(2074,'Manuyo Uno','Las Piñas'),(2075,'Pamplona Dos','Las Piñas'),(2076,'Barangay 35','Manila'),(2077,'Barangay 350','Manila'),(2078,'Ususan','Taguig'),(2079,'Barangay 351','Manila'),(2080,'Pamplona Tres','Las Piñas'),(2081,'Wawa','Taguig'),(2082,'Barangay 352','Manila'),(2083,'Pamplona Uno','Las Piñas'),(2084,'Western Bicutan','Taguig'),(2085,'Barangay 353','Manila'),(2086,'Arkong Bato','Valenzuela'),(2087,'Barangay 354','Manila'),(2088,'Bagbaguin','Valenzuela'),(2089,'Barangay 355','Manila'),(2090,'Balangkas','Valenzuela'),(2091,'Barangay 58','Manila'),(2092,'Barangay 356','Manila'),(2093,'Bignay','Valenzuela'),(2094,'Barangay 580','Manila'),(2095,'Barangay 357','Manila'),(2096,'Barangay 581','Manila'),(2097,'Barangay 358','Manila'),(2098,'Barangay 582','Manila'),(2099,'Barangay 359','Manila'),(2100,'Barangay 583','Manila'),(2101,'Barangay 36','Manila'),(2102,'Barangay 584','Manila'),(2103,'Barangay 360','Manila'),(2104,'Barangay 585','Manila'),(2105,'Barangay 586','Manila'),(2106,'Barangay 587','Manila'),(2107,'Barangay 587-A','Manila'),(2108,'Barangay 361','Manila'),(2109,'Barangay 588','Manila'),(2110,'Barangay 362','Manila'),(2111,'Barangay 589','Manila'),(2112,'Barangay 363','Manila'),(2113,'Barangay 59','Manila'),(2114,'Bisig','Valenzuela'),(2115,'Barangay 364','Manila'),(2116,'Barangay 590','Manila'),(2117,'Canumay East','Valenzuela'),(2118,'Barangay 365','Manila'),(2119,'Barangay 591','Manila'),(2120,'Barangay 366','Manila'),(2121,'Barangay 592','Manila'),(2122,'Barangay 593','Manila'),(2123,'Barangay 594','Manila'),(2124,'Pilar','Las Piñas'),(2125,'Barangay 595','Manila'),(2126,'Barangay 367','Manila'),(2127,'Pulang Lupa Dos','Las Piñas'),(2128,'Barangay 368','Manila'),(2129,'Pulang Lupa Uno','Las Piñas'),(2130,'Barangay 369','Manila'),(2131,'Talon Dos','Las Piñas'),(2132,'Barangay 37','Manila'),(2133,'Talon Kuatro','Las Piñas'),(2134,'Barangay 596','Manila'),(2135,'Barangay 370','Manila'),(2136,'Barangay 597','Manila'),(2137,'Barangay 371','Manila'),(2138,'Barangay 598','Manila'),(2139,'Barangay 372','Manila'),(2140,'Talon Singko','Las Piñas'),(2141,'Barangay 599','Manila'),(2142,'Talon Tres','Las Piñas'),(2143,'Barangay 6','Manila'),(2144,'Talon Uno','Las Piñas'),(2145,'Barangay 373','Manila'),(2146,'Barangay 60','Manila'),(2147,'Zapote','Las Piñas'),(2148,'Barangay 374','Manila'),(2149,'Bangkal','Makati'),(2150,'Barangay 600','Manila'),(2151,'Barangay 375','Manila'),(2152,'Bel-Air','Makati'),(2153,'Barangay 601','Manila'),(2154,'Barangay 376','Manila'),(2155,'Barangay 602','Manila'),(2156,'Barangay 377','Manila'),(2157,'Barangay 603','Manila'),(2158,'Carmona','Makati'),(2159,'Barangay 378','Manila'),(2160,'Barangay 604','Manila'),(2161,'Cembo','Makati'),(2162,'Barangay 379','Manila'),(2163,'Comembo','Makati'),(2164,'Barangay 605','Manila'),(2165,'Dasmariñas','Makati'),(2166,'Barangay 606','Manila'),(2167,'East Rembo','Makati'),(2168,'Forbes Park','Makati'),(2169,'Barangay 607','Manila'),(2170,'Guadalupe Nuevo','Makati'),(2171,'Guadalupe Viejo','Makati'),(2172,'Barangay 608','Manila'),(2173,'Barangay 38','Manila'),(2174,'Barangay 609','Manila'),(2175,'Barangay 380','Manila'),(2176,'Kasilawan','Makati'),(2177,'Barangay 381','Manila'),(2178,'La Paz','Makati'),(2179,'Magallanes','Makati'),(2180,'Barangay 382','Manila'),(2181,'Olympia','Makati'),(2182,'Barangay 383','Manila'),(2183,'Palanan','Makati'),(2184,'Canumay West','Valenzuela'),(2185,'Coloong','Valenzuela'),(2186,'Dalandanan','Valenzuela'),(2187,'Gen. T. de Leon','Valenzuela'),(2188,'Isla','Valenzuela'),(2189,'Barangay 384','Manila'),(2190,'Pembo','Makati'),(2191,'Karuhatan','Valenzuela'),(2192,'Barangay 61','Manila'),(2193,'Pinagkaisahan','Makati'),(2194,'Lawang Bato','Valenzuela'),(2195,'Pio del Pilar','Makati'),(2196,'Lingunan','Valenzuela'),(2197,'Pitogo','Makati'),(2198,'Barangay 385','Manila'),(2199,'Mabolo','Valenzuela'),(2200,'Poblacion','Makati'),(2201,'Barangay 386','Manila'),(2202,'Post Proper Northside','Makati'),(2203,'Barangay 387','Manila'),(2204,'Post Proper Southside','Makati'),(2205,'Rizal','Makati'),(2206,'Barangay 388','Manila'),(2207,'San Antonio','Makati'),(2208,'Barangay 389','Manila'),(2209,'San Isidro','Makati'),(2210,'San Lorenzo','Makati'),(2211,'Barangay 39','Manila'),(2212,'Santa Cruz','Makati'),(2213,'Barangay 390','Manila'),(2214,'Singkamas','Makati'),(2215,'Barangay 391','Manila'),(2216,'Barangay 392','Manila'),(2217,'South Cembo','Makati'),(2218,'Barangay 393','Manila'),(2219,'Barangay 610','Manila'),(2220,'Tejeros','Makati'),(2221,'Barangay 394','Manila'),(2222,'Barangay 611','Manila'),(2223,'Barangay 395','Manila'),(2224,'Barangay 612','Manila'),(2225,'Urdaneta','Makati'),(2226,'Barangay 396','Manila'),(2227,'Valenzuela','Makati'),(2228,'West Rembo','Makati'),(2229,'Acacia','Malabon'),(2230,'Baritan','Malabon'),(2231,'Bayan-bayanan','Malabon'),(2232,'Catmon','Malabon'),(2233,'Barangay 397','Manila'),(2234,'Concepcion','Malabon'),(2235,'Malanday','Valenzuela'),(2236,'Barangay 398','Manila'),(2237,'Barangay 399','Manila'),(2238,'Barangay 4','Manila'),(2239,'Barangay 400','Manila'),(2240,'Malinta','Valenzuela'),(2241,'Barangay 401','Manila'),(2242,'Mapulang Lupa','Valenzuela'),(2243,'Barangay 402','Manila'),(2244,'Marulas','Valenzuela'),(2245,'Barangay 403','Manila'),(2246,'Maysan','Valenzuela'),(2247,'Barangay 404','Manila'),(2248,'Palasan','Valenzuela'),(2249,'Barangay 405','Manila'),(2250,'Parada','Valenzuela'),(2251,'Barangay 406','Manila'),(2252,'Barangay 407','Manila'),(2253,'Dampalit','Malabon'),(2254,'Flores','Malabon'),(2255,'Hulong Duhat','Malabon'),(2256,'Ibaba','Malabon'),(2257,'Longos','Malabon'),(2258,'Maysilo','Malabon'),(2259,'Muzon','Malabon'),(2260,'Niugan','Malabon'),(2261,'Panghulo','Malabon'),(2262,'Barangay 613','Manila'),(2263,'Potrero','Malabon'),(2264,'San Agustin','Malabon'),(2265,'Barangay 614','Manila'),(2266,'Santolan','Malabon'),(2267,'Barangay 615','Manila'),(2268,'Barangay 616','Manila'),(2269,'Tañong','Malabon'),(2270,'Barangay 617','Manila'),(2271,'Tinajeros','Malabon'),(2272,'Barangay 618','Manila'),(2273,'Tonsuya','Malabon'),(2274,'Tugatog','Malabon'),(2275,'Barangay 619','Manila'),(2276,'Barangay 62','Manila'),(2277,'Addition Hills','Mandaluyong'),(2278,'Bagong Silang','Mandaluyong'),(2279,'Barangka Drive','Mandaluyong'),(2280,'Barangka Ibaba','Mandaluyong'),(2281,'Barangka Ilaya','Mandaluyong'),(2282,'Barangka Itaas','Mandaluyong'),(2283,'Buayang Bato','Mandaluyong'),(2284,'Burol','Mandaluyong'),(2285,'Daang Bakal','Mandaluyong'),(2286,'Hagdang Bato Itaas','Mandaluyong'),(2287,'Hagdang Bato Libis','Mandaluyong'),(2288,'Harapin Ang Bukas','Mandaluyong'),(2289,'Highway Hills','Mandaluyong'),(2290,'Barangay 408','Manila'),(2291,'Barangay 620','Manila'),(2292,'Hulo','Mandaluyong'),(2293,'Barangay 409','Manila'),(2294,'Mabini-J. Rizal','Mandaluyong'),(2295,'Barangay 41','Manila'),(2296,'Malamig','Mandaluyong'),(2297,'Mauway','Mandaluyong'),(2298,'Barangay 410','Manila'),(2299,'Namayan','Mandaluyong'),(2300,'New Zañiga','Mandaluyong'),(2301,'Old Zañiga','Mandaluyong'),(2302,'Barangay 411','Manila'),(2303,'Pag-asa','Mandaluyong'),(2304,'Plainview','Mandaluyong'),(2305,'Barangay 412','Manila'),(2306,'Pleasant Hills','Mandaluyong'),(2307,'Barangay 413','Manila'),(2308,'Poblacion','Mandaluyong'),(2309,'San Jose','Mandaluyong'),(2310,'Barangay 414','Manila'),(2311,'Vergara','Mandaluyong'),(2312,'Barangay 415','Manila'),(2313,'Barangay 416','Manila'),(2314,'Wack-wack Greenhills','Mandaluyong'),(2315,'Barangay 417','Manila'),(2316,'Barangay','Manila'),(2317,'Barangay 418','Manila'),(2318,'Barangay0','Manila'),(2319,'Barangay00','Manila'),(2320,'Barangay01','Manila'),(2321,'Barangay02','Manila'),(2322,'Barangay03','Manila'),(2323,'Barangay 419','Manila'),(2324,'Barangay04','Manila'),(2325,'Barangay05','Manila'),(2326,'Barangay 42','Manila'),(2327,'Barangay06','Manila'),(2328,'Barangay07','Manila'),(2329,'Barangay08','Manila'),(2330,'Barangay09','Manila'),(2331,'Barangay 420','Manila'),(2332,'Barangay1','Manila'),(2333,'Barangay 421','Manila'),(2334,'Barangay10','Manila'),(2335,'Barangay 422','Manila'),(2336,'Barangay11','Manila'),(2337,'Barangay12','Manila'),(2338,'Barangay 423','Manila'),(2339,'Barangay16','Manila'),(2340,'Barangay 424','Manila'),(2341,'Barangay 425','Manila'),(2342,'Barangay 621','Manila'),(2343,'Barangay 426','Manila'),(2344,'Barangay17','Manila'),(2345,'Barangay 622','Manila'),(2346,'Barangay 427','Manila'),(2347,'Barangay18','Manila'),(2348,'Barangay 623','Manila'),(2349,'Barangay 428','Manila'),(2350,'Barangay 624','Manila'),(2351,'Barangay 429','Manila'),(2352,'Barangay 625','Manila'),(2353,'Barangay 43','Manila'),(2354,'Barangay 626','Manila'),(2355,'Barangay 430','Manila'),(2356,'Barangay 627','Manila'),(2357,'Barangay 431','Manila'),(2358,'Barangay 628','Manila'),(2359,'Barangay 629','Manila'),(2360,'Barangay 63','Manila'),(2361,'Barangay19','Manila'),(2362,'Barangay2','Manila'),(2363,'Barangay20','Manila'),(2364,'Barangay21','Manila'),(2365,'Barangay22','Manila'),(2366,'Barangay23','Manila'),(2367,'Barangay 630','Manila'),(2368,'Barangay 631','Manila'),(2369,'Barangay24','Manila'),(2370,'Barangay 632','Manila'),(2371,'Barangay25','Manila'),(2372,'Barangay 633','Manila'),(2373,'Barangay26','Manila'),(2374,'Barangay27','Manila'),(2375,'Barangay 634','Manila'),(2376,'Barangay28','Manila'),(2377,'Barangay29','Manila'),(2378,'Barangay 635','Manila'),(2379,'Barangay 636','Manila'),(2380,'Barangay 637','Manila'),(2381,'Barangay 638','Manila'),(2382,'Barangay3','Manila'),(2383,'Barangay 432','Manila'),(2384,'Barangay 639','Manila'),(2385,'Barangay30','Manila'),(2386,'Barangay 433','Manila'),(2387,'Barangay 64','Manila'),(2388,'Barangay31','Manila'),(2389,'Barangay 434','Manila'),(2390,'Barangay 640','Manila'),(2391,'Barangay 435','Manila'),(2392,'Barangay 641','Manila'),(2393,'Barangay 642','Manila'),(2394,'Barangay 436','Manila'),(2395,'Barangay 643','Manila'),(2396,'Barangay 437','Manila'),(2397,'Barangay 644','Manila'),(2398,'Barangay 438','Manila'),(2399,'Barangay 645','Manila'),(2400,'Barangay 439','Manila'),(2401,'Barangay 646','Manila'),(2402,'Barangay 647','Manila'),(2403,'Barangay 648','Manila'),(2404,'Barangay 649','Manila'),(2405,'Barangay 65','Manila'),(2406,'Barangay 650','Manila'),(2407,'Barangay 651','Manila'),(2408,'Barangay 652','Manila'),(2409,'Barangay 743','Manila'),(2410,'Barangay 653','Manila'),(2411,'Barangay 744','Manila'),(2412,'Barangay80','Pasay'),(2413,'Barangay 745','Manila'),(2414,'Barangay81','Pasay'),(2415,'Barangay82','Pasay'),(2416,'Barangay 746','Manila'),(2417,'Barangay83','Pasay'),(2418,'Barangay 747','Manila'),(2419,'Barangay84','Pasay'),(2420,'Barangay 654','Manila'),(2421,'Barangay85','Pasay'),(2422,'Barangay 748','Manila'),(2423,'Barangay86','Pasay'),(2424,'Barangay 655','Manila'),(2425,'Barangay87','Pasay'),(2426,'Barangay 749','Manila'),(2427,'Barangay88','Pasay'),(2428,'Barangay89','Pasay'),(2429,'Barangay 75','Manila'),(2430,'Barangay9','Pasay'),(2431,'Barangay90','Pasay'),(2432,'Barangay 750','Manila'),(2433,'Barangay 656','Manila'),(2434,'Barangay91','Pasay'),(2435,'Barangay 751','Manila'),(2436,'Barangay92','Pasay'),(2437,'Barangay 657','Manila'),(2438,'Barangay 752','Manila'),(2439,'Barangay 658','Manila'),(2440,'Barangay 753','Manila'),(2441,'Barangay 659','Manila'),(2442,'Barangay 754','Manila'),(2443,'Barangay 659-A','Manila'),(2444,'Barangay 66','Manila'),(2445,'Barangay 660','Manila'),(2446,'Barangay 660-A','Manila'),(2447,'Barangay 755','Manila'),(2448,'Barangay 661','Manila'),(2449,'Barangay 756','Manila'),(2450,'Barangay 662','Manila'),(2451,'Barangay 757','Manila'),(2452,'Barangay 663','Manila'),(2453,'Barangay 758','Manila'),(2454,'Barangay 759','Manila'),(2455,'Barangay93','Pasay'),(2456,'Barangay 76','Manila'),(2457,'Barangay94','Pasay'),(2458,'Barangay 663-A','Manila'),(2459,'Barangay95','Pasay'),(2460,'Barangay 760','Manila'),(2461,'Barangay96','Pasay'),(2462,'Barangay 44','Manila'),(2463,'Barangay 664','Manila'),(2464,'Barangay 761','Manila'),(2465,'Barangay97','Pasay'),(2466,'Barangay 440','Manila'),(2467,'Barangay98','Pasay'),(2468,'Barangay 441','Manila'),(2469,'Barangay 664-A','Manila'),(2470,'Barangay 762','Manila'),(2471,'Barangay99','Pasay'),(2472,'Barangay 442','Manila'),(2473,'Barangay 443','Manila'),(2474,'Barangay 2','Pasay'),(2475,'Barangay 666','Manila'),(2476,'Barangay 763','Manila'),(2477,'Barangay 20','Pasay'),(2478,'Barangay 667','Manila'),(2479,'Barangay 200','Pasay'),(2480,'Barangay 201','Pasay'),(2481,'Barangay 444','Manila'),(2482,'Barangay 668','Manila'),(2483,'Barangay 669','Manila'),(2484,'Barangay 21','Pasay'),(2485,'Barangay 22','Pasay'),(2486,'Barangay 23','Pasay'),(2487,'Barangay 24','Pasay'),(2488,'Barangay 25','Pasay'),(2489,'Barangay 26','Pasay'),(2490,'Barangay 27','Pasay'),(2491,'Barangay 28','Pasay'),(2492,'Barangay 29','Pasay'),(2493,'Barangay 3','Pasay'),(2494,'Barangay 30','Pasay'),(2495,'Barangay 31','Pasay'),(2496,'Barangay 32','Pasay'),(2497,'Barangay 764','Manila'),(2498,'Barangay 765','Manila'),(2499,'Barangay 33','Pasay'),(2500,'Barangay 34','Pasay'),(2501,'Barangay 766','Manila'),(2502,'Barangay 35','Pasay'),(2503,'Barangay 67','Manila'),(2504,'Barangay 767','Manila'),(2505,'Barangay 36','Pasay'),(2506,'Barangay 37','Pasay'),(2507,'Barangay 768','Manila'),(2508,'Barangay 38','Pasay'),(2509,'Barangay 769','Manila'),(2510,'Barangay 39','Pasay'),(2511,'Barangay 670','Manila'),(2512,'Barangay 4','Pasay'),(2513,'Barangay 77','Manila'),(2514,'Barangay 671','Manila'),(2515,'Barangay 40','Pasay'),(2516,'Barangay 770','Manila'),(2517,'Barangay 672','Manila'),(2518,'Barangay 771','Manila'),(2519,'Pinagsama','Taguig'),(2520,'Barangay 673','Manila'),(2521,'San Miguel','Taguig'),(2522,'Barangay 772','Manila'),(2523,'Santa Ana','Taguig'),(2524,'Barangay 674','Manila'),(2525,'South Daang Hari','Taguig'),(2526,'Barangay 773','Manila'),(2527,'South Signal Village','Taguig'),(2528,'Tanyag','Taguig'),(2529,'Barangay 774','Manila'),(2530,'Tuktukan','Taguig'),(2531,'Upper Bicutan','Taguig'),(2532,'Ususan','Taguig'),(2533,'Barangay 775','Manila'),(2534,'Barangay 675','Manila'),(2535,'Wawa','Taguig'),(2536,'Barangay 776','Manila'),(2537,'Western Bicutan','Taguig'),(2538,'Barangay 676','Manila'),(2539,'Arkong Bato','Valenzuela'),(2540,'Bagbaguin','Valenzuela'),(2541,'Barangay 777','Manila'),(2542,'Balangkas','Valenzuela'),(2543,'Barangay 677','Manila'),(2544,'Bignay','Valenzuela'),(2545,'Barangay 778','Manila'),(2546,'Bisig','Valenzuela'),(2547,'Barangay 678','Manila'),(2548,'Canumay East','Valenzuela'),(2549,'Canumay West','Valenzuela'),(2550,'Barangay 779','Manila'),(2551,'Coloong','Valenzuela'),(2552,'Barangay 679','Manila'),(2553,'Dalandanan','Valenzuela'),(2554,'Barangay 78','Manila'),(2555,'Gen. T. de Leon','Valenzuela'),(2556,'Barangay 68','Manila'),(2557,'Isla','Valenzuela'),(2558,'Karuhatan','Valenzuela'),(2559,'Barangay 780','Manila'),(2560,'Lawang Bato','Valenzuela'),(2561,'Barangay 680','Manila'),(2562,'Lingunan','Valenzuela'),(2563,'Barangay 781','Manila'),(2564,'Mabolo','Valenzuela'),(2565,'Barangay 681','Manila'),(2566,'Malanday','Valenzuela'),(2567,'Barangay 782','Manila'),(2568,'Malinta','Valenzuela'),(2569,'Barangay 41','Pasay'),(2570,'Barangay 682','Manila'),(2571,'Mapulang Lupa','Valenzuela'),(2572,'Marulas','Valenzuela'),(2573,'Barangay 783','Manila'),(2574,'Barangay 42','Pasay'),(2575,'Maysan','Valenzuela'),(2576,'Barangay 683','Manila'),(2577,'Palasan','Valenzuela'),(2578,'Barangay 784','Manila'),(2579,'Parada','Valenzuela'),(2580,'Barangay 43','Pasay'),(2581,'Barangay 684','Manila'),(2582,'Pariancillo Villa','Valenzuela'),(2583,'Paso de Blas','Valenzuela'),(2584,'Barangay 44','Pasay'),(2585,'Barangay 785','Manila'),(2586,'Pasolo','Valenzuela'),(2587,'Barangay 685','Manila'),(2588,'Poblacion','Valenzuela'),(2589,'Barangay 45','Pasay'),(2590,'Pulo','Valenzuela'),(2591,'Barangay 786','Manila'),(2592,'Barangay 686','Manila'),(2593,'Barangay 46','Pasay'),(2594,'Punturin','Valenzuela'),(2595,'Rincon','Valenzuela'),(2596,'Barangay 787','Manila'),(2597,'Barangay 47','Pasay'),(2598,'Barangay 48','Pasay'),(2599,'Barangay 788','Manila'),(2600,'Barangay 49','Pasay'),(2601,'Barangay 687','Manila'),(2602,'Barangay 789','Manila'),(2603,'Barangay 5','Pasay'),(2604,'Tagalag','Valenzuela'),(2605,'Barangay 50','Pasay'),(2606,'Ugong','Valenzuela'),(2607,'Barangay 79','Manila'),(2608,'Viente Reales','Valenzuela'),(2609,'Barangay 51','Pasay'),(2610,'Wawang Pulo','Valenzuela'),(2611,'Barangay 52','Pasay'),(2612,'Barangay 790','Manila'),(2613,'Barangay 688','Manila'),(2614,'Barangay 53','Pasay'),(2615,'Barangay 791','Manila'),(2616,'Barangay 689','Manila'),(2617,'Barangay 54','Pasay'),(2618,'Barangay 792','Manila'),(2619,'Barangay 69','Manila'),(2620,'Barangay 793','Manila'),(2621,'Barangay 690','Manila'),(2622,'Barangay 794','Manila'),(2623,'Barangay 691','Manila'),(2624,'Barangay 55','Pasay'),(2625,'Barangay 795','Manila'),(2626,'Barangay 692','Manila'),(2627,'Barangay 56','Pasay'),(2628,'Barangay 796','Manila'),(2629,'Barangay 693','Manila'),(2630,'Barangay 57','Pasay'),(2631,'Barangay 797','Manila'),(2632,'Barangay 58','Pasay'),(2633,'Barangay 694','Manila'),(2634,'Barangay 59','Pasay'),(2635,'Barangay 798','Manila'),(2636,'Barangay 695','Manila'),(2637,'Barangay 6','Pasay'),(2638,'Barangay 799','Manila'),(2639,'Barangay 696','Manila'),(2640,'Barangay 60','Pasay'),(2641,'Barangay 8','Manila'),(2642,'Barangay 697','Manila'),(2643,'Barangay 61','Pasay'),(2644,'Barangay 80','Manila'),(2645,'Barangay 62','Pasay'),(2646,'Barangay 698','Manila'),(2647,'Barangay 63','Pasay'),(2648,'Barangay 800','Manila'),(2649,'Barangay 64','Pasay'),(2650,'Barangay 801','Manila'),(2651,'Barangay 65','Pasay'),(2652,'Barangay 802','Manila'),(2653,'Barangay 66','Pasay'),(2654,'Barangay 699','Manila'),(2655,'Barangay 67','Pasay'),(2656,'Barangay 803','Manila'),(2657,'Barangay 7','Manila'),(2658,'Barangay 68','Pasay'),(2659,'Barangay 804','Manila'),(2660,'Barangay 70','Manila'),(2661,'Barangay 69','Pasay'),(2662,'Barangay 805','Manila'),(2663,'Barangay 700','Manila'),(2664,'Barangay 7','Pasay'),(2665,'Barangay 806','Manila'),(2666,'Barangay 701','Manila'),(2667,'Barangay 807','Manila'),(2668,'Barangay 702','Manila'),(2669,'Barangay 808','Manila'),(2670,'Barangay 703','Manila'),(2671,'Barangay 809','Manila'),(2672,'Barangay 81','Manila'),(2673,'Barangay 704','Manila'),(2674,'Barangay 810','Manila'),(2675,'Barangay 811','Manila'),(2676,'Barangay 705','Manila'),(2677,'Barangay 706','Manila'),(2678,'Barangay 812','Manila'),(2679,'Barangay 707','Manila'),(2680,'Barangay 813','Manila'),(2681,'Barangay 708','Manila'),(2682,'Barangay 814','Manila'),(2683,'Barangay 709','Manila'),(2684,'Barangay 815','Manila'),(2685,'Barangay 816','Manila'),(2686,'Barangay 817','Manila'),(2687,'Barangay 71','Manila'),(2688,'Barangay 818','Manila'),(2689,'Barangay 710','Manila'),(2690,'Barangay 70','Pasay'),(2691,'Barangay 818-A','Manila'),(2692,'Barangay 711','Manila'),(2693,'Barangay 71','Pasay'),(2694,'Barangay 819','Manila'),(2695,'Barangay 72','Pasay'),(2696,'Barangay 712','Manila'),(2697,'Barangay 73','Pasay'),(2698,'Barangay 82','Manila'),(2699,'Barangay 713','Manila'),(2700,'Barangay 74','Pasay'),(2701,'Barangay 820','Manila'),(2702,'Barangay 714','Manila'),(2703,'Barangay 75','Pasay'),(2704,'Barangay 715','Manila'),(2705,'Barangay 821','Manila'),(2706,'Barangay 76','Pasay'),(2707,'Barangay 77','Pasay'),(2708,'Barangay 822','Manila'),(2709,'Barangay 716','Manila'),(2710,'Barangay 78','Pasay'),(2711,'Barangay 823','Manila'),(2712,'Barangay 717','Manila'),(2713,'Barangay 79','Pasay'),(2714,'Barangay 824','Manila'),(2715,'Barangay 8','Pasay'),(2716,'Barangay 718','Manila'),(2717,'Barangay 80','Pasay'),(2718,'Barangay 825','Manila'),(2719,'Barangay 719','Manila'),(2720,'Barangay 81','Pasay'),(2721,'Barangay 826','Manila'),(2722,'Barangay 72','Manila'),(2723,'Barangay 82','Pasay'),(2724,'Barangay 827','Manila'),(2725,'Barangay 720','Manila'),(2726,'Barangay 828','Manila'),(2727,'Barangay 829','Manila'),(2728,'Barangay 83','Manila'),(2729,'Barangay 830','Manila'),(2730,'Barangay 831','Manila'),(2731,'Barangay 721','Manila'),(2732,'Barangay 832','Manila'),(2733,'Barangay 833','Manila'),(2734,'Barangay 722','Manila'),(2735,'Barangay 834','Manila'),(2736,'Barangay 723','Manila'),(2737,'Barangay 724','Manila'),(2738,'Barangay 835','Manila'),(2739,'Barangay 725','Manila'),(2740,'Barangay 836','Manila'),(2741,'Barangay 726','Manila'),(2742,'Barangay 837','Manila'),(2743,'Barangay 727','Manila'),(2744,'Barangay 838','Manila'),(2745,'Barangay 83','Pasay'),(2746,'Barangay 728','Manila'),(2747,'Barangay 84','Pasay'),(2748,'Barangay 839','Manila'),(2749,'Barangay 85','Pasay'),(2750,'Barangay 729','Manila'),(2751,'Barangay 86','Pasay'),(2752,'Barangay 87','Pasay'),(2753,'Barangay 84','Manila'),(2754,'Barangay 88','Pasay'),(2755,'Barangay 73','Manila'),(2756,'Barangay 89','Pasay'),(2757,'Barangay 840','Manila'),(2758,'Barangay 9','Pasay'),(2759,'Barangay 730','Manila'),(2760,'Barangay 90','Pasay'),(2761,'Barangay 841','Manila'),(2762,'Barangay 91','Pasay'),(2763,'Barangay 731','Manila'),(2764,'Barangay 842','Manila'),(2765,'Barangay 843','Manila'),(2766,'Barangay 732','Manila'),(2767,'Barangay 844','Manila'),(2768,'Barangay 92','Pasay'),(2769,'Barangay 93','Pasay'),(2770,'Barangay 845','Manila'),(2771,'Barangay 94','Pasay'),(2772,'Barangay 733','Manila'),(2773,'Barangay 95','Pasay'),(2774,'Barangay 846','Manila'),(2775,'Barangay 96','Pasay'),(2776,'Barangay 97','Pasay'),(2777,'Barangay 734','Manila'),(2778,'Barangay 98','Pasay'),(2779,'Barangay 847','Manila'),(2780,'Barangay 99','Pasay'),(2781,'Barangay 735','Manila'),(2782,'Bagong Ilog','Pasig'),(2783,'Barangay 848','Manila'),(2784,'Bagong Katipunan','Pasig'),(2785,'Bambang','Pasig'),(2786,'Barangay 736','Manila'),(2787,'Barangay 849','Manila'),(2788,'Buting','Pasig'),(2789,'Caniogan','Pasig'),(2790,'Barangay 85','Manila'),(2791,'Barangay 737','Manila'),(2792,'Dela Paz','Pasig'),(2793,'Kalawaan','Pasig'),(2794,'Barangay 850','Manila'),(2795,'Barangay 738','Manila'),(2796,'Kapasigan','Pasig'),(2797,'Kapitolyo','Pasig'),(2798,'Barangay 851','Manila'),(2799,'Barangay 852','Manila'),(2800,'Barangay 739','Manila'),(2801,'Barangay 853','Manila'),(2802,'Barangay 74','Manila'),(2803,'Barangay 855','Manila'),(2804,'Barangay 740','Manila'),(2805,'Barangay 856','Manila'),(2806,'Malinao','Pasig'),(2807,'Barangay 741','Manila'),(2808,'Barangay 857','Manila'),(2809,'Barangay 742','Manila'),(2810,'Barangay 858','Manila'),(2811,'Barangay 859','Manila'),(2812,'Barangay 86','Manila'),(2813,'Barangay 860','Manila'),(2814,'Barangay 861','Manila'),(2815,'Barangay 862','Manila'),(2816,'Barangay 863','Manila'),(2817,'Barangay 864','Manila'),(2818,'Barangay 865','Manila'),(2819,'Barangay 866','Manila'),(2820,'Barangay 867','Manila'),(2821,'Barangay 868','Manila'),(2822,'Manggahan','Pasig'),(2823,'Barangay 869','Manila'),(2824,'Maybunga','Pasig'),(2825,'Oranbo','Pasig'),(2826,'Barangay 87','Manila'),(2827,'Palatiw','Pasig'),(2828,'Barangay 870','Manila'),(2829,'Pinagbuhatan','Pasig'),(2830,'Pineda','Pasig'),(2831,'Barangay 871','Manila'),(2832,'Rosario','Pasig'),(2833,'Sagad','Pasig'),(2834,'Barangay 872','Manila'),(2835,'San Antonio','Pasig'),(2836,'Barangay 873','Manila'),(2837,'San Joaquin','Pasig'),(2838,'San Jose','Pasig'),(2839,'San Miguel','Pasig'),(2840,'San Nicolas','Pasig'),(2841,'Santa Cruz','Pasig'),(2842,'Santa Lucia','Pasig'),(2843,'Santa Rosa','Pasig'),(2844,'Santo Tomas','Pasig'),(2845,'Santolan','Pasig'),(2846,'Sumilang','Pasig'),(2847,'Ugong','Pasig'),(2848,'Aguho','Pateros'),(2849,'Magtanggol','Pateros'),(2850,'Martires del 96','Pateros'),(2851,'Poblacion','Pateros'),(2852,'San Pedro','Pateros'),(2853,'San Roque','Pateros'),(2854,'Santa Ana','Pateros'),(2855,'Santo Rosario-Kanluran','Pateros'),(2856,'Santo Rosario-Silangan','Pateros'),(2857,'Tabacalera','Pateros'),(2858,'Alicia','Quezon City'),(2859,'Amihan','Quezon City'),(2860,'Apolonio Samson','Quezon City'),(2861,'Barangay 874','Manila'),(2862,'Aurora','Quezon City'),(2863,'Baesa','Quezon City'),(2864,'Bagbag','Quezon City'),(2865,'Barangay 875','Manila'),(2866,'Bagong Lipunan ng Crame','Quezon City'),(2867,'Barangay 876','Manila'),(2868,'Bagong Pag-asa','Quezon City'),(2869,'Bagong Silangan','Quezon City'),(2870,'Bagumbayan','Quezon City'),(2871,'Bagumbuhay','Quezon City'),(2872,'Bahay Toro','Quezon City'),(2873,'Balingasa','Quezon City'),(2874,'Balong Bato','Quezon City'),(2875,'Batasan Hills','Quezon City'),(2876,'Bayanihan','Quezon City'),(2877,'Blue Ridge A','Quezon City'),(2878,'Blue Ridge B','Quezon City'),(2879,'Botocan','Quezon City'),(2880,'Bungad','Quezon City'),(2881,'Camp Aguinaldo','Quezon City'),(2882,'Capri','Quezon City'),(2883,'Central','Quezon City'),(2884,'Claro','Quezon City'),(2885,'Commonwealth','Quezon City'),(2886,'Culiat','Quezon City'),(2887,'Damar','Quezon City'),(2888,'Damayan','Quezon City'),(2889,'Damayang Lagi','Quezon City'),(2890,'Del Monte','Quezon City'),(2891,'Dioquino Zobel','Quezon City'),(2892,'Don Manuel','Quezon City'),(2893,'Doña Imelda','Quezon City'),(2894,'Doña Josefa','Quezon City'),(2895,'Duyan-duyan','Quezon City'),(2896,'E. Rodriguez','Quezon City'),(2897,'East Kamias','Quezon City'),(2898,'Escopa I','Quezon City'),(2899,'Escopa II','Quezon City'),(2900,'Escopa III','Quezon City'),(2901,'Escopa IV','Quezon City'),(2902,'Fairview','Quezon City'),(2903,'Barangay 877','Manila'),(2904,'Greater Lagro','Quezon City'),(2905,'Gulod','Quezon City'),(2906,'Barangay 878','Manila'),(2907,'Holy Spirit','Quezon City'),(2908,'Barangay 879','Manila'),(2909,'Horseshoe','Quezon City'),(2910,'Barangay 88','Manila'),(2911,'Immaculate Concepcion','Quezon City'),(2912,'Barangay 880','Manila'),(2913,'Kaligayahan','Quezon City'),(2914,'Kalusugan','Quezon City'),(2915,'Barangay 881','Manila'),(2916,'Kamuning','Quezon City'),(2917,'Barangay 882','Manila'),(2918,'Barangay 883','Manila'),(2919,'Barangay 884','Manila'),(2920,'Barangay 885','Manila'),(2921,'Katipunan','Quezon City'),(2922,'Barangay 886','Manila'),(2923,'Kaunlaran','Quezon City'),(2924,'Barangay 887','Manila'),(2925,'Kristong Hari','Quezon City'),(2926,'Krus na Ligas','Quezon City'),(2927,'Barangay 888','Manila'),(2928,'Laging Handa','Quezon City'),(2929,'Barangay 889','Manila'),(2930,'Libis','Quezon City'),(2931,'Barangay 89','Manila'),(2932,'Barangay 890','Manila'),(2933,'Barangay 891','Manila'),(2934,'Barangay 892','Manila'),(2935,'Barangay 893','Manila'),(2936,'Barangay 894','Manila'),(2937,'Barangay 895','Manila'),(2938,'Barangay 896','Manila'),(2939,'Barangay 897','Manila'),(2940,'Barangay 898','Manila'),(2941,'Barangay 899','Manila'),(2942,'Barangay 9','Manila'),(2943,'Barangay 90','Manila'),(2944,'Barangay 900','Manila'),(2945,'Barangay 901','Manila'),(2946,'Barangay 902','Manila'),(2947,'Barangay 903','Manila'),(2948,'Barangay 904','Manila'),(2949,'Barangay 905','Manila'),(2950,'Barangay 91','Manila'),(2951,'Barangay 92','Manila'),(2952,'Barangay 93','Manila'),(2953,'Barangay 94','Manila'),(2954,'Barangay 95','Manila'),(2955,'Barangay 96','Manila'),(2956,'Barangay 97','Manila'),(2957,'Barangay 98','Manila'),(2958,'Barangay 99','Manila'),(2959,'Barangka','Marikina'),(2960,'Calumpang','Marikina'),(2961,'Concepcion Dos','Marikina'),(2962,'Concepcion Uno','Marikina'),(2963,'Fortune','Marikina'),(2964,'Industrial Valley','Marikina'),(2965,'Jesus de La Peña','Marikina'),(2966,'Lourdes','Quezon City'),(2967,'Malanday','Marikina'),(2968,'Loyola Heights','Quezon City'),(2969,'Marikina Heights','Marikina'),(2970,'Maharlika','Quezon City'),(2971,'Nangka','Marikina'),(2972,'Malaya','Quezon City'),(2973,'Mangga','Quezon City'),(2974,'Manresa','Quezon City'),(2975,'Parang','Marikina'),(2976,'Mariana','Quezon City'),(2977,'Mariblo','Quezon City'),(2978,'San Roque','Marikina'),(2979,'Marilag','Quezon City'),(2980,'Masagana','Quezon City'),(2981,'Santa Elena','Marikina'),(2982,'Masambong','Quezon City'),(2983,'Matandang Balara','Quezon City'),(2984,'Santo Niño','Marikina'),(2985,'Tañong','Marikina'),(2986,'Milagrosa','Quezon City'),(2987,'Tumana','Marikina'),(2988,'Alabang','Muntinlupa'),(2989,'N. S. Amoranto','Quezon City'),(2990,'Nagkaisang Nayon','Quezon City'),(2991,'Nayong Kanluran','Quezon City'),(2992,'New Era','Quezon City'),(2993,'North Fairview','Quezon City'),(2994,'Novaliches Proper','Quezon City'),(2995,'Bayanan','Muntinlupa'),(2996,'Obrero','Quezon City'),(2997,'Old Capitol Site','Quezon City'),(2998,'Paang Bundok','Quezon City'),(2999,'Buli','Muntinlupa'),(3000,'Pag-ibig sa Nayon','Quezon City'),(3001,'Paligsahan','Quezon City'),(3002,'Paltok','Quezon City'),(3003,'Cupang','Muntinlupa'),(3004,'Pansol','Quezon City'),(3005,'New Alabang Village','Muntinlupa'),(3006,'Paraiso','Quezon City'),(3007,'Poblacion','Muntinlupa'),(3008,'Pasong Putik Proper','Quezon City'),(3009,'Pasong Tamo','Quezon City'),(3010,'Putatan','Muntinlupa'),(3011,'Payatas','Quezon City'),(3012,'Phil-Am','Quezon City'),(3013,'Sucat','Muntinlupa'),(3014,'Tunasan','Muntinlupa'),(3015,'Pinagkaisahan','Quezon City'),(3016,'Bagumbayan North','Navotas'),(3017,'Pinyahan','Quezon City'),(3018,'Project 6','Quezon City'),(3019,'Quirino 2-A','Quezon City'),(3020,'Bagumbayan South','Navotas'),(3021,'Quirino 2-B','Quezon City'),(3022,'Quirino 2-C','Quezon City'),(3023,'Bangculasi','Navotas'),(3024,'Quirino 3-A','Quezon City'),(3025,'Daanghari','Navotas'),(3026,'Ramon Magsaysay','Quezon City'),(3027,'NBBS Dagat-dagatan','Navotas'),(3028,'Roxas','Quezon City'),(3029,'Sacred Heart','Quezon City'),(3030,'Saint Ignatius','Quezon City'),(3031,'Saint Peter','Quezon City'),(3032,'Salvacion','Quezon City'),(3033,'NBBS Kaunlaran','Navotas'),(3034,'NBBS Proper','Navotas'),(3035,'San Agustin','Quezon City'),(3036,'San Antonio','Quezon City'),(3037,'San Bartolome','Quezon City'),(3038,'San Isidro','Quezon City'),(3039,'San Isidro Labrador','Quezon City'),(3040,'Navotas East','Navotas'),(3041,'Navotas West','Navotas'),(3042,'North Bay Boulevard North','Navotas'),(3043,'San Jose','Navotas'),(3044,'San Jose','Quezon City'),(3045,'San Martin de Porres','Quezon City'),(3046,'San Rafael Village','Navotas'),(3047,'San Roque','Quezon City'),(3048,'San Roque','Navotas'),(3049,'Sipac-Almacen','Navotas'),(3050,'San Vicente','Quezon City'),(3051,'Sangandaan','Quezon City'),(3052,'Santa Cruz','Quezon City'),(3053,'Santa Lucia','Quezon City'),(3054,'Tangos North','Navotas'),(3055,'Santa Monica','Quezon City'),(3056,'Santa Teresita','Quezon City'),(3057,'Santo Cristo','Quezon City'),(3058,'Tangos South','Navotas'),(3059,'Santo Domingo','Quezon City'),(3060,'Santo Niño','Quezon City'),(3061,'Santol','Quezon City'),(3062,'Tanza 1','Navotas'),(3063,'Sauyo','Quezon City'),(3064,'Sienna','Quezon City'),(3065,'Tanza 2','Navotas'),(3066,'Sikatuna Village','Quezon City'),(3067,'Silangan','Quezon City'),(3068,'Socorro','Quezon City'),(3069,'South Triangle','Quezon City'),(3070,'B. F. Homes','Parañaque'),(3071,'Baclaran','Parañaque'),(3072,'Don Bosco','Parañaque'),(3073,'Tagumpay','Quezon City'),(3074,'Talayan','Quezon City'),(3075,'Don Galo','Parañaque'),(3076,'Talipapa','Quezon City'),(3077,'La Huerta','Parañaque'),(3078,'Tandang Sora','Quezon City'),(3079,'Tatalon','Quezon City'),(3080,'Marcelo Green Village','Parañaque'),(3081,'Teachers Village East','Quezon City'),(3082,'Merville','Parañaque'),(3083,'Teachers Village West','Quezon City'),(3084,'U.P. Campus','Quezon City'),(3085,'U.P. Village','Quezon City'),(3086,'Ugong Norte','Quezon City'),(3087,'Moonwalk','Parañaque'),(3088,'Unang Sigaw','Quezon City'),(3089,'San Antonio','Parañaque'),(3090,'Valencia','Quezon City'),(3091,'San Dionisio','Parañaque'),(3092,'San Isidro','Parañaque'),(3093,'San Martin de Porres','Parañaque'),(3094,'Santo Niño','Parañaque'),(3095,'Vasra','Quezon City'),(3096,'Veterans Village','Quezon City'),(3097,'Sun Valley','Parañaque'),(3098,'Villa Maria Clara','Quezon City'),(3099,'Tambo','Parañaque'),(3100,'West Kamias','Quezon City'),(3101,'West Triangle','Quezon City'),(3102,'White Plains','Quezon City'),(3103,'Vitalez','Parañaque'),(3104,'Barangay','Pasay'),(3105,'Addition Hills','San Juan'),(3106,'Balong-Bato','San Juan'),(3107,'Barangay0','Pasay'),(3108,'Batis','San Juan'),(3109,'Corazon de Jesus','San Juan'),(3110,'Barangay00','Pasay'),(3111,'Ermitaño','San Juan'),(3112,'Barangay01','Pasay'),(3113,'Greenhills','San Juan'),(3114,'Halo-halo','San Juan'),(3115,'Barangay02','Pasay'),(3116,'Isabelita','San Juan'),(3117,'Barangay03','Pasay'),(3118,'Kabayanan','San Juan'),(3119,'Barangay04','Pasay'),(3120,'Little Baguio','San Juan'),(3121,'Barangay05','Pasay'),(3122,'Maytunas','San Juan'),(3123,'Barangay06','Pasay'),(3124,'Onse','San Juan'),(3125,'Barangay07','Pasay'),(3126,'Pasadeña','San Juan'),(3127,'Pedro Cruz','San Juan'),(3128,'Progreso','San Juan'),(3129,'Rivera','San Juan'),(3130,'Salapan','San Juan'),(3131,'San Perfecto','San Juan'),(3132,'Barangay08','Pasay'),(3133,'Santa Lucia','San Juan'),(3134,'Barangay09','Pasay'),(3135,'Tibagan','San Juan'),(3136,'Barangay1','Pasay'),(3137,'Barangay10','Pasay'),(3138,'West Crame','San Juan'),(3139,'Barangay11','Pasay'),(3140,'Bagumbayan','Taguig'),(3141,'Bambang','Taguig'),(3142,'Barangay12','Pasay'),(3143,'Calzada','Taguig'),(3144,'Central Bicutan','Taguig'),(3145,'Barangay13','Pasay'),(3146,'Central Signal Village','Taguig'),(3147,'Fort Bonifacio','Taguig'),(3148,'Barangay14','Pasay'),(3149,'Hagonoy','Taguig'),(3150,'Ibayo-Tipas','Taguig'),(3151,'Barangay15','Pasay'),(3152,'Katuparan','Taguig'),(3153,'Barangay16','Pasay'),(3154,'Ligid-Tipas','Taguig'),(3155,'Barangay17','Pasay'),(3156,'Lower Bicutan','Taguig'),(3157,'Barangay18','Pasay'),(3158,'Maharlika Village','Taguig'),(3159,'Napindan','Taguig'),(3160,'Barangay19','Pasay'),(3161,'New Lower Bicutan','Taguig'),(3162,'North Daang Hari','Taguig'),(3163,'North Signal Village','Taguig'),(3164,'Palingon','Taguig'),(3165,'Barangay2','Pasay'),(3166,'Barangay20','Pasay'),(3167,'Barangay21','Pasay'),(3168,'Barangay22','Pasay'),(3169,'Barangay23','Pasay'),(3170,'Barangay24','Pasay'),(3171,'Barangay25','Pasay'),(3172,'Barangay26','Pasay'),(3173,'Barangay27','Pasay'),(3174,'Barangay28','Pasay'),(3175,'Barangay29','Pasay'),(3176,'Barangay3','Pasay'),(3177,'Barangay30','Pasay'),(3178,'Barangay31','Pasay'),(3179,'Barangay32','Pasay'),(3180,'Barangay33','Pasay'),(3181,'Barangay34','Pasay'),(3182,'Barangay35','Pasay'),(3183,'Barangay36','Pasay'),(3184,'Barangay37','Pasay'),(3185,'Barangay38','Pasay'),(3186,'Barangay39','Pasay'),(3187,'Barangay4','Pasay'),(3188,'Barangay40','Pasay'),(3189,'Barangay41','Pasay'),(3190,'Barangay42','Pasay'),(3191,'Barangay43','Pasay'),(3192,'Barangay44','Pasay'),(3193,'Barangay45','Pasay'),(3194,'Barangay46','Pasay'),(3195,'Barangay47','Pasay'),(3196,'Barangay48','Pasay'),(3197,'Barangay49','Pasay'),(3198,'Barangay5','Pasay'),(3199,'Barangay50','Pasay'),(3200,'Barangay51','Pasay'),(3201,'Barangay52','Pasay'),(3202,'Barangay53','Pasay'),(3203,'Barangay54','Pasay'),(3204,'Barangay55','Pasay'),(3205,'Barangay56','Pasay'),(3206,'Barangay57','Pasay'),(3207,'Barangay58','Pasay'),(3208,'Barangay59','Pasay'),(3209,'Barangay6','Pasay'),(3210,'Barangay60','Pasay'),(3211,'Barangay61','Pasay'),(3212,'Barangay62','Pasay'),(3213,'Barangay63','Pasay'),(3214,'Barangay64','Pasay'),(3215,'Barangay65','Pasay'),(3216,'Barangay66','Pasay'),(3217,'Barangay67','Pasay'),(3218,'Barangay68','Pasay'),(3219,'Barangay69','Pasay'),(3220,'Barangay7','Pasay'),(3221,'Barangay70','Pasay'),(3222,'Barangay71','Pasay'),(3223,'Barangay72','Pasay'),(3224,'Barangay73','Pasay'),(3225,'Barangay74','Pasay'),(3226,'Barangay75','Pasay'),(3227,'Barangay76','Pasay'),(3228,'Barangay77','Pasay'),(3229,'Barangay78','Pasay'),(3230,'Barangay79','Pasay'),(3231,'Barangay8','Pasay');
/*!40000 ALTER TABLE `manila_brgy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metromanila_cities`
--

DROP TABLE IF EXISTS `metromanila_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metromanila_cities` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(1024) NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `idx_city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metromanila_cities`
--

LOCK TABLES `metromanila_cities` WRITE;
/*!40000 ALTER TABLE `metromanila_cities` DISABLE KEYS */;
INSERT INTO `metromanila_cities` VALUES (1,'Manila'),(2,'Quezon City'),(3,'Davao'),(4,'Caloocan City'),(5,'Canagatan'),(6,'Taguig City'),(7,'Pasig City'),(8,'Valenzuela'),(9,'City of Parañaque'),(10,'Bacoor'),(11,'Tondo'),(12,'Las Piñas City'),(13,'Pasay City'),(14,'Mandaluyong City'),(15,'Malabon'),(16,'San Pedro'),(17,'Navotas'),(18,'Santa Ana'),(19,'General Mariano Alvarez'),(20,'Payatas'),(21,'San Andres'),(22,'Santa Cruz'),(23,'San Juan'),(24,'Poblacion'),(25,'Santa Mesa'),(26,'Bagong Silangan'),(27,'Putatan'),(28,'Western Bicutan'),(29,'Banco Filipino International Village'),(30,'Paco'),(31,'Malate'),(32,'Pandacan'),(33,'San Isidro'),(34,'San Antonio'),(35,'Pateros'),(36,'Tatalon'),(37,'Sucat'),(38,'Don Bosco'),(39,'Lower Bicutan'),(40,'Bignay'),(41,'Bagumbayan'),(42,'Upper Bicutan'),(43,'Marikina Heights'),(44,'Central Signal Village'),(45,'Bayanan'),(46,'Karuhatan'),(47,'Bel-Air'),(48,'Santo Niño'),(49,'Pansol'),(50,'Baclaran'),(51,'West Rembo'),(52,'Bagong Pag-Asa'),(53,'Pinyahan');
/*!40000 ALTER TABLE `metromanila_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `period` (
  `period_id` int NOT NULL AUTO_INCREMENT,
  `period_time` varchar(255) NOT NULL,
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `print_number`
--

DROP TABLE IF EXISTS `print_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `print_number` (
  `print_id` int NOT NULL,
  `print_type` int NOT NULL,
  PRIMARY KEY (`print_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `print_number`
--

LOCK TABLES `print_number` WRITE;
/*!40000 ALTER TABLE `print_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `print_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession_type`
--

DROP TABLE IF EXISTS `profession_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profession_type` (
  `prof_id` int NOT NULL AUTO_INCREMENT,
  `prof_type` varchar(255) NOT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession_type`
--

LOCK TABLES `profession_type` WRITE;
/*!40000 ALTER TABLE `profession_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `profession_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purpose_type`
--

DROP TABLE IF EXISTS `purpose_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purpose_type` (
  `purpose_id` int NOT NULL,
  `purpose_type` int NOT NULL,
  PRIMARY KEY (`purpose_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purpose_type`
--

LOCK TABLES `purpose_type` WRITE;
/*!40000 ALTER TABLE `purpose_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `purpose_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_period`
--

DROP TABLE IF EXISTS `register_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_period` (
  `reg_id` int NOT NULL,
  `reg_period` varchar(255) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_period`
--

LOCK TABLES `register_period` WRITE;
/*!40000 ALTER TABLE `register_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_status`
--

DROP TABLE IF EXISTS `res_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_status` (
  `res_id` int NOT NULL,
  `res_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_status`
--

LOCK TABLES `res_status` WRITE;
/*!40000 ALTER TABLE `res_status` DISABLE KEYS */;
INSERT INTO `res_status` VALUES (0,NULL),(1,'Resident'),(2,'Non-resident');
/*!40000 ALTER TABLE `res_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rp_tax`
--

DROP TABLE IF EXISTS `rp_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rp_tax` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rp_tdn` varchar(255) NOT NULL,
  `rp_pin` varchar(255) NOT NULL,
  `rp_year` int NOT NULL,
  `rp_period` int NOT NULL,
  `rp_val_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rp_tax`
--

LOCK TABLES `rp_tax` WRITE;
/*!40000 ALTER TABLE `rp_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sex_type`
--

DROP TABLE IF EXISTS `sex_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sex_type` (
  `sex_id` int NOT NULL,
  `sex_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sex_id`),
  KEY `idx_sex_id` (`sex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sex_type`
--

LOCK TABLES `sex_type` WRITE;
/*!40000 ALTER TABLE `sex_type` DISABLE KEYS */;
INSERT INTO `sex_type` VALUES (0,NULL),(1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `sex_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suffix_type`
--

DROP TABLE IF EXISTS `suffix_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suffix_type` (
  `suffix_id` int NOT NULL,
  `suffix_type` varchar(255) NOT NULL,
  PRIMARY KEY (`suffix_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suffix_type`
--

LOCK TABLES `suffix_type` WRITE;
/*!40000 ALTER TABLE `suffix_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `suffix_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `mobile_no` varchar(45) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES ('09987764531','ancheta','AA4531'),('09887456654','aguilar','AA6654'),('09754137348','basa','AB7348'),('09998774654','luro','AL4654'),('09987745634','labindalawa','AL5634'),('09963541268','rodrigo','AR1268'),('09852456323','enriquez','BE6323'),('09112354786','aleta','CA4786'),('09997786523','cristobal','CC6523'),('09987456312','manjares','CM6312'),('09639765413','manapol','DM5413'),('09636163980','torres','DT3980'),('09877886546','sagadraca','GS6546'),('09756184906','dones','JD4906'),('09687465321','mendoza','JM5321'),('09998746533','pacris','JP6533'),('0996654123','camigla','LC4123'),('09778546322','alcala','MA6322'),('09233376652','alvarez','MA6652'),('09381676352','luna','ML6352'),('09761793284','matis','MM3284'),('12345678901','ppaa','PA8901'),('09770210586','maghirang','PM0586'),('09770987654','maghirang','PM7654'),('09454731741','lagaras','RL1741'),('09874456321','aquino','SA6321'),('09866531565','villaflor','TV1565');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contact`
--

DROP TABLE IF EXISTS `user_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contact` (
  `user_id` varchar(45) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `tel_no` int DEFAULT NULL,
  `user_municipal` int DEFAULT NULL,
  `user_brgy` int DEFAULT NULL,
  `user_dist` varchar(255) DEFAULT NULL,
  `user_zone` varchar(255) DEFAULT NULL,
  `user_addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_contact_user_municipal_idx` (`user_municipal`),
  CONSTRAINT `fk_user_contact_user_city` FOREIGN KEY (`user_municipal`) REFERENCES `metromanila_cities` (`city_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contact`
--

LOCK TABLES `user_contact` WRITE;
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
INSERT INTO `user_contact` VALUES ('AA4531',NULL,'09987764531',NULL,NULL,NULL,NULL,NULL,NULL),('AA6654',NULL,'09887456654',NULL,NULL,NULL,NULL,NULL,NULL),('AB7348',NULL,'09754137348',NULL,NULL,NULL,NULL,NULL,NULL),('AL4654',NULL,'09998774654',NULL,NULL,NULL,NULL,NULL,NULL),('AL5634',NULL,'09987745634',NULL,NULL,NULL,NULL,NULL,NULL),('AR1268',NULL,'09963541268',NULL,NULL,NULL,NULL,NULL,NULL),('BE6323',NULL,'09852456323',NULL,NULL,NULL,NULL,NULL,NULL),('CA4786',NULL,'09112354786',NULL,NULL,NULL,NULL,NULL,NULL),('CC6523',NULL,'09997786523',NULL,NULL,NULL,NULL,NULL,NULL),('CM6312',NULL,'09987456312',NULL,NULL,NULL,NULL,NULL,NULL),('DM5413',NULL,'09639765413',NULL,NULL,NULL,NULL,NULL,NULL),('DT3980',NULL,'09636163980',NULL,NULL,NULL,NULL,NULL,NULL),('GS6546',NULL,'09877886546',NULL,NULL,NULL,NULL,NULL,NULL),('JD4906',NULL,'09756184906',NULL,NULL,NULL,NULL,NULL,NULL),('JM5321',NULL,'09687465321',NULL,NULL,NULL,NULL,NULL,NULL),('JP6533',NULL,'09998746533',NULL,NULL,NULL,NULL,NULL,NULL),('LC4123',NULL,'0996654123',NULL,NULL,NULL,NULL,NULL,NULL),('MA6322',NULL,'09778546322',NULL,NULL,NULL,NULL,NULL,NULL),('MA6652',NULL,'09233376652',NULL,NULL,NULL,NULL,NULL,NULL),('ML6352',NULL,'09381676352',NULL,NULL,NULL,NULL,NULL,NULL),('PM0586',NULL,'09770210586',NULL,NULL,NULL,NULL,NULL,NULL),('RL1741','rugaras@gmail.com','09454731741',NULL,12,NULL,NULL,NULL,NULL),('SA6321',NULL,'09874456321',NULL,NULL,NULL,NULL,NULL,NULL),('TV1565',NULL,'09866531565',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_gov_id`
--

DROP TABLE IF EXISTS `user_gov_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_gov_id` (
  `user_id` varchar(255) NOT NULL,
  `user_tin_id` varchar(255) DEFAULT NULL,
  `user_pgb_id` varchar(255) DEFAULT NULL,
  `user_philh_id` varchar(255) DEFAULT NULL,
  `user_sss_id` varchar(255) DEFAULT NULL,
  `user_gsis_id` varchar(255) DEFAULT NULL,
  `user_natl_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_gov_id`
--

LOCK TABLES `user_gov_id` WRITE;
/*!40000 ALTER TABLE `user_gov_id` DISABLE KEYS */;
INSERT INTO `user_gov_id` VALUES ('RL1741','1234',NULL,'094',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_gov_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_personal`
--

DROP TABLE IF EXISTS `user_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_personal` (
  `user_id` varchar(45) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `suffix` varchar(45) DEFAULT NULL,
  `sex_id` int DEFAULT NULL,
  `cvl_id` int DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `b_place` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `czn_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_b_place` (`b_place`),
  KEY `idx_sex_id` (`sex_id`),
  KEY `idx_cvl_id` (`cvl_id`),
  CONSTRAINT `fk_user_personal_b_place` FOREIGN KEY (`b_place`) REFERENCES `metromanila_cities` (`city_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_personal_cvl_id` FOREIGN KEY (`cvl_id`) REFERENCES `cvl_status` (`cvl_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_personal_sex_id` FOREIGN KEY (`sex_id`) REFERENCES `sex_type` (`sex_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_personal`
--

LOCK TABLES `user_personal` WRITE;
/*!40000 ALTER TABLE `user_personal` DISABLE KEYS */;
INSERT INTO `user_personal` VALUES ('MM3284','Mhandee Louise','Bautista','Matis',NULL,2,2,NULL,17,NULL,NULL,NULL),('RL1741','Rufi Carlolita','Prudenciados','Lagaras',NULL,NULL,1,'2023-10-10',9,NULL,NULL,'paopogi@tup.edu.ph');
/*!40000 ALTER TABLE `user_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `mobile_no` varchar(45) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reg`
--

LOCK TABLES `user_reg` WRITE;
/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` VALUES (1,'Rufi Carl','Lagaras','09454731741','RL1741'),(4,'Atanacio Devinz','Basa','09754137348','AB7348'),(5,'Paolo','Maghirang','09770210586','PM0586'),(6,'Danilo','Torres','09636163980','DT3980'),(10,'Miles','Luna','09381676352','ML6352'),(11,'Jule','Dones','09756184906','JD4906'),(12,'Miah','Alvarez','09233376652','MA6652'),(13,'Dann Gabriel','Manapol','09639765413','DM5413'),(14,'Judgeson','Mendoza','09687465321','JM5321'),(15,'Maxine','Alcala','09778546322','MA6322'),(16,'Joyce','Pacris','09998746533','JP6533'),(17,'Christine','Cristobal','09997786523','CC6523'),(18,'Sandra','Aquino','09874456321','SA6321'),(19,'Lucky','Camigla','0996654123','LC4123'),(20,'Tristan','Villaflor','09866531565','TV1565'),(21,'Golden','Sagadraca','09877886546','GS6546'),(22,'Aepreha','Labindalawa','09987745634','AL5634'),(23,'Ailah','Rodrigo','09963541268','AR1268'),(24,'Andrea','Aguilar','09887456654','AA6654'),(25,'Angelene','Luro','09998774654','AL4654'),(26,'Ara Lou','Ancheta','09987764531','AA4531'),(27,'Bart Joshua','Enriquez','09852456323','BE6323'),(28,'Chrystal Zhane','Aleta','09112354786','CA4786'),(29,'Coline','Manjares','09987456312','CM6312');
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `year` (
  `year_id` int NOT NULL AUTO_INCREMENT,
  `year_time` int NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year`
--

LOCK TABLES `year` WRITE;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
/*!40000 ALTER TABLE `year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 12:49:04
