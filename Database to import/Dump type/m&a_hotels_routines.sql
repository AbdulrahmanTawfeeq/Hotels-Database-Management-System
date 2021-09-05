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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-09 15:22:54
