
-- 1️.Create Database
CREATE DATABASE ECommerceDB;
USE ECommerceDB;

-- 2️.Create Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0)
);

-- 3️.Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    sale_amount DECIMAL(10,2) CHECK (sale_amount > 0),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- 4️.Insert Sample Data into Product Table
INSERT INTO Product (product_id, product_name, price) VALUES
(1, 'Laptop', 85000.00),
(2, 'Smartphone', 45000.00),
(3, 'Headphones', 5000.00),
(4, 'Keyboard', 1200.00),
(5, 'Mouse', 800.00),
(6, 'Monitor', 15000.00),
(7, 'Webcam', 3500.00);

-- 5️.Insert Sample Data into Sales Table
INSERT INTO Sales (sale_id, product_id, quantity, sale_amount) VALUES
(1, 1, 2, 170000.00),
(2, 2, 3, 135000.00),
(3, 3, 5, 25000.00),
(4, 4, 10, 12000.00),
(5, 5, 15, 12000.00),
(6, 6, 2, 30000.00),
(7, 7, 4, 14000.00);


select distinct product_name from product;

select product_name as product_na from product;

select distinct product_id from product;

select price as product_price from product;

select 
price
from product
where price > 10000;

select 
price
from product
where price < 5000;

select 
quantity
from sales
where quantity = 2;

select 
price
from product
where price >= 15000;

select 
quantity
from sales
where not quantity = 5;

select 
product_name, price+price*0.1 as total_price
from product;

select * from product;

select 
sale_amount+500 as new_sales_amount
from sales;

select 
price
from product
where price > 5000 and price < 50000;

select 
sale_id, quantity
from sales
where quantity = 2 
or quantity =4;

select 
price
from product
where not price > 20000;

select * from sales;

select 
product_name, product_id
from product
where product_id is null;

select 
product_name, price
from product
where price is not null;

select 
product_name, product_id
from product
where product_id in (1,3,5);

select 
product_name, product_id
from product
where not product_id in (2,4,6);

select 
product_name, price
from product
where price between 1000 and 20000 ;

select 
product_name, price
from product
where not price between 5000 and 50000 ;

select 
	product_name
from
	product
where 
product_name like 'M%';

select 
	product_name
from
	product
where 
product_name like '%E';

select 
	product_name
from
	product
where 
product_name like '%PHONE%';

select 
	product_name
from
	product
where 
NOT product_name like 'S%';

select 
product_name, price
from product
where price between 1000 and 20000 AND product_name like 'M%';

select 
sale_id, quantity
from sales
where quantity between 2 and 10;

select 
product_name, product_id
from product
where product_id in (1,2,3) and price > 5000;

select 
product_name, product_id
from product
where product_id in (1,2,3) and price > 5000;

SELECT DISTINCT Quantity
FROM Sales;
