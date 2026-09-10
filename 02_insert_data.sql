INSERT INTO customers
(customer_id, customer_name, city, region)
VALUES
('C001', 'Arun Kumar', 'Chennai', 'South'),
('C002', 'Priya S', 'Hyderabad', 'South'),
('C003', 'Rahul M', 'Mumbai', 'West'),
('C004', 'Sneha R', 'Pune', 'West'),
('C005', 'Vikram P', 'Delhi', 'North'),
('C006', 'Anjali K', 'Jaipur', 'North'),
('C007', 'Karthik V', 'Bangalore', 'South'),
('C008', 'Neha S', 'Kolkata', 'East'),
('C009', 'Rohan T', 'Bhubaneswar', 'East'),
('C010', 'Meena R', 'Coimbatore', 'South');


INSERT INTO products
(product_id, product_name, category, unit_price)
VALUES
('P001', 'Laptop', 'Electronics', 55000),
('P002', 'Mouse', 'Accessories', 800),
('P003', 'Keyboard', 'Accessories', 1500),
('P004', 'Monitor', 'Electronics', 12000),
('P005', 'Office Chair', 'Furniture', 8500),
('P006', 'Desk', 'Furniture', 12000),
('P007', 'Headphones', 'Accessories', 2500),
('P008', 'Tablet', 'Electronics', 28000),
('P009', 'Printer', 'Electronics', 15000),
('P010', 'Webcam', 'Accessories', 3500);


SET @n = 0;

INSERT INTO sales
(sale_id, sale_date, customer_id, product_id, quantity, discount)
SELECT
    @n := @n + 1 AS sale_id,
    DATE_ADD('2025-01-01', INTERVAL MOD(@n * 7, 365) DAY) AS sale_date,
    CONCAT('C', LPAD(MOD(@n * 3, 10) + 1, 3, '0')) AS customer_id,
    CONCAT('P', LPAD(MOD(@n * 7, 10) + 1, 3, '0')) AS product_id,
    MOD(@n * 5, 5) + 1 AS quantity,
    CASE
        WHEN MOD(@n, 10) = 0 THEN 0.10
        WHEN MOD(@n, 7) = 0 THEN 0.05
        ELSE 0
    END AS discount
FROM
    (SELECT 1
     UNION ALL SELECT 2
     UNION ALL SELECT 3
     UNION ALL SELECT 4
     UNION ALL SELECT 5
     UNION ALL SELECT 6
     UNION ALL SELECT 7
     UNION ALL SELECT 8
     UNION ALL SELECT 9
     UNION ALL SELECT 10) a
CROSS JOIN
    (SELECT 1
     UNION ALL SELECT 2
     UNION ALL SELECT 3
     UNION ALL SELECT 4
     UNION ALL SELECT 5
     UNION ALL SELECT 6
     UNION ALL SELECT 7
     UNION ALL SELECT 8
     UNION ALL SELECT 9
     UNION ALL SELECT 10) b
CROSS JOIN
    (SELECT 1
     UNION ALL SELECT 2
     UNION ALL SELECT 3
     UNION ALL SELECT 4
     UNION ALL SELECT 5) c;