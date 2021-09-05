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
-- Table structure for table `facilitiesoptions`
--

DROP TABLE IF EXISTS `facilitiesoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilitiesoptions` (
  `fFaciliteID` int NOT NULL AUTO_INCREMENT,
  `fFaciliteNameEn` varchar(45) NOT NULL,
  `fFaciliteNameAr` varchar(45) DEFAULT NULL,
  `fFaciliteNameKu` varchar(45) DEFAULT NULL,
  `fFaciliteDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fFaciliteID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitiesoptions`
--

LOCK TABLES `facilitiesoptions` WRITE;
/*!40000 ALTER TABLE `facilitiesoptions` DISABLE KEYS */;
INSERT INTO `facilitiesoptions` VALUES (1,'Internet','خدمة الأنترنت',NULL,NULL),(2,'Parking','كراج ركن السيارات',NULL,NULL),(3,'Breakfast','فطور صباحي',NULL,NULL),(4,'Languages Spoken','الغات المتحدث بها',NULL,NULL),(5,'FreeWiFi','واي فاي مجاني',NULL,NULL),(6,'Restaurant','مطعم',NULL,NULL),(7,'Roomservice','خدمة الغرف',NULL,NULL),(8,'Bar','بار',NULL,NULL),(9,'24-hourfrontdesk','مكتب استقبال على مدار 24 ساعة',NULL,NULL),(10,'Sauna','ساونا',NULL,NULL),(11,'Fitnesscentre','مركز للياقة البدنية',NULL,NULL),(12,'Garden','حديقة',NULL,NULL),(13,'Terrace','تراس',NULL,NULL),(14,'Non-smokingrooms','غرف لغير المدخنين',NULL,NULL),(15,'Airportshuttle','خدمة نقل المطار',NULL,NULL),(16,'Familyrooms','غرف عائلية',NULL,NULL),(17,'Spaandwellnesscentre','منتجع صحي ومركز صحي',NULL,NULL),(18,'Hottub/jacuzzi','حوض استحمام ساخن/جاكوزي',NULL,NULL),(19,'Airconditioning','تكييف',NULL,NULL),(20,'Waterpark','ملهى مائي',NULL,NULL),(21,'Electricvehiclechargingstation','محطة شحن السيارات الكهربائية',NULL,NULL),(22,'Swimmingpool','مسبح',NULL,NULL);
/*!40000 ALTER TABLE `facilitiesoptions` ENABLE KEYS */;
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
