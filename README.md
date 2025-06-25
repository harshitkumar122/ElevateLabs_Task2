# ElevateLabs_Task2

This project is built as part of **ElevateLabs Task 2**, focused on mastering essential SQL operations such as inserting, updating, and deleting data and database. The script also handles missing values using `NULL` and demonstrates data cleanup for maintaining consistency.


## 🎯 Objective

Practice inserting, updating, and deleting data. Handle missing values using `NULL` and ensure clean and consistent data in a relational database.

## 🛠️ Tools

- MySQL Workbench

## 📦 Deliverables

- ✅ `LibraryDB.sql` file containing:
  - Table creation with `PRIMARY KEY` and `FOREIGN KEY` constraints
  - `INSERT` statements to populate tables with sample data
  - `UPDATE` statements to handle missing (`NULL`) values
  - `DELETE` statements to remove incomplete or inconsistent data

## 📘 Guide

1. Use `INSERT INTO` to add rows into all major tables
2. Introduce missing values (`NULL`) in specific fields (email, bio, return_date)
3. Use `UPDATE` to fill in missing values using conditions
4. Use `DELETE` with `WHERE` clauses to clean unwanted rows
5. Ensure referential integrity by maintaining foreign key relationships

## 🧱 Schema Overview

The database contains the following tables:

- `Members`: Library users
- `Authors`: Book authors
- `Books`: Books with stock and authorship info
- `Loans`: Borrowed book records
- `Payments`: Fines or dues linked to loans

Relationships are maintained through foreign keys:
- `Books.author_id → Authors.author_id`
- `Loans.member_id → Members.member_id`
- `Loans.book_id → Books.book_id`
- `Payments.loan_id → Loans.loan_id`

## 🧹 NULL Handling and Data Cleanup

**NULL Values Inserted In:**
- `phone` and `email` in `Members`
- `bio` in `Authors`
- `description` in `Books`
- `amount_paid` and `payment_method` in `Payments`
- `return_date` in `Loans`

**Corrected With:**
- `UPDATE` for filling in missing values
- `DELETE` to remove records with incomplete data

## ✅ Outcome

 Outcome: A populated database with clean and consistent data.

