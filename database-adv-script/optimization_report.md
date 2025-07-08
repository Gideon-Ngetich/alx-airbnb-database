# 🛠️ Query Performance Optimization – Airbnb Clone Backend

## 🎯 Objective

The goal of this task is to retrieve comprehensive booking information while identifying and reducing potential performance bottlenecks by refactoring complex SQL queries.

---

## 📌 Initial Query

The initial query retrieves:

- Booking details
- User details
- Property details
- Payment details

```sql
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
