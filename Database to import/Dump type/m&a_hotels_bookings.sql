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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `bBookingID` int NOT NULL AUTO_INCREMENT,
  `bHotelID` int NOT NULL,
  `bGuestID` int DEFAULT NULL,
  `Companies_cCompanyID` int DEFAULT NULL,
  `bBookingStatusID` int DEFAULT NULL,
  `bDateFrom` varchar(45) DEFAULT NULL,
  `bDateTo` varchar(45) DEFAULT NULL,
  `bNumOfNights` int DEFAULT NULL,
  `bNumOfGuests` int DEFAULT NULL,
  `bNumOfChildren` int DEFAULT NULL,
  `bCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bDisscount` double DEFAULT NULL,
  `bRateTypeID` int NOT NULL,
  `bPaymentStatusID` int NOT NULL DEFAULT '1',
  `bPaymentID` int NOT NULL,
  PRIMARY KEY (`bBookingID`),
  KEY `fk_bookings_hotels1_idx` (`bHotelID`),
  KEY `fk_bookings_guests1_idx` (`bGuestID`),
  KEY `fk_bookings_bookingStatus1_idx` (`bBookingStatusID`),
  KEY `fk_bookings_Companies1_idx` (`Companies_cCompanyID`),
  KEY `fk_bookings_rateTypes1_idx` (`bRateTypeID`),
  KEY `fk_bookings_paymentstatus1_idx` (`bPaymentStatusID`),
  KEY `fk_bookings_payments1_idx` (`bPaymentID`),
  CONSTRAINT `fk_bookings_bookingStatus1` FOREIGN KEY (`bBookingStatusID`) REFERENCES `bookingstatus` (`bsBookingStatusID`),
  CONSTRAINT `fk_bookings_Companies1` FOREIGN KEY (`Companies_cCompanyID`) REFERENCES `companies` (`cCompanyID`),
  CONSTRAINT `fk_bookings_guests1` FOREIGN KEY (`bGuestID`) REFERENCES `guests` (`gGuestID`),
  CONSTRAINT `fk_bookings_hotels1` FOREIGN KEY (`bHotelID`) REFERENCES `hotels` (`hHotelID`),
  CONSTRAINT `fk_bookings_payments1` FOREIGN KEY (`bPaymentID`) REFERENCES `payments` (`pID`),
  CONSTRAINT `fk_bookings_paymentstatus1` FOREIGN KEY (`bPaymentStatusID`) REFERENCES `paymentstatus` (`paymentStatusId`),
  CONSTRAINT `fk_bookings_rateTypes1` FOREIGN KEY (`bRateTypeID`) REFERENCES `ratetypes` (`rtRateTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,3,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:15:55',NULL,1,1,1),(2,2,4,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:15:56',NULL,1,1,1),(5,2,4,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:18:11',NULL,1,1,1),(7,2,4,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:18:26',NULL,1,1,2);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertNights` BEFORE INSERT ON `bookings` FOR EACH ROW SET NEW.bNumOfNights = DATEDIFF(NEW.bDateTo, NEW.bDateFrom) */;;
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
