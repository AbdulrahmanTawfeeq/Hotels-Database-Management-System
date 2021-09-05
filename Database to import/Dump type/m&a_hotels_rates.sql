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
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `rRateID` int NOT NULL AUTO_INCREMENT,
  `rRoomsID` int NOT NULL,
  `rRateTypeID` int NOT NULL,
  `rRate` double DEFAULT NULL,
  `rDate` date DEFAULT NULL,
  `rARoomsNum` int DEFAULT NULL,
  `rAddingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rRateID`),
  KEY `fk_rates_rooms1_idx` (`rRoomsID`),
  KEY `fk_rates_rateTypes1_idx` (`rRateTypeID`),
  CONSTRAINT `fk_rates_rateTypes1` FOREIGN KEY (`rRateTypeID`) REFERENCES `ratetypes` (`rtRateTypeID`),
  CONSTRAINT `fk_rates_rooms1` FOREIGN KEY (`rRoomsID`) REFERENCES `rooms` (`rRoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,1,1,30,'2020-06-09',7,'2020-06-09 20:15:56'),(2,1,1,32,'2020-06-10',7,'2020-06-09 20:15:56'),(3,1,1,30,'2020-06-11',7,'2020-06-09 20:15:56'),(4,1,1,35,'2020-06-12',8,'2020-06-09 20:05:23'),(5,1,2,40,'2020-06-09',7,'2020-06-09 20:15:56'),(6,1,2,45,'2020-06-10',7,'2020-06-09 20:15:56'),(7,1,2,44,'2020-06-11',7,'2020-06-09 20:15:56'),(8,1,2,48,'2020-06-12',8,'2020-06-09 20:05:24'),(9,1,1,29,'2020-06-09',7,'2020-06-09 20:15:56'),(10,1,1,31,'2020-06-10',7,'2020-06-09 20:15:56'),(11,1,1,28,'2020-06-11',7,'2020-06-09 20:15:56'),(12,1,1,25,'2020-06-12',8,'2020-06-09 20:05:24'),(13,2,1,40,'2020-06-09',10,'2020-06-09 20:18:11'),(14,2,1,40,'2020-06-10',10,'2020-06-09 20:18:11'),(15,2,1,40,'2020-06-11',10,'2020-06-09 20:18:11'),(16,2,1,45,'2020-06-12',11,'2020-06-09 20:05:25'),(17,2,1,50,'2020-06-13',11,'2020-06-09 20:05:25'),(18,2,1,50,'2020-06-14',11,'2020-06-09 20:05:25'),(19,6,3,45,'2020-06-09',14,'2020-06-09 20:15:57'),(20,6,3,48,'2020-06-10',14,'2020-06-09 20:15:57'),(21,6,3,50,'2020-06-11',14,'2020-06-09 20:15:57'),(22,6,3,55,'2020-06-12',15,'2020-06-09 20:05:26'),(23,7,3,52,'2020-06-09',15,'2020-06-09 20:05:27'),(24,7,3,44,'2020-06-10',15,'2020-06-09 20:05:27'),(25,7,3,48,'2020-06-11',15,'2020-06-09 20:05:27'),(26,7,3,43,'2020-06-12',15,'2020-06-09 20:05:27'),(27,8,3,41,'2020-06-09',15,'2020-06-09 20:05:27'),(28,8,3,50,'2020-06-10',15,'2020-06-09 20:05:27'),(29,8,3,44,'2020-06-11',15,'2020-06-09 20:05:27'),(30,8,3,30,'2020-06-12',15,'2020-06-09 20:05:28'),(31,8,3,26,'2020-06-13',15,'2020-06-09 20:05:28'),(32,9,4,70,'2020-06-09',17,'2020-06-09 20:05:28'),(33,9,4,44,'2020-06-10',17,'2020-06-09 20:05:28'),(34,9,4,56,'2020-06-11',17,'2020-06-09 20:05:28'),(35,9,4,55,'2020-06-12',17,'2020-06-09 20:05:28'),(36,9,4,100,'2020-06-13',17,'2020-06-09 20:05:28'),(37,10,4,108,'2020-06-09',22,'2020-06-09 20:05:29'),(38,10,5,105,'2020-06-11',22,'2020-06-09 20:05:29'),(39,10,5,120,'2020-06-12',22,'2020-06-09 20:05:29'),(40,10,5,140,'2020-06-13',22,'2020-06-09 20:05:29'),(41,10,5,100,'2020-06-14',22,'2020-06-09 20:05:29'),(42,11,5,90,'2020-06-09',30,'2020-06-09 20:05:29'),(43,11,5,85,'2020-06-10',30,'2020-06-09 20:05:30'),(44,11,5,75,'2020-06-11',30,'2020-06-09 20:05:30'),(45,12,5,40,'2020-06-09',28,'2020-06-09 20:05:30'),(46,12,5,60,'2020-06-10',28,'2020-06-09 20:05:30'),(47,12,5,55,'2020-06-11',28,'2020-06-09 20:05:30'),(48,12,5,80,'2020-06-12',28,'2020-06-09 20:05:30');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:47