# ElevateLabs_Task2
This project is part of ElevateLabs Task 2, aimed at mastering essential SQL operations like inserting, updating, and deleting data. It also covers handling missing values using NULL and demonstrates data cleanup for maintaining data consistency in an e-commerce database.

🎯 Objective
Practice inserting, updating, and deleting data.

Handle missing values using NULL.

Ensure clean and consistent data in a normalized database.

🛠 Tools Used
MySQL Workbench 

📂 Deliverables
✅ EcommerceDB2.sql containing:

Table creation with PRIMARY KEY and FOREIGN KEY constraints

INSERT statements with sample e-commerce data

UPDATE statements to fix NULL values

DELETE statements to remove incomplete/inconsistent data

📘 Guide
Create the database and all necessary tables.

Populate the tables with sample e-commerce data.

Identify and handle NULL values using UPDATE statements.

Remove incomplete records using DELETE.

Maintain referential integrity with FOREIGN KEY constraints.

🗂 Schema Overview
The project includes the following tables:

Customers – Customer details

Products – Product data

Orders – Order records and total amount

Order_Items – Products linked to each order

Payments – Payment details per order

🔗 Relationships:
Orders.customer_id → Customers.customer_id

Order_Items.order_id → Orders.order_id

Order_Items.product_id → Products.product_id

Payments.order_id → Orders.order_id

🚫 NULL Handling and Cleanup
Detected NULL values in:
Customers.phone, Customers.email

Products.description

Orders.total_amount

Payments.amount_paid, Payments.payment_method

Resolved via:
UPDATE for filling in missing data

DELETE for removing incomplete entries

## ✅ Outcome

 Outcome: A populated database with clean and consistent data.

