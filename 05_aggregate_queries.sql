
-- 1. Total number of orders
SELECT COUNT(*) AS total_orders
FROM Orders;

-- 2. Total revenue from all orders
SELECT SUM(Food_Items.price * Orders.quantity)
AS total_revenue
FROM Orders
INNER JOIN Food_Items
ON Orders.food_id = Food_Items.food_id
WHERE Orders.order_status = 'Delivered';

-- 3. Average food price
SELECT AVG(price) AS average_price
FROM Food_Items;

-- 4. Highest food price
SELECT MAX(price) AS highest_price
FROM Food_Items;

-- 5. Lowest food price
SELECT MIN(price) AS lowest_price
FROM Food_Items;

-- 6. Count orders by status
SELECT order_status, COUNT(*) AS total
FROM Orders
GROUP BY order_status;

-- 7. Total orders placed by each customer
SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id;

-- 8. Customers with more than one order
SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
