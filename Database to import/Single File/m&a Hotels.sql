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
-- Table structure for table `adminhistory`
--

DROP TABLE IF EXISTS `adminhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminhistory` (
  `ahID` int NOT NULL AUTO_INCREMENT,
  `ahFullName` varchar(45) DEFAULT NULL,
  `ahUserName` varchar(45) DEFAULT NULL,
  `ahPassword` varchar(45) DEFAULT NULL,
  `ahEmail` varchar(45) DEFAULT NULL,
  `ahAtTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ahID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminhistory`
--

LOCK TABLES `adminhistory` WRITE;
/*!40000 ALTER TABLE `adminhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `aAdminID` int NOT NULL AUTO_INCREMENT,
  `aFullName` varchar(45) DEFAULT NULL,
  `aUserName` varchar(45) DEFAULT NULL,
  `aPassword` varchar(45) DEFAULT NULL,
  `aEmail` varchar(45) DEFAULT NULL,
  `aCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`aAdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Mohammed Salahadin Hazim','mohammed','123456789','mohammed.salahadinf18@komar.edu.iq','2020-06-09 19:31:31'),(2,'Abdulrahman Tawfiq','abdulrahman','123456789','abdulrahman.tofiqf18@komar.edu.iq','2020-06-09 19:31:31'),(3,'Salim Abdullah Salah','salim','123456789','salim@salim.com','2020-06-09 19:31:31'),(4,'Hama Rashid Ali','hama','123456789','hama@hama.com','2020-06-09 19:31:32'),(5,'Kamal Jamil Mustafa','kamal','123456789','kamal@kamal.com','2020-06-09 19:31:32'),(6,'Mohammed Salahadin Hazim','mohammed','123456789','mohammed.salahadinf18@komar.edu.iq','2020-06-09 19:40:19'),(7,'Abdulrahman Tawfiq','abdulrahman','123456789','abdulrahman.tofiqf18@komar.edu.iq','2020-06-09 19:40:19'),(8,'Salim Abdullah Salah','salim','123456789','salim@salim.com','2020-06-09 19:40:19'),(9,'Hama Rashid Ali','hama','123456789','hama@hama.com','2020-06-09 19:40:20'),(10,'Kamal Jamil Mustafa','kamal','123456789','kamal@kamal.com','2020-06-09 19:40:20');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `adminToUpper` BEFORE INSERT ON `admins` FOR EACH ROW SET NEW.aUserName =lower(new.aUserName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `adminInfoHistory` AFTER UPDATE ON `admins` FOR EACH ROW INSERT INTO adminhistory(ahFullName,ahUserName,ahPassword,ahEmail,ahAtTime)
VALUES(old.aFullName, old.aUserName, old.aPassword, old.aEmail, NOW()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `amenitiesoptions`
--

DROP TABLE IF EXISTS `amenitiesoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenitiesoptions` (
  `aID` int NOT NULL AUTO_INCREMENT,
  `aEn` varchar(45) DEFAULT NULL,
  `aAr` varchar(45) DEFAULT NULL,
  `aKu` varchar(45) DEFAULT NULL,
  `aDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitiesoptions`
--

LOCK TABLES `amenitiesoptions` WRITE;
/*!40000 ALTER TABLE `amenitiesoptions` DISABLE KEYS */;
INSERT INTO `amenitiesoptions` VALUES (2,'Room amenities','مرفقات الغرفة',NULL,NULL),(3,'bathroom','حمّام',NULL,NULL),(4,'media & technology','ميديا وتكنولوجيا',NULL,NULL),(5,'Food & drink','مأكولات ومشروبات',NULL,NULL),(6,'Services & extras','الخدمات والإضافات',NULL,NULL),(7,'Outdoor & view','أنشطة خارجية وإطلالات',NULL,NULL),(8,'Layout','التصميم',NULL,NULL),(10,'Entertainment and family services','خدمات عائلية وترفيهية',NULL,NULL),(11,'Bath/Hot spring','ينابيع حارة',NULL,NULL);
/*!40000 ALTER TABLE `amenitiesoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenitiesvalues`
--

DROP TABLE IF EXISTS `amenitiesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenitiesvalues` (
  `avID` int NOT NULL AUTO_INCREMENT,
  `amenitieOptionID` int NOT NULL,
  `avEn` varchar(255) DEFAULT NULL,
  `avAr` varchar(255) DEFAULT NULL,
  `avKu` varchar(255) DEFAULT NULL,
  `avDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `fk_amenities_amenitiesOptions1_idx` (`amenitieOptionID`),
  CONSTRAINT `fk_amenities_amenitiesOptions1` FOREIGN KEY (`amenitieOptionID`) REFERENCES `amenitiesoptions` (`aID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitiesvalues`
--

LOCK TABLES `amenitiesvalues` WRITE;
/*!40000 ALTER TABLE `amenitiesvalues` DISABLE KEYS */;
INSERT INTO `amenitiesvalues` VALUES (9,2,'Clothes rack','حمّالة ملابس',NULL,NULL),(10,2,'Drying rack for clothing','منشر للغسيل',NULL,NULL),(11,2,'Fold-up bed','سرير يمكن طويه',NULL,NULL),(12,2,'Sofa bed','سرير أريكة',NULL,NULL),(13,2,'Air conditioning','تكييف',NULL,NULL),(14,2,'Wardrobe or closet','خزانة',NULL,NULL),(15,2,'Carpeted','أرض مغطاة بالسجاد',NULL,NULL),(16,2,'Dressing Room','غرفة ملابس',NULL,NULL),(17,2,'Extra Long Beds (&gt; 2 metres)','أسرّة طويلة (أطول من مترين)',NULL,NULL),(18,2,'Fan','مروحة',NULL,NULL),(19,2,'Fireplace','مدفأة',NULL,NULL),(20,2,'Heating','تدفئة',NULL,NULL),(21,2,'Interconnected room(s) available','تتوفر غرفة / غرف متصلة',NULL,NULL),(22,2,'Ironing Facilities','مكواة',NULL,NULL),(23,2,'Mosquito net','مرافق كي الملابس',NULL,NULL),(24,2,'Private entrance','مدخل خاص',NULL,NULL),(25,2,'Safety Deposit Box','صندوق أمانات',NULL,NULL),(26,2,'Sofa','أريكة',NULL,NULL),(27,2,'Soundproofing','عازل للصوت',NULL,NULL),(28,2,'Seating Area','منطقة جلوس',NULL,NULL),(29,2,'Tile/Marble floor','بلاط / أرضية رخامية',NULL,NULL),(30,2,'Pants Press','مكواة بناطيل',NULL,NULL),(31,2,'Hardwood or parquet floors','أرضيات خشبية',NULL,NULL),(32,2,'Desk','مكتب',NULL,NULL),(33,2,'Hypoallergenic','مضادة للحساسية',NULL,NULL),(34,2,'Cleaning products','أدوات تنظيف',NULL,NULL),(35,2,'Electric blankets','بطانية كهربائية',NULL,NULL),(36,3,'Toilet paper','ورق حمام',NULL,NULL),(37,3,'Bath','حوض استحمام',NULL,NULL),(38,3,'Bidet','شطافة',NULL,NULL),(39,3,'Bath or Shower','حوض استحمام أو دش',NULL,NULL),(40,3,'Private bathroom','حمّام خاص',NULL,NULL),(41,3,'Free toiletries','لوازم استحمام مجانية',NULL,NULL),(42,3,'Hairdryer','مجفف شعر',NULL,NULL),(43,3,'Spa Bath','حوض سبا',NULL,NULL),(44,3,'Shared bathroom','حمّام مشترك',NULL,NULL),(45,3,'Shower','دش',NULL,NULL),(46,3,'Slippers','نعال',NULL,NULL),(47,3,'Toilet','مرحاض',NULL,NULL),(48,4,'Computer','كمبيوتر',NULL,NULL),(49,4,'Game console','مشغل ألعاب',NULL,NULL),(50,4,'Game console – Nintendo Wii','مع مشغل ألعاب Nintendo Wii',NULL,NULL),(51,4,'Game console – PS2','مشغل ألعاب - PS2',NULL,NULL),(52,4,'Game console – PS3','مشغل ألعاب - PS3',NULL,NULL),(53,4,'Game console – Xbox 360','مشغل ألعاب - Xbox 360',NULL,NULL),(54,4,'Laptop','لابتوب',NULL,NULL),(55,4,'iPad','iPad',NULL,NULL),(56,4,'Cable Channels','قنوات كابل',NULL,NULL),(57,4,'CD Player','مشغل CD',NULL,NULL),(58,4,'DVD Player','مشغل DVD',NULL,NULL),(59,4,'Fax','فاكس',NULL,NULL),(60,4,'iPod dock','قاعدة لتشغيل الـ iPod',NULL,NULL),(61,4,'Laptop safe','خزنة لابتوب',NULL,NULL),(62,4,'Flat-screen TV','تلفزيون بشاشة مسطحة',NULL,NULL),(63,4,'Pay-per-view Channels','قنوات مدفوعة',NULL,NULL),(64,4,'Radio','راديو',NULL,NULL),(65,4,'Satellite Channels','قنوات فضائية',NULL,NULL),(66,4,'Telephone','هاتف',NULL,NULL),(67,4,'TV','تلفزيون',NULL,NULL),(68,4,'Video','فيديو',NULL,NULL),(69,4,'Video Games','ألعاب فيديو',NULL,NULL),(70,4,'Blu-ray player','مشغل بلو راي (Blu-ray)',NULL,NULL),(71,5,'Dining area','منطقة لتناول الطعام',NULL,NULL),(72,5,'Dining table','طاولة لتناول الطعام',NULL,NULL),(73,5,'Barbecue','مرافق شواء',NULL,NULL),(74,5,'Stovetop','موقد',NULL,NULL),(75,5,'Toaster','محمصة خبز',NULL,NULL),(76,5,'Electric kettle','غلاية كهربائية',NULL,NULL),(77,5,'Outdoor dining area','منطقة خارجية لتناول الطعام',NULL,NULL),(78,5,'Outdoor furniture','أثاث خارجي',NULL,NULL),(79,5,'Minibar','ميني بار',NULL,NULL),(80,5,'Kitchenette','مطبخ صغير',NULL,NULL),(81,5,'Kitchenware','أدوات مطبخ',NULL,NULL),(82,5,'Microwave','ميكروويف',NULL,NULL),(83,5,'Refrigerator','ثلاجة',NULL,NULL),(84,5,'Tea/Coffee Maker','آلة صنع الشاي / القهوة',NULL,NULL),(85,5,'Coffee machine','آلة صنع القهوة',NULL,NULL),(86,5,'Children\'s high chair','كرسي مرتفع للأطفال',NULL,NULL),(87,6,'Executive Lounge Access','إمكانية الدخول إلى الصالة التنفيذية',NULL,NULL),(88,6,'Alarm clock','ساعة منبّهة',NULL,NULL),(89,6,'Wake-up service','خدمة إيقاظ',NULL,NULL),(90,6,'Wake Up Service/Alarm Clock','خدمة الإيقاظ / ساعة منبهة',NULL,NULL),(91,6,'Linen','بياضات أسرّة',NULL,NULL),(92,6,'Towels','مناشف',NULL,NULL),(93,6,'Towels/Sheets (extra fee)','مناشف / بياضات (بتكلفة إضافية)',NULL,NULL),(94,7,'Balcony','شرفة',NULL,NULL),(95,7,'Patio','باحة',NULL,NULL),(96,8,'View','إطلالة',NULL,NULL),(97,8,'Terrace','تراس',NULL,NULL),(98,8,'City view','إطلالة على المدينة',NULL,NULL),(99,8,'Garden view','إطلالة على الحديقة',NULL,NULL),(100,8,'Lake view','إطلالة على البحيرة',NULL,NULL),(101,8,'Landmark view','إطلالة على معلم',NULL,NULL),(102,8,'Mountain view','إطلالة على الجبل',NULL,NULL),(103,8,'Pool view','إطلالة على المسبح',NULL,NULL),(104,8,'River view','إطلالة على النهر',NULL,NULL),(105,8,'Sea view','إطلالة على البحر',NULL,NULL),(111,10,'Baby safety gates','بوابات سلامة للأطفال',NULL,NULL),(112,10,'Board games/puzzles','ألعاب لوحية / ألغاز',NULL,NULL),(113,10,'Books, DVDs, or music for children','كتب أو دي في دي (DVD) أو موسيقى للأطفال',NULL,NULL),(114,10,'Child safety socket covers','مقابس محمية للأطفال',NULL,NULL);
/*!40000 ALTER TABLE `amenitiesvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `available_hotels`
--

DROP TABLE IF EXISTS `available_hotels`;
/*!50001 DROP VIEW IF EXISTS `available_hotels`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `available_hotels` AS SELECT 
 1 AS `hHotelID`,
 1 AS `hUserID`,
 1 AS `hHotelName`,
 1 AS `hHotelRating`,
 1 AS `hAddress2`,
 1 AS `hCity`,
 1 AS `hState`,
 1 AS `hZipCode`,
 1 AS `hMainPhoneNumber`,
 1 AS `hNormalNumber`,
 1 AS `hCompanyMailAddress`,
 1 AS `hWebsiteAddress`,
 1 AS `hLogoPath`,
 1 AS `hActive`,
 1 AS `hAddress`,
 1 AS `hMapsLocation`,
 1 AS `hCreatingDate`,
 1 AS `rRoomID`,
 1 AS `rHotelID`,
 1 AS `rRoomStatusID`,
 1 AS `rRoomNameID`,
 1 AS `rMaxPas`,
 1 AS `rFloor`,
 1 AS `rRoomsNumbers`,
 1 AS `rDescription`,
 1 AS `rCustomName`,
 1 AS `rSmokingPolicy`,
 1 AS `rRoomSize`,
 1 AS `rLowestPrice`,
 1 AS `rOfferLower`,
 1 AS `rDisscount`,
 1 AS `rCreatingDate`,
 1 AS `rRateID`,
 1 AS `rRoomsID`,
 1 AS `rRateTypeID`,
 1 AS `rRate`,
 1 AS `rDate`,
 1 AS `rARoomsNum`,
 1 AS `rAddingDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `bBookingID` int NOT NULL AUTO_INCREMENT,
  `bHotelID` int NOT NULL,
  `bGuestID` int DEFAULT NULL,
  `Companies_cCompanyID` int DEFAULT NULL,
  `bBookingStatusID` int DEFAULT NULL,
  `bDateFrom` varchar(45) DEFAULT NULL,
  `bDateTo` varchar(45) DEFAULT NULL,
  `bNumOfNights` int DEFAULT NULL,
  `bNumOfGuests` int DEFAULT NULL,
  `bNumOfChildren` int DEFAULT NULL,
  `bCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bDisscount` double DEFAULT NULL,
  `bRateTypeID` int NOT NULL,
  `bPaymentStatusID` int NOT NULL DEFAULT '1',
  `bPaymentID` int NOT NULL,
  PRIMARY KEY (`bBookingID`),
  KEY `fk_bookings_hotels1_idx` (`bHotelID`),
  KEY `fk_bookings_guests1_idx` (`bGuestID`),
  KEY `fk_bookings_bookingStatus1_idx` (`bBookingStatusID`),
  KEY `fk_bookings_Companies1_idx` (`Companies_cCompanyID`),
  KEY `fk_bookings_rateTypes1_idx` (`bRateTypeID`),
  KEY `fk_bookings_paymentstatus1_idx` (`bPaymentStatusID`),
  KEY `fk_bookings_payments1_idx` (`bPaymentID`),
  CONSTRAINT `fk_bookings_bookingStatus1` FOREIGN KEY (`bBookingStatusID`) REFERENCES `bookingstatus` (`bsBookingStatusID`),
  CONSTRAINT `fk_bookings_Companies1` FOREIGN KEY (`Companies_cCompanyID`) REFERENCES `companies` (`cCompanyID`),
  CONSTRAINT `fk_bookings_guests1` FOREIGN KEY (`bGuestID`) REFERENCES `guests` (`gGuestID`),
  CONSTRAINT `fk_bookings_hotels1` FOREIGN KEY (`bHotelID`) REFERENCES `hotels` (`hHotelID`),
  CONSTRAINT `fk_bookings_payments1` FOREIGN KEY (`bPaymentID`) REFERENCES `payments` (`pID`),
  CONSTRAINT `fk_bookings_paymentstatus1` FOREIGN KEY (`bPaymentStatusID`) REFERENCES `paymentstatus` (`paymentStatusId`),
  CONSTRAINT `fk_bookings_rateTypes1` FOREIGN KEY (`bRateTypeID`) REFERENCES `ratetypes` (`rtRateTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,3,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:15:55',NULL,1,1,1),(2,2,4,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:15:56',NULL,1,1,1),(5,2,4,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:18:11',NULL,1,1,1),(7,2,4,NULL,NULL,'2020-06-09','2020-06-11',2,2,1,'2020-06-09 20:18:26',NULL,1,1,2);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertNights` BEFORE INSERT ON `bookings` FOR EACH ROW SET NEW.bNumOfNights = DATEDIFF(NEW.bDateTo, NEW.bDateFrom) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bookingstatus`
--

DROP TABLE IF EXISTS `bookingstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookingstatus` (
  `bsBookingStatusID` int NOT NULL,
  `bsStatus` varchar(45) DEFAULT NULL,
  `bsDescription` varchar(45) DEFAULT NULL,
  `bsSortOrder` varchar(45) DEFAULT NULL,
  `bsActive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bsBookingStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingstatus`
--

LOCK TABLES `bookingstatus` WRITE;
/*!40000 ALTER TABLE `bookingstatus` DISABLE KEYS */;
INSERT INTO `bookingstatus` VALUES (1,'Pending','whating for the hotel to confirm',NULL,NULL),(2,'Canceled-hotel','Canceld by hotel',NULL,NULL),(3,'Canceled-guest','Canceld by the guest or agency',NULL,NULL),(4,'Paid-confirmd','Paid and confirmed',NULL,NULL),(5,'Paid-unconfirmd','Paid but not confirmd by hotel',NULL,NULL);
/*!40000 ALTER TABLE `bookingstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `cCompanyID` int NOT NULL AUTO_INCREMENT,
  `cOwnerFullName` varchar(45) DEFAULT NULL,
  `cUserName` varchar(45) DEFAULT NULL,
  `cPassword` varchar(45) DEFAULT NULL,
  `cAddress` varchar(45) DEFAULT NULL,
  `cAddress2` varchar(45) DEFAULT NULL,
  `cCity` varchar(45) DEFAULT NULL,
  `cState` varchar(45) DEFAULT NULL,
  `cZipCode` varchar(45) DEFAULT NULL,
  `cPhoneNumber` varchar(45) DEFAULT NULL,
  `cEmail` varchar(45) DEFAULT NULL,
  `cStatus` int DEFAULT NULL,
  `cCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cCompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_has_faviroats`
--

DROP TABLE IF EXISTS `companies_has_faviroats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_has_faviroats` (
  `Companies_cCompanyID` int NOT NULL,
  `hotels_hHotelID` int NOT NULL,
  PRIMARY KEY (`Companies_cCompanyID`,`hotels_hHotelID`),
  KEY `fk_Companies_has_hotels_hotels1_idx` (`hotels_hHotelID`),
  KEY `fk_Companies_has_hotels_Companies1_idx` (`Companies_cCompanyID`),
  CONSTRAINT `fk_Companies_has_hotels_Companies1` FOREIGN KEY (`Companies_cCompanyID`) REFERENCES `companies` (`cCompanyID`),
  CONSTRAINT `fk_Companies_has_hotels_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_has_faviroats`
--

LOCK TABLES `companies_has_faviroats` WRITE;
/*!40000 ALTER TABLE `companies_has_faviroats` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies_has_faviroats` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `gGuestID` int NOT NULL AUTO_INCREMENT,
  `gFullName` varchar(45) DEFAULT NULL,
  `gUserName` varchar(45) DEFAULT NULL,
  `gPassword` varchar(45) DEFAULT NULL,
  `gAddress` varchar(45) DEFAULT NULL,
  `gAddress2` varchar(45) DEFAULT NULL,
  `gCity` varchar(45) DEFAULT NULL,
  `gState` varchar(45) DEFAULT NULL,
  `gZipCode` varchar(45) DEFAULT NULL,
  `gCountry` varchar(45) DEFAULT NULL,
  `gPhoneNumber` varchar(45) DEFAULT NULL,
  `gEmail` varchar(45) DEFAULT NULL,
  `gGender` varchar(45) DEFAULT NULL,
  `gStatus` int DEFAULT NULL,
  `gCreatingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gGuestID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'Ali Abdullah Hama','ali','123456789','sarchnar',NULL,'sulaymaniyah','sulaymaniyah','46001','Iraq','0770000000','ali@guest.com','male',1,'2020-06-09 20:05:36'),(2,'Mahmood Kasim Jalal','mahmood','123456789','sarchnar',NULL,'sulaymaniyah','sulaymaniyah','46001','Iraq','0770000001','mahmood@guest.com','male',1,'2020-06-09 20:05:36'),(3,'Sarmad Hassan Ameen','sarmad','123456789','somewhere',NULL,'Mosul','Nainawa','41','Iraq','0770000002','sarmad@guest.com','male',1,'2020-06-09 20:05:36'),(4,'Mahmood Kalaf Jasim','mahmood1','123456789','Adamya',NULL,'Baghdad','Baghdad','10011','Iraq','0770000003','mah@guest.com','male',1,'2020-06-09 20:05:36');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `guestToUpper` BEFORE INSERT ON `guests` FOR EACH ROW SET NEW.gUserName =lower(new.gUserName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `guests_has_faviroats`
--

DROP TABLE IF EXISTS `guests_has_faviroats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests_has_faviroats` (
  `guests_gGuestID` int NOT NULL,
  `hotels_hHotelID` int NOT NULL,
  PRIMARY KEY (`guests_gGuestID`,`hotels_hHotelID`),
  KEY `fk_guests_has_hotels_hotels1_idx` (`hotels_hHotelID`),
  KEY `fk_guests_has_hotels_guests1_idx` (`guests_gGuestID`),
  CONSTRAINT `fk_guests_has_hotels_guests1` FOREIGN KEY (`guests_gGuestID`) REFERENCES `guests` (`gGuestID`),
  CONSTRAINT `fk_guests_has_hotels_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests_has_faviroats`
--

LOCK TABLES `guests_has_faviroats` WRITE;
/*!40000 ALTER TABLE `guests_has_faviroats` DISABLE KEYS */;
/*!40000 ALTER TABLE `guests_has_faviroats` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `hotels_has_amenitiesvalues`
--

DROP TABLE IF EXISTS `hotels_has_amenitiesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_has_amenitiesvalues` (
  `hotels_hHotelID` int NOT NULL,
  `amenitiesvalues_avID` int NOT NULL,
  PRIMARY KEY (`hotels_hHotelID`,`amenitiesvalues_avID`),
  KEY `fk_hotels_has_amenitiesvalues_amenitiesvalues1_idx` (`amenitiesvalues_avID`),
  KEY `fk_hotels_has_amenitiesvalues_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_hotels_has_amenitiesvalues_amenitiesvalues1` FOREIGN KEY (`amenitiesvalues_avID`) REFERENCES `amenitiesvalues` (`avID`),
  CONSTRAINT `fk_hotels_has_amenitiesvalues_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_has_amenitiesvalues`
--

LOCK TABLES `hotels_has_amenitiesvalues` WRITE;
/*!40000 ALTER TABLE `hotels_has_amenitiesvalues` DISABLE KEYS */;
INSERT INTO `hotels_has_amenitiesvalues` VALUES (1,9),(1,12),(1,32),(1,42),(1,44),(1,46),(1,47),(1,51),(1,61),(1,71),(1,80);
/*!40000 ALTER TABLE `hotels_has_amenitiesvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels_has_facilitesvalues`
--

DROP TABLE IF EXISTS `hotels_has_facilitesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_has_facilitesvalues` (
  `hotels_hHotelID` int NOT NULL,
  `facilitesvalues_fID` int NOT NULL,
  PRIMARY KEY (`hotels_hHotelID`,`facilitesvalues_fID`),
  KEY `fk_hotels_has_facilitesvalues_facilitesvalues1_idx` (`facilitesvalues_fID`),
  KEY `fk_hotels_has_facilitesvalues_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_hotels_has_facilitesvalues_facilitesvalues1` FOREIGN KEY (`facilitesvalues_fID`) REFERENCES `facilitesvalues` (`fID`),
  CONSTRAINT `fk_hotels_has_facilitesvalues_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_has_facilitesvalues`
--

LOCK TABLES `hotels_has_facilitesvalues` WRITE;
/*!40000 ALTER TABLE `hotels_has_facilitesvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels_has_facilitesvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels_has_payments`
--

DROP TABLE IF EXISTS `hotels_has_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_has_payments` (
  `hotels_hHotelID` int NOT NULL,
  `payments_pID` int NOT NULL,
  PRIMARY KEY (`hotels_hHotelID`,`payments_pID`),
  KEY `fk_hotels_has_payments_payments1_idx` (`payments_pID`),
  KEY `fk_hotels_has_payments_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_hotels_has_payments_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`),
  CONSTRAINT `fk_hotels_has_payments_payments1` FOREIGN KEY (`payments_pID`) REFERENCES `payments` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_has_payments`
--

LOCK TABLES `hotels_has_payments` WRITE;
/*!40000 ALTER TABLE `hotels_has_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels_has_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels_has_policiesvalues`
--

DROP TABLE IF EXISTS `hotels_has_policiesvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels_has_policiesvalues` (
  `hotels_hHotelID` int NOT NULL,
  `policiesvalues_pID` int NOT NULL,
  PRIMARY KEY (`hotels_hHotelID`,`policiesvalues_pID`),
  KEY `fk_hotels_has_policiesvalues_policiesvalues1_idx` (`policiesvalues_pID`),
  KEY `fk_hotels_has_policiesvalues_hotels1_idx` (`hotels_hHotelID`),
  CONSTRAINT `fk_hotels_has_policiesvalues_hotels1` FOREIGN KEY (`hotels_hHotelID`) REFERENCES `hotels` (`hHotelID`),
  CONSTRAINT `fk_hotels_has_policiesvalues_policiesvalues1` FOREIGN KEY (`policiesvalues_pID`) REFERENCES `policiesvalues` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels_has_policiesvalues`
--

LOCK TABLES `hotels_has_policiesvalues` WRITE;
/*!40000 ALTER TABLE `hotels_has_policiesvalues` DISABLE KEYS */;
INSERT INTO `hotels_has_policiesvalues` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(9,18),(10,18),(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(10,22),(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(8,23),(9,23),(10,23),(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(8,26),(9,26),(10,26),(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(8,27),(9,27),(10,27);
/*!40000 ALTER TABLE `hotels_has_policiesvalues` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `no_of_hotels_in_each_city`
--

DROP TABLE IF EXISTS `no_of_hotels_in_each_city`;
/*!50001 DROP VIEW IF EXISTS `no_of_hotels_in_each_city`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `no_of_hotels_in_each_city` AS SELECT 
 1 AS `City`,
 1 AS `Number of hotels`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `pID` int NOT NULL AUTO_INCREMENT,
  `pName` varchar(45) DEFAULT NULL,
  `pType` varchar(45) DEFAULT NULL,
  `pPath` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'Asia Hawala','Online',NULL),(2,'Fast Pay','Online',NULL),(3,'Zain Cash','Online',NULL),(4,'Cash','On site',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentstatus`
--

DROP TABLE IF EXISTS `paymentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentstatus` (
  `paymentStatusId` int NOT NULL AUTO_INCREMENT,
  `psStatus` varchar(45) DEFAULT NULL,
  `psDescription` varchar(255) DEFAULT NULL,
  `psSortOrder` int DEFAULT NULL,
  `psActive` int DEFAULT NULL,
  PRIMARY KEY (`paymentStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentstatus`
--

LOCK TABLES `paymentstatus` WRITE;
/*!40000 ALTER TABLE `paymentstatus` DISABLE KEYS */;
INSERT INTO `paymentstatus` VALUES (1,'Not paid','When the payment is not done',NULL,1),(2,'Paid','When the guest/ company paid the booking',NULL,1),(3,'Credit Card Expire','When guest/Company faces problem with their credit card because it\'s expire',NULL,1),(4,'Credit Card No enugh balance','When the Credit card of guest/ company doesn\'t have enugh balance to pay the booking',NULL,1);
/*!40000 ALTER TABLE `paymentstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttypes`
--

DROP TABLE IF EXISTS `paymenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttypes` (
  `ptPaymentTypeID` int NOT NULL,
  `ptPaymentType` varchar(45) DEFAULT NULL,
  `ptSortOrder` varchar(45) DEFAULT NULL,
  `ptActive` int DEFAULT NULL,
  PRIMARY KEY (`ptPaymentTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttypes`
--

LOCK TABLES `paymenttypes` WRITE;
/*!40000 ALTER TABLE `paymenttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymenttypes` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `rRateID` int NOT NULL AUTO_INCREMENT,
  `rRoomsID` int NOT NULL,
  `rRateTypeID` int NOT NULL,
  `rRate` double DEFAULT NULL,
  `rDate` date DEFAULT NULL,
  `rARoomsNum` int DEFAULT NULL,
  `rAddingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rRateID`),
  KEY `fk_rates_rooms1_idx` (`rRoomsID`),
  KEY `fk_rates_rateTypes1_idx` (`rRateTypeID`),
  CONSTRAINT `fk_rates_rateTypes1` FOREIGN KEY (`rRateTypeID`) REFERENCES `ratetypes` (`rtRateTypeID`),
  CONSTRAINT `fk_rates_rooms1` FOREIGN KEY (`rRoomsID`) REFERENCES `rooms` (`rRoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,1,1,30,'2020-06-09',7,'2020-06-09 20:15:56'),(2,1,1,32,'2020-06-10',7,'2020-06-09 20:15:56'),(3,1,1,30,'2020-06-11',7,'2020-06-09 20:15:56'),(4,1,1,35,'2020-06-12',8,'2020-06-09 20:05:23'),(5,1,2,40,'2020-06-09',7,'2020-06-09 20:15:56'),(6,1,2,45,'2020-06-10',7,'2020-06-09 20:15:56'),(7,1,2,44,'2020-06-11',7,'2020-06-09 20:15:56'),(8,1,2,48,'2020-06-12',8,'2020-06-09 20:05:24'),(9,1,1,29,'2020-06-09',7,'2020-06-09 20:15:56'),(10,1,1,31,'2020-06-10',7,'2020-06-09 20:15:56'),(11,1,1,28,'2020-06-11',7,'2020-06-09 20:15:56'),(12,1,1,25,'2020-06-12',8,'2020-06-09 20:05:24'),(13,2,1,40,'2020-06-09',10,'2020-06-09 20:18:11'),(14,2,1,40,'2020-06-10',10,'2020-06-09 20:18:11'),(15,2,1,40,'2020-06-11',10,'2020-06-09 20:18:11'),(16,2,1,45,'2020-06-12',11,'2020-06-09 20:05:25'),(17,2,1,50,'2020-06-13',11,'2020-06-09 20:05:25'),(18,2,1,50,'2020-06-14',11,'2020-06-09 20:05:25'),(19,6,3,45,'2020-06-09',14,'2020-06-09 20:15:57'),(20,6,3,48,'2020-06-10',14,'2020-06-09 20:15:57'),(21,6,3,50,'2020-06-11',14,'2020-06-09 20:15:57'),(22,6,3,55,'2020-06-12',15,'2020-06-09 20:05:26'),(23,7,3,52,'2020-06-09',15,'2020-06-09 20:05:27'),(24,7,3,44,'2020-06-10',15,'2020-06-09 20:05:27'),(25,7,3,48,'2020-06-11',15,'2020-06-09 20:05:27'),(26,7,3,43,'2020-06-12',15,'2020-06-09 20:05:27'),(27,8,3,41,'2020-06-09',15,'2020-06-09 20:05:27'),(28,8,3,50,'2020-06-10',15,'2020-06-09 20:05:27'),(29,8,3,44,'2020-06-11',15,'2020-06-09 20:05:27'),(30,8,3,30,'2020-06-12',15,'2020-06-09 20:05:28'),(31,8,3,26,'2020-06-13',15,'2020-06-09 20:05:28'),(32,9,4,70,'2020-06-09',17,'2020-06-09 20:05:28'),(33,9,4,44,'2020-06-10',17,'2020-06-09 20:05:28'),(34,9,4,56,'2020-06-11',17,'2020-06-09 20:05:28'),(35,9,4,55,'2020-06-12',17,'2020-06-09 20:05:28'),(36,9,4,100,'2020-06-13',17,'2020-06-09 20:05:28'),(37,10,4,108,'2020-06-09',22,'2020-06-09 20:05:29'),(38,10,5,105,'2020-06-11',22,'2020-06-09 20:05:29'),(39,10,5,120,'2020-06-12',22,'2020-06-09 20:05:29'),(40,10,5,140,'2020-06-13',22,'2020-06-09 20:05:29'),(41,10,5,100,'2020-06-14',22,'2020-06-09 20:05:29'),(42,11,5,90,'2020-06-09',30,'2020-06-09 20:05:29'),(43,11,5,85,'2020-06-10',30,'2020-06-09 20:05:30'),(44,11,5,75,'2020-06-11',30,'2020-06-09 20:05:30'),(45,12,5,40,'2020-06-09',28,'2020-06-09 20:05:30'),(46,12,5,60,'2020-06-10',28,'2020-06-09 20:05:30'),(47,12,5,55,'2020-06-11',28,'2020-06-09 20:05:30'),(48,12,5,80,'2020-06-12',28,'2020-06-09 20:05:30');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `roomsbooked`
--

DROP TABLE IF EXISTS `roomsbooked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomsbooked` (
  `rbRoomBookedID` int NOT NULL AUTO_INCREMENT,
  `rbBookingID` int NOT NULL,
  `rbRoomID` int NOT NULL,
  `rbNumOfRooms` int DEFAULT NULL,
  PRIMARY KEY (`rbRoomBookedID`),
  KEY `fk_roomsBooked_rooms1_idx` (`rbRoomID`),
  KEY `fk_roomsBooked_bookings1_idx` (`rbBookingID`),
  CONSTRAINT `fk_roomsBooked_bookings1` FOREIGN KEY (`rbBookingID`) REFERENCES `bookings` (`bBookingID`),
  CONSTRAINT `fk_roomsBooked_rooms1` FOREIGN KEY (`rbRoomID`) REFERENCES `rooms` (`rRoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomsbooked`
--

LOCK TABLES `roomsbooked` WRITE;
/*!40000 ALTER TABLE `roomsbooked` DISABLE KEYS */;
INSERT INTO `roomsbooked` VALUES (1,1,1,1),(2,2,6,1),(3,5,2,1),(4,7,4,1);
/*!40000 ALTER TABLE `roomsbooked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomsnames`
--

DROP TABLE IF EXISTS `roomsnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomsnames` (
  `rnRoomNameID` int NOT NULL,
  `rnRoomNameEn` varchar(255) NOT NULL,
  `rnRoomNameDescription` varchar(255) DEFAULT NULL,
  `rnRoomNameAr` varchar(255) DEFAULT NULL,
  `rnRoomNameKu` varchar(255) DEFAULT NULL,
  `rnRoomTypeID` int NOT NULL,
  PRIMARY KEY (`rnRoomNameID`),
  KEY `fk_roomsNames_roomsTypes1_idx` (`rnRoomTypeID`),
  CONSTRAINT `fk_roomsNames_roomsTypes1` FOREIGN KEY (`rnRoomTypeID`) REFERENCES `roomstypes` (`rtRoomTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomsnames`
--

LOCK TABLES `roomsnames` WRITE;
/*!40000 ALTER TABLE `roomsnames` DISABLE KEYS */;
INSERT INTO `roomsnames` VALUES (1,'Budget Single Room',NULL,'غرفة اقتصادية مفردة',NULL,1),(2,'Deluxe Single Room',NULL,'غرفة ديلوكس مفردة',NULL,1),(3,'Deluxe Single Room with Balcony',NULL,'غرفة ديلوكس مفردة مع شرفة',NULL,1),(4,'Deluxe Single Room with Sea View',NULL,'غرفة ديلوكس مفردة مطلة على البحر',NULL,1),(5,'Economy Single Room',NULL,'غرفة اقتصادية مفردة',NULL,1),(6,'Large Single Room',NULL,'غرفة فردية كبيرة',NULL,1),(7,'New Year\'s Eve Special - Single Room',NULL,'ليلة رأس السنة الخاصة - غرفة فردية',NULL,1),(8,'Single Room',NULL,'غرفة مفردة',NULL,1),(9,'Single Room - Disability Access',NULL,'غرفة مفردة - وصول ذوي الاحتياجات الخاصة',NULL,1),(10,'Single Room with Balcony',NULL,'غرفة مفردة مع شرفة',NULL,1),(11,'Single Room with Bath',NULL,'غرفة مفردة مع حمام',NULL,1),(12,'Single Room with Bathroom',NULL,'غرفة مفردة مع حمام',NULL,1),(13,'Single Room with Garden View',NULL,'غرفة مفردة مطلة على الحديقة',NULL,1),(14,'Single Room with Lake View',NULL,'غرفة مفردة مطلة على البحيرة',NULL,1),(15,'Single Room with Mountain View',NULL,'غرفة مفردة مطلة على الجبل',NULL,1),(16,'Single Room with Park View',NULL,'غرفة مفردة مطلة على الحديقة',NULL,1),(17,'Single Room with Pool View',NULL,'غرفة مفردة مطلة على المسبح',NULL,1),(18,'Single Room with Private Bathroom',NULL,'غرفة مفردة مع حمام خاص',NULL,1),(19,'Single Room with Private External Bathroom',NULL,'غرفة مفردة مع حمام خارجي خاص',NULL,1),(20,'Single Room with Sea View',NULL,'غرفة مفردة مطلة على البحر',NULL,1),(21,'Single Room with Shared Bathroom',NULL,'غرفة مفردة مع حمام مشترك',NULL,1),(22,'Single Room with Shared Shower and Toilet',NULL,'غرفة مفردة مع دش ومرحاض مشتركين',NULL,1),(23,'Single Room with Shared Toilet',NULL,'غرفة مفردة مع مرحاض مشترك',NULL,1),(24,'Single Room with Shower',NULL,'غرفة مفردة مع دش',NULL,1),(25,'Single Room with Terrace',NULL,'غرفة مفردة مع تراس',NULL,1),(26,'Small Single Room',NULL,'غرفة مفردة صغيرة',NULL,1),(27,'Standard Single Room',NULL,'غرفة قياسية مفردة',NULL,1),(28,'Standard Single Room with Mountain View',NULL,'غرفة قياسية مفردة مطلة على الجبل',NULL,1),(29,'Standard Single Room with Sauna',NULL,'غرفة قياسية مفردة مع ساونا',NULL,1),(30,'Standard Single Room with Sea View',NULL,'غرفة قياسية مفردة مطلة على البحر',NULL,1),(31,'Standard Single Room with Shared Bathroom',NULL,'غرفة قياسية مفردة مع حمام مشترك',NULL,1),(32,'Standard Single Room with Shower',NULL,'غرفة قياسية مفردة مع دش',NULL,1),(33,'Superior Single Room',NULL,'غرفة سوبيريور مفردة',NULL,1),(34,'Superior Single Room with Lake View',NULL,'غرفة سوبيريور مفردة مطلة على البحيرة',NULL,1),(35,'Superior Single Room with Sea View',NULL,'غرفة سوبيريور مفردة مطلة على البحر',NULL,1),(36,'Budget Double Room',NULL,'غرفة اقتصادية مزدوجة',NULL,2),(37,'Business Double Room with Gym Access',NULL,'غرفة رجال أعمال مزدوجة مع الدخول إلى صالة الألعاب الرياضية',NULL,2),(38,'Deluxe Double Room',NULL,'غرفة ديلوكس مزدوجة',NULL,2),(39,'Deluxe Double Room (1 adult + 1 child)',NULL,'غرفة ديلوكس مزدوجة (شخص بالغ + طفل واحد)',NULL,2),(40,'Deluxe Double Room (1 adult + 2 children)',NULL,'غرفة ديلوكس مزدوجة (شخص بالغ + طفلان)',NULL,2),(41,'Deluxe Double Room (2 Adults + 1 Child)',NULL,'غرفة ديلوكس مزدوجة (لشخصين بالغين + طفل واحد)',NULL,2),(42,'Deluxe Double Room with Balcony',NULL,'غرفة ديلوكس مزدوجة مع شرفة',NULL,2),(43,'Deluxe Double Room with Balcony and Sea View',NULL,'غرفة ديلوكس مزدوجة مع شرفة وإطلالة على البحر',NULL,2),(44,'Deluxe Double Room with Bath',NULL,'غرفة ديلوكس مزدوجة مع حوض استحمام',NULL,2),(45,'Deluxe Double Room with Castle View',NULL,'غرفة ديلوكس مزدوجة مطلة على القلعة',NULL,2),(46,'Deluxe Double Room with Extra Bed',NULL,'غرفة ديلوكس مزدوجة مع سرير إضافي',NULL,2),(47,'Deluxe Double Room with Sea View',NULL,'غرفة ديلوكس مزدوجة مطلة على البحر',NULL,2),(48,'Deluxe Double Room with Shower',NULL,'غرفة ديلوكس مزدوجة مع دش',NULL,2),(49,'Deluxe Double Room with Side Sea View',NULL,'غرفة ديلوكس مزدوجة مع إطلالة جانبية على البحر',NULL,2),(50,'Deluxe Double or Twin Room',NULL,'غرفة ديلوكس مزدوجة أو توأم',NULL,2),(51,'Deluxe King Room',NULL,'غرفة ديلوكس بحجم كينغ',NULL,2),(52,'Deluxe Queen Room',NULL,'غرفة ديلوكس بحجم كوين',NULL,2),(53,'Deluxe Room',NULL,'غرفة ديلوكس',NULL,2),(54,'Deluxe Room (1 adult + 1 child)',NULL,'غرفة ديلوكس (شخص بالغ + طفل واحد)',NULL,2),(55,'Deluxe Room (1 adult + 2 children)',NULL,'غرفة ديلوكس (شخص بالغ + طفلان)',NULL,2),(56,'Deluxe Room (2 Adults + 1 Child)',NULL,'غرفة ديلوكس (لشخصين بالغين + طفل واحد)',NULL,2),(57,'Double Room',NULL,'غرفة مزدوجة',NULL,2),(58,'Double Room (1 Adult + 1 Child)',NULL,'غرفة مزدوجة (شخص بالغ + طفل واحد)',NULL,2),(59,'Double Room - Disability Access',NULL,'غرفة مزدوجة - وصول ذوي الاحتياجات الخاصة',NULL,2),(60,'Double Room with Balcony',NULL,'غرفة مزدوجة مع شرفة',NULL,2),(61,'Double Room with Balcony (2 Adults + 1 Child)',NULL,'غرفة مزدوجة مع شرفة (شخصين بالغين + طفل واحد)',NULL,2),(62,'Double Room with Balcony (3 Adults)',NULL,'غرفة مزدوجة مع شرفة (3 أشخاص بالغين)',NULL,2),(63,'Double Room with Balcony and Sea View',NULL,'غرفة مزدوجة مع شرفة وإطلالة على البحر',NULL,2),(64,'Double Room with Extra Bed',NULL,'غرفة مزدوجة مع سرير إضافي',NULL,2),(65,'Double Room with Garden View',NULL,'غرفة مزدوجة مطلة على الحديقة',NULL,2),(66,'Double Room with Lake View',NULL,'غرفة مزدوجة مطلة على البحيرة',NULL,2),(67,'Double Room with Mountain View',NULL,'غرفة مزدوجة مطلة على الجبل',NULL,2),(68,'Double Room with Patio',NULL,'غرفة مزدوجة مع فناء',NULL,2),(69,'Double Room with Pool View',NULL,'غرفة مزدوجة مطلة على حمام السباحة',NULL,2),(70,'Double Room with Private Bathroom',NULL,'غرفة مزدوجة مع حمام خاص',NULL,2),(71,'Double Room with Private External Bathroom',NULL,'غرفة مزدوجة مع حمام خارجي خاص',NULL,2),(72,'Double Room with Sea View',NULL,'غرفة مزدوجة مطلة على البحر',NULL,2),(73,'Double Room with Shared Bathroom',NULL,'غرفة مزدوجة مع حمام مشترك',NULL,2),(74,'Double Room with Shared Toilet',NULL,'غرفة مزدوجة مع مرحاض مشترك',NULL,2),(75,'Double Room with Spa Bath',NULL,'غرفة مزدوجة مع حوض سبا',NULL,2),(76,'Double Room with Terrace',NULL,'غرفة مزدوجة مع تراس',NULL,2),(77,'Economy Double Room',NULL,'غرفة اقتصادية مزدوجة',NULL,2),(78,'King Room',NULL,'غرفة الملك',NULL,2),(79,'King Room - Disability Access',NULL,'غرفة بحجم كينغ - وصول ذوي الاحتياجات الخاصة',NULL,2),(80,'King Room with Balcony',NULL,'غرفة كنغ مع شرفة',NULL,2),(81,'King Room with Garden View',NULL,'غرفة كنغ مطلة على الحديقة',NULL,2),(82,'King Room with Lake View',NULL,'غرفة كنغ مطلة على البحيرة',NULL,2),(83,'King Room with Mountain View',NULL,'غرفة كنغ مطلة على الجبل',NULL,2),(84,'King Room with Pool View',NULL,'غرفة كنغ مطلة على المسبح',NULL,2),(85,'King Room with Roll-In Shower - Disability Access',NULL,'غرفة بحجم كينغ مع دش متحرك - إمكانية الوصول للمعاقين',NULL,2),(86,'King Room with Sea View',NULL,'غرفة كنغ مطلة على البحر',NULL,2),(87,'King Room with Spa Bath',NULL,'غرفة كنغ مع حوض سبا',NULL,2),(88,'Large Double Room',NULL,'غرفة مزدوجة كبيرة',NULL,2),(89,'Queen Room',NULL,'غرفة كوين',NULL,2),(90,'Queen Room - Disability Access',NULL,'غرفة كوين - وصول ذوي الاحتياجات الخاصة',NULL,2),(91,'Queen Room with Balcony',NULL,'غرفة كوين مع شرفة',NULL,2),(92,'Queen Room with Garden View',NULL,'غرفة كوين مطلة على الحديقة',NULL,2),(93,'Queen Room with Pool View',NULL,'غرفة كوين مطلة على حمام السباحة',NULL,2),(94,'Queen Room with Sea View',NULL,'غرفة كوين مطلة على البحر',NULL,2),(95,'Queen Room with Shared Bathroom',NULL,'غرفة كوين مع حمام مشترك',NULL,2),(96,'Queen Room with Spa Bath',NULL,'غرفة كوين مع حوض سبا',NULL,2),(97,'Small Double Room',NULL,'غرفة مزدوجة صغيرة',NULL,2),(98,'Standard Double Room',NULL,'غرفة قياسية مزدوجة',NULL,2),(99,'Standard Double Room with Fan',NULL,'غرفة قياسية مزدوجة مع مروحة',NULL,2),(100,'Standard Double Room with Shared Bathroom',NULL,'غرفة قياسية مزدوجة مع حمام مشترك',NULL,2),(101,'Standard King Room',NULL,'غرفة قياسية بحجم كينغ',NULL,2),(102,'Standard Queen Room',NULL,'غرفة كوين عادية',NULL,2),(103,'Superior Double Room',NULL,'غرفة سوبيريور مزدوجة',NULL,2),(104,'Superior King Room',NULL,'غرفة سوبيريور كينج',NULL,2),(105,'Superior Queen Room',NULL,'غرفة كوين سوبيريور',NULL,2),(106,'Budget Twin Room',NULL,'غرفة توأم اقتصادية',NULL,3),(107,'Deluxe Double Room with Two Double Beds',NULL,'غرفة ديلوكس مزدوجة بسريرين مزدوجين',NULL,3),(108,'Deluxe Queen Room with Two Queen Beds',NULL,'غرفة ديلوكس بحجم كوين مع سريرين بحجم كوين',NULL,3),(109,'Deluxe Twin Room',NULL,'غرفة ديلوكس توأم',NULL,3),(110,'Deluxe Twin Room with Sea View',NULL,'غرفة ديلوكس توأم مطلة على البحر',NULL,3),(111,'Double Room with Two Double Beds',NULL,'غرفة مزدوجة بسريرين مزدوجين',NULL,3),(112,'Economy Twin Room',NULL,'غرفة توأم اقتصادية',NULL,3),(113,'King Room with Two King Beds',NULL,'غرفة كنغ مع سريرين بحجم كينغ',NULL,3),(114,'Large Twin Room',NULL,'غرفة توأم كبيرة',NULL,3),(115,'Queen Room with Two Queen Beds',NULL,'غرفة كوين مع سريرين بحجم كوين',NULL,3),(116,'Queen Room with Two Queen Beds - Disability Access',NULL,'غرفة كوين مع سريرين بحجم كوين - وصول ذوي الاحتياجات الخاصة',NULL,3),(117,'Small Twin Room',NULL,'غرفة توأم صغيرة',NULL,3),(118,'Standard Double Room with Two Double Beds',NULL,'غرفة قياسية مزدوجة بسريرين مزدوجين',NULL,3),(119,'Standard Queen Room with Two Queen Beds',NULL,'غرفة قياسية بحجم كوين مع سريرين بحجم كوين',NULL,3),(120,'Standard Twin Room',NULL,'غرفة قياسية توأم',NULL,3),(121,'Standard Twin Room with Garden View',NULL,'غرفة قياسية توأم مطلة على الحديقة',NULL,3),(122,'Standard Twin Room with Mountain View',NULL,'غرفة قياسية توأم مطلة على الجبل',NULL,3),(123,'Standard Twin Room with Sea View',NULL,'غرفة قياسية توأم مطلة على البحر',NULL,3),(124,'Standard Twin Room with Shared Bathroom',NULL,'غرفة قياسية توأم مع حمام مشترك',NULL,3),(125,'Standard Twin Room with Sofa',NULL,'غرفة قياسية توأم مع أريكة',NULL,3),(126,'Superior Double Room with Two Double Beds',NULL,'غرفة سوبيريور مزدوجة بسريرين مزدوجين',NULL,3),(127,'Superior King or Twin Room',NULL,'غرفة سوبيريور بحجم كينغ أو توأم',NULL,3),(128,'Superior Queen Room with Two Queen Beds',NULL,'غرفة سوبيريور بحجم كوين مع سريرين بحجم كوين',NULL,3),(129,'Superior Twin Room',NULL,'غرفة سوبيريور توأم',NULL,3),(130,'Superior Twin Room with City View',NULL,'غرفة سوبيريور توأم مطلة على المدينة',NULL,3),(131,'Superior Twin Room with Garden View',NULL,'غرفة سوبيريور توأم مطلة على الحديقة',NULL,3),(132,'Superior Twin Room with Sauna',NULL,'غرفة سوبيريور توأم مع ساونا',NULL,3),(133,'Superior Twin Room with Sea View',NULL,'غرفة سوبيريور توأم مطلة على البحر',NULL,3),(134,'Twin Room',NULL,'غرفة مزدوجة',NULL,3),(135,'Twin Room - Disability Access',NULL,'غرفة توأمية - وصول للمعاقين',NULL,3),(136,'Twin Room with Balcony',NULL,'غرفة توأم مع شرفة',NULL,3),(137,'Twin Room with Bath',NULL,'غرفة توأم مع حمام',NULL,3),(138,'Twin Room with Bathroom',NULL,'غرفة توأم مع حمام',NULL,3),(139,'Twin Room with City View',NULL,'غرفة توأم مطلة على المدينة',NULL,3),(140,'Twin Room with Extra Bed',NULL,'غرفة توأم مع سرير إضافي',NULL,3),(141,'Twin Room with Garden View',NULL,'غرفة توأم مطلة على الحديقة',NULL,3),(142,'Twin Room with Lake View',NULL,'غرفة توأم مطلة على البحيرة',NULL,3),(143,'Twin Room with Mountain View',NULL,'غرفة توأم مطلة على الجبل',NULL,3),(144,'Twin Room with Pool View',NULL,'غرفة توأم مطلة على حمام السباحة',NULL,3),(145,'Twin Room with Private Bathroom',NULL,'غرفة توأم مع حمام خاص',NULL,3),(146,'Twin Room with Private External Bathroom',NULL,'غرفة توأم مع حمام خارجي خاص',NULL,3),(147,'Twin Room with Sea View',NULL,'غرفة توأم مطلة على البحر',NULL,3),(148,'Twin Room with Shared Bathroom',NULL,'غرفة توأم مع حمام مشترك',NULL,3),(149,'Twin Room with Shared Toilet',NULL,'غرفة توأم مع مرحاض مشترك',NULL,3),(150,'Twin Room with Shower',NULL,'غرفة توأم مع دش',NULL,3),(151,'Twin Room with Terrace',NULL,'غرفة توأم مع تراس',NULL,3),(152,'Twin Room with View',NULL,'غرفة توأم مع إطلالة',NULL,3),(153,'Budget Double or Twin Room',NULL,'غرفة اقتصادية مزدوجة أو توأم',NULL,4),(154,'Cabin on Boat',NULL,'المقصورة على متن قارب',NULL,4),(155,'Deluxe Double or Twin Room',NULL,'غرفة ديلوكس مزدوجة أو توأم',NULL,4),(156,'Deluxe Double or Twin Room with Balcony',NULL,'غرفة ديلوكس مزدوجة أو توأم مع شرفة',NULL,4),(157,'Deluxe Double or Twin Room with City View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على المدينة',NULL,4),(158,'Deluxe Double or Twin Room with Garden View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على الحديقة',NULL,4),(159,'Deluxe Double or Twin Room with Lake View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على البحيرة',NULL,4),(160,'Deluxe Double or Twin Room with Mountain View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على الجبل',NULL,4),(161,'Deluxe Double or Twin Room with Ocean View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على المحيط',NULL,4),(162,'Deluxe Double or Twin Room with Pool Access',NULL,'غرفة ديلوكس مزدوجة أو توأم مع إمكانية الوصول إلى حمام السباحة',NULL,4),(163,'Deluxe Double or Twin Room with Pool View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على المسبح',NULL,4),(164,'Deluxe Double or Twin Room with River View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على النهر',NULL,4),(165,'Deluxe Double or Twin Room with Sea View',NULL,'غرفة ديلوكس مزدوجة أو توأم مطلة على البحر',NULL,4),(166,'Deluxe Double or Twin Room with Spa Bath',NULL,'غرفة ديلوكس مزدوجة أو توأم مع حوض سبا',NULL,4),(167,'Double or Twin Room',NULL,'غرفتين ام غرفة مزدوجة',NULL,4),(168,'Double or Twin Room - Disability Access',NULL,'غرفة مزدوجة أو توأم - يمكن لذوي الاحتياجات الخاصة',NULL,4),(169,'Double or Twin Room with Balcony',NULL,'غرفة مزدوجة أو توأم مع شرفة',NULL,4),(170,'Double or Twin Room with Bathroom',NULL,'غرفة مزدوجة أو توأم مع حمام',NULL,4),(171,'Double or Twin Room with Canal View',NULL,'غرفة مزدوجة أو توأم مطلة على القناة',NULL,4),(172,'Double or Twin Room with City View',NULL,'غرفة مزدوجة أو توأم مطلة على المدينة',NULL,4),(173,'Double or Twin Room with Extra Bed',NULL,'غرفة مزدوجة أو توأم مع سرير إضافي',NULL,4),(174,'Double or Twin Room with Garden View',NULL,'غرفة مزدوجة أو توأم مطلة على الحديقة',NULL,4),(175,'Double or Twin Room with Harbor View',NULL,'غرفة مزدوجة أو توأم مطلة على المرفأ',NULL,4),(176,'Double or Twin Room with Lake View',NULL,'غرفة مزدوجة أو توأم مطلة على البحيرة',NULL,4),(177,'Double or Twin Room with Mountain View',NULL,'غرفة مزدوجة أو توأم مطلة على الجبل',NULL,4),(178,'Double or Twin Room with Partial Sea View',NULL,'غرفة مزدوجة أو توأم مطلة جزئياً على البحر',NULL,4),(179,'Double or Twin Room with Pool View',NULL,'غرفة مزدوجة أو توأم مطلة على المسبح',NULL,4),(180,'Double or Twin Room with Private Bathroom',NULL,'غرفة مزدوجة أو توأم مع حمام خاص',NULL,4),(181,'Double or Twin Room with Private External Bathroom',NULL,'غرفة مزدوجة أو توأم مع حمام خارجي خاص',NULL,4),(182,'Double or Twin Room with Sea View',NULL,'غرفة مزدوجة أو توأم مطلة على البحر',NULL,4),(183,'Double or Twin Room with Shared Bathroom',NULL,'غرفة مزدوجة أو توأم مع حمام مشترك',NULL,4),(184,'Double or Twin Room with Shower',NULL,'غرفة مزدوجة أو توأم مع دش',NULL,4),(185,'Double or Twin Room with Side Sea View',NULL,'غرفة مزدوجة أو توأم مع إطلالة جانبية على البحر',NULL,4),(186,'Double or Twin Room with Spa Access',NULL,'غرفة مزدوجة أو توأم مع إمكانية الوصول إلى السبا',NULL,4),(187,'Double or Twin Room with Swimming Pool Access',NULL,'غرفة مزدوجة أو توأم مع الوصول إلى حمام السباحة',NULL,4),(188,'Double or Twin Room with Terrace',NULL,'غرفة مزدوجة أو توأم مع تراس',NULL,4),(189,'Double or Twin Room with View',NULL,'غرفة مزدوجة أو توأم مع إطلالة',NULL,4),(190,'Economy Double or Twin Room',NULL,'غرفة اقتصادية مزدوجة أو توأم',NULL,4),(191,'Large Double or Twin Room',NULL,'غرفة كبيرة مزدوجة أو توأم',NULL,4),(192,'Small Double or Twin Room',NULL,'غرفة صغيرة مزدوجة أو توأم',NULL,4),(193,'Standard Cabin on Boat',NULL,'كابينة قياسية على القارب',NULL,4),(194,'Standard Double or Twin Room',NULL,'غرفة قياسية مزدوجة أو توأم',NULL,4),(195,'Standard Double or Twin Room with Balcony',NULL,'غرفة قياسية مزدوجة أو توأم مع شرفة',NULL,4),(196,'Standard Double or Twin Room with Garden View',NULL,'غرفة قياسية مزدوجة أو توأم مطلة على الحديقة',NULL,4),(197,'Standard Double or Twin Room with Sea View',NULL,'غرفة قياسية مزدوجة أو توأم مطلة على البحر',NULL,4),(198,'Superior Cabin on Boat',NULL,'كابينة متفوقة على القارب',NULL,4),(199,'Superior Deluxe Double or Twin Room',NULL,'غرفة ديلوكس سوبيريور مزدوجة أو توأم',NULL,4),(200,'Superior Double or Twin Room',NULL,'غرفة سوبيريور مزدوجة أو توأم',NULL,4),(201,'Superior Double or Twin Room with City View',NULL,'غرفة سوبيريور مزدوجة أو توأم مطلة على المدينة',NULL,4),(202,'Superior Double or Twin Room with Garden View',NULL,'غرفة سوبيريور مزدوجة أو توأم مطلة على الحديقة',NULL,4),(203,'Superior Double or Twin Room with Lake View',NULL,'غرفة سوبيريور مزدوجة أو توأم مطلة على البحيرة',NULL,4),(204,'Superior Double or Twin Room with Mountain View',NULL,'غرفة سوبيريور مزدوجة أو توأم مطلة على الجبل',NULL,4),(205,'Superior Double or Twin Room with Pool View',NULL,'غرفة سوبيريور مزدوجة أو توأم مطلة على حمام السباحة',NULL,4),(206,'Superior Double or Twin Room with Sea View',NULL,'غرفة سوبيريور مزدوجة أو توأم مطلة على البحر',NULL,4),(207,'Superior Double or Twin Room with Terrace',NULL,'غرفة سوبيريور مزدوجة أو توأم مع تراس',NULL,4),(208,'Basic Triple Room',NULL,'غرفة أساسية ثلاثية',NULL,5),(209,'Basic Triple Room with Shared Bathroom',NULL,'غرفة أساسية ثلاثية مع حمام مشترك',NULL,5),(210,'Budget Triple Room',NULL,'غرفة ثلاثية اقتصادية',NULL,5),(211,'Classic Triple Room',NULL,'غرفة ثلاثية كلاسيكية',NULL,5),(212,'Comfort Triple Room',NULL,'غرفة كومفورت ثلاثية',NULL,5),(213,'Comfort Triple Room with Shower',NULL,'غرفة كومفورت ثلاثية مع دش',NULL,5),(214,'Deluxe Triple Room',NULL,'غرفة ديلوكس ثلاثية',NULL,5),(215,'Deluxe Triple Room with Sea View',NULL,'غرفة ديلوكس ثلاثية مطلة على البحر',NULL,5),(216,'Economy Triple Room',NULL,'غرفة اقتصادية ثلاثية',NULL,5),(217,'Economy Triple Room with Shared Bathroom',NULL,'غرفة اقتصادية ثلاثية مع حمام مشترك',NULL,5),(218,'Executive Triple Room',NULL,'غرفة ثلاثية تنفيذية',NULL,5),(219,'Luxury Triple Room',NULL,'غرفة ثلاثية فاخرة',NULL,5),(220,'Standard Triple Room',NULL,'غرفة قياسية ثلاثية',NULL,5),(221,'Standard Triple Room with Sea View',NULL,'غرفة قياسية ثلاثية مطلة على البحر',NULL,5),(222,'Superior Triple Room',NULL,'غرفة سوبيريور ثلاثية',NULL,5),(223,'Superior Triple Room with Sea View',NULL,'غرفة سوبيريور ثلاثية مطلة على البحر',NULL,5),(224,'Triple Room',NULL,'غرفة ثلاثية',NULL,5),(225,'Triple Room - Disability Access',NULL,'غرفة ثلاثية - وصول ذوي الاحتياجات الخاصة',NULL,5),(226,'Triple Room with Balcony',NULL,'غرفة ثلاثية مع شرفة',NULL,5),(227,'Triple Room with Bath',NULL,'غرفة ثلاثية مع حمام',NULL,5),(228,'Triple Room with Bathroom',NULL,'غرفة ثلاثية مع حمام',NULL,5),(229,'Triple Room with City View',NULL,'غرفة ثلاثية مطلة على المدينة',NULL,5),(230,'Triple Room with Garden View',NULL,'غرفة ثلاثية مطلة على الحديقة',NULL,5),(231,'Triple Room with Lake View',NULL,'غرفة ثلاثية مطلة على البحيرة',NULL,5),(232,'Triple Room with Mountain View',NULL,'غرفة ثلاثية مطلة على الجبل',NULL,5),(233,'Triple Room with Pool View',NULL,'غرفة ثلاثية مطلة على حمام السباحة',NULL,5),(234,'Triple Room with Private Bathroom',NULL,'غرفة ثلاثية مع حمام خاص',NULL,5),(235,'Triple Room with Private External Bathroom',NULL,'غرفة ثلاثية مع حمام خارجي خاص',NULL,5),(236,'Triple Room with Sea View',NULL,'غرفة ثلاثية مطلة على البحر',NULL,5),(237,'Triple Room with Shared Bathroom',NULL,'غرفة ثلاثية مع حمام مشترك',NULL,5),(238,'Triple Room with Shared Toilet',NULL,'غرفة ثلاثية مع مرحاض مشترك',NULL,5),(239,'Triple Room with Shower',NULL,'غرفة ثلاثية مع دش',NULL,5),(240,'Triple Room with Terrace',NULL,'غرفة ثلاثية مع تراس',NULL,5),(241,'Triple Room with View',NULL,'غرفة ثلاثية مع إطلالة',NULL,5),(242,'Comfort Quadruple Room',NULL,'غرفة كومفورت رباعية',NULL,6),(243,'Deluxe Quadruple Room',NULL,'غرفة ديلوكس رباعية',NULL,6),(244,'Deluxe Queen Room with Two Queen Beds',NULL,'غرفة ديلوكس بحجم كوين مع سريرين بحجم كوين',NULL,6),(245,'Duplex Quadruple Room',NULL,'غرفة دوبلكس رباعية',NULL,6),(246,'Economy Quadruple Room',NULL,'غرفة اقتصادية رباعية',NULL,6),(247,'Economy Quadruple Room with Shared Bathroom',NULL,'غرفة اقتصادية رباعية مع حمام مشترك',NULL,6),(248,'Executive Queen Room with Two Queen Beds',NULL,'غرفة تنفيذية بحجم كوين مع سريرين بحجم كوين',NULL,6),(249,'Japanese-Style Quadruple Room',NULL,'غرفة رباعية على الطراز الياباني',NULL,6),(250,'King Room with Two King Beds',NULL,'غرفة كنغ مع سريرين بحجم كينغ',NULL,6),(251,'Luxury Quadruple Room',NULL,'غرفة رباعية فاخرة',NULL,6),(252,'Premium Quadruple Room',NULL,'غرفة بريميوم رباعية',NULL,6),(253,'Quadruple Room',NULL,'غرفة رباعية',NULL,6),(254,'Quadruple Room - Disability Access',NULL,'غرفة رباعية - وصول ذوي الاحتياجات الخاصة',NULL,6),(255,'Quadruple Room with Balcony',NULL,'غرفة رباعية مع شرفة',NULL,6),(256,'Quadruple Room with Bath',NULL,'غرفة رباعية مع حمام',NULL,6),(257,'Quadruple Room with Bathroom',NULL,'غرفة رباعية مع حمام',NULL,6),(258,'Quadruple Room with Garden View',NULL,'غرفة رباعية مطلة على الحديقة',NULL,6),(259,'Quadruple Room with Lake View',NULL,'غرفة رباعية مطلة على البحيرة',NULL,6),(260,'Quadruple Room with Mountain View',NULL,'غرفة رباعية مطلة على الجبل',NULL,6),(261,'Quadruple Room with Private Bathroom',NULL,'غرفة رباعية مع حمام خاص',NULL,6),(262,'Quadruple Room with Private External Bathroom',NULL,'غرفة رباعية مع حمام خارجي خاص',NULL,6),(263,'Quadruple Room with Sea View',NULL,'غرفة رباعية مطلة على البحر',NULL,6),(264,'Quadruple Room with Shared Bathroom',NULL,'غرفة رباعية مع حمام مشترك',NULL,6),(265,'Quadruple Room with Shower',NULL,'غرفة رباعية مع دش',NULL,6),(266,'Quadruple Room with Terrace',NULL,'غرفة رباعية مع تراس',NULL,6),(267,'Queen Room with Two Queen Beds',NULL,'غرفة كوين مع سريرين بحجم كوين',NULL,6),(268,'Queen Room with Two Queen Beds - Disability Access',NULL,'غرفة كوين مع سريرين بحجم كوين - وصول ذوي الاحتياجات الخاصة',NULL,6),(269,'Standard Quadruple Room',NULL,'غرفة قياسية رباعية',NULL,6),(270,'Standard Queen Room with Two Queen Beds',NULL,'غرفة قياسية بحجم كوين مع سريرين بحجم كوين',NULL,6),(271,'Superior Quadruple Room',NULL,'غرفة سوبيريور رباعية',NULL,6),(272,'Superior Queen Room with Two Queen Beds',NULL,'غرفة سوبيريور بحجم كوين مع سريرين بحجم كوين',NULL,6),(273,'Deluxe Family Room',NULL,'غرفة ديلوكس عائلية',NULL,7),(274,'Deluxe Family Suite',NULL,'جناح ديلوكس عائلي',NULL,7),(275,'Family Bungalow',NULL,'بنغل عائلي',NULL,7),(276,'Family Cabin on Boat',NULL,'كابينة الأسرة على متن قارب',NULL,7),(277,'Family Double Room',NULL,'غرفة عائلية مزدوجة',NULL,7),(278,'Family Junior Suite',NULL,'جناح جونيور عائلي',NULL,7),(279,'Family Room',NULL,'غرفة العائلة',NULL,7),(280,'Family Room - Disability Access',NULL,'غرفة عائلية - وصول ذوي الاحتياجات الخاصة',NULL,7),(281,'Family Room with Balcony',NULL,'غرفة عائلية مع شرفة',NULL,7),(282,'Family Room with Bath',NULL,'غرفة عائلية مع حمام',NULL,7),(283,'Family Room with Bathroom',NULL,'غرفة عائلية مع حمام',NULL,7),(284,'Family Room with Garden View',NULL,'غرفة عائلية مطلة على الحديقة',NULL,7),(285,'Family Room with Lake View',NULL,'غرفة عائلية مطلة على البحيرة',NULL,7),(286,'Family Room with Mountain View',NULL,'غرفة عائلية مطلة على الجبل',NULL,7),(287,'Family Room with Private Bathroom',NULL,'غرفة عائلية مع حمام خاص',NULL,7),(288,'Family Room with Sauna',NULL,'غرفة عائلية مع ساونا',NULL,7),(289,'Family Room with Sea View',NULL,'غرفة عائلية مطلة على البحر',NULL,7),(290,'Family Room with Shared Bathroom',NULL,'غرفة عائلية مع حمام مشترك',NULL,7),(291,'Family Room with Shower',NULL,'غرفة عائلية مع دش',NULL,7),(292,'Family Room with Side Sea View',NULL,'غرفة عائلية مع إطلالة جانبية على البحر',NULL,7),(293,'Family Room with Terrace',NULL,'غرفة عائلية مع تراس',NULL,7),(294,'Family Studio',NULL,'استوديو عائلي',NULL,7),(295,'Family Suite',NULL,'جناح الأسرة',NULL,7),(296,'Family Suite with Balcony',NULL,'جناح عائلي مع شرفة',NULL,7),(297,'Japanese-Style Room',NULL,'غرفة على الطراز الياباني',NULL,7),(298,'Standard Family Room',NULL,'غرفة عائلية قياسية',NULL,7),(299,'Superior Family Room',NULL,'غرفة عائلية سوبيريور',NULL,7),(300,'Deluxe Double Studio',NULL,'استوديو ديلوكس مزدوج',NULL,8),(301,'Deluxe Junior Suite',NULL,'جناح جونيور ديلوكس',NULL,8),(302,'Deluxe King Studio',NULL,'استوديو ديلوكس كينج',NULL,8),(303,'Deluxe King Suite',NULL,'جناح ديلوكس كينج',NULL,8),(304,'Deluxe Queen Studio',NULL,'استوديو كوين ديلوكس',NULL,8),(305,'Deluxe Queen Suite',NULL,'جناح كوين ديلوكس',NULL,8),(306,'Deluxe Studio',NULL,'استوديو ديلوكس',NULL,8),(307,'Deluxe Suite',NULL,'جناح ديلوكس',NULL,8),(308,'Deluxe Suite with Sea View',NULL,'جناح ديلوكس مطل على البحر',NULL,8),(309,'Deluxe Suite with Spa Bath',NULL,'جناح ديلوكس مع حوض سبا',NULL,8),(310,'Duplex Suite',NULL,'جناح دوبلكس',NULL,8),(311,'Executive Suite',NULL,'الجناح التنفيذي',NULL,8),(312,'Family Studio',NULL,'استوديو عائلي',NULL,8),(313,'Family Suite',NULL,'جناح الأسرة',NULL,8),(314,'Junior Suite',NULL,'جناح صغير',NULL,8),(315,'Junior Suite with Balcony',NULL,'جناح جونيور مع شرفة',NULL,8),(316,'Junior Suite with Canal View',NULL,'جناح جونيور مطل على القناة',NULL,8),(317,'Junior Suite with Garden View',NULL,'جناح جونيور مطل على الحديقة',NULL,8),(318,'Junior Suite with Mountain View',NULL,'جناح جونيور مطل على الجبل',NULL,8),(319,'Junior Suite with Ocean View',NULL,'جناح جونيور مطل على المحيط',NULL,8),(320,'Junior Suite with Pool View',NULL,'جناح جونيور مطل على المسبح',NULL,8),(321,'Junior Suite with Private Pool',NULL,'جناح جونيور مع بركة سباحة خاصة',NULL,8),(322,'Junior Suite with Sauna',NULL,'جناح جونيور مع ساونا',NULL,8),(323,'Junior Suite with Sea View',NULL,'جناح جونيور مطل على البحر',NULL,8),(324,'Junior Suite with Terrace',NULL,'جناح جونيور مع تراس',NULL,8),(325,'King Studio',NULL,'استوديو كينج',NULL,8),(326,'King Studio with Sofa Bed',NULL,'استوديو كينج مع سرير أريكة',NULL,8),(327,'King Suite',NULL,'جناح كينج',NULL,8),(328,'King Suite with Balcony',NULL,'جناح كينج مع شرفة',NULL,8),(329,'King Suite with Ocean View',NULL,'جناح كينج مطل على المحيط',NULL,8),(330,'King Suite with Pool View',NULL,'جناح كينج مطل على حمام السباحة',NULL,8),(331,'King Suite with Sea View',NULL,'جناح كينج مطل على البحر',NULL,8),(332,'King Suite with Spa Bath',NULL,'جناح كينج مع حوض سبا',NULL,8),(333,'One-Bedroom Suite',NULL,'جناح بغرفة نوم واحدة',NULL,8),(334,'Presidential Suite',NULL,'جناح رئاسي',NULL,8),(335,'Queen Studio',NULL,'استوديو كوين',NULL,8),(336,'Queen Studio - Disability Access',NULL,'استوديو كوين - وصول ذوي الاحتياجات الخاصة',NULL,8),(337,'Queen Suite',NULL,'جناح كوين',NULL,8),(338,'Queen Suite with Pool View',NULL,'جناح كوين مطل على المسبح',NULL,8),(339,'Queen Suite with Sea View',NULL,'جناح كوين مطل على البحر',NULL,8),(340,'Queen Suite with Spa Bath',NULL,'جناح كوين مع حوض سبا',NULL,8),(341,'Standard Double Suite',NULL,'جناح قياسي مزدوج',NULL,8),(342,'Standard Studio',NULL,'استوديو قياسي',NULL,8),(343,'Standard Suite',NULL,'جناح قياسي',NULL,8),(344,'Standard Triple Studio',NULL,'استوديو قياسي ثلاثي',NULL,8),(345,'Studio',NULL,'ستوديو',NULL,8),(346,'Studio - Disability Access',NULL,'استوديو - وصول ذوي الاحتياجات الخاصة',NULL,8),(347,'Studio with Balcony',NULL,'استوديو مع شرفة',NULL,8),(348,'Studio with Garden View',NULL,'استوديو مطل على الحديقة',NULL,8),(349,'Studio with Ocean View',NULL,'استوديو مطل على المحيط',NULL,8),(350,'Studio with Pool View',NULL,'استوديو مطل على المسبح',NULL,8),(351,'Studio with Sea View',NULL,'استوديو مطل على البحر',NULL,8),(352,'Studio with Sofa Bed',NULL,'استوديو مع سرير أريكة',NULL,8),(353,'Studio with Spa Bath',NULL,'استوديو مع حمام سبا',NULL,8),(354,'Studio with Terrace',NULL,'استوديو مع تراس',NULL,8),(355,'Suite',NULL,'جناح',NULL,8),(356,'Suite with Balcony',NULL,'جناح مع شرفة',NULL,8),(357,'Suite with City View',NULL,'جناح مطل على المدينة',NULL,8),(358,'Suite with Garden View',NULL,'جناح مطل على الحديقة',NULL,8),(359,'Suite with Hot Tub',NULL,'جناح مع حوض استحمام ساخن',NULL,8),(360,'Suite with Lake View',NULL,'جناح مطل على البحيرة',NULL,8),(361,'Suite with Mountain View',NULL,'جناح مطل على الجبل',NULL,8),(362,'Suite with Pool View',NULL,'جناح مطل على حمام السباحة',NULL,8),(363,'Suite with Private Pool',NULL,'جناح مع بركة سباحة خاصة',NULL,8),(364,'Suite with River View',NULL,'جناح مطل على النهر',NULL,8),(365,'Suite with Sauna',NULL,'جناح مع ساونا',NULL,8),(366,'Suite with Sea View',NULL,'جناح مطل على البحر',NULL,8),(367,'Suite with Spa Access',NULL,'جناح مع الوصول إلى السبا',NULL,8),(368,'Suite with Spa Bath',NULL,'جناح مع حمام سبا',NULL,8),(369,'Suite with Terrace',NULL,'جناح مع تراس',NULL,8),(370,'Superior King Suite',NULL,'جناح سوبريور كينج',NULL,8),(371,'Superior Studio',NULL,'استوديو سوبيريور',NULL,8),(372,'Superior Suite',NULL,'جناح سوبيريور',NULL,8),(373,'Superior Suite with Sea View',NULL,'جناح سوبيريور مطل على البحر',NULL,8),(374,'Three-Bedroom Suite',NULL,'جناح بثلاث غرف نوم',NULL,8),(375,'Two-Bedroom Suite',NULL,'جناح بغرفتي نوم',NULL,8),(376,'Deluxe Double Studio',NULL,'استوديو ديلوكس مزدوج',NULL,9),(377,'Deluxe King Studio',NULL,'استوديو ديلوكس كينج',NULL,9),(378,'Deluxe Queen Studio',NULL,'استوديو كوين ديلوكس',NULL,9),(379,'Deluxe Studio',NULL,'استوديو ديلوكس',NULL,9),(380,'Duplex Studio',NULL,'استوديو دوبلكس',NULL,9),(381,'Family Studio',NULL,'استوديو عائلي',NULL,9),(382,'King Studio',NULL,'استوديو كينج',NULL,9),(383,'King Studio with Sofa Bed',NULL,'استوديو كينج مع سرير أريكة',NULL,9),(384,'Queen Studio',NULL,'استوديو كوين',NULL,9),(385,'Queen Studio - Disability Access',NULL,'استوديو كوين - وصول ذوي الاحتياجات الخاصة',NULL,9),(386,'Standard Studio',NULL,'استوديو قياسي',NULL,9),(387,'Standard Triple Studio',NULL,'استوديو قياسي ثلاثي',NULL,9),(388,'Studio',NULL,'ستوديو',NULL,9),(389,'Studio - Disability Access',NULL,'استوديو - وصول ذوي الاحتياجات الخاصة',NULL,9),(390,'Studio - Split Level',NULL,'استوديو - سبليت المستوى',NULL,9),(391,'Studio with Balcony',NULL,'استوديو مع شرفة',NULL,9),(392,'Studio with Garden View',NULL,'استوديو مطل على الحديقة',NULL,9),(393,'Studio with Lake View',NULL,'استوديو مطل على البحيرة',NULL,9),(394,'Studio with Mountain View',NULL,'استوديو مطل على الجبل',NULL,9),(395,'Studio with Ocean View',NULL,'استوديو مطل على المحيط',NULL,9),(396,'Studio with Pool View',NULL,'استوديو مطل على المسبح',NULL,9),(397,'Studio with Sea View',NULL,'استوديو مطل على البحر',NULL,9),(398,'Studio with Sofa Bed',NULL,'استوديو مع سرير أريكة',NULL,9),(399,'Studio with Spa Bath',NULL,'استوديو مع حمام سبا',NULL,9),(400,'Studio with Terrace',NULL,'استوديو مع تراس',NULL,9),(401,'Superior Studio',NULL,'استوديو سوبيريور',NULL,9),(402,'Apartment - Ground Floor',NULL,'شقة - الطابق الأرضي',NULL,10),(403,'Apartment - Split Level',NULL,'شقة - سبليت المستوى',NULL,10),(404,'Apartment With Shared Bathroom',NULL,'شقة مع حمام مشترك',NULL,10),(405,'Apartment with Balcony',NULL,'شقة مع شرفة',NULL,10),(406,'Apartment with Garden View',NULL,'شقة مطلة على الحديقة',NULL,10),(407,'Apartment with Lake View',NULL,'شقة مطلة على البحيرة',NULL,10),(408,'Apartment with Mountain View',NULL,'شقة مطلة على الجبل',NULL,10),(409,'Apartment with Pool View',NULL,'شقة مطلة على حمام السباحة',NULL,10),(410,'Apartment with Sauna',NULL,'شقة مع ساونا',NULL,10),(411,'Apartment with Sea View',NULL,'شقة مطلة على البحر',NULL,10),(412,'Apartment with Shower',NULL,'شقة مع دش',NULL,10),(413,'Apartment with Terrace',NULL,'شقة مع تراس',NULL,10),(414,'Deluxe Apartment',NULL,'شقة ديلوكس',NULL,10),(415,'Duplex Apartment',NULL,'شقة دوبلكس',NULL,10),(416,'Loft',NULL,'العلية',NULL,10),(417,'Maisonette',NULL,'بيت صغير',NULL,10),(418,'One-Bedroom Apartment',NULL,'شقة بغرفة نوم واحدة',NULL,10),(419,'Penthouse Apartment',NULL,'شقة بنتهاوس',NULL,10),(420,'Standard Apartment',NULL,'شقة قياسية',NULL,10),(421,'Studio Apartment',NULL,'شقة استوديو',NULL,10),(422,'Studio Apartment with Sea View',NULL,'شقة استوديو مطلة على البحر',NULL,10),(423,'Superior Apartment',NULL,'شقة سوبيريور',NULL,10),(424,'Superior Apartment with Sauna',NULL,'شقة سوبيريور مع ساونا',NULL,10),(425,'Three-Bedroom Apartment',NULL,'شقة من 3 غرف نوم',NULL,10),(426,'Two-Bedroom Apartment',NULL,'شقة من غرفتي نوم',NULL,10),(427,'10-Bed Male Dormitory Room',NULL,'صالة نوم مشتركة للذكور من 10 أسرّة',NULL,11),(428,'10-Bed Mixed Dormitory Room',NULL,'صالة نوم مشتركة مختلطة من 10 أسرّة',NULL,11),(429,'4-Bed Female Dormitory Room',NULL,'صالة نوم مشتركة للإناث من 4 أسرّة',NULL,11),(430,'4-Bed Male Dormitory Room',NULL,'غرفة مكان النَّوم للذكور بـ 4 أسرّة',NULL,11),(431,'4-Bed Mixed Dormitory Room',NULL,'صالة نوم مشتركة مختلطة من 4 أسرّة',NULL,11),(432,'6-Bed Female Dormitory Room',NULL,'صالة نوم مشتركة للإناث من 6 أسرّة',NULL,11),(433,'6-Bed Male Dormitory Room',NULL,'غرفة مكان النَّوم للذكور بـ 6 أسرّة',NULL,11),(434,'6-Bed Mixed Dormitory Room',NULL,'مكان النَّوم مختلط مكون من 6 أسرّة',NULL,11),(435,'8-Bed Female Dormitory Room',NULL,'صالة نوم مشتركة للإناث من 8 أسرّة',NULL,11),(436,'8-Bed Male Dormitory Room',NULL,'غرفة مكان النَّوم للذكور بـ 8 أسرّة',NULL,11),(437,'8-Bed Mixed Dormitory Room',NULL,'صالة نوم مشتركة مختلطة من 8 أسرّة',NULL,11),(438,'Female Dormitory Room',NULL,'غرفة مكان النَّوم للإناث',NULL,11),(439,'Male Dormitory Room',NULL,'غرفة مكان النَّوم للذكور',NULL,11),(440,'Mixed Dormitory Room',NULL,'غرفة مكان النَّوم مختلط',NULL,11),(441,'Bed in 10-Bed Mixed Dormitory Room',NULL,'سرير في صالة نوم مشتركة مختلطة من 10 أسرّة',NULL,12),(442,'Bed in 4-Bed Dormitory Room',NULL,'سرير في صالة نوم مشتركة من 4 أسرّة',NULL,12),(443,'Bed in 4-Bed Female Dormitory Room',NULL,'سرير في غرفة مكان النَّوم للإناث من 4 أسرّة',NULL,12),(444,'Bed in 4-Bed Male Dormitory Room',NULL,'سرير في غرفة مكان النَّوم للذكور بـ 4 أسرّة',NULL,12),(445,'Bed in 4-Bed Mixed Dormitory Room',NULL,'سرير في صالة نوم مشتركة مختلطة من 4 أسرّة',NULL,12),(446,'Bed in 6-Bed Dormitory Room',NULL,'سرير في صالة نوم مشتركة من 6 أسرّة',NULL,12),(447,'Bed in 6-Bed Female Dormitory Room',NULL,'سرير في غرفة مكان النَّوم للإناث مكونة من 6 أسرّة',NULL,12),(448,'Bed in 6-Bed Mixed Dormitory Room',NULL,'سرير في صالة نوم مشتركة مختلطة من 6 أسرّة',NULL,12),(449,'Bed in 8-Bed Dormitory Room',NULL,'سرير في صالة نوم مشتركة من 8 أسرّة',NULL,12),(450,'Bed in 8-Bed Mixed Dormitory Room',NULL,'سرير في صالة نوم مشتركة مختلطة من 8 أسرّة',NULL,12),(451,'Bed in Male Dormitory Room',NULL,'سرير في صالة نوم مشتركة للذكور',NULL,12),(452,'Bunk Bed in Female Dormitory Room',NULL,'سرير بطابقين في صالة نوم مشتركة للإناث',NULL,12),(453,'Bunk Bed in Male Dormitory Room',NULL,'سرير بطابقين في صالة نوم مشتركة للذكور',NULL,12),(454,'Bunk Bed in Mixed Dormitory Room',NULL,'سرير بطابقين في صالة نوم مشتركة مختلطة',NULL,12),(455,'Single Bed in 10-Bed Dormitory Room',NULL,'سرير مفرد في صالة نوم مشتركة من 10 أسرّة',NULL,12),(456,'Single Bed in 4-Bed Dormitory Room',NULL,'سرير مفرد في صالة نوم مشتركة من 4 أسرّة',NULL,12),(457,'Single Bed in 6-Bed Dormitory Room',NULL,'سرير مفرد في صالة نوم مشتركة من 6 أسرّة',NULL,12),(458,'Single Bed in Dormitory Room',NULL,'سرير مفرد في صالة نوم مشتركة',NULL,12);
/*!40000 ALTER TABLE `roomsnames` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `roomstatus`
--

DROP TABLE IF EXISTS `roomstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomstatus` (
  `rsRoomStatusID` int NOT NULL,
  `rsRoomStatus` varchar(45) DEFAULT NULL,
  `rsDescription` varchar(45) DEFAULT NULL,
  `rsSortOrder` varchar(45) DEFAULT NULL,
  `rsActive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rsRoomStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomstatus`
--

LOCK TABLES `roomstatus` WRITE;
/*!40000 ALTER TABLE `roomstatus` DISABLE KEYS */;
INSERT INTO `roomstatus` VALUES (1,'Reserved','all rooms of this type are reserved',NULL,'1'),(2,'Available','There are Available rooms for reserving',NULL,'1'),(3,'Not-ready','All rooms are not clean or ready yet',NULL,'1'),(4,'Construction','All rooms are under construction',NULL,'1'),(5,'Closed','All rooms of this type are Closed by hotel',NULL,'1');
/*!40000 ALTER TABLE `roomstatus` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `userinfohisory`
--

DROP TABLE IF EXISTS `userinfohisory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfohisory` (
  `tnID` int NOT NULL AUTO_INCREMENT,
  `tnUserName` varchar(45) DEFAULT NULL,
  `tnPassword` varchar(45) DEFAULT NULL,
  `tnEmail` varchar(45) DEFAULT NULL,
  `tnFullName` varchar(45) DEFAULT NULL,
  `tnPhoneNumber` varchar(45) DEFAULT NULL,
  `tnState` varchar(45) DEFAULT NULL,
  `tnAtTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfohisory`
--

LOCK TABLES `userinfohisory` WRITE;
/*!40000 ALTER TABLE `userinfohisory` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfohisory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uUserID` int NOT NULL AUTO_INCREMENT,
  `uUserName` varchar(45) NOT NULL,
  `uUserEmail` varchar(45) NOT NULL,
  `uUserPassword` varchar(45) NOT NULL,
  `uFullName` varchar(255) DEFAULT NULL,
  `uUserPhoneNumber` varchar(45) NOT NULL,
  `uStatus` int NOT NULL,
  `uCreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mustafa','mustafa@mustafa.com','123456789','Mustafa Khalid Isa','07701111111',1,'2020-06-09 19:31:52'),(2,'ahmed','ahmed@ahmed.com','123456789','Ahmed Jalal Majid','07701111112',1,'2020-06-09 19:31:52'),(3,'yad','yad@yad.com','123456789','Yad Hama Aziz','07701111113',1,'2020-06-09 19:31:53'),(4,'showan','showan@showan.com','123456789','Showan Talal Nazim','07701111114',1,'2020-06-09 19:31:53'),(5,'aziz','aziz@aziz.com','123456789','Aziz Dana Mahmood','07701111115',1,'2020-06-09 19:31:53'),(6,'falah','falah@falah.com','123456789','Falah Najmaldeen Sabeer','07701111116',1,'2020-06-09 19:31:53'),(7,'sabah','sabah@sabah.com','123456789','Sabah Aso Kareem','07701111117',1,'2020-06-09 19:31:54'),(8,'rzgar','rzgar@rzgar.com','123456789','Rzgar Mohammed Hassan','07701111118',1,'2020-06-09 19:31:54'),(9,'halo','halo@halo.com','123456789','Halo Saeed Rafat','07701111119',1,'2020-06-09 19:31:54'),(10,'rawaz','rawaz@rawaz.com','123456789','Rawaz Hiwa Mohammed','07701111111',1,'2020-06-09 19:31:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `userToUpper` BEFORE INSERT ON `users` FOR EACH ROW SET NEW.uUserName =lower(new.uUserName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `userInfoHistory` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO userinfohisory(tnUserName,tnPassword,tnEmail,tnFullName,tnPhoneNumber,tnState,tnAtTime)
VALUES(old.uUserName, old.uUserEmail, old.uUserPassword, old.uFullName, old.uUserPhoneNumber, old.uStatus, NOW()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'm&a_hotels'
--

--
-- Dumping routines for database 'm&a_hotels'
--
/*!50003 DROP FUNCTION IF EXISTS `get_bookings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_bookings`(city VARCHAR(45), bStatus VARCHAR(45)) RETURNS int
    DETERMINISTIC
RETURN (SELECT COUNT(b.bHotelID) FROM bookings b
JOIN hotels h ON b.bHotelID = h.hHotelID
JOIN bookingStatus bs ON b.bBookingStatusID = bs.bsBookingStatusID
WHERE h.hCity LIKE concat('%',city,'%') and bs.bsStatus LIKE concat('%',bStatus,'%')
) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_hotel_bookings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_hotel_bookings`(hotelID int) RETURNS int
    DETERMINISTIC
return (SELECT COUNT(b.bHotelID) FROM bookings b WHERE b.bHotelID = hotelID) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addReservation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addReservation`(IN hotelID INT,IN RoomID INT, IN guestID INT,IN rateTypeID INT, IN dateFrom DATE, IN dateTo DATE,IN numOfRooms INT, IN psNum INT, IN ChildrenNum INT,bPaymentID INT)
BEGIN
DECLARE bookingID INT;
INSERT INTO `m&a_hotels`.`bookings` (`bHotelID`, `bGuestID`,`bRateTypeID`, `bDateFrom`, `bDateTo`,  `bNumOfGuests`, `bNumOfChildren`,`bPaymentID`) VALUES (hotelID, guestID,rateTypeID, dateFrom, dateTo, psNum, ChildrenNum, bPaymentID);
-- to get the booking id from the bookings table to insert it to the roomsBooked table
SET bookingID = LAST_INSERT_ID();
INSERT INTO `m&a_hotels`.`roomsbooked` (`rbBookingID`, `rbRoomID`, `rbNumOfRooms`) VALUES (bookingID, RoomID, numOfRooms);
-- to decrase the reserved rooms from the 
CALL decreserooms(dateFrom,dateTo,RoomID, numOfRooms);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `allAccounts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allAccounts`()
BEGIN
SELECT aFullName, 'Admin' as `User Type`  FROM admins union 
SELECT uUserName, 'User' as `User Type`  FROM users union
SELECT gFullName, 'Guest' as `User Type` FROM guests union
SELECT cOwnerFullName, 'Company' as `User Type` FROM companies;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `decreserooms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `decreserooms`(IN dateStart DATE, IN dateEnd DATE,IN roomID INT, IN numOfRooms INT)
BEGIN
	WHILE dateStart <= dateEnd DO
    UPDATE `m&a_hotels`.`rates` SET `rARoomsNum` = `rARoomsNum` - numOfRooms
    WHERE (`rRoomsID` = roomID and `rDate` = dateStart);
    SET dateStart = date_add(dateStart, INTERVAL 1 DAY);
  END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `available_hotels`
--

/*!50001 DROP VIEW IF EXISTS `available_hotels`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `available_hotels` AS select `h`.`hHotelID` AS `hHotelID`,`h`.`hUserID` AS `hUserID`,`h`.`hHotelName` AS `hHotelName`,`h`.`hHotelRating` AS `hHotelRating`,`h`.`hAddress2` AS `hAddress2`,`h`.`hCity` AS `hCity`,`h`.`hState` AS `hState`,`h`.`hZipCode` AS `hZipCode`,`h`.`hMainPhoneNumber` AS `hMainPhoneNumber`,`h`.`hNormalNumber` AS `hNormalNumber`,`h`.`hCompanyMailAddress` AS `hCompanyMailAddress`,`h`.`hWebsiteAddress` AS `hWebsiteAddress`,`h`.`hLogoPath` AS `hLogoPath`,`h`.`hActive` AS `hActive`,`h`.`hAddress` AS `hAddress`,`h`.`hMapsLocation` AS `hMapsLocation`,`h`.`hCreatingDate` AS `hCreatingDate`,`r`.`rRoomID` AS `rRoomID`,`r`.`rHotelID` AS `rHotelID`,`r`.`rRoomStatusID` AS `rRoomStatusID`,`r`.`rRoomNameID` AS `rRoomNameID`,`r`.`rMaxPas` AS `rMaxPas`,`r`.`rFloor` AS `rFloor`,`r`.`rRoomsNumbers` AS `rRoomsNumbers`,`r`.`rDescription` AS `rDescription`,`r`.`rCustomName` AS `rCustomName`,`r`.`rSmokingPolicy` AS `rSmokingPolicy`,`r`.`rRoomSize` AS `rRoomSize`,`r`.`rLowestPrice` AS `rLowestPrice`,`r`.`rOfferLower` AS `rOfferLower`,`r`.`rDisscount` AS `rDisscount`,`r`.`rCreatingDate` AS `rCreatingDate`,`rs`.`rRateID` AS `rRateID`,`rs`.`rRoomsID` AS `rRoomsID`,`rs`.`rRateTypeID` AS `rRateTypeID`,`rs`.`rRate` AS `rRate`,`rs`.`rDate` AS `rDate`,`rs`.`rARoomsNum` AS `rARoomsNum`,`rs`.`rAddingDate` AS `rAddingDate` from ((`hotels` `h` join `rooms` `r` on((`h`.`hHotelID` = `r`.`rHotelID`))) join `rates` `rs` on((`r`.`rRoomID` = `rs`.`rRoomsID`))) where ((`rs`.`rARoomsNum` > 0) and (`rs`.`rDate` >= now())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `no_of_hotels_in_each_city`
--

/*!50001 DROP VIEW IF EXISTS `no_of_hotels_in_each_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `no_of_hotels_in_each_city` AS select `hotels`.`hCity` AS `City`,count(`hotels`.`hCity`) AS `Number of hotels` from `hotels` group by `hotels`.`hCity` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:23:42
