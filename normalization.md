# Database Normalization — Airbnb Database

##  Objective
This document explains how the Airbnb database design satisfies the rules of normalization up to **Third Normal Form (3NF)** to ensure data consistency and eliminate redundancy.

---

##  First Normal Form (1NF)
- Each table has a **primary key**.
- All fields contain **atomic values** (no repeating or grouped data).
- Example: In the `User` table, each field like `email`, `first_name`, and `role` holds a single value.

 **Result:** All tables (User, Property, Booking, Payment, Review, Message) satisfy 1NF.

---

##  Second Normal Form (2NF)
- Database is already in 1NF.
- All non-key attributes depend on the **entire primary key**.
- Since every table uses a single-column primary key (e.g., `user_id`, `booking_id`), there are **no partial dependencies**.

 **Result:** All tables satisfy 2NF.

---

##  Third Normal Form (3NF)
- Database is already in 2NF.
- No **transitive dependencies** exist — non-key fields depend only on their table’s primary key.
- Example: In the `Booking` table, `total_price`, `start_date`, and `status` all depend only on `booking_id`.

 **Result:** Database satisfies 3NF — clean, efficient, and non-redundant.

---

##  Conclusion
The Airbnb database schema is **fully normalized (3NF)**.  
It minimizes redundancy, ensures referential integrity, and supports scalability by maintaining clear relationships between entities such as Users, Properties, Bookings, Payments, Reviews, and Messages.
