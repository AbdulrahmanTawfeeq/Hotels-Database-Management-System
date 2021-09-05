-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: m&a_hotels
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `amenitiesoptions`
--

DROP TABLE IF EXISTS `amenitiesoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenitiesoptions` (
  `aID` int NOT NULL AUTO_INCREMENT,
  `aEn` varchar(45) DEFAULT NULL,
  `aAr` varchar(45) DEFAULT NULL,
  `aKu` varchar(45) DEFAULT NULL,
  `aDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitiesoptions`
--

LOCK TABLES `amenitiesoptions` WRITE;
/*!40000 ALTER TABLE `amenitiesoptions` DISABLE KEYS */;
INSERT INTO `amenitiesoptions` VALUES (2,'Room amenities','مرفقات الغرفة',NULL,NULL),(3,'bathroom','حمّام',NULL,NULL),(4,'media & technology','ميديا وتكنولوجيا',NULL,NULL),(5,'Food & drink','مأكولات ومشروبات',NULL,NULL),(6,'Services & extras','الخدمات والإضافات',NULL,NULL),(7,'Outdoor & view','أنشطة خارجية وإطلالات',NULL,NULL),(8,'Layout','التصميم',NULL,NULL),(10,'Entertainment and family services','خدمات عائلية وترفيهية',NULL,NULL),(11,'Bath/Hot spring','ينابيع حارة',NULL,NULL);
/*!40000 ALTER TABLE `amenitiesoptions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:49
