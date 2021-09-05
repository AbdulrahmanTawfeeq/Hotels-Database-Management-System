-- Inserting the Accounts and hotels queries

-- Addin Admins Accounts
INSERT INTO `m&a_hotels`.`admins` (`aFullName`, `aUserName`, `aPassword`, `aEmail`) VALUES ('Mohammed Salahadin Hazim', 'mohammed', '123456789', 'mohammed.salahadinf18@komar.edu.iq');
INSERT INTO `m&a_hotels`.`admins` (`aFullName`, `aUserName`, `aPassword`, `aEmail`) VALUES ('Abdulrahman Tawfiq', 'abdulrahman', '123456789', 'abdulrahman.tofiqf18@komar.edu.iq');
INSERT INTO `m&a_hotels`.`admins` (`aFullName`, `aUserName`, `aPassword`, `aEmail`) VALUES ('Salim Abdullah Salah', 'salim', '123456789', 'salim@salim.com');
INSERT INTO `m&a_hotels`.`admins` (`aFullName`, `aUserName`, `aPassword`, `aEmail`) VALUES ('Hama Rashid Ali', 'hama', '123456789', 'hama@hama.com');
INSERT INTO `m&a_hotels`.`admins` (`aFullName`, `aUserName`, `aPassword`, `aEmail`) VALUES ('Kamal Jamil Mustafa', 'kamal', '123456789', 'kamal@kamal.com');

-- Adding PaymentStatus data inside paymentstatus table
-- INSERT INTO `m&a_hotels`.`paymentstatus` (`paymentStatusId`, `psStatus`, `psDescription`, `psActive`) VALUES ('1', 'Not paid', 'When the payment is not done', '1');
-- INSERT INTO `m&a_hotels`.`paymentstatus` (`paymentStatusId`, `psStatus`, `psDescription`, `psActive`) VALUES ('2', 'Paid', 'When the guest/ company paid the booking', '1');
-- INSERT INTO `m&a_hotels`.`paymentstatus` (`paymentStatusId`, `psStatus`, `psDescription`, `psActive`) VALUES ('3', 'Credit Card Expire', 'When guest/Company faces problem with their credit card because it\'s expire', '1');
-- INSERT INTO `m&a_hotels`.`paymentstatus` (`paymentStatusId`, `psStatus`, `psDescription`, `psActive`) VALUES ('4', 'Credit Card No enugh balance', 'When the Credit card of guest/ company doesn\'t have enugh balance to pay the booking', '1');


-- Addin Users Accounts
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('mustafa', 'mustafa@mustafa.com', '123456789', 'Mustafa Khalid Isa', '07701111111', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('ahmed', 'ahmed@ahmed.com', '123456789', 'Ahmed Jalal Majid', '07701111112', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('yad', 'yad@yad.com', '123456789', 'Yad Hama Aziz', '07701111113', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('showan', 'showan@showan.com', '123456789', 'Showan Talal Nazim', '07701111114', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('aziz', 'aziz@aziz.com', '123456789', 'Aziz Dana Mahmood', '07701111115', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('falah', 'falah@falah.com', '123456789', 'Falah Najmaldeen Sabeer', '07701111116', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('sabah', 'sabah@sabah.com', '123456789', 'Sabah Aso Kareem', '07701111117', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('rzgar', 'rzgar@rzgar.com', '123456789', 'Rzgar Mohammed Hassan', '07701111118', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('halo', 'halo@halo.com', '123456789', 'Halo Saeed Rafat', '07701111119', '1');
INSERT INTO `m&a_hotels`.`users` (`uUserName`, `uUserEmail`, `uUserPassword`, `uFullName`, `uUserPhoneNumber`, `uStatus`) VALUES ('rawaz', 'rawaz@rawaz.com', '123456789', 'Rawaz Hiwa Mohammed', '07701111111', '1');

-- Adding hotels
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('1', 'Avenue', '1', 'Sarchnar', 'Sulaymaniyah', '1', '40001', '07702222222', '0531223', 'avenue@avenue.com', 'avenue.com', 'hotels/1/logo.png', '1', 'Sarchnar', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('1', 'Krestal', '3', 'Sarchnar', 'Sulaymaniyah', '1', '40001', '07702222223', '0531225', 'krestal@krestal.com', 'krestal.com', 'hotels/2/logo.png', '1', 'Kurdsat', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('2', 'Mamu Zain', '2', 'Salim street', 'Sulaymaniyah', '1', '40001', '07702222225', '0531225', 'Mamu@zain.com', 'mamuzain.com', 'hotels/3/logo.png', '1', 'Salim street', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('2', 'Grand millinume', '3', 'Zargata', 'Sulaymaniyah', '1', '40001', '07707000000', '0531225', 'info@Grandmillinume.com', 'grandhotels.com', 'hotels/4/logo.png', '1', 'Zargata', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('3', 'Kurdistan spa', '4', 'Ibrahim Ahemd', 'Sulaymaniyah', '1', '40001', '07706000000', '0531225', 'info@kurdistanspa.com', 'grandhotels.com', 'hotels/5/logo.png', '1', 'Ibrahim Ahmed', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('4', 'Dolphin Hotel', '5', 'Main Bazar', 'Sulaymaniyah', '1', '40001', '07707999999', '0531225', 'info@dolphinhotel.com', 'dolphinhotel.com', 'hotels/6/logo.png', '1', 'Main Bazar', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('4', 'Rawaz Hotel', '6', 'Hawari Shar', 'Sulaymaniyah', '1', '40001', '07707999999', '0531225', 'rawaz@hotel.com', 'rawazhotel.com', 'hotels/7/logo.png', '1', 'Main Bazar', '35.611812,45.349017,20z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('5', 'Najim', '4', 'Sardashi', 'Erbil', '1', '44000', '07707999934', '0531225', 'Sardashi@hotel.com', 'sardashi.com', 'hotels/8/logo.png', '1', 'Main road 100', '36.195594,44.001188,14z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('5', 'Sky', '3', 'Mama sal ', 'Erbil', '1', '44000', '07707999934', '0531225', 'salmama@hotel.com', 'salamama.com', 'hotels/9/logo.png', '1', 'Sarwari, road 22', '36.195594,44.001188,14z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('6', 'Shabeel', '3', 'Jazala road', 'Erbil', '1', '44000', '07701212121', '0531225', 'shabeel@hotel.com', 'shabeel.com', 'hotels/10/logo.png', '1', 'Main road', '36.195594,44.001188,14z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('7', 'Jmail', '2', 'Main Bazar', 'Erbil', '1', '44000', '07701212123', '0531225', 'Jamil@hotel.com', 'jamil.com', 'hotels/11/logo.png', '1', 'Main Bazar', '36.195594,44.001188,14z');
INSERT INTO `m&a_hotels`.`hotels` (`hUserID`, `hHotelName`, `hHotelRating`, `hAddress2`, `hCity`, `hState`, `hZipCode`, `hMainPhoneNumber`, `hNormalNumber`, `hCompanyMailAddress`, `hWebsiteAddress`, `hLogoPath`, `hActive`, `hAddress`, `hMapsLocation`) VALUES ('8', 'Rodos', '4', 'Main Bazar', 'Erbil', '1', '44000', '07701212122', '0531225', 'rodos@hotel.com', 'rodos.com', 'hotels/12/logo.png', '1', 'Main Bazar', '36.195594,44.001188,14z');

-- Adding Amenities to the hotels 
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '9');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '12');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '32');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '42');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '44');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '46');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '47');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '51');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '61');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '71');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('1', '80');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '1');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '4');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '5');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '9');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '12');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '15');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '17');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '20');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '27');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '29');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '30');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '31');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '35');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '36');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '37');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '38');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '39');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '40');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '44');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('2', '48');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '9');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '12');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '16');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '19');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '21');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '24');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '29');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '30');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '41');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '48');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '52');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '53');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '55');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '56');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '59');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '69');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '80');
INSERT INTO `m&a_hotels`.`hotels_has_amenitiesvalues` (`hotels_hHotelID`, `amenitiesvalues_avID`) VALUES ('3', '88');

-- Add facilites to the hotels

-- Adding policies for the hotels
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('1', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('2', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('3', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('4', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('5', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('6', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('7', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('8', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('9', '27');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '2');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '7');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '9');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '11');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '16');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '18');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '22');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '23');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '26');
INSERT INTO `m&a_hotels`.`hotels_has_policiesvalues` (`hotels_hHotelID`, `policiesvalues_pID`) VALUES ('10', '27');


-- Adding photos for the hotels
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('1', '/hotels/14/photos/p1.png', 'Garden view');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('1', '/hotels/14/photos/p2.png', 'Reception view');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('1', '/hotels/14/photos/p3.png', 'hall');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('2', '/hotels/15/photos/p.png', 'outside');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('2', '/hotels/15/photos/photo.png', 'inside');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('2', '/hotels/15/photos/potose.png', 'caffe');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('2', '/hotels/15/photos/potose2.png', 'resturant');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('2', '/hotels/15/photos/potose4.png', 'pool');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('3', '/hotels/16/photos/new.png', 'view');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('3', '/hotels/16/photos/new2.png', 'terrace');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('3', '/hotels/16/photos/new3.png', 'garden');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('3', '/hotels/16/photos/new4.png', 'carrage');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('3', '/hotels/16/photos/new4.png', 'swimming pool view');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('3', '/hotels/16/photos/new5.png', 'sport bar');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('4', '/hotels/17/photos/Grand millinume1.png', 'building');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('4', '/hotels/17/photos/Grand millinume2.png', 'swimming Pool');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('4', '/hotels/17/photos/Grand millinume3.png', 'loby ');
INSERT INTO `m&a_hotels`.`hotelsphotos` (`hotels_hHotelID`, `hpPath`, `hpDescription`) VALUES ('4', '/hotels/17/photos/Grand millinume4.png', 'reception');



-- Adding rate types for the hotels
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('1', 'Breakfast', '+ Free Breakfast', '1', '1');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('2', 'breakfast&SwimmingPool', '+ Swimming Pool  and Free  breakfast', '1', '1');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('3', 'SwimmingPool', '+ Swimming pool', '1', '1');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('4', 'Fintenss', 'with fitness and sport bar', '1', '1');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('5', 'Breakfast', '+ Free Breakfast', '1', '2');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('6', 'Fintenss', 'with fitness and sport bar', '1', '2');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('7', 'SwimmingPool', '+ Swimming pool', '1', '2');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('8', 'breakfast&SwimmingPool', '+ Swimming Pool  and Free  breakfast', '1', '3');
INSERT INTO `m&a_hotels`.`ratetypes` (`rtRateTypeID`, `rtRateType`, `rtDescription`, `rtActive`, `hotels_hHotelID`) VALUES ('9', 'Breakfast', '+ Free Breakfast', '1', '3');



-- Adding rooms
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('1', '2', '1', '1', '1', '14', 'best single room', 'singles', '1', '12', '35', '1', '30');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('1', '2', '20', '1', '1', '10', 'Normal single', 'singles second', '1', '10', '25', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('1', '2', '36', '3', '3', '33', 'My double room', 'double room', '0', '30', '45', '1', '20');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('1', '1', '40', '4', '5', '32', 'this type always reserved', 'for companies', '1', '35', '59', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('2', '2', '1', '1', '3', '44', 'best room in the hotel', 'single 1', '1', '15', '34', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('2', '2', '4', '1', '2', '34', 'with room service', 'single 2', '1', '22', '46', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('2', '2', '40', '3', '1', '32', 'with balacone', 'double 1', '1', '34', '66', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('2', '2', '36', '5', '2', '21', 'street view', 'double 2', '1', '53', '67', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('3', '2', '1', '1', '1', '34', 'new bulding', 'best single type1', '1', '23', '45', '0', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('3', '2', '40', '3', '2', '4', 'having balacony', 'doubles', '0', '32', '67', '1', '12');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('3', '1', '139', '5', '3', '23', 'best view', 'twins', '1', '43', '74', '1', '12');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`, `rDisscount`) VALUES ('3', '2', '94', '7', '4', '12', 'with seprate elevator', 'doubles', '1', '34', '145', '1', '12');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`) VALUES ('4', '2', '30', '1', '1', '13', 'best type single', 'single fresh', '1', '15', '25', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`) VALUES ('4', '2', '69', '2', '1', '33', 'enjoy yourtrip with', 'with disscount', '1', '33', '34', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`) VALUES ('4', '2', '104', '3', '2', '32', 'best choice', 'my fa', '1', '35', '53', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`) VALUES ('4', '2', '245', '6', '2', '52', 'you are going to the best room', 'nothing', '1', '53', '56', '0');
INSERT INTO `m&a_hotels`.`rooms` (`rHotelID`, `rRoomStatusID`, `rRoomNameID`, `rMaxPas`, `rFloor`, `rRoomsNumbers`, `rDescription`, `rCustomName`, `rSmokingPolicy`, `rRoomSize`, `rLowestPrice`, `rOfferLower`) VALUES ('4', '2', '353', '6', '2', '31', 'perfect place for family', 'families', '1', '42', '67', '0');

-- Adding photos for the rooms
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('1', '/hotels/1/roomsphotos/1/photo.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('2', '/hotels/1/roomsphotos/2/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('3', '/hotels/1/roomsphotos/3/photo2.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('4', '/hotels/1/roomsphotos/4/photo.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('5', '/hotels/2/roomsphotos/5/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('6', '/hotels/2/roomsphotos/6/photo2.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('7', '/hotels/2/roomsphotos/6/photo3.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('9', '/hotels/3/roomsphotos/9/photo.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('10', '/hotels/3/roomsphotos/10/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('11', '/hotels/3/roomsphotos/11/photo.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('12', '/hotels/3/roomsphotos/12/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('14', '/hotels/4/roomsphotos/14/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('15', '/hotels/4/roomsphotos/15/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('16', '/hotels/4/roomsphotos/16/photo1.png');
INSERT INTO `m&a_hotels`.`roomsphotos` (`rpRoomsID`, `rpPhotoPath`) VALUES ('17', '/hotels/4/roomsphotos/17/photo1.png');



-- Adding the rooms rates prices 
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '30', '2020-06-9');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '32', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '30', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '35', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '2', '8', '40', '2020-06-9');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '2', '8', '45', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '2', '8', '44', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '2', '8', '48', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '29', '2020-06-9');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '31', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '28', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('1', '1', '8', '25', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('2', '1', '11', '40', '2020-06-09');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('2', '1', '11', '40', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('2', '1', '11', '40', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('2', '1', '11', '45', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('2', '1', '11', '50', '2020-06-13');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('2', '1', '11', '50', '2020-06-14');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('6', '3', '15', '45', '2020-06-9');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('6', '3', '15', '48', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('6', '3', '15', '50', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('6', '3', '15', '55', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('7', '3', '15', '52', '2020-06-09');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('7', '3', '15', '44', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('7', '3', '15', '48', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('7', '3', '15', '43', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('8', '3', '15', '41', '2020-06-09');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('8', '3', '15', '50', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('8', '3', '15', '44', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('8', '3', '15', '30', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('8', '3', '15', '26', '2020-06-13');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('9', '4', '17', '70', '2020-06-9');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('9', '4', '17', '44', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('9', '4', '17', '56', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('9', '4', '17', '55', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('9', '4', '17', '100', '2020-06-13');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('10', '4', '22', '108', '2020-06-09');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('10', '5', '22', '105', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('10', '5', '22', '120', '2020-06-12');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('10', '5', '22', '140', '2020-06-13');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('10', '5', '22', '100', '2020-06-14');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('11', '5', '30', '90', '2020-06-09');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('11', '5', '30', '85', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('11', '5', '30', '75', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('12', '5', '28', '40', '2020-06-09');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('12', '5', '28', '60', '2020-06-10');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('12', '5', '28', '55', '2020-06-11');
INSERT INTO `m&a_hotels`.`rates` (`rRoomsID`, `rRateTypeID`, `rARoomsNum`, `rRate`, `rDate`) VALUES ('12', '5', '28', '80', '2020-06-12');



-- Adding guests accounts
INSERT INTO `m&a_hotels`.`guests` (`gFullName`, `gUserName`, `gPassword`, `gAddress`, `gCity`, `gState`, `gZipCode`, `gCountry`, `gPhoneNumber`, `gEmail`, `gGender`, `gStatus`) VALUES ('Ali Abdullah Hama', 'ali', '123456789', 'sarchnar', 'sulaymaniyah', 'sulaymaniyah', '46001', 'Iraq', '0770000000', 'ali@guest.com', 'male', '1');
INSERT INTO `m&a_hotels`.`guests` (`gFullName`, `gUserName`, `gPassword`, `gAddress`, `gCity`, `gState`, `gZipCode`, `gCountry`, `gPhoneNumber`, `gEmail`, `gGender`, `gStatus`) VALUES ('Mahmood Kasim Jalal', 'mahmood', '123456789', 'sarchnar', 'sulaymaniyah', 'sulaymaniyah', '46001', 'Iraq', '0770000001', 'mahmood@guest.com', 'male', '1');
INSERT INTO `m&a_hotels`.`guests` (`gFullName`, `gUserName`, `gPassword`, `gAddress`, `gCity`, `gState`, `gZipCode`, `gCountry`, `gPhoneNumber`, `gEmail`, `gGender`, `gStatus`) VALUES ('Sarmad Hassan Ameen', 'sarmad', '123456789', 'somewhere', 'Mosul', 'Nainawa', '41', 'Iraq', '0770000002', 'sarmad@guest.com', 'male', '1');
INSERT INTO `m&a_hotels`.`guests` (`gFullName`, `gUserName`, `gPassword`, `gAddress`, `gCity`, `gState`, `gZipCode`, `gCountry`, `gPhoneNumber`, `gEmail`, `gGender`, `gStatus`) VALUES ('Mahmood Kalaf Jasim', 'mahmood1', '123456789', 'Adamya', 'Baghdad', 'Baghdad', '10011', 'Iraq', '0770000003', 'mah@guest.com', 'male', '1');


-- adding bookings
-- Using addReservation procedure
--  (hotelID INT, RoomID INT, guestID INT, rateTypeID INT, dateFrom DATE, dateTo DATE,numOfRooms INT,psNum INT,ChildrenNum INT, bPaymentID INT) 
CALL addReservation ('1','1','3','1','2020-06-9','2020-06-11', '1', '2', '1', '1');
CALL addReservation ('2','2','4','1','2020-06-9','2020-06-11', '1', '2', '1', '1');
CALL addReservation ('2','3','5','1','2020-06-9','2020-06-11', '1', '2', '1', '2');
CALL addReservation ('2','4','4','1','2020-06-9','2020-06-11', '1', '2', '1', '2');





