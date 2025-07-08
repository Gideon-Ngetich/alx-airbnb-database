-- Initial Query: Retrieves all bookings with user, property, and payment details
-- Refactored Query: Only fetch necessary columns and reduce join complexity
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    b.user_id,
    b.property_id,
    pay.amount
FROM bookings b
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;

EXPLAIN 
SELECT ...
