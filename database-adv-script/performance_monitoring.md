# 📊 Database Performance Monitoring and Refinement – Airbnb Clone Backend

## 🎯 Objective

Continuously improve the performance of the Airbnb Clone backend by:
- Monitoring slow or expensive queries.
- Analyzing execution plans.
- Applying schema changes or indexes to remove bottlenecks.

---

## 🔍 Step 1: Monitor Query Execution

Use tools like `EXPLAIN`, `EXPLAIN ANALYZE`, or `SHOW PROFILE` to inspect how the database executes your queries.

### ✅ MySQL Example

```sql
-- Enable profiling
SET profiling = 1;

-- Run your query
SELECT * FROM bookings WHERE user_id = 'some-user-id';

-- View the profile
SHOW PROFILE FOR QUERY 1;
