create database customer_system;
use  customer_system;

CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Customer_City VARCHAR(100) NOT NULL
);

CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Items (
    Item_ID INT AUTO_INCREMENT PRIMARY KEY,
    Item_Name VARCHAR(100) NOT NULL
);

CREATE TABLE OrderItems (
    Order_ID INT,
    Item_ID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (Order_ID, Item_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID)
);

-- Customers
INSERT INTO Customers (Customer_Name, Customer_City) VALUES
('Alice', 'Mumbai'),
('Bob', 'Delhi');

-- Orders
INSERT INTO Orders (Customer_ID) VALUES (1), (2), (1);

-- Items
INSERT INTO Items (Item_Name) VALUES ('Pen'), ('Book'), ('Pencil');

-- OrderItems
-- Order 1 (Alice)
INSERT INTO OrderItems VALUES (1, 1, 2), (1, 2, 1);
-- Order 2 (Bob)
INSERT INTO OrderItems VALUES (2, 2, 3);
-- Order 3 (Alice)
INSERT INTO OrderItems VALUES (3, 1, 5), (3, 3, 3), (3, 2, 2);

select * from customers;
select * from Orders;
select * from Items;
select * from OrderItems;

