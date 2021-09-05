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
-- Table structure for table `ratetypes`
--

DROP TABLE IF EXISTS `ratetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratetypes` (
  `rtRateTypeID` int NOT NULL,
  `hotels_hHotelID` int NOT NULL,
  `rtRateType` varchar(45) DEFAULT NULL,
  `rtDescription` varchar(45) DEFAULT NULL,
  `rtSortOrder` varchar(45) DEFAULT NULL,
  `rtActive` int DEFAULT NULL,
  PRIMARY KEY (`rtRateTypeID`),
  KEY `fk_rateTypes_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_rateTypes_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratetypes`
--

LOCK TABLES `ratetypes` WRITE;
/*!40000 ALTER TABLE `ratetypes` DISABLE KEYS */;
INSERT INTO `ratetypes` VALUES (1,1,'Breakfast','+ Free Breakfast',NULL,1),(2,1,'breakfast&SwimmingPool','+ Swimming Pool  and Free  breakfast',NULL,1),(3,1,'SwimmingPool','+ Swimming pool',NULL,1),(4,1,'Fintenss','with fitness and sport bar',NULL,1),(5,2,'Breakfast','+ Free Breakfast',NULL,1),(6,2,'Fintenss','with fitness and sport bar',NULL,1),(7,2,'SwimmingPool','+ Swimming pool',NULL,1),(8,3,'breakfast&SwimmingPool','+ Swimming Pool  and Free  breakfast',NULL,1),(9,3,'Breakfast','+ Free Breakfast',NULL,1);
/*!40000 ALTER TABLE `ratetypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:46
