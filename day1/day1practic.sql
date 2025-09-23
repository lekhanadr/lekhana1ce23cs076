show databases;
create database order_management;
use order_management;
 
 create table orders(
     order_id int auto_increment primary key,
	 customer_name varchar(100) not null,
     product_name varchar(100) not null,
     quantity int not null,
     price decimal(10,2) not null,
     order_date date not null,
     status varchar(20) default'pending'
     );
     
	INSERT INTO orders (customer_name, product_name, quantity, price, order_date, status) VALUES
('Alice Johnson', 'Wireless Mouse', 2, 25.99, '2025-09-20', 'shipped'),
('Bob Smith', 'Mechanical Keyboard', 1, 89.50, '2025-09-18', 'delivered'),
('Charlie Brown', 'HD Monitor', 1, 199.99, '2025-09-19', 'pending'),
('Diana Prince', 'USB-C Hub', 3, 45.00, '2025-09-20', 'processing'),
('Ethan Hunt', 'Laptop Stand', 1, 34.95, '2025-09-17', 'cancelled'),
('Fiona Glenanne', 'Gaming Chair', 1, 149.99, '2025-09-21', 'pending'),
('George Mason', 'Webcam', 2, 59.99, '2025-09-22', 'shipped');

select * from orders;

select * from orders order by price desc;

select * from orders order by price desc limit 1  offset 1;

select * from orders  where status in( 'shipped' );

select count(*) as 'total orders' from orders  ;

select max(price) from orders;

select avg(price) from orders;

select count(*), status from orders group by status;


















