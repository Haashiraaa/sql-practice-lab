
\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0

SELECT *
FROM books
WHERE INITCAP(TRIM(category)) = 'Databases';

SELECT *
FROM members
ORDER BY join_date DESC; 
