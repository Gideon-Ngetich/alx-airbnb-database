SELECT 
    p.property_id,
    p.name,
    p.location,
    review_stats.review_count,
    review_stats.avg_rating
FROM properties p
JOIN (
    SELECT 
        r.property_id,
        COUNT(*) AS review_count,
        AVG(r.rating) AS avg_rating
    FROM reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
) AS review_stats
ON p.property_id = review_stats.property_id;
