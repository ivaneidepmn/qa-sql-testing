# Test Scenario – User Registration Validation

Objective:
Verify that the user registration data is correctly stored in the database.

Steps

1 Register a new user in the application  
2 Capture the email used  
3 Execute SQL validation

SQL Validation

SELECT *
FROM users
WHERE email = 'test@email.com';

Expected Result

The user record must exist in the database.