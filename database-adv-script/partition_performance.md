# 🧩 Table Partitioning for Performance Optimization – Airbnb Clone Backend

## 🎯 Objective

Optimize the performance of date-based queries on the `bookings` table by implementing **table partitioning** using the `start_date` column.

---

## 🛠️ Why Partitioning?

Partitioning improves query performance by **dividing large tables** into smaller, manageable pieces (partitions). When a query filters by the partitioned key (`start_date`), only the relevant partition is scanned, significantly reducing I/O.

---

## 📐 Implementation Strategy

### ✅ Step 1: Create a Partitioned Table

We partition the `bookings` table by `RANGE` on the `start_date` column.

```sql
CREATE TABLE bookings_partitioned (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);
