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
-- Table structure for table `policiesoptions`
--

DROP TABLE IF EXISTS `policiesoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policiesoptions` (
  `pPoliceID` int NOT NULL AUTO_INCREMENT,
  `pPoliceNameEn` varchar(255) NOT NULL,
  `pPoliceNameAr` varchar(255) DEFAULT NULL,
  `pPoliceNameKu` varchar(255) DEFAULT NULL,
  `pPoliceDescriptioin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pPoliceID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policiesoptions`
--

LOCK TABLES `policiesoptions` WRITE;
/*!40000 ALTER TABLE `policiesoptions` DISABLE KEYS */;
INSERT INTO `policiesoptions` VALUES (1,'days in advance can guests cancel free of charge','عدد الأيام التي يمكن للضيف الغاء الحجز بدون رسوم',NULL,NULL),(2,'or guests will pay 100%','خلاف ذلك سيدفع الزبون 100%',NULL,NULL),(3,'Protect against accidental bookings','الحماية من الحجوزات الوهمية',NULL,NULL),(4,'Check-in from','وقت النزول الى الفندق من',NULL,NULL),(5,'Check-in to','وقت النزول الى الفندق الى',NULL,NULL),(6,'Check-out from','وقت الخروج الى الفندق من',NULL,NULL),(7,'Check-out to','وقت الخروج الى الفندق الى',NULL,NULL),(8,'Children','الأطفال',NULL,NULL),(9,'allow pets','السماح للحيوانات',NULL,NULL),(10,'additional charges for pets','رسوم اضافية على الحيوانات',NULL,NULL);
/*!40000 ALTER TABLE `policiesoptions` ENABLE KEYS */;
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
