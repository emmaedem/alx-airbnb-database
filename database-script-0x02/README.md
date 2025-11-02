#  Airbnb Database — Seed Data

##  Objective
This script (`seed.sql`) adds sample data to the Airbnb database for testing and demonstration purposes.

##  Entities Covered
- **User** — Registered users (guests, hosts, admin)
- **Property** — Host-listed homes or apartments
- **Booking** — User reservations
- **Payment** — Booking payments
- **Review** — Guest feedback on properties
- **Message** — Conversations between users

##  Usage
To load this data into your database:
```bash
psql -U your_username -d airbnb_database -f seed.sql
