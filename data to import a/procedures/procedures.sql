-- View all the accounts with their type inside the database
DROP PROCEDURE IF EXISTS allAccounts;
DELIMITER //
CREATE PROCEDURE allAccounts()
BEGIN
SELECT aFullName, 'Admin' as `User Type`  FROM admins union 
SELECT uUserName, 'User' as `User Type`  FROM users union
SELECT gFullName, 'Guest' as `User Type` FROM guests union
SELECT cOwnerFullName, 'Company' as `User Type` FROM companies;
END //
DELIMITER ;
-- for testing: call getAllUsers;

-- to decrase the number of rooms each time a customer reserves
DROP PROCEDURE IF EXISTS decreserooms;
DELIMITER $$
CREATE PROCEDURE decreserooms(IN dateStart DATE, IN dateEnd DATE,IN roomID INT, IN numOfRooms INT)
BEGIN
	WHILE dateStart <= dateEnd DO
    UPDATE `m&a_hotels`.`rates` SET `rARoomsNum` = `rARoomsNum` - numOfRooms
    WHERE (`rRoomsID` = roomID and `rDate` = dateStart);
    SET dateStart = date_add(dateStart, INTERVAL 1 DAY);
  END WHILE;
END$$
DELIMITER ;
-- CALL decreserooms('2021-01-01','2022-12-31',1, 5); -- will be called from inside addReservation procedure

-- For adding new reservation
DROP PROCEDURE IF EXISTS addReservation;
-- Procedure for inserting new reservations to the database Note (the booking status is pending by default
DELIMITER $$
CREATE PROCEDURE addReservation (IN hotelID INT,IN RoomID INT, IN guestID INT,IN rateTypeID INT, IN dateFrom DATE, IN dateTo DATE,IN numOfRooms INT, IN psNum INT, IN ChildrenNum INT, bPaymentID INT) 
BEGIN
DECLARE bookingID INT;
INSERT INTO `m&a_hotels`.`bookings` (`bHotelID`, `bGuestID`,`bRateTypeID`, `bDateFrom`, `bDateTo`,  `bNumOfGuests`, `bNumOfChildren`,`bPaymentID`) VALUES (hotelID, guestID,rateTypeID, dateFrom, dateTo, psNum, ChildrenNum, bPaymentID);
-- to get the booking id from the bookings table to insert it to the roomsBooked table
SET bookingID = LAST_INSERT_ID();
INSERT INTO `m&a_hotels`.`roomsbooked` (`rbBookingID`, `rbRoomID`, `rbNumOfRooms`) VALUES (bookingID, RoomID, numOfRooms);
-- to decrase the reserved rooms from the 
CALL decreserooms(dateFrom,dateTo,RoomID, numOfRooms);
END$$
DELIMITER ;

-- for testing: CALL addReservation ('1','1','1','1','2020-06-1','2020-06-06', '4', '5', '2');


