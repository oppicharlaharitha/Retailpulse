CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    age INT
);

INSERT INTO customers (customer_name, email, city, age)
VALUES
('Ravi Kumar', 'ravi@gmail.com', 'Hyderabad', 28),
('Priya Sharma', 'priya@gmail.com', 'Mumbai', 32),
('Anil Reddy', 'anil@gmail.com', 'Bangalore', 25),
('Sneha Rao', 'sneha@gmail.com', 'Chennai', 30),
('Kiran Kumar', 'kiran@gmail.com', 'Pune', 35);

SELECT * FROM customers;

SELECT COUNT(*)FROM customers;

SELECT *
FROM customers
WHERE city = 'Hyderabad';

SELECT *
FROM customers
WHERE city = 'Mumbai'
AND age > 30;
SELECT *
FROM customers
WHERE city = 'Mumbai'
AND age > 30;

SELECT *
FROM customers
ORDER BY age DESC;

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 1;

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM customers
ORDER BY age ASC;

SELECT customer_name, city, age
FROM customers
WHERE age > 25
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM customers
ORDER BY age DESC;

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 3;

UPDATE customers
SET age = 29
WHERE customer_id = 1;
UPDATE customers
SET age = 29
WHERE customer_id = 1;

DELETE FROM customers
WHERE customer_id = 5;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

SELECT * FROM products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

INSERT INTO products (product_name, category, price, stock_quantity)
VALUES
('Laptop', 'Electronics', 55000.00, 20),
('Mobile Phone', 'Electronics', 25000.00, 35),
('Office Chair', 'Furniture', 8000.00, 15),
('Headphones', 'Electronics', 2500.00, 50),
('Desk', 'Furniture', 12000.00, 10);


SELECT * FROM products;

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    order_status VARCHAR(30),
    total_amount DECIMAL(10,2)
);

SELECT * FROM orders;

INSERT INTO orders (customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-08-01', 'Completed', 55000.00),
(2, '2026-08-03', 'Completed', 25000.00),
(3, '2026-08-05', 'Pending', 8000.00),
(4, '2026-08-08', 'Completed', 2500.00),
(5, '2026-08-10', 'Cancelled', 12000.00),
(1, '2026-08-12', 'Completed', 25000.00),
(2, '2026-08-15', 'Completed', 8000.00);
INSERT INTO orders (customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-08-01', 'Completed', 55000.00),
(2, '2026-08-03', 'Completed', 25000.00),
(3, '2026-08-05', 'Pending', 8000.00),
(4, '2026-08-08', 'Completed', 2500.00),
(5, '2026-08-10', 'Cancelled', 12000.00),
(1, '2026-08-12', 'Completed', 25000.00),
(2, '2026-08-15', 'Completed', 8000.00);

SELECT * FROM customers
ORDER BY customer_id;

INSERT INTO customers (customer_name, email, city, age)
VALUES ('Kiran Kumar', 'kiran@gmail.com', 'Pune', 35);

SELECT * FROM customers
ORDER BY customer_id;

SELECT * FROM orders;

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    unit_price DECIMAL(10,2)
);

INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 55000.00),
(2, 2, 1, 25000.00),
(3, 3, 1, 8000.00),
(4, 4, 1, 2500.00),
(5, 5, 1, 12000.00),
(6, 2, 1, 25000.00),
(7, 3, 1, 8000.00);

SELECT * FROM order_items;

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    amount DECIMAL(10,2)
);

INSERT INTO payments (order_id, payment_date, payment_method, payment_status, amount)
VALUES
(1, '2026-08-01', 'Credit Card', 'Paid', 55000.00),
(2, '2026-08-03', 'UPI', 'Paid', 25000.00),
(3, '2026-08-05', 'Debit Card', 'Pending', 8000.00),
(4, '2026-08-08', 'UPI', 'Paid', 2500.00),
(5, '2026-08-10', 'Credit Card', 'Refunded', 12000.00),
(6, '2026-08-12', 'UPI', 'Paid', 25000.00),
(7, '2026-08-15', 'Cash', 'Paid', 8000.00);
SELECT * FROM orders
ORDER BY order_id;

INSERT INTO orders (customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-08-01', 'Completed', 55000.00),
(2, '2026-08-03', 'Completed', 25000.00),
(3, '2026-08-05', 'Pending', 8000.00),
(4, '2026-08-08', 'Completed', 2500.00),
(5, '2026-08-10', 'Cancelled', 12000.00),
(1, '2026-08-12', 'Completed', 25000.00),
(2, '2026-08-15', 'Completed', 8000.00);


INSERT INTO customers (customer_name, email, city, age)
VALUES ('Kiran Kumar', 'kiran@gmail.com', 'Pune', 35);

SELECT customer_id, customer_name, city, age
FROM customers
ORDER BY customer_id;

INSERT INTO orders (customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-08-01', 'Completed', 55000.00),
(2, '2026-08-03', 'Completed', 25000.00),
(3, '2026-08-05', 'Pending', 8000.00),
(4, '2026-08-08', 'Completed', 2500.00),
(5, '2026-08-10', 'Cancelled', 12000.00),
(1, '2026-08-12', 'Completed', 25000.00),
(2, '2026-08-15', 'Completed', 8000.00);

INSERT INTO customers (customer_name, email, city, age)
VALUES ('Kiran Kumar', 'kiran@gmail.com', 'Pune', 35);

SELECT customer_id, customer_name
FROM customers
ORDER BY customer_id;

SELECT customer_id, customer_name
FROM customers
ORDER BY customer_id;

INSERT INTO orders (customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-08-01', 'Completed', 55000.00),
(2, '2026-08-03', 'Completed', 25000.00),
(3, '2026-08-05', 'Pending', 8000.00),
(4, '2026-08-08', 'Completed', 2500.00),
(5, '2026-08-10', 'Cancelled', 12000.00),
(1, '2026-08-12', 'Completed', 25000.00),
(2, '2026-08-15', 'Completed', 8000.00);

SELECT current_database();

SELECT *
FROM public.customers
ORDER BY customer_id;
SELECT customer_id, customer_name
FROM public.customers
ORDER BY customer_id;

SELECT current_database();

SELECT *
FROM public.customers
ORDER BY customer_id;

SELECT
    tc.table_schema,
    tc.table_name,
    kcu.column_name,
    ccu.table_schema AS referenced_schema,
    ccu.table_name AS referenced_table,
    ccu.column_name AS referenced_column
FROM information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
    AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
    AND ccu.table_schema = tc.table_schema
WHERE tc.constraint_type = 'FOREIGN KEY'
  AND tc.table_name = 'orders';

  SELECT customer_id, customer_name
FROM public.customers
ORDER BY customer_id;
SELECT customer_id, customer_name
FROM public.customers
ORDER BY customer_id;

SELECT *
FROM public.orders;

SELECT
    o.order_id,
    c.customer_name,
    o.order_date,
    o.order_status,
    o.total_amount
FROM public.orders o
JOIN public.customers c
    ON o.customer_id = c.customer_id
ORDER BY o.order_id;

SELECT customer_id, customer_name
FROM public.customers
ORDER BY customer_id;

INSERT INTO public.orders
    (customer_id, order_date, order_status, total_amount)
VALUES
    (1, '2026-08-01', 'Completed', 55000.00),
    (2, '2026-08-03', 'Completed', 25000.00),
    (3, '2026-08-05', 'Pending',   8000.00),
    (4, '2026-08-08', 'Completed',  2500.00),
    (5, '2026-08-10', 'Cancelled', 12000.00),
    (1, '2026-08-12', 'Completed', 25000.00),
    (2, '2026-08-15', 'Completed',  8000.00);
	SELECT * FROM public.orders
ORDER BY order_id;

SELECT current_database();

SELECT customer_id, customer_name
FROM public.customers
ORDER BY customer_id;

DELETE FROM public.customers
WHERE customer_id IN (6, 7, 8, 9);

INSERT INTO public.customers
    (customer_id, customer_name, email, city, age)
VALUES
    (5, 'Kiran Kumar', 'kiran@gmail.com', 'Pune', 35);

	SELECT customer_id, customer_name
FROM public.customers
ORDER BY customer_id;

SELECT setval(
    pg_get_serial_sequence('public.customers', 'customer_id'),
    (SELECT MAX(customer_id) FROM public.customers)
);

INSERT INTO public.orders
    (customer_id, order_date, order_status, total_amount)
VALUES
    (1, '2026-08-01', 'Completed', 55000.00),
    (2, '2026-08-03', 'Completed', 25000.00),
    (3, '2026-08-05', 'Pending',    8000.00),
    (4, '2026-08-08', 'Completed',  2500.00),
    (5, '2026-08-10', 'Cancelled', 12000.00),
    (1, '2026-08-12', 'Completed', 25000.00),
    (2, '2026-08-15', 'Completed',  8000.00);
	SELECT *
FROM public.orders
ORDER BY order_id;

SELECT order_id, customer_id, order_date, order_status, total_amount
FROM public.orders
ORDER BY order_id;

INSERT INTO public.payments
    (order_id, payment_date, payment_method, payment_status, amount)
VALUES
    (1, '2026-08-01', 'Credit Card', 'Paid', 55000.00),
    (2, '2026-08-03', 'UPI',         'Paid', 25000.00),
    (3, '2026-08-05', 'Debit Card',  'Pending', 8000.00),
    (4, '2026-08-08', 'UPI',         'Paid', 2500.00),
    (5, '2026-08-10', 'Credit Card', 'Refunded', 12000.00),
    (6, '2026-08-12', 'UPI',         'Paid', 25000.00),
    (7, '2026-08-15', 'Cash',        'Paid', 8000.00);

	SELECT
    tc.table_schema,
    tc.table_name,
    kcu.column_name,
    ccu.table_schema AS referenced_schema,
    ccu.table_name AS referenced_table,
    ccu.column_name AS referenced_column
FROM information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
    AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
    AND ccu.table_schema = tc.table_schema
WHERE tc.constraint_name = 'payments_order_id_fkey';

SELECT
    tc.table_schema,
    tc.table_name,
    kcu.column_name,
    ccu.table_schema AS referenced_schema,
    ccu.table_name AS referenced_table,
    ccu.column_name AS referenced_column
FROM information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
    AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
    AND ccu.table_schema = tc.table_schema
WHERE tc.constraint_name = 'payments_order_id_fkey';

SELECT current_database(), current_schema();

SELECT order_id, customer_id, order_date, order_status, total_amount
FROM public.orders
ORDER BY order_id;

SELECT
    current_database() AS database_name,
    current_schema() AS schema_name;

	SELECT COUNT(*) AS order_count
FROM public.orders;

SELECT
    p.order_id,
    EXISTS (
        SELECT 1
        FROM public.orders o
        WHERE o.order_id = p.order_id
    ) AS order_exists
FROM (VALUES (1),(2),(3),(4),(5),(6),(7)) AS p(order_id);


SELECT order_id, customer_id, order_date, order_status, total_amount
FROM public.orders
ORDER BY order_id;
INSERT INTO public.payments
    (order_id, payment_date, payment_method, payment_status, amount)
VALUES
    (50, '2026-08-01', 'Credit Card', 'Paid', 55000.00),
    (51, '2026-08-03', 'UPI',         'Paid', 25000.00),
    (52, '2026-08-05', 'Debit Card',  'Pending', 8000.00),
    (53, '2026-08-08', 'UPI',         'Paid', 2500.00),
    (54, '2026-08-10', 'Credit Card', 'Refunded', 12000.00),
    (55, '2026-08-12', 'UPI',         'Paid', 25000.00),
    (56, '2026-08-15', 'Cash',        'Paid', 8000.00);

	SELECT *
FROM public.payments
ORDER BY payment_id;

SELECT 'customers' AS table_name, COUNT(*) AS records FROM public.customers
UNION ALL
SELECT 'products', COUNT(*) FROM public.products
UNION ALL
SELECT 'orders', COUNT(*) FROM public.orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM public.order_items
UNION ALL
SELECT 'payments', COUNT(*) FROM public.payments;
SELECT * FROM public.customers;
SELECT * FROM public.products;
SELECT * FROM public.orders;
SELECT * FROM public.order_items;
SELECT * FROM public.payments;

INSERT INTO public.order_items
    (order_id, product_id, quantity, unit_price)
VALUES
    (50, 1, 1, 55000.00),
    (51, 2, 1, 25000.00),
    (52, 3, 1, 8000.00),
    (53, 4, 1, 2500.00),
    (54, 5, 1, 12000.00),
    (55, 2, 1, 25000.00),
    (56, 3, 1, 8000.00);
	SELECT * FROM public.order_items
ORDER BY order_item_id;

##Sql Analysis###

SELECT SUM(total_amount) AS total_sales
FROM public.orders
WHERE order_status = 'Completed';

SELECT
    order_status,
    COUNT(*) AS order_count
FROM public.orders
GROUP BY order_status
ORDER BY order_status;

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_sales
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY total_sales DESC;

c.customer_id = o.customer_id

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_sales
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY total_sales DESC;

SELECT
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM public.products p
JOIN public.order_items oi
    ON p.product_id = oi.product_id
JOIN public.orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name
ORDER BY total_sales DESC;

SELECT
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM public.products p
JOIN public.order_items oi
    ON p.product_id = oi.product_id
JOIN public.orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name;

SELECT
    c.city,
    SUM(o.total_amount) AS total_sales
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.city
ORDER BY total_sales DESC;

SELECT
    payment_method,
    COUNT(*) AS payment_count,
    SUM(amount) AS total_amount
FROM public.payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY total_amount DESC;


SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY total_spent DESC;

SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    SUM(total_amount) AS total_sales
FROM public.orders
WHERE order_status = 'Completed'
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY sales_month;

##8.Monthly Sales Analysis is completed.
Important project KPI##

SELECT
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM public.orders
WHERE order_status = 'Completed';

SELECT
    COUNT(*) AS total_customers,
    ROUND(AVG(age), 2) AS average_customer_age
FROM public.customers;

##Sales by Product Category##
SELECT
    p.category,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM public.products p
JOIN public.order_items oi
    ON p.product_id = oi.product_id
JOIN public.orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.category
ORDER BY total_sales DESC;


###Top-Selling Product##
SELECT
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM public.products p
JOIN public.order_items oi
    ON p.product_id = oi.product_id
JOIN public.orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 1;

SELECT
    order_status,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_amount
FROM public.orders
GROUP BY order_status
ORDER BY total_amount DESC;

SELECT
    payment_status,
    COUNT(*) AS payment_count,
    SUM(amount) AS total_amount
FROM public.payments
GROUP BY payment_status
ORDER BY total_amount DESC;

SELECT
    product_name,
    category,
    stock_quantity
FROM public.products
ORDER BY stock_quantity DESC;

SELECT
    product_name,
    category,
    stock_quantity
FROM public.products
WHERE stock_quantity <= 10
ORDER BY stock_quantity ASC;

SELECT
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    oi.quantity * oi.unit_price AS item_total
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
JOIN public.order_items oi
    ON o.order_id = oi.order_id
JOIN public.products p
    ON oi.product_id = p.product_id
ORDER BY o.order_date;


SELECT
    c.customer_name,
    c.city,
    SUM(o.total_amount) AS total_spent
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name, c.city
ORDER BY total_spent DESC
LIMIT 3;

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM public.products p
JOIN public.order_items oi
    ON p.product_id = oi.product_id
JOIN public.orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name, p.category
ORDER BY total_sales DESC
LIMIT 3;

SELECT
    payment_method,
    COUNT(*) AS payment_count
FROM public.payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY payment_count DESC
LIMIT 1;

SELECT
    order_id,
    customer_id,
    order_date,
    order_status,
    total_amount
FROM public.orders
WHERE order_status IN ('Pending', 'Cancelled')
ORDER BY order_date;

SELECT
    SUM(oi.quantity) AS total_quantity_sold
FROM public.order_items oi
JOIN public.orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed';

SELECT
    ROUND(AVG(price), 2) AS average_product_price
FROM public.products;

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM public.customers c
JOIN public.orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY total_orders DESC;

SELECT
    payment_method,
    COUNT(*) AS payment_count,
    SUM(amount) AS total_revenue
FROM public.payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY total_revenue DESC;

SELECT
    COUNT(*) AS total_orders,
    COUNT(*) FILTER (WHERE order_status = 'Completed') AS completed_orders,
    COUNT(*) FILTER (WHERE order_status = 'Pending') AS pending_orders,
    COUNT(*) FILTER (WHERE order_status = 'Cancelled') AS cancelled_orders,
    SUM(total_amount) FILTER (WHERE order_status = 'Completed') AS total_sales,
    ROUND(AVG(total_amount) FILTER (WHERE order_status = 'Completed'), 2) AS average_order_value
FROM public.orders;

SELECT * FROM public.customers;
SELECT * FROM public.products;
SELECT * FROM public.orders;
SELECT * FROM public.order_items;
SELECT * FROM public.payments;
BEGIN;

UPDATE public.orders
SET order_status = 'Cancelled'
WHERE order_id = 1;

-- Check the change
SELECT *
FROM public.orders
WHERE order_id = 1;

ROLLBACK;
BEGIN;

UPDATE public.orders
SET order_status = 'Completed'
WHERE order_id = 1;

COMMIT;
SELECT
    order_id,
    customer_id,
    order_status,
    total_amount
FROM public.orders
ORDER BY order_id;
BEGIN;

UPDATE public.orders
SET order_status = 'Cancelled'
WHERE order_id = 1;

SELECT
    order_id,
    order_status
FROM public.orders
WHERE order_id = 1;

ROLLBACK;
SELECT
    order_id,
    order_status
FROM public.orders
WHERE order_id = 1;

SELECT
    order_id,
    order_status
FROM public.orders
WHERE order_id = 1;

BEGIN;

UPDATE public.orders
SET order_status = 'Completed'
WHERE order_id = 1;

UPDATE public.orders
SET order_status = 'Cancelled'
WHERE order_id = 2;

SELECT
    order_id,
    order_status
FROM public.orders
WHERE order_id IN (1, 2);

ROLLBACK;