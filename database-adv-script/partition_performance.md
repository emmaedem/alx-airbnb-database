# Booking Table Partitioning : Performance Report

I implemented range partitioning on the `bookings` table using the `start_date` column.  
The goal was to improve query speed when filtering bookings by date.

---

## Before Partitioning
- Query scanned the entire bookings table.
- `EXPLAIN ANALYZE` showed a full table scan.
- Execution time was noticeably slower as table size increased.

