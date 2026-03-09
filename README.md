<p align="center">
<img src="assets/qa-sql-testing-banner.png" width="100%">
</p>

# 🗄️ QA SQL Testing

<p align="center">

<a href="https://github.com/ivaneidepmn/qa-sql-testing">
<img src="https://img.shields.io/badge/View_Project-0A66C2?style=for-the-badge&logo=github&logoColor=white">
</a>

<a href="https://github.com/ivaneidepmn/qa-sql-testing/tree/main/queries">
<img src="https://img.shields.io/badge/View_SQL_Queries-1F6FEB?style=for-the-badge&logo=sqlite&logoColor=white">
</a>

<a href="https://github.com/ivaneidepmn">
<img src="https://img.shields.io/badge/My_GitHub_Profile-24292E?style=for-the-badge&logo=github&logoColor=white">
</a>

</p>

<p align="center">

<img src="https://img.shields.io/badge/SQL-Database-blue">
<img src="https://img.shields.io/badge/SQLite-Lightweight-green">
<img src="https://img.shields.io/badge/QA-Data%20Validation-orange">
<img src="https://img.shields.io/badge/Testing-Database%20Testing-purple">

</p>

---

# 📖 About the Project

This repository demonstrates how **QA Engineers use SQL to validate application data, investigate bugs, and verify database integrity**.

The project uses **SQLite**, a lightweight database frequently used in development and testing environments.

This repository simulates real QA scenarios where database validation is required.

---

# 🎯 Project Objective

The goal of this project is to demonstrate how SQL is used by QA Engineers to:

- validate stored application data
- detect duplicated records
- identify invalid values
- verify relationships between tables
- investigate bugs directly in the database

These activities are common in roles such as:

- QA Analyst
- QA Automation Engineer
- SDET

---

# 🛠 Technologies

- SQLite
- SQL
- DB Browser for SQLite

SQLite was chosen because it is **lightweight, easy to run locally, and ideal for testing scenarios**.

---

# 📂 Project Structure



qa-sql-testing
│
├── database
│ └── sample-database.sql
│
├── queries
│ ├── select-validation.sql
│ ├── data-integrity.sql
│ └── join-validation.sql
│
├── test-scenarios
│ └── user-registration-validation.md
│
├── assets
│ ├── users-table.png
│ ├── orders-table.png
│ ├── negative-order-bug.png
│ └── duplicate-email-bug.png
│
└── README.md


---

# 🔎 Example SQL Validations

```sql
-- =====================================================
-- QA SQL TESTING
-- Database Validation Queries
-- =====================================================

-- Validate if a specific user exists
SELECT *
FROM users
WHERE email = 'ana@email.com';


-- Detect duplicated users (duplicate email addresses)
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;


-- Detect invalid order values (negative total)
SELECT *
FROM orders
WHERE total_value < 0;


-- Validate relationships between orders and users
SELECT
orders.id,
users.name,
users.email,
orders.product_name,
orders.total_value
FROM orders
JOIN users
ON orders.user_id = users.id;


-- =====================================================
-- BUG INVESTIGATION EXAMPLES
-- =====================================================

-- Bug 1: Negative Order Value
SELECT *
FROM orders
WHERE total_value < 0;

-- Orders with negative values indicate potential
-- issues in business rule validation.


-- Bug 2: Duplicate Email Detection
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- If results are returned, duplicate email accounts exist.
📸 Evidence
Users Table

Orders Table

Negative Order Value Detection

Duplicate Email Detection

🧠 QA Perspective

From a Quality Assurance perspective, SQL is a powerful tool for:

validating application data

detecting inconsistencies

investigating bugs

verifying database integrity

confirming business rule enforcement

QA Engineers frequently use SQL queries to verify whether the system is correctly storing and processing application data.

📚 References

SQLite Documentation
https://sqlite.org/docs.html

DB Browser for SQLite
https://sqlitebrowser.org

SQL Tutorial
https://www.w3schools.com/sql/

GitHub Documentation
https://docs.github.com


