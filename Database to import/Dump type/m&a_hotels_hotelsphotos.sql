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
-- Table structure for table `hotelsphotos`
--

DROP TABLE IF EXISTS `hotelsphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelsphotos` (
  `hpID` int NOT NULL AUTO_INCREMENT,
  `hotels_hHotelID` int NOT NULL,
  `hpPath` varchar(255) DEFAULT NULL,
  `hpDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hpID`),
  KEY `fk_hotelsPhotos_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_hotelsPhotos_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelsphotos`
--

LOCK TABLES `hotelsphotos` WRITE;
/*!40000 ALTER TABLE `hotelsphotos` DISABLE KEYS */;
INSERT INTO `hotelsphotos` VALUES (1,1,'/hotels/14/photos/p1.png','Garden view'),(2,1,'/hotels/14/photos/p2.png','Reception view'),(3,1,'/hotels/14/photos/p3.png','hall'),(4,2,'/hotels/15/photos/p.png','outside'),(5,2,'/hotels/15/photos/photo.png','inside'),(6,2,'/hotels/15/photos/potose.png','caffe'),(7,2,'/hotels/15/photos/potose2.png','resturant'),(8,2,'/hotels/15/photos/potose4.png','pool'),(9,3,'/hotels/16/photos/new.png','view'),(10,3,'/hotels/16/photos/new2.png','terrace'),(11,3,'/hotels/16/photos/new3.png','garden'),(12,3,'/hotels/16/photos/new4.png','carrage'),(13,3,'/hotels/16/photos/new4.png','swimming pool view'),(14,3,'/hotels/16/photos/new5.png','sport bar'),(15,4,'/hotels/17/photos/Grand millinume1.png','building'),(16,4,'/hotels/17/photos/Grand millinume2.png','swimming Pool'),(17,4,'/hotels/17/photos/Grand millinume3.png','loby '),(18,4,'/hotels/17/photos/Grand millinume4.png','reception');
/*!40000 ALTER TABLE `hotelsphotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:48
