\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0


-- Total quantity sold per product

SELECT
    prod_ord.product_id,
    prod_ord.product_name,
    SUM(prod_ord.quantity) AS total_quantity
FROM products_ordered AS prod_ord
GROUP BY prod_ord.product_id, prod_ord.product_name
ORDER BY total_quantity DESC;

-- Total number of orders per customer

SELECT
    cust_ord.customer_id,
    cust_ord.name,
    COUNT(cust_ord.order_id) AS total_orders
FROM customers_with_orders AS cust_ord
GROUP BY cust_ord.customer_id, cust_ord.name
ORDER BY total_orders DESC;

-- Product with no orders

SELECT
    prod.product_name,
    prod.product_id

FROM products AS prod 
LEFT JOIN order_items AS ord_items 
    ON prod.product_id = ord_items.product_id
LEFT JOIN orders AS ord
    ON ord_items.order_id = ord.order_id
WHERE ord.order_date IS NULL;


-- Customers with no orders

SELECT
    cust.name,
    cust.customer_id
FROM customers AS cust
LEFT JOIN orders AS ord
    ON cust.customer_id = ord.customer_id
WHERE ord.order_date IS NULL;
