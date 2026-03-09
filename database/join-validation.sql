SELECT
    orders.id,
    users.name,
    users.email,
    orders.product_name,
    orders.total_value
FROM orders
JOIN users
ON orders.user_id = users.id;