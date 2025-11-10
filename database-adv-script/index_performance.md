-- Create index on users table for faster login and email search
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings table to speed up joins and filters
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_status ON bookings(status);

-- Create index on properties table for location and price searches
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(pricepernight);

-- Check query performance before and after creating indexes
-- Run EXPLAIN ANALYZE to compare

-- Before adding index
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'sample-user-id';

-- After adding index
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'sample-user-id';
