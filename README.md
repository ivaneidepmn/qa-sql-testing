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

The project uses **SQLite**, a lightweight database widely used in development and automated testing environments.

Through practical SQL queries, this project simulates real scenarios where QA professionals need to:

- validate stored data
- investigate production bugs
- detect data inconsistencies
- verify business rule enforcement
- analyze relationships between tables

---

# 🎯 Project Objective

The goal of this project is to demonstrate **database testing techniques used by QA Engineers**.

The project covers:

✔ Data validation  
✔ Bug investigation using SQL  
✔ Database integrity verification  
✔ Detection of duplicated data  
✔ Identification of invalid values

These techniques are commonly used by:

- QA Analysts  
- QA Automation Engineers  
- SDET Engineers  

---

# 🛠 Technologies

- SQLite
- SQL
- DB Browser for SQLite

SQLite was chosen because it is lightweight, easy to run locally, and commonly used in testing environments.

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

```
------

# 🔎 Example SQL Validations

### Validate if a user exists

```sql
SELECT *
FROM users
WHERE email = 'ana@email.com';
Detect duplicated users
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
Detect invalid order values
SELECT *
FROM orders
WHERE total_value < 0;
Validate relationships between tables
SELECT
orders.id,
users.name,
users.email,
orders.product_name,
orders.total_value
FROM orders
JOIN users
ON orders.user_id = users.id;
🐞 Bug Investigation Examples

During SQL validation two inconsistencies were identified in the database.

1️⃣ Negative Order Value

Query used:

SELECT *
FROM orders
WHERE total_value < 0;

Result:

An order was found with a negative value (-50.0).

This indicates a potential issue in the business rules that should prevent orders with invalid values.

Possible causes:

missing backend validation

incorrect business rule implementation

API accepting invalid data

2️⃣ Duplicate Email Detection

Query used:

SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

Result:

The query returned duplicated email records.

This means the system allowed the creation of multiple accounts with the same email address.

Possible causes:

missing UNIQUE constraint in the database

lack of validation in the registration API

incorrect validation rules in the application

📸 Evidence
Users Table

Orders Table

Negative Order Value Detection

Duplicate Email Detection

🧠 QA Perspective

From a Quality Assurance perspective, SQL is an essential tool for:

validating application data

identifying inconsistencies

investigating bugs in production

verifying database integrity

confirming business rule enforcement

QA Engineers frequently use SQL queries to confirm whether the system is storing and processing data correctly.

📚 References

SQLite Documentation
https://sqlite.org/docs.html

DB Browser for SQLite
https://sqlitebrowser.org

SQL Tutorial
https://www.w3schools.com/sql/

GitHub Documentation
https://docs.github.com