-- Get Number of bookings for a specific hotel using it's ID
DROP FUNCTION IF EXISTS get_hotel_bookings;
CREATE FUNCTION get_hotel_bookings(hotelID int)
RETURNS INT deterministic
return (SELECT COUNT(b.bHotelID) FROM bookings b WHERE b.bHotelID = hotelID);

-- Get number of all bookings for all the hotels specific city and specific state:
DROP FUNCTION IF EXISTS get_bookings;
CREATE FUNCTION get_bookings(city VARCHAR(45), bStatus VARCHAR(45)) 
RETURNS INT deterministic
RETURN (SELECT COUNT(b.bHotelID) FROM bookings b
JOIN hotels h ON b.bHotelID = h.hHotelID
JOIN bookingStatus bs ON b.bBookingStatusID = bs.bsBookingStatusID
WHERE h.hCity LIKE concat('%',city,'%') and bs.bsStatus LIKE concat('%',bStatus,'%')
);




