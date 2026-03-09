SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

SELECT *
FROM orders
WHERE total_value < 0;