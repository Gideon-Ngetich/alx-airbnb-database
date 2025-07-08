# 📚 Database Normalization: My Design Process (1NF → 3NF)

While designing my ER diagram for the system, I ensured that the database was properly normalized for efficiency, consistency, and minimal redundancy. Here’s a breakdown of how I approached normalization—from **First Normal Form (1NF)** to **Third Normal Form (3NF)**—based on my entities.

---

## 🔹 First Normal Form (1NF)

At this stage, my focus was on ensuring:
- Each column holds **atomic values** (no arrays or sets).
- There are **no repeating groups** within a table.

For example, in my `Booking` table:

```sql
Booking(booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
