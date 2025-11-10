--  Count total number of bookings made by each user

SELECT 
    user_id,
    COUNT(booking_id) AS total_bookings
FROM bookings
GROUP BY user_id
ORDER BY total_bookings DESC;

--------------------------------------------------------------

--  Rank properties based on total number of bookings

SELECT 
    property_id,
    COUNT(booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank
FROM bookings
GROUP BY property_id
ORDER BY total_bookings DESC;

-- Assign a unique row number to each property (using ROW_NUMBER)

SELECT 
    property_id,
    COUNT(booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(booking_id) DESC) AS row_number
FROM bookings
GROUP BY property_id
ORDER BY total_bookings DESC;