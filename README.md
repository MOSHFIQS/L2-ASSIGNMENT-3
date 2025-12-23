# Vehicle Rental System  
## Database Overview (see ERD here: [Vehicle Rental System ERD](https://drawsql.app/teams/programming-hero-3/diagrams/vehicle-rental-system))

---

##  Project Overview

The **Vehicle Rental System** is a relational database project designed to demonstrate fundamental concepts of **database design**, **entity relationships**, and **SQL querying**.

This project focuses on:
- Designing a proper ERD
- Using primary and foreign keys
- Writing SQL queries using JOIN, WHERE, EXISTS, GROUP BY, and HAVING
- Applying real-world business logic to a rental system

---




##  Database Structure

The system consists of three main tables:

### 1️ Users Table
Stores information about system users.

**Fields:**
- `user_id` (Primary Key)
- `name`
- `email` (Unique)
- `phone`
- `role` (Admin / Customer)

---

### 2️ Vehicles Table
Stores vehicle-related information.

**Fields:**
- `vehicle_id` (Primary Key)
- `name`
- `type` (car / bike / truck)
- `model`
- `registration_number` (Unique)
- `rental_price`
- `status` (available / rented / maintenance)

---

### 3️ Bookings Table
Stores rental booking details.

**Fields:**
- `booking_id` (Primary Key)
- `user_id` (Foreign Key → Users)
- `vehicle_id` (Foreign Key → Vehicles)
- `start_date`
- `end_date`
- `status` (pending / confirmed / completed / cancelled)
- `total_cost`

---

##  Entity Relationships

- **One-to-Many:** One user can make multiple bookings
- **One-to-Many:** One vehicle can have multiple bookings
- **Many-to-One:** Each booking belongs to one user and one vehicle
- **Logical One-to-One:** Each booking connects exactly one user and one vehicle

## SQL Queries (See Queries: [queries.sql](https://github.com/MOSHFIQS/L2-ASSIGNMENT-3/blob/main/queries.sql))

All required SQL queries are written and solved in the **`queries.sql`** file.

The file includes solutions for:
-  Retrieve booking information along with Customer name and Vehicle name.
-  Finding vehicles that have never been booked using `NOT EXISTS`
-  Retrieve all available vehicles of a specific type (e.g. cars).
-  Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.

Each query is written based on the designed schema and matches the expected outputs provided in the assignment.