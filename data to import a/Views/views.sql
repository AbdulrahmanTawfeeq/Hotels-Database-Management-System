CREATE OR REPLACE VIEW available_hotels AS
SELECT * FROM hotels h
JOIN rooms r ON h.hHotelID = r.rHotelID
JOIN rates rs ON r.rRoomID = rs.rRoomsID
WHERE rs.rARoomsNum > 0 AND rs.rDate >= now();
-- for testing Select * from available_hotels;

-- list how many hotels have been registed in each city
CREATE OR REPLACE VIEW `no_of_hotels_in_each_city` AS
    SELECT `hotels`.`hCity` AS `City`, COUNT(`hotels`.`hCity`) AS `Number of hotels`  FROM `hotels`
    GROUP BY `hotels`.`hCity`;


