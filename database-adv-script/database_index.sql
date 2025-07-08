-- Indexes for the 'users' table
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_role ON users(role);

-- Indexes for the 'bookings' table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Indexes for the 'properties' table
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_pricepernight ON properties(pricepernight);

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'a1b2c3d4-e5f6-7890-1234-56789abcdef0';
EXPLAIN SELECT * FROM bookings WHERE user_id = 'a1b2c3d4-e5f6-7890-1234-56789abcdef0';
