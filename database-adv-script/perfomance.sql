-- Get bookings with user, property, and payment details
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    b.start_date,
    b.end_date,
    pay.amount,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;


EXPLAIN ANALYZE 
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    b.start_date,
    b.end_date,
    pay.amount,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;


-- Optimized query with better joins and limited columns
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name || ' ' || u.last_name AS user_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed';


