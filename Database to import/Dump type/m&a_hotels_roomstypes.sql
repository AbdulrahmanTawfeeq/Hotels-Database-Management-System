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
-- Table structure for table `roomstypes`
--

DROP TABLE IF EXISTS `roomstypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomstypes` (
  `rtRoomTypeID` int NOT NULL,
  `rtRoomTypeEn` varchar(45) DEFAULT NULL,
  `rRoomTypeAr` varchar(45) DEFAULT NULL,
  `rRoomTypeKu` varchar(45) DEFAULT NULL,
  `rtDescription` varchar(45) DEFAULT NULL,
  `rtSortOrder` varchar(45) DEFAULT NULL,
  `trActive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rtRoomTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomstypes`
--

LOCK TABLES `roomstypes` WRITE;
/*!40000 ALTER TABLE `roomstypes` DISABLE KEYS */;
INSERT INTO `roomstypes` VALUES (1,'Single','مفردة',NULL,NULL,NULL,NULL),(2,'Double','مزدوجة',NULL,NULL,NULL,NULL),(3,'Twin','توأمية',NULL,NULL,NULL,NULL),(4,'Twin/Double','توأمية/مزدوجة',NULL,NULL,NULL,NULL),(5,'Triple','غرفة ثلاثية',NULL,NULL,NULL,NULL),(6,'Quad','غرفة رباعية',NULL,NULL,NULL,NULL),(7,'Family','عائلية',NULL,NULL,NULL,NULL),(8,'Suite','جناح',NULL,NULL,NULL,NULL),(9,'Studio','استوديو',NULL,NULL,NULL,NULL),(10,'Appartment','شقة',NULL,NULL,NULL,NULL),(11,'Dorm Room','صالة نوم مشتركة',NULL,NULL,NULL,NULL),(12,'Bed In Dorm Room','سرير في مكان النَّوم',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `roomstypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:44
