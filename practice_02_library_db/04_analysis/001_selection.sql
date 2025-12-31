-- 001_selection.sql

\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0        


SELECT * FROM sales;

SELECT client_name, product, revenue FROM sales;
