create database order_management;
use order_management;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECiMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    description text,
    status set('Pending','in_progress')
);

INSERT INTO orders (customer_name, product_name, quantity, price, order_date, status)
VALUES
('John Doe', 'Laptop', 1, 55000.00, '2025-09-20', 'Shipped'),
('Jane Smith', 'Smartphone', 2, 22000.00, '2025-09-19', 'Delivered'),
('Rahul Kumar', 'Headphones', 3, 1500.00, '2025-09-18', 'Pending'),
('Priya Sharma', 'Tablet', 1, 18000.00, '2025-09-17', 'Cancelled'),
('Amit Verma', 'Smartwatch', 4, 5000.00, '2025-09-16', 'Processing'),
('Neha Gupta', 'Bluetooth Speaker', 2, 2500.00, '2025-09-15', 'Delivered'),
('Arjun Patel', 'Gaming Mouse', 5, 1200.00, '2025-09-14', 'Pending'),
('Sneha Reddy', 'External Hard Drive', 1, 4500.00, '2025-09-13', 'Shipped'),
('Vikram Singh', 'Keyboard', 3, 1000.00, '2025-09-12', 'Delivered'),
('Anjali Mehra', 'Monitor', 2, 12000.00, '2025-09-11', 'Processing'),
('Ravi Teja', 'Printer', 1, 8500.00, '2025-09-10', 'Cancelled'),
('Kiran Bedi', 'Router', 2, 3000.00, '2025-09-09', 'Pending'),
('Suresh Das', 'USB Flash Drive', 10, 500.00, '2025-09-08', 'Delivered'),
('Meena Kapoor', 'Power Bank', 6, 1500.00, '2025-09-07', 'Processing'),
('Ajay Rao', 'Webcam', 2, 2500.00, '2025-09-06', 'Shipped');

select * from orders;

select * from orders order by price desc;

select * from orders order by price desc limit 1 offset 1;

select * from orders where status in('Processing','Shipped');


select count(*) as "total orders" from orders;

select max(price) from orders;

select min(price) from orders;

select avg(price) from orders;

select count(*), status from orders group by status;

