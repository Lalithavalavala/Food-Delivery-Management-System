
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    phone VARCHAR(15)
);

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE Food_Items (
    food_id INT PRIMARY KEY,
    food_name VARCHAR(50),
    price DECIMAL(10,2),
    restaurant_id INT,
    FOREIGN KEY (restaurant_id)
    REFERENCES Restaurants(restaurant_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    food_id INT,
    quantity INT,
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id),
    FOREIGN KEY (food_id)
    REFERENCES Food_Items(food_id)
);

CREATE TABLE Delivery_Boys (
    delivery_id INT PRIMARY KEY,
    delivery_name VARCHAR(50),
    order_id INT,
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);
