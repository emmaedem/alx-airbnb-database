# SQL Joins Queries

This folder contains SQL scripts demonstrating how to use different types of joins in the Airbnb Clone database.

## Queries Included
1. **INNER JOIN** – Shows all bookings with their corresponding users.  
2. **LEFT JOIN** – Shows all properties and their reviews, including properties without reviews.  
3. **FULL OUTER JOIN** – Displays all users and bookings, even if they don’t match.


# Subqueries in SQL

## Queries

1. **Non-Correlated Subquery**  
   Finds all properties with an average rating above 4.0.  
   The inner query calculates the average rating for each property.

2. **Correlated Subquery**  
   Finds users who have made more than 3 bookings.  
   The inner query counts bookings per user for each record in the users table.

