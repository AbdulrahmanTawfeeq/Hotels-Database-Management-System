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
-- Table structure for table `facilitesvalues`
--

DROP TABLE IF EXISTS `facilitesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilitesvalues` (
  `fID` int NOT NULL AUTO_INCREMENT,
  `fFacilitesOptionsID` int NOT NULL,
  `fOptionsEn` varchar(45) DEFAULT NULL,
  `fOptionsAr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fID`),
  KEY `fk_facilites_facilitiesOptions1_idx` (`fFacilitesOptionsID`),
  CONSTRAINT `fk_facilites_facilitiesOptions1` FOREIGN KEY (`fFacilitesOptionsID`) REFERENCES `facilitiesoptions` (`fFaciliteID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitesvalues`
--

LOCK TABLES `facilitesvalues` WRITE;
/*!40000 ALTER TABLE `facilitesvalues` DISABLE KEYS */;
INSERT INTO `facilitesvalues` VALUES (1,1,'Not Available','غير متاح'),(2,1,'Yes, Free','نعم ، مجانًا'),(3,1,'Yes, Paid','نعم ، مدفوع'),(4,2,'Not Available','غير متاح'),(5,2,'Yes, Free','نعم ، مجانًا'),(6,2,'Yes, Paid','نعم ، مدفوع'),(7,3,'Not Available','غير متاح'),(8,3,'Yes, included in the price','نعم ، مدرج في السعر'),(9,3,'Yes, it\'s Optional','نعم ، إنه اختياري'),(10,4,'English','الإنجليزية'),(11,4,'Arabic','عربى'),(12,4,'Kurdish','كردي'),(13,4,'French','فرنسي'),(14,4,'Russian','الروسية'),(15,4,'Spanish','الأسبانية'),(16,4,'Persian','اللغة الفارسية'),(17,4,'Turkish','اللغة التركية'),(18,5,'No','لا'),(19,5,'Yes','نعم'),(20,6,'No','لا'),(21,6,'Yes','نعم'),(22,7,'No','لا'),(23,7,'Yes','نعم'),(24,8,'No','لا'),(25,8,'Yes','نعم'),(26,9,'No','لا'),(27,9,'Yes','نعم'),(28,10,'No','لا'),(29,10,'Yes','نعم'),(30,11,'No','لا'),(31,11,'Yes','نعم'),(32,12,'No','لا'),(33,12,'Yes','نعم'),(34,13,'No','لا'),(35,13,'Yes','نعم'),(36,14,'No','لا'),(37,14,'Yes','نعم'),(38,15,'No','لا'),(39,15,'Yes','نعم'),(40,16,'No','لا'),(41,16,'Yes','نعم'),(42,17,'No','لا'),(43,17,'Yes','نعم'),(44,18,'No','لا'),(45,18,'Yes','نعم'),(46,19,'No','لا'),(47,19,'Yes','نعم'),(48,20,'No','لا'),(49,20,'Yes','نعم'),(50,21,'No','لا'),(51,21,'Yes','نعم'),(52,22,'No','لا'),(53,22,'Yes','نعم');
/*!40000 ALTER TABLE `facilitesvalues` ENABLE KEYS */;
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
