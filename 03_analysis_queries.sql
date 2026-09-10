-- 1. Combine customer, product and sales data

SELECT
    s.sale_id,
    s.sale_date,
    c.customer_name,
    c.city,
    c.region,
    p.product_name,
    p.category,
    p.unit_price,
    s.quantity,
    s.discount
FROM sales s
JOIN customers c
    ON s.customer_id = c.customer_id
JOIN products p
    ON s.product_id = p.product_id;


-- 2. Calculate gross sales and revenue

SELECT
    s.sale_id,
    s.sale_date,
    c.customer_name,
    c.region,
    p.product_name,
    p.category,
    p.unit_price,
    s.quantity,
    s.discount,
    p.unit_price * s.quantity AS gross_sales,
    p.unit_price * s.quantity * (1 - s.discount) AS revenue
FROM sales s
JOIN customers c
    ON s.customer_id = c.customer_id
JOIN products p
    ON s.product_id = p.product_id;


-- 3. Revenue by region

SELECT
    c.region,
    SUM(p.unit_price * s.quantity * (1 - s.discount)) AS revenue
FROM sales s
JOIN customers c
    ON s.customer_id = c.customer_id
JOIN products p
    ON s.product_id = p.product_id
GROUP BY c.region
ORDER BY revenue DESC;


-- 4. Revenue by product category

SELECT
    p.category,
    SUM(p.unit_price * s.quantity * (1 - s.discount)) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


-- 5. Top 5 products by revenue

SELECT
    p.product_name,
    SUM(s.quantity) AS total_quantity,
    SUM(p.unit_price * s.quantity * (1 - s.discount)) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;


-- 6. Monthly revenue

SELECT
    DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
    SUM(p.unit_price * s.quantity * (1 - s.discount)) AS revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY DATE_FORMAT(s.sale_date, '%Y-%m')
ORDER BY month;