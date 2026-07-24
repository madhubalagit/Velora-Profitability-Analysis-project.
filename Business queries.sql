
-- SECTION 1 - Data Exploration
-- Total Orders

SELECT COUNT(*)
FROM orders;

-- Total Customers

SELECT COUNT(DISTINCT customer_id)
FROM customers;

-- Total Products

SELECT COUNT(DISTINCT product_id)
FROM products;

-- Sales Period

SELECT
MIN(order_date),
MAX(order_date)
FROM orders;

-- SECTION 2 - Overall Business Performance
-- Revenue
SELECT
ROUND(SUM(sales),2) revenue
FROM orders;

-- Profit
SELECT
ROUND(SUM(profit),2) profit
FROM orders;

-- Profit margin
SELECT
ROUND(SUM(profit)/SUM(sales)*100,2) profit_margin
FROM orders;

-- SECTION 3 - Yearly Analysis
-- Revenue by year
SELECT
YEAR(order_date) year,
SUM(sales) revenue
FROM orders
GROUP BY YEAR(order_date);

-- Profit by year
SELECT
YEAR(order_date),
ROUND(SUM(profit)/SUM(sales)*100,2) profit_margin
FROM orders
GROUP BY YEAR(order_date);


-- SECTION 4 - Regional Analysis
-- Which region has the lowest profit margin?
SELECT
YEAR(order_date) year,
region,
ROUND(SUM(profit)/SUM(sales)*100,2) profit_margin
FROM orders
GROUP BY year,region;

-- Which region receives the highest discount?
SELECT
YEAR(order_date) year,
region,
ROUND(AVG(discount_pct)*100,2) avg_discount
FROM orders
GROUP BY year,region
ORDER BY avg_discount DESC;

-- SECTION 5 - Category Analysis

-- Which Category has the lowest profit margin?
SELECT
YEAR(order_date) year,
p.category,
ROUND(SUM(o.profit)/SUM(o.sales)*100,2) profit_margin
FROM orders o
JOIN products p
ON o.product_id=p.product_id
GROUP BY year,p.category
ORDER BY profit_margin;

-- SECTION 6 - Product Analysis
-- -- Which Product has the lowest profit margin?
SELECT 
YEAR(order_date) year,
p.product_name,
ROUND(SUM(o.profit)/SUM(o.sales)*100,2) profit_margin
FROM orders o
JOIN products p
ON o.product_id=p.product_id
GROUP BY year,p.product_name
ORDER BY profit_margin
LIMIT 10;

-- SECTION 7 - Customer Segment Analysis
-- Which Customer Segment has the lowest profit margin?
SELECT
YEAR(order_date) year,
c.customer_segment,
ROUND(SUM(o.profit)/SUM(o.sales)*100,2) profit_margin
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY year,c.customer_segment
ORDER BY profit_margin DESC;

-- Which customer segment receives the highest average discount?
SELECT 
YEAR(O.order_date) year,
c.customer_segment,
ROUND(AVG(discount_pct)*100,2) avg_discount
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY year,c.customer_segment
ORDER BY avg_discount DESC;

-- SECTION 8 - Discount Analysis
-- Does a higher discount lead to a lower profit margin?
SELECT YEAR(order_date) year,
CASE
WHEN discount_pct<=0.10 THEN '0-10%'
WHEN discount_pct<=0.20 THEN '10-20%'
ELSE '20%+'
END discount_band,
ROUND(
SUM(profit)/SUM(sales)*100,2) profit_margin
FROM orders
GROUP BY year, discount_band;

-- Validate Total Orders
SELECT COUNT(*)
FROM orders;
-- Validate Revenue
SELECT ROUND(SUM(sales),2)
FROM orders;

-- Validate Profit
SELECT ROUND(SUM(profit),2)
FROM orders;

-- Validate Distinct Customers
SELECT COUNT(DISTINCT customer_id)
FROM orders;



