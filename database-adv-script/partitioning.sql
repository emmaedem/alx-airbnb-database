-- 1. Rename old table so we can recreate it with partitioning
ALTER TABLE bookings RENAME TO bookings_old;

-- 2. Create new partitioned table
CREATE TABLE bookings (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (start_date);

-- 3. Create partitions by year
CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- 4. Copy old data into new partitioned table
INSERT INTO bookings
SELECT * FROM bookings_old;

-- 5. Drop old table
DROP TABLE bookings_old;

-- 6. Test performance with EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
