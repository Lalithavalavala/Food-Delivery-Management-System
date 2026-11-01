
-- Insert Customers
INSERT INTO Customers VALUES
(1, 'Ravi', 'Hyderabad', '9876543210'),
(2, 'Priya', 'Vijayawada', '9876543211'),
(3, 'Kiran', 'Narsapur', '9876543212'),
(4, 'Sneha', 'Bhimavaram', '9876543213'),
(5, 'Arjun', 'Hyderabad', '9876543214');

-- Insert Restaurants
INSERT INTO Restaurants VALUES
(101, 'Food Palace', 'Hyderabad'),
(102, 'Spicy Hub', 'Vijayawada'),
(103, 'Tasty Bites', 'Bhimavaram');

-- Insert Food Items
INSERT INTO Food_Items VALUES
(201, 'Chicken Biryani', 250, 101),
(202, 'Veg Biryani', 150, 101),
(203, 'Pizza', 300, 102),
(204, 'Burger', 120, 103),
(205, 'Fried Rice', 180, 102);

-- Insert Orders
INSERT INTO Orders VALUES
(301, 1, 201, 2, 'Delivered'),
(302, 2, 203, 1, 'Pending'),
(303, 3, 202, 3, 'Delivered'),
(304, 4, 204, 2, 'Cancelled'),
(305, 5, 205, 1, 'Delivered');

-- Insert Delivery Boys
INSERT INTO Delivery_Boys VALUES
(401, 'Rahul', 301),
(402, 'Karthik', 302),
(403, 'Manoj', 303),
(404, 'Suresh', 304),
(405, 'Ajay', 305);
