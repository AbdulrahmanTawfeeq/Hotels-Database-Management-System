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
-- Table structure for table `hotels_has_amenitiesvalues`
--

DROP TABLE IF EXISTS `hotels_has_amenitiesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_has_amenitiesvalues` (
  `hotels_hHotelID` int NOT NULL,
  `amenitiesvalues_avID` int NOT NULL,
  PRIMARY KEY (`hotels_hHotelID`,`amenitiesvalues_avID`),
  KEY `fk_hotels_has_amenitiesvalues_amenitiesvalues1_idx` (`amenitiesvalues_avID`),
  KEY `fk_hotels_has_amenitiesvalues_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_hotels_has_amenitiesvalues_amenitiesvalues1` FOREIGN KEY (`amenitiesvalues_avID`) REFERENCES `amenitiesvalues` (`avID`),
  CONSTRAINT `fk_hotels_has_amenitiesvalues_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_has_amenitiesvalues`
--

LOCK TABLES `hotels_has_amenitiesvalues` WRITE;
/*!40000 ALTER TABLE `hotels_has_amenitiesvalues` DISABLE KEYS */;
INSERT INTO `hotels_has_amenitiesvalues` VALUES (1,9),(1,12),(1,32),(1,42),(1,44),(1,46),(1,47),(1,51),(1,61),(1,71),(1,80);
/*!40000 ALTER TABLE `hotels_has_amenitiesvalues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:51
