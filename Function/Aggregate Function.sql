DROP TABLE IF EXISTS products;

CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)
);

INSERT INTO product 
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Wireless Mouse', 'Electronics', 799.00, 50, '2026-02-01', 5.00),
('Bluetooth Speaker', 'Electronics', 1499.00, 30, '2026-02-05', 10.00),
('Office Chair', 'Furniture', 5999.00, 15, '2026-01-20', 12.50),
('Water Bottle', 'Accessories', 299.00, 100, '2026-02-10', 0.00),
('Notebook', 'Stationery', 49.00, 200, '2026-02-12', 2.00),
('Laptop Stand', 'Electronics', 999.00, 40, '2026-02-08', 7.50),
('Backpack', 'Bags', 1199.00, 25, '2026-01-28', 15.00),
('LED Monitor', 'Electronics', 8999.00, 10, '2026-02-03', 8.00),
('Desk Lamp', 'Furniture', 699.00, 35, '2026-02-06', 6.00),
('Smart Watch', 'Electronics', 4999.00, 20, '2026-02-09', 9.50);



SELECT * FROM product;

-- Total quantiy Available of all products  --------------- SUM()------------------

SELECT SUM(quantity) AS total_quantity
FROM product;


SELECT SUM(quantity) AS total_quantity_of_ele
FROM product
WHERE category = 'Electronics' AND price > 4000;


-- Toatal number of product ------------COUNT()--------------

SELECT COUNT(*) AS total_product
FROM product
WHERE product_name LIKE '%L%';


-- Average Price of Products --------------AVG()--------------------

SELECT AVG(price) AS total_avg
FROM product;



SELECT AVG(price) AS total_avg
FROM product
WHERE category = 'Electronics' OR added_date > '2026-02-01';


--Maximum or Minimum price ----------------

SELECT MAX(price) AS MAX_PRICE,
		MIN(price) AS MIN_PRICE
FROM product;



