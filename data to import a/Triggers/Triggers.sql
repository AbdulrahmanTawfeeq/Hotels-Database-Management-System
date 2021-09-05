-- for Change users to uppercase
DROP TRIGGER IF EXISTS userToUpper;
CREATE TRIGGER userToUpper
BEFORE INSERT ON users
FOR EACH ROW
SET NEW.uUserName =lower(new.uUserName);

-- for Change Admins to uppercase
DROP TRIGGER IF EXISTS adminToUpper;
CREATE TRIGGER adminToUpper
BEFORE INSERT ON admins
FOR EACH ROW
SET NEW.aUserName =lower(new.aUserName);

-- for Change guests to uppercase
DROP TRIGGER IF EXISTS guestToUpper;
CREATE TRIGGER guestToUpper
BEFORE INSERT ON guests
FOR EACH ROW
SET NEW.gUserName =lower(new.gUserName);

-- insert the number of the night according to the from to to dates
DROP TRIGGER IF EXISTS insertNights;
CREATE TRIGGER insertNights
BEFORE INSERT ON bookings
FOR EACH ROW
SET NEW.bNumOfNights = DATEDIFF(NEW.bDateTo, NEW.bDateFrom);

-- recorde of the users update info history
DROP TRIGGER IF EXISTS userInfoHistory;
CREATE TRIGGER  userInfoHistory
AFTER UPDATE ON users
FOR EACH ROW
INSERT INTO userinfohisory(tnUserName,tnPassword,tnEmail,tnFullName,tnPhoneNumber,tnState,tnAtTime)
VALUES(old.uUserName, old.uUserEmail, old.uUserPassword, old.uFullName, old.uUserPhoneNumber, old.uStatus, NOW());

-- recorde of the Admin update info history
DROP TRIGGER IF EXISTS adminInfoHistory;
CREATE TRIGGER  adminInfoHistory
AFTER UPDATE ON admins
FOR EACH ROW
INSERT INTO adminhistory(ahFullName,ahUserName,ahPassword,ahEmail,ahAtTime)
VALUES(old.aFullName, old.aUserName, old.aPassword, old.aEmail, NOW());

-- Trigger for decreasing the rooms from rates table when a booking has been confirmed 
-- DROP TRIGGER IF EXISTS decreasOnConfirm;
-- CREATE TRIGGER decreasOnConfirm
-- AFTER UPDATE ON bookings 
-- FOR EACH ROW
-- IF 


-- command to show triggers
SHOW TRIGGERS;





