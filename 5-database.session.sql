SELECT * FROM users

SELECT * FROM products

SELECT * FROM orders


SELECT 
	users.user_id,
	users.name, 
	orders.order_date, 
	orders.status 
FROM orders JOIN users ON orders.user_id = users.user_id 
WHERE orders.status = 'COMPLETED'