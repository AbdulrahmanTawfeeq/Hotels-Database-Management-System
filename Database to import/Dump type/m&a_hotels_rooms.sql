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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `rRoomID` int NOT NULL AUTO_INCREMENT,
  `rHotelID` int NOT NULL,
  `rRoomStatusID` int NOT NULL,
  `rRoomNameID` int NOT NULL,
  `rMaxPas` int NOT NULL,
  `rFloor` int DEFAULT NULL,
  `rRoomsNumbers` int DEFAULT NULL,
  `rDescription` varchar(45) DEFAULT NULL,
  `rCustomName` varchar(45) DEFAULT NULL,
  `rSmokingPolicy` int DEFAULT NULL,
  `rRoomSize` double DEFAULT NULL,
  `rLowestPrice` double DEFAULT NULL,
  `rOfferLower` int DEFAULT NULL,
  `rDisscount` double DEFAULT NULL,
  `rCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rRoomID`),
  KEY `fk_rooms_hotels_idx` (`rHotelID`),
  KEY `fk_rooms_roomStatus1_idx` (`rRoomStatusID`),
  KEY `fk_rooms_roomsNames1_idx` (`rRoomNameID`),
  CONSTRAINT `fk_rooms_hotels` FOREIGN KEY (`rHotelID`) REFERENCES `hotels` (`hHotelID`),
  CONSTRAINT `fk_rooms_roomsNames1` FOREIGN KEY (`rRoomNameID`) REFERENCES `roomsnames` (`rnRoomNameID`),
  CONSTRAINT `fk_rooms_roomStatus1` FOREIGN KEY (`rRoomStatusID`) REFERENCES `roomstatus` (`rsRoomStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,2,1,1,1,14,'best single room','singles',1,12,35,1,30,'2020-06-09 19:53:20'),(2,1,2,20,1,1,10,'Normal single','singles second',1,10,25,0,0,'2020-06-09 19:53:21'),(3,1,2,36,3,3,33,'My double room','double room',0,30,45,1,20,'2020-06-09 19:53:21'),(4,1,1,40,4,5,32,'this type always reserved','for companies',1,35,59,0,0,'2020-06-09 19:53:21'),(5,2,2,1,1,3,44,'best room in the hotel','single 1',1,15,34,0,0,'2020-06-09 19:53:21'),(6,2,2,4,1,2,34,'with room service','single 2',1,22,46,0,0,'2020-06-09 19:53:22'),(7,2,2,40,3,1,32,'with balacone','double 1',1,34,66,0,0,'2020-06-09 19:53:22'),(8,2,2,36,5,2,21,'street view','double 2',1,53,67,0,0,'2020-06-09 19:53:22'),(9,3,2,1,1,1,34,'new bulding','best single type1',1,23,45,0,0,'2020-06-09 19:53:22'),(10,3,2,40,3,2,4,'having balacony','doubles',0,32,67,1,12,'2020-06-09 19:53:22'),(11,3,1,139,5,3,23,'best view','twins',1,43,74,1,12,'2020-06-09 19:53:22'),(12,3,2,94,7,4,12,'with seprate elevator','doubles',1,34,145,1,12,'2020-06-09 19:53:23'),(13,4,2,30,1,1,13,'best type single','single fresh',1,15,25,0,NULL,'2020-06-09 19:53:23'),(14,4,2,69,2,1,33,'enjoy yourtrip with','with disscount',1,33,34,0,NULL,'2020-06-09 19:53:23'),(15,4,2,104,3,2,32,'best choice','my fa',1,35,53,0,NULL,'2020-06-09 19:53:23'),(16,4,2,245,6,2,52,'you are going to the best room','nothing',1,53,56,0,NULL,'2020-06-09 19:53:23'),(17,4,2,353,6,2,31,'perfect place for family','families',1,42,67,0,NULL,'2020-06-09 19:53:23');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:53
