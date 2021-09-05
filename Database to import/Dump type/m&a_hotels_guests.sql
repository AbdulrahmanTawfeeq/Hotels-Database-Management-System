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
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `gGuestID` int NOT NULL AUTO_INCREMENT,
  `gFullName` varchar(45) DEFAULT NULL,
  `gUserName` varchar(45) DEFAULT NULL,
  `gPassword` varchar(45) DEFAULT NULL,
  `gAddress` varchar(45) DEFAULT NULL,
  `gAddress2` varchar(45) DEFAULT NULL,
  `gCity` varchar(45) DEFAULT NULL,
  `gState` varchar(45) DEFAULT NULL,
  `gZipCode` varchar(45) DEFAULT NULL,
  `gCountry` varchar(45) DEFAULT NULL,
  `gPhoneNumber` varchar(45) DEFAULT NULL,
  `gEmail` varchar(45) DEFAULT NULL,
  `gGender` varchar(45) DEFAULT NULL,
  `gStatus` int DEFAULT NULL,
  `gCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gGuestID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'Ali Abdullah Hama','ali','123456789','sarchnar',NULL,'sulaymaniyah','sulaymaniyah','46001','Iraq','0770000000','ali@guest.com','male',1,'2020-06-09 20:05:36'),(2,'Mahmood Kasim Jalal','mahmood','123456789','sarchnar',NULL,'sulaymaniyah','sulaymaniyah','46001','Iraq','0770000001','mahmood@guest.com','male',1,'2020-06-09 20:05:36'),(3,'Sarmad Hassan Ameen','sarmad','123456789','somewhere',NULL,'Mosul','Nainawa','41','Iraq','0770000002','sarmad@guest.com','male',1,'2020-06-09 20:05:36'),(4,'Mahmood Kalaf Jasim','mahmood1','123456789','Adamya',NULL,'Baghdad','Baghdad','10011','Iraq','0770000003','mah@guest.com','male',1,'2020-06-09 20:05:36');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `guestToUpper` BEFORE INSERT ON `guests` FOR EACH ROW SET NEW.gUserName =lower(new.gUserName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:45
