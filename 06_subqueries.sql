
-- 1. Find food items whose price
-- is greater than average price

SELECT *
FROM Food_Items
WHERE price > (
    SELECT AVG(price)
    FROM Food_Items
);


-- 2. Find the most expensive food item

SELECT *
FROM Food_Items
WHERE price = (
    SELECT MAX(price)
    FROM Food_Items
);


-- 3. Find customers who placed orders

SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);


-- 4. Find customers who have not placed orders

SELECT *
FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);


-- 5. Find orders with quantity greater than average quantity

SELECT *
FROM Orders
WHERE quantity > (
    SELECT AVG(quantity)
    FROM Orders
);


-- 6. Find customers who ordered delivered food

SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE order_status = 'Delivered'
);
