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
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `hHotelID` int NOT NULL AUTO_INCREMENT,
  `hUserID` int NOT NULL,
  `hHotelName` varchar(45) DEFAULT NULL,
  `hHotelRating` varchar(45) DEFAULT NULL,
  `hAddress2` varchar(45) DEFAULT NULL,
  `hCity` varchar(45) NOT NULL,
  `hState` varchar(45) DEFAULT NULL,
  `hZipCode` varchar(45) DEFAULT NULL,
  `hMainPhoneNumber` varchar(45) DEFAULT NULL,
  `hNormalNumber` varchar(45) DEFAULT NULL,
  `hCompanyMailAddress` varchar(45) DEFAULT NULL,
  `hWebsiteAddress` varchar(45) DEFAULT NULL,
  `hLogoPath` varchar(45) DEFAULT NULL,
  `hActive` int DEFAULT NULL,
  `hAddress` varchar(45) NOT NULL,
  `hMapsLocation` varchar(255) DEFAULT NULL,
  `hCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hHotelID`),
  KEY `fk_hotels_users1_idx` (`hUserID`),
  CONSTRAINT `fk_hotels_users1` FOREIGN KEY (`hUserID`) REFERENCES `users` (`uUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,1,'Avenue','1','Sarchnar','Sulaymaniyah','1','40001','07702222222','0531223','avenue@avenue.com','avenue.com','hotels/1/logo.png',1,'Sarchnar','35.611812,45.349017,20z','2020-06-09 19:35:40'),(2,1,'Krestal','3','Sarchnar','Sulaymaniyah','1','40001','07702222223','0531225','krestal@krestal.com','krestal.com','hotels/2/logo.png',1,'Kurdsat','35.611812,45.349017,20z','2020-06-09 19:35:40'),(3,2,'Mamu Zain','2','Salim street','Sulaymaniyah','1','40001','07702222225','0531225','Mamu@zain.com','mamuzain.com','hotels/3/logo.png',1,'Salim street','35.611812,45.349017,20z','2020-06-09 19:35:40'),(4,2,'Grand millinume','3','Zargata','Sulaymaniyah','1','40001','07707000000','0531225','info@Grandmillinume.com','grandhotels.com','hotels/4/logo.png',1,'Zargata','35.611812,45.349017,20z','2020-06-09 19:35:41'),(5,3,'Kurdistan spa','4','Ibrahim Ahemd','Sulaymaniyah','1','40001','07706000000','0531225','info@kurdistanspa.com','grandhotels.com','hotels/5/logo.png',1,'Ibrahim Ahmed','35.611812,45.349017,20z','2020-06-09 19:35:41'),(6,4,'Dolphin Hotel','5','Main Bazar','Sulaymaniyah','1','40001','07707999999','0531225','info@dolphinhotel.com','dolphinhotel.com','hotels/6/logo.png',1,'Main Bazar','35.611812,45.349017,20z','2020-06-09 19:35:41'),(7,4,'Rawaz Hotel','6','Hawari Shar','Sulaymaniyah','1','40001','07707999999','0531225','rawaz@hotel.com','rawazhotel.com','hotels/7/logo.png',1,'Main Bazar','35.611812,45.349017,20z','2020-06-09 19:35:41'),(8,5,'Najim','4','Sardashi','Erbil','1','44000','07707999934','0531225','Sardashi@hotel.com','sardashi.com','hotels/8/logo.png',1,'Main road 100','36.195594,44.001188,14z','2020-06-09 19:35:41'),(9,5,'Sky','3','Mama sal ','Erbil','1','44000','07707999934','0531225','salmama@hotel.com','salamama.com','hotels/9/logo.png',1,'Sarwari, road 22','36.195594,44.001188,14z','2020-06-09 19:35:42'),(10,6,'Shabeel','3','Jazala road','Erbil','1','44000','07701212121','0531225','shabeel@hotel.com','shabeel.com','hotels/10/logo.png',1,'Main road','36.195594,44.001188,14z','2020-06-09 19:35:42'),(11,7,'Jmail','2','Main Bazar','Erbil','1','44000','07701212123','0531225','Jamil@hotel.com','jamil.com','hotels/11/logo.png',1,'Main Bazar','36.195594,44.001188,14z','2020-06-09 19:35:42'),(12,8,'Rodos','4','Main Bazar','Erbil','1','44000','07701212122','0531225','rodos@hotel.com','rodos.com','hotels/12/logo.png',1,'Main Bazar','36.195594,44.001188,14z','2020-06-09 19:35:42');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
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
