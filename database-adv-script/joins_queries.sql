--1. INNER JOIN: Bookings and the respective users who made them
SELECT 
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date,
    bookings.status,
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id;

--2. LEFT JOIN: All properties and their reviews
SELECT 
    properties.property_id,
    properties.name AS property_name,
    properties.location,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id
ORDER BY properties.property_id;

--3. FULL OUTER JOIN: All users and all bookings
SELECT 
    users.user_id,
    users.first_name,
    users.email,
    bookings.booking_id,
    bookings.start_date,
    bookings.status
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id;