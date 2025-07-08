# 📌 Database Index Optimization – Airbnb Clone Backend

## 🎯 Objective
This document outlines the use of SQL indexes to optimize query performance across high-usage tables: `users`, `bookings`, and `properties`.

Indexes are used to speed up the retrieval of rows by using a pointer. Proper indexing significantly improves query performance, especially on large datasets with frequent `WHERE`, `JOIN`, or `ORDER BY` operations.

---

## 🧩 Indexed Tables and Columns

### ✅ Users Table

| Column       | Reason for Indexing                     |
|--------------|------------------------------------------|
| `email`      | Used for user lookup during login (`WHERE`, `JOIN`) |
| `role`       | Frequently filtered for access control logic |

```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_role ON users(role);
