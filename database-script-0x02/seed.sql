-- 🧍‍♂️ Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('a1b2c3d4-e5f6-7890-1234-56789abc0001', 'Emma', 'Edem', 'emma@example.com', 'hashed_password_1', '08123456789', 'guest'),
('a1b2c3d4-e5f6-7890-1234-56789abc0002', 'Chika', 'Okafor', 'chika@example.com', 'hashed_password_2', '08099887766', 'host'),
('a1b2c3d4-e5f6-7890-1234-56789abc0003', 'Tunde', 'Bello', 'tunde@example.com', 'hashed_password_3', '08155555555', 'admin');

-- 🏠 Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('b1b2c3d4-e5f6-7890-1234-56789abc1111', 'a1b2c3d4-e5f6-7890-1234-56789abc0002', 'Cozy Apartment', '2-bedroom flat with Wi-Fi and AC', 'Lagos, Nigeria', 30000.00),
('b1b2c3d4-e5f6-7890-1234-56789abc1112', 'a1b2c3d4-e5f6-7890-1234-56789abc0002', 'Luxury Villa', 'Spacious villa with pool and ocean view', 'Lekki, Lagos', 120000.00);

-- 📅 Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('c1b2c3d4-e5f6-7890-1234-56789abc2221', 'b1b2c3d4-e5f6-7890-1234-56789abc1111', 'a1b2c3d4-e5f6-7890-1234-56789abc0001', '2025-11-10', '2025-11-13', 90000.00, 'confirmed'),
('c1b2c3d4-e5f6-7890-1234-56789abc2222', 'b1b2c3d4-e5f6-7890-1234-56789abc1112', 'a1b2c3d4-e5f6-7890-1234-56789abc0001', '2025-12-01', '2025-12-05', 480000.00, 'pending');

-- 💳 Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('d1b2c3d4-e5f6-7890-1234-56789abc3331', 'c1b2c3d4-e5f6-7890-1234-56789abc2221', 90000.00, 'credit_card'),
('d1b2c3d4-e5f6-7890-1234-56789abc3332', 'c1b2c3d4-e5f6-7890-1234-56789abc2222', 480000.00, 'paypal');

-- 📝 Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('e1b2c3d4-e5f6-7890-1234-56789abc4441', 'b1b2c3d4-e5f6-7890-1234-56789abc1111', 'a1b2c3d4-e5f6-7890-1234-56789abc0001', 5, 'Lovely apartment, very comfortable!'),
('e1b2c3d4-e5f6-7890-1234-56789abc4442', 'b1b2c3d4-e5f6-7890-1234-56789abc1112', 'a1b2c3d4-e5f6-7890-1234-56789abc0001', 4, 'Nice villa but a bit pricey.');

-- 💬 Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('f1b2c3d4-e5f6-7890-1234-56789abc5551', 'a1b2c3d4-e5f6-7890-1234-56789abc0001', 'a1b2c3d4-e5f6-7890-1234-56789abc0002', 'Hi, I’d like to confirm my booking.'),
('f1b2c3d4-e5f6-7890-1234-56789abc5552', 'a1b2c3d4-e5f6-7890-1234-56789abc0002', 'a1b2c3d4-e5f6-7890-1234-56789abc0001', 'Sure, your booking is confirmed!');
