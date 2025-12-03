# Performance Monitoring Report

This report documents my performance checks on common queries in the Airbnb database.  
I used `EXPLAIN` and `EXPLAIN ANALYZE` to measure execution time and identify bottlenecks.

---

## 1. Queries Monitored

### Query A — Get all bookings for a user
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 'some-user-id';


EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Lagos';


EXPLAIN ANALYZE
SELECT b.booking_id, u.first_name, p.name, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
