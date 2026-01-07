
\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0


CREATE VIEW customers_with_orders AS
SELECT 
    cust.customer_id, 
    cust.name,  
    ord.order_id, 
    ord.order_date
FROM orders AS ord LEFT JOIN customers AS cust
ON ord.customer_id = cust.customer_id;


CREATE VIEW products_ordered AS
SELECT
    prod.product_id,
    prod.product_name,
    ord_items.quantity,
    ord.order_date
FROM products AS prod LEFT JOIN  order_items AS ord_items
ON prod.product_id = ord_items.product_id
LEFT JOIN orders AS ord
ON ord_items.order_id = ord.order_id;
    



