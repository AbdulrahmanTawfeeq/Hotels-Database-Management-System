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
-- Table structure for table `roomsphotos`
--

DROP TABLE IF EXISTS `roomsphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomsphotos` (
  `rpPhotoID` int NOT NULL AUTO_INCREMENT,
  `rpRoomsID` int NOT NULL,
  `rpPhotoPath` varchar(45) NOT NULL,
  `rpPhotoDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rpPhotoID`),
  KEY `fk_roomsPhotos_rooms1_idx` (`rpRoomsID`),
  CONSTRAINT `fk_roomsPhotos_rooms1` FOREIGN KEY (`rpRoomsID`) REFERENCES `rooms` (`rRoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomsphotos`
--

LOCK TABLES `roomsphotos` WRITE;
/*!40000 ALTER TABLE `roomsphotos` DISABLE KEYS */;
INSERT INTO `roomsphotos` VALUES (1,1,'/hotels/1/roomsphotos/1/photo.png',NULL),(2,2,'/hotels/1/roomsphotos/2/photo1.png',NULL),(3,3,'/hotels/1/roomsphotos/3/photo2.png',NULL),(4,4,'/hotels/1/roomsphotos/4/photo.png',NULL),(5,5,'/hotels/2/roomsphotos/5/photo1.png',NULL),(6,6,'/hotels/2/roomsphotos/6/photo2.png',NULL),(7,7,'/hotels/2/roomsphotos/6/photo3.png',NULL),(8,9,'/hotels/3/roomsphotos/9/photo.png',NULL),(9,10,'/hotels/3/roomsphotos/10/photo1.png',NULL),(10,11,'/hotels/3/roomsphotos/11/photo.png',NULL),(11,12,'/hotels/3/roomsphotos/12/photo1.png',NULL),(12,14,'/hotels/4/roomsphotos/14/photo1.png',NULL),(13,15,'/hotels/4/roomsphotos/15/photo1.png',NULL),(14,16,'/hotels/4/roomsphotos/16/photo1.png',NULL),(15,17,'/hotels/4/roomsphotos/17/photo1.png',NULL);
/*!40000 ALTER TABLE `roomsphotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:45
