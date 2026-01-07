

-- analysis.sql


\o /dev/null

SELECT  
    customer_id,
    name,
    COALESCE(email, 'no email') AS email,
    country
FROM customers;




SELECT 
    country, 
    COUNT(customer_id) AS customers_count
FROM customers
GROUP BY country
HAVING COUNT(customer_id) > 1;

\o

BEGIN;

CREATE VIEW customer_orders AS
SELECT 
    cust.customer_id,
    cust.name,
    ord.order_id,
    ord.amount,
    ord.status
FROM customers AS cust
LEFT JOIN orders AS ord
ON cust.customer_id = ord.customer_id
WHERE LOWER(TRIM(ord.status)) = 'paid';


\o /dev/null
TABLE customer_orders;
\o

COMMIT;




SELECT 
    customer_id,
    name,
    SUM(amount) AS total_spend
FROM customer_orders
GROUP BY customer_id, name
HAVING SUM(amount) > 4000;



