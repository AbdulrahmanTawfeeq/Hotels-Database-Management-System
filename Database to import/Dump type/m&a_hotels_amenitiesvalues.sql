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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:48
