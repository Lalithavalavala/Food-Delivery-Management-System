
-- 1. INNER JOIN
-- Customer details with their orders

SELECT
    Customers.customer_name,
    Orders.order_id,
    Orders.order_status
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- 2. LEFT JOIN
-- All customers including customers without orders

SELECT
    Customers.customer_name,
    Orders.order_id
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- 3. JOIN three tables
-- Customer, order and food details

SELECT
    Customers.customer_name,
    Food_Items.food_name,
    Orders.quantity,
    Orders.order_status
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id
INNER JOIN Food_Items
ON Orders.food_id = Food_Items.food_id;


-- 4. Calculate total order amount

SELECT
    Orders.order_id,
    Food_Items.food_name,
    Food_Items.price,
    Orders.quantity,
    (Food_Items.price * Orders.quantity) AS total_amount
FROM Orders
INNER JOIN Food_Items
ON Orders.food_id = Food_Items.food_id;
