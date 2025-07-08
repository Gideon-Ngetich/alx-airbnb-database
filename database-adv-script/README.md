# SQL Joins – Airbnb Clone Backend

## 🎯 Objective

This document demonstrates how to master SQL joins by writing complex queries using `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN` based on the Airbnb Clone backend schema.

---

## 🔗 INNER JOIN: Retrieve all bookings and the respective users who made those bookings

```sql
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
```

**Explanation**:  
Returns only the bookings that are linked to a valid user. Excludes any bookings with no associated user.

---

## ⬅️ LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews

```sql
SELECT 
    properties.property_id,
    properties.name AS property_name,
    properties.location,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id;
```

**Explanation**:  
Fetches all properties regardless of whether they have reviews. Properties without reviews will show `NULL` values for review fields.

---

## 🔄 FULL OUTER JOIN: Retrieve all users and all bookings (even unmatched ones)

> ✅ PostgreSQL supports FULL OUTER JOIN directly:

```sql
SELECT 
    users.user_id,
    users.first_name,
    users.email,
    bookings.booking_id,
    bookings.start_date,
    bookings.status
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id;
```

> ⚠️ MySQL workaround using UNION:

```sql
SELECT 
    users.user_id,
    users.first_name,
    users.email,
    bookings.booking_id,
    bookings.start_date,
    bookings.status
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.first_name,
    users.email,
    bookings.booking_id,
    bookings.start_date,
    bookings.status
FROM users
RIGHT JOIN bookings ON users.user_id = bookings.user_id;
```

**Explanation**:  
Fetches:
- Users with or without bookings
- Bookings with or without an associated user

---

## 📌 Summary

| Join Type       | Description                                                |
|-----------------|------------------------------------------------------------|
| INNER JOIN      | Only matching records from both tables                     |
| LEFT JOIN       | All records from the left table, matched or not            |
| FULL OUTER JOIN | All records from both tables, matched or unmatched         |

This helps ensure comprehensive backend data access across the Airbnb Clone database.   