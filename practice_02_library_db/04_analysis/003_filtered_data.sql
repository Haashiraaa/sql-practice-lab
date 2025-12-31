-- 003_filtered_data.sql

\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0



-- WHERE


-- Corporate Clients
SELECT *
FROM sales
WHERE client_type LIKE '%corporate%';

-- Revenue higher than $5000
SELECT *
FROM sales
WHERE revenue > 5000;

-- Sales in the West
SELECT *
FROM sales
WHERE region LIKE '%West%';

-- Units sold greater than 3
SELECT *
FROM sales
WHERE units_sold >= 3;


-- WHERE + AND/OR

SELECT *
FROM sales
WHERE client_type LIKE '%corporate%'
    AND region LIKE '%West%';


-- Sales with indivival clients and revenue < $10000
SELECT *
FROM sales
WHERE client_type LIKE '%individual%'
    AND revenue < 10000;


-- Sales with products containing "Laptop" or "PHONE"
SELECT *
FROM sales
WHERE (product LIKE '%Laptop%' OR product LIKE '%PHONE%');
