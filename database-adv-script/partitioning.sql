-- Step 1: Create partitioned bookings table
CREATE TABLE bookings_partitioned (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 2: Create monthly partitions for 2024
CREATE TABLE bookings_2024_01 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');

CREATE TABLE bookings_2024_02 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');

CREATE TABLE bookings_2024_03 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');

-- Step 3: Test performance of a query with EXPLAIN ANALYZE
-- Run this in your SQL engine
-- EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-02-10' AND '2024-02-15';
