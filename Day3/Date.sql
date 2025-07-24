-- Create the orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date DATE,
    amount INT
);

-- Insert sample data
INSERT INTO orders (customer_name, order_date, amount) VALUES
('Rahul', current_date-Interval '2days 4months 2years', 500),
('Priya', '2023-07-10', 800),
('Rahul', '2024-01-15', 200),
('Ankit', '2024-05-01', 1500),
('Priya', '2024-06-20', 900),
('Meena', '2024-07-10', 1200),
('Rahul', '2024-12-30', 1000),
('Ankit', '2025-01-25', 700),
('Meena', '2025-04-12', 600),
('Priya', '2025-07-01', 400);



SELECT * FROM orders
WHERE EXTRACT(month FROM order_date) = EXTRACT(month FROM CURRENT_DATE);

SELECT customer_name, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_name;

SELECT customer_name, MAX(order_date) AS latest_order
FROM orders
GROUP BY customer_name; 

SELECT customer_name, order_date
FROM orders
where order_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY customer_name, order_date
having order_date >= CURRENT_DATE - INTERVAL '6 months'


SELECT EXTRACT(day FROM order_date) AS year, SUM(amount) AS total_sales
FROM orders
GROUP BY year
ORDER BY year;


select * from orders

SELECT customer_name , amount
FROM orders
where SUM(amount) > 1000;
GROUP BY customer_name , amount


