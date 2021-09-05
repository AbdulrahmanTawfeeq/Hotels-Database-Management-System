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
-- Table structure for table `policiesvalues`
--

DROP TABLE IF EXISTS `policiesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policiesvalues` (
  `pID` int NOT NULL AUTO_INCREMENT,
  `pPoliciesID` int NOT NULL,
  `pOptionEn` varchar(45) DEFAULT NULL,
  `pOptionAr` varchar(45) DEFAULT NULL,
  `pDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pID`),
  KEY `fk_policies_policiesOptions1_idx` (`pPoliciesID`),
  CONSTRAINT `fk_policies_policiesOptions1` FOREIGN KEY (`pPoliciesID`) REFERENCES `policiesoptions` (`pPoliceID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policiesvalues`
--

LOCK TABLES `policiesvalues` WRITE;
/*!40000 ALTER TABLE `policiesvalues` DISABLE KEYS */;
INSERT INTO `policiesvalues` VALUES (1,1,'Day of arrival (18:00)','يوم الوصول (18:00)',NULL),(2,1,'1 day','يوم 1',NULL),(3,1,'2 day','يومان',NULL),(4,1,'3 days','3 أيام',NULL),(5,1,'7 days','7 أيام',NULL),(6,1,'14 days','14 يوما',NULL),(7,2,'of the first night','الليلة الأولى',NULL),(8,2,'of the full stay','من الإقامة الكاملة',NULL),(9,3,'Yes','نعم',NULL),(10,3,'No','لا',NULL),(11,4,'12:00 PM','12:00 مسائا',NULL),(12,4,'2:00 PM','2:00:00 مسائا',NULL),(13,4,'3:00 PM','3:00:00 مسائا',NULL),(14,5,'12:00 PM','12:00 مسائا',NULL),(15,5,'10:00 PM','10:00 مسائا',NULL),(16,5,'12:00 AM','12:00 صباحا',NULL),(17,6,'12:00 AM','12:00 صباحا',NULL),(18,6,'10:00 AM','10:00 صباحا',NULL),(19,6,'12:00 PM','12:00 مسائا',NULL),(20,7,'10:00 AM','10:00 صباحا',NULL),(21,7,'11:00 AM','11:00 صباحا',NULL),(22,7,'12:00 PM','12:00 مسائا',NULL),(23,8,'Yes','نعم',NULL),(24,8,'No','لا',NULL),(25,9,'No','لا',NULL),(26,9,'Yes','نعم',NULL),(27,9,'Upon request','عند الطلب',NULL),(29,10,'Charges may apply(paid)','قد يتم تطبيق رسوم (مدفوعة)',NULL),(30,10,'','',NULL);
/*!40000 ALTER TABLE `policiesvalues` ENABLE KEYS */;
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
