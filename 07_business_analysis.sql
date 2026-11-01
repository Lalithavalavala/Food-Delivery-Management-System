
-- 1. Total delivered revenue

SELECT SUM(F.price * O.quantity) AS revenue
FROM Orders O
JOIN Food_Items F
ON O.food_id = F.food_id
WHERE O.order_status = 'Delivered';


-- 2. Most ordered food

SELECT F.food_name,
       SUM(O.quantity) AS total_quantity
FROM Orders O
JOIN Food_Items F
ON O.food_id = F.food_id
GROUP BY F.food_name
ORDER BY total_quantity DESC;


-- 3. Customer order report

SELECT C.customer_name,
       COUNT(O.order_id) AS total_orders
FROM Customers C
LEFT JOIN Orders O
ON C.customer_id = O.customer_id
GROUP BY C.customer_id, C.customer_name;


-- 4. Restaurant food price report

SELECT R.restaurant_name,
       AVG(F.price) AS average_price
FROM Restaurants R
JOIN Food_Items F
ON R.restaurant_id = F.restaurant_id
GROUP BY R.restaurant_id, R.restaurant_name;
