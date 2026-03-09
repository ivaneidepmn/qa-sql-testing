<p align="center">
  <img src="assets/qa-sql-testing-banner.png" width="100%" alt="QA SQL Testing Banner">
</p>

# 🗄️ QA SQL Testing Lab

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

SQLite was chosen because it is **lightweight, easy to run locally, and ideal for testing scenarios**.

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

Severity: **High**

### SQL Used

```sql
SELECT *
FROM orders
WHERE total_value < 0;
```

### Issue

An order was found with **negative value (-50.0)**.

### Expected Behavior

Orders should never have negative values.

### Possible Causes

- missing backend validation
- incorrect business rule implementation
- API accepting invalid data

### Evidence

`assets/negative-order-bug.png`

---

## Bug 002 — Duplicate Email

Severity: **Medium**

### SQL Used

```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

### Issue

Multiple users registered with the **same email**.

### Expected Behavior

Each user should have a **unique email address**.

### Possible Causes

- missing UNIQUE constraint
- missing API validation
- incorrect business rules

### Evidence

`assets/duplicate-email-bug.png`

---

# 🧪 Test Cases

## Test Case 001 — Register user with valid data

Steps:

1. Access registration page
2. Enter valid user information
3. Submit form

Expected result:

User should be created successfully.

---

## Test Case 002 — Prevent duplicate email registration

Steps:

1. Register user with email `test@email.com`
2. Try registering another user with same email

Expected result:

System should block the registration.

---

## Test Case 003 — Validate required fields

Steps:

1. Access registration form
2. Submit without email

Expected result:

Validation error should appear.

---

# 🔎 Database Investigation Example

During database testing the following query was executed:

```sql
SELECT *
FROM orders
WHERE total_value < 0;
```

### Finding

An order with negative value was detected.

### Impact

This issue could cause:

- incorrect financial calculations
- reporting inconsistencies
- business rule violations

### Additional Validation

```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

Result: duplicate email records found.

### Conclusion

Database validation revealed issues related to:

- financial data integrity
- uniqueness constraints

---

# 📸 Evidence

Examples of investigation artifacts:

- Users table
- Orders table
- Negative order detection
- Duplicate email detection

These screenshots simulate how QA engineers **document database issues during investigations**.

---

# 🧠 QA Perspective

From a **Quality Assurance perspective**, SQL is essential for:

- validating application data
- detecting inconsistencies
- investigating bugs
- verifying database integrity
- confirming business rule enforcement

QA Engineers frequently use SQL queries to confirm whether the system **stores and processes data correctly**.

---

# 🚀 QA Portfolio Projects

This repository is part of a broader **Software Quality Engineering portfolio**.

Related projects:

- QA Automation Framework – Cypress automation
- Bug Investigation Lab – QA bug scenarios
- QA Engineering Roadmap – study documentation

Together they demonstrate **practical QA Engineering skills**.

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

