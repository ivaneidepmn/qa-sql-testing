<p align="center">
  <img src="assets/qa-sql-testing-banner.png" width="100%" alt="QA SQL Testing Banner">
</p>

<h1 align="center">🗄️ QA SQL Testing Lab</h1>

<p align="center">
Real-world database validation scenarios using <b>SQL</b> to detect bugs, validate data integrity and support quality assurance investigations.
</p>

---

<p align="center">

<a href="#-example-sql-validations">
<img src="https://img.shields.io/badge/🔎_Example_SQL_Validations-blue?style=for-the-badge">
</a>

<a href="#-bug-report-examples">
<img src="https://img.shields.io/badge/🐞_Bug_Report_Examples-red?style=for-the-badge">
</a>

<a href="#-test-cases">
<img src="https://img.shields.io/badge/🧪_Test_Cases-green?style=for-the-badge">
</a>

<a href="#-database-investigation-example">
<img src="https://img.shields.io/badge/🧠_Database_Investigation-orange?style=for-the-badge">
</a>

<a href="#-evidence">
<img src="https://img.shields.io/badge/📸_Evidence-purple?style=for-the-badge">
</a>

<a href="#-qa-perspective">
<img src="https://img.shields.io/badge/🎯_QA_Perspective-black?style=for-the-badge">
</a>

</p>

---

<p align="center">

<img src="https://img.shields.io/badge/SQL-Database_Testing-blue">
<img src="https://img.shields.io/badge/SQLite-Lightweight_Database-green">
<img src="https://img.shields.io/badge/QA-Bug_Investigation-red">
<img src="https://img.shields.io/badge/Testing-Test_Cases-orange">
<img src="https://img.shields.io/badge/Data-Validation-purple">

</p>

---

# 📑 Table of Contents

- About the Project
- Project Objective
- Technologies
- Test Environment
- Project Structure
- Test Strategy
- Example SQL Validations
- Bug Report Examples
- Test Cases
- Database Investigation
- Root Cause Analysis
- Database Validation Checklist
- QA Case Study
- Evidence
- QA Perspective
- Future Improvements
- References
- Author

---

# 📖 About the Project

This repository demonstrates how **QA Engineers use SQL to validate application data, investigate bugs, and verify database integrity**.

Database validation is essential in software testing because many issues originate from:

- incorrect data storage
- missing validation rules
- broken relationships between tables

This project simulates **real QA scenarios where database validation is required**.

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

SQLite was chosen because it is **lightweight and ideal for testing environments**.

---

# 💻 Test Environment

The testing environment used in this project:

Database: SQLite  
Tool: DB Browser for SQLite  

Steps to run locally:

1. Install **DB Browser for SQLite**
2. Open the `sample-database.sql` file
3. Execute SQL queries from the `queries` folder
4. Validate the results

---

# 📂 Project Structure

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
├── assets
│   ├── users-table.png
│   ├── orders-table.png
│   ├── negative-order-bug.png
│   ├── duplicate-email-bug.png
│   └── qa-sql-testing-banner.png
│
└── README.md
```

---

# 🧭 Test Strategy

This project focuses on **database validation and data integrity testing** using SQL queries.

Scope includes:

- business rule validation
- constraint validation
- relationship validation
- data integrity verification

Test types used:

- data validation testing
- constraint validation
- relationship testing
- bug investigation using SQL queries

---

# 🔎 Example SQL Validations

### Validate if a user exists

```sql
SELECT *
FROM users
WHERE email = 'ana@email.com';
```

### Detect duplicated users

```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

### Detect invalid order values

```sql
SELECT *
FROM orders
WHERE total_value < 0;
```

### Validate relationships between tables

```sql
SELECT
orders.id,
users.name,
users.email,
orders.product_name,
orders.total_value
FROM orders
JOIN users
ON orders.user_id = users.id;
```

---

# 🐞 Bug Report Examples

## Bug 001 — Negative Order Value

Severity: High

```sql
SELECT *
FROM orders
WHERE total_value < 0;
```

Issue:

An order with value **-50.0** was detected.

Possible causes:

- missing backend validation
- incorrect business rule implementation
- API accepting invalid values

Evidence:

`assets/negative-order-bug.png`

---

## Bug 002 — Duplicate Email

Severity: Medium

```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

Issue:

Multiple users registered with the same email.

Possible causes:

- missing UNIQUE constraint
- missing validation in registration API
- incorrect business rule validation

Evidence:

`assets/duplicate-email-bug.png`

---

# 🧪 Test Cases

### Test Case 001 — Register user with valid data

Steps:

1. Access registration page
2. Enter valid information
3. Submit form

Expected result:

User should be created successfully.

---

### Test Case 002 — Prevent duplicate email registration

Steps:

1. Register user with email `test@email.com`
2. Attempt to register another user with the same email

Expected result:

System should block the registration.

---

### Test Case 003 — Validate required fields

Steps:

1. Access registration form
2. Submit without email

Expected result:

Validation error message should appear.

---

# 🔎 Database Investigation Example

Query executed:

```sql
SELECT *
FROM orders
WHERE total_value < 0;
```

Finding:

Order with negative value detected.

Additional validation:

```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

Result:

Duplicate email records detected.

---

# 🔍 Root Cause Analysis

## Issue 1 — Negative Order Value

Possible causes:

- missing backend validation
- incorrect business rules

Impact:

- incorrect financial calculations
- reporting inconsistencies

---

## Issue 2 — Duplicate Email Records

Possible causes:

- missing UNIQUE constraint
- missing validation in API

Impact:

- duplicate user accounts
- authentication issues

---

# ✅ Database Validation Checklist

- [x] Duplicate record detection
- [x] Negative value validation
- [x] Required field validation
- [x] Relationship integrity verification
- [x] Business rule validation
- [x] Investigation of inconsistent data

---

# 📊 QA Case Study — Database Bug Investigation

## Context

Database validation revealed inconsistencies in stored application data.

Issues identified:

- negative order values
- duplicate email registrations

---

## QA Approach

Steps performed:

1. analyze database schema
2. run validation queries
3. detect anomalies
4. verify business rules
5. document findings

---

## Impact Analysis

Potential impacts:

- incorrect financial reporting
- duplicate accounts
- inconsistent system behavior

---

## QA Recommendation

Recommended actions:

- enforce backend validation
- add database constraints
- implement automated validation tests

---

# 📸 Evidence

Examples of investigation artifacts:

- users table screenshot
- orders table screenshot
- negative order detection
- duplicate email detection

---

# 🎯 QA Perspective

From a **Quality Assurance perspective**, SQL is an essential skill for:

- validating application data
- detecting inconsistencies
- investigating bugs
- verifying database integrity
- supporting root cause analysis

---

# 🚀 Future Improvements

Planned enhancements for this project:

- automated SQL validation scripts
- API testing integration
- CI/CD pipeline for database testing
- data validation automation
- performance testing scenarios

---

# 📚 References

SQLite Documentation  
https://sqlite.org/docs.html

DB Browser for SQLite  
https://sqlitebrowser.org

SQL Tutorial  
https://www.w3schools.com/sql/

GitHub Documentation  
https://docs.github.com

---

# 👩‍💻 Author

Ivaneide Monteiro

QA Engineer focused on:

- Software Quality Engineering
- Test Automation
- Database Testing
- CI/CD and Quality Strategy