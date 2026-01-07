\set QUIET 1
\t on

\pset linestyle unicode
\pset border 2
\x auto
\pset null 'NULL'

\t off
\set QUIET 0


CREATE VIEW loaned_books AS
SELECT 
    mb.first_name,
    mb.last_name,
    bk.title,
    ls.loan_date,
    ls.return_date

FROM loans AS ls LEFT JOIN members AS mb
ON ls.member_id = mb.member_id
LEFT JOIN books AS bk
ON ls.book_id = bk.book_id;


