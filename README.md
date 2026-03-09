<p align="center">
  <img src="assets/qa-sql-testing-banner.png" width="100%" alt="QA SQL Testing Banner">
</p>

# 🗄️ QA SQL Testing

<p align="center">
  <a href="https://github.com/ivaneidepmn/qa-sql-testing">
    <img src="https://img.shields.io/badge/View_Project-0A66C2?style=for-the-badge&logo=github&logoColor=white" alt="View Project">
  </a>
  <a href="https://github.com/ivaneidepmn/qa-sql-testing/tree/main/queries">
    <img src="https://img.shields.io/badge/View_SQL_Queries-1F6FEB?style=for-the-badge&logo=sqlite&logoColor=white" alt="View SQL Queries">
  </a>
  <a href="https://github.com/ivaneidepmn">
    <img src="https://img.shields.io/badge/My_GitHub_Profile-24292E?style=for-the-badge&logo=github&logoColor=white" alt="My GitHub Profile">
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/SQL-Database-blue" alt="SQL Database">
  <img src="https://img.shields.io/badge/SQLite-Lightweight-green" alt="SQLite Lightweight">
  <img src="https://img.shields.io/badge/QA-Data%20Validation-orange" alt="QA Data Validation">
  <img src="https://img.shields.io/badge/Testing-Database%20Testing-purple" alt="Database Testing">
</p>

---

## 📖 About the Project

This repository demonstrates how **QA Engineers use SQL to validate application data, investigate bugs, and verify database integrity**.

The project uses **SQLite**, a lightweight database frequently used in development and testing environments.

This repository simulates real QA scenarios where database validation is required.

---

## 🎯 Project Objective

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

## 🛠 Technologies

- SQLite
- SQL
- DB Browser for SQLite

SQLite was chosen because it is **lightweight, easy to run locally, and ideal for testing scenarios**.

---

## 📂 Project Structure

```text
qa-sql-testing
│
├── database
│   └── sample-database.sql
│
├── queries
│   ├── select-validation.sql
│   ├── data-integrity.sql
│   └── join-validation.sql
│
├── test-scenarios
│   └── user-registration-validation.md
│
├── assets
│   ├── users-table.png
│   ├── orders-table.png
│   ├── negative-order-bug.png
│   ├── duplicate-email-bug.png
│   └── qa-sql-testing-banner.png
│
└── README.md
🔎 Example SQL Validations
Validate if a user exists
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
Negative Order Value
SELECT *
FROM orders
WHERE total_value < 0;

This query identified an order with negative value (-50.0), indicating a potential validation issue in the system.

Possible causes:

missing backend validation

incorrect business rule implementation

API accepting invalid data

Duplicate Email Detection
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

This query detects duplicated email records, indicating a missing uniqueness validation.

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

From a Quality Assurance perspective, SQL is essential for:

validating application data

detecting inconsistencies

investigating bugs

verifying database integrity

confirming business rule enforcement

QA Engineers frequently use SQL queries to confirm whether the system stores and processes data correctly.

🚀 QA Portfolio Projects
<p align="center"> <a href="https://github.com/ivaneidepmn/qa-automation-cypress-framework"> <img src="https://github-readme-stats.vercel.app/api/pin/?username=ivaneidepmn&repo=qa-automation-cypress-framework" alt="QA Automation Cypress Framework"> </a> <a href="https://github.com/ivaneidepmn/qa-bug-hunt-demoqa"> <img src="https://github-readme-stats.vercel.app/api/pin/?username=ivaneidepmn&repo=qa-bug-hunt-demoqa" alt="QA Bug Hunt DemoQA"> </a> <a href="https://github.com/ivaneidepmn/qa-engineering-roadmap"> <img src="https://github-readme-stats.vercel.app/api/pin/?username=ivaneidepmn&repo=qa-engineering-roadmap" alt="QA Engineering Roadmap"> </a> </p>

These repositories demonstrate different aspects of Software Quality Engineering:

QA Automation Framework – automated testing with Cypress

Bug Investigation Lab – real bug discovery scenarios

QA Engineering Roadmap – QA study path and concepts

Together they form a complete QA Engineering portfolio.

📚 References

SQLite Documentation
https://sqlite.org/docs.html

DB Browser for SQLite
https://sqlitebrowser.org

SQL Tutorial
https://www.w3schools.com/sql/

GitHub Documentation
https://docs.github.com