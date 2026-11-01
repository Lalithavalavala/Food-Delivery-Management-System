
-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display only customer names
SELECT customer_name FROM Customers;

-- 3. Find customers from Hyderabad
SELECT * FROM Customers
WHERE city = 'Hyderabad';

-- 4. Display food items below 200
SELECT * FROM Food_Items
WHERE price < 200;

-- 5. Display expensive food first
SELECT * FROM Food_Items
ORDER BY price DESC;

-- 6. Find delivered orders
SELECT * FROM Orders
WHERE order_status = 'Delivered';

-- 7. Count total customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 8. Find average food price
SELECT AVG(price) AS average_price
FROM Food_Items;
