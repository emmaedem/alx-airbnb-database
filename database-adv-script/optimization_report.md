# Query Performance Optimization

This task focuses on improving SQL query performance by analyzing and refactoring complex joins.

### Steps
1. Wrote a query to retrieve all bookings with user, property, and payment details.  
2. Used **EXPLAIN ANALYZE** to measure performance before optimization.  
3. Refactored the query to reduce execution time by:
   - Selecting only needed columns  
   - Using indexed columns  
   - Replacing unnecessary joins  

### Files
- **performance.sql** — contains both the initial and optimized queries.
