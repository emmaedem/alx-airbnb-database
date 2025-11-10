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


   # SQL Aggregation and Ranking Queries

## Overview
This task demonstrates how to use SQL **aggregation** and **window functions** to analyze booking data in the Airbnb Clone database.

## Queries
1. **Total Bookings per User**  
   - Counts how many bookings each user has made using `COUNT()` and `GROUP BY`.

2. **Property Ranking by Popularity**  
   - Uses `RANK()` with a window function to rank properties based on the number of bookings.


# Database Indexing

This task adds indexes to improve query performance on frequently searched columns:
- Users: email  
- Bookings: user_id, property_id, status  
- Properties: location, pricepernight  


