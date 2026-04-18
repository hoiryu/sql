SELECT * FROM users

SELECT * FROM products

SELECT * FROM orders

SELECT
	u.user_id AS users_user_id,
	o.user_id AS order_user_id,
	
	u.name AS user_name
FROM
	orders o
LEFT JOIN
	users u ON o.user_id = u.user_id
ORDER BY users_user_id;



SELECT * FROM employees