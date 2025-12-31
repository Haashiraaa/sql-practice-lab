-- 002_distinction.sql

\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0


SELECT DISTINCT region
FROM sales;

SELECT DISTINCT product
FROM sales;

SELECT DISTINCT client_type
FROM sales;
