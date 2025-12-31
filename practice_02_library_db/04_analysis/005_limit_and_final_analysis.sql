-- 005_limit_and_final_analysis.sql

\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0


-- LIMIT

SELECT *
FROM sales
ORDER BY revenue DESC
LIMIT 3;


SELECT *
FROM sales
ORDER BY sale_date DESC
LIMIT 5;



-- Final analysis

-- Corporate sales in the West, ordered by revenue, top 2 only
SELECT *
FROM sales
WHERE client_type LIKE '%corporate%'
    AND region LIKE '%West%'
ORDER BY revenue DESC
LIMIT 2;



-- Individual sales sorted by date, newest first
SELECT *
FROM sales
WHERE client_type LIKE '%individual%'
ORDER BY sale_date DESC;



-- Phones with revenue above 1000, ordered by revenue
SELECT product, revenue
FROM sales
WHERE product LIKE '%Phone%'
    AND revenue > 1000
ORDER BY revenue DESC;



 
