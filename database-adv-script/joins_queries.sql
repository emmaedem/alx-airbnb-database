-- 1. INNER JOIN: Retrieve all bookings and the users who made them
SELECT 
    bookings.booking_id,
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.status
FROM bookings
INNER JOIN users 
ON bookings.user_id = users.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews (including those with no reviews)
SELECT 
    properties.property_id,
    properties.name AS property_name,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews
ON properties.property_id = reviews.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings (even unmatched)
SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.status
FROM users
FULL OUTER JOIN bookings
ON users.user_id = bookings.user_id;
