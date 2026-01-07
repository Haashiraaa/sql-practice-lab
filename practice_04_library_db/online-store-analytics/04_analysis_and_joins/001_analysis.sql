\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0


SELECT * FROM customers
WHERE signup_date >= DATE '2023-02-01'
    AND signup_date < DATE '2023-03-01';

SELECT * FROM products WHERE price < 500;
