-- 1. Find all properties where the average rating is greater than 4.0 using a subquery
SELECT 
    p.property_id,
    p.name,
    p.location
FROM properties p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);

-- 2. Find users who have made more than 3 bookings using a correlated subquery
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;