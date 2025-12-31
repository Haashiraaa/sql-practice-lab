-- 004_sorting.sql


\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0



SELECT *
FROM sales
ORDER BY revenue DESC;


SELECT *
FROM sales
ORDER BY sale_date ASC;
