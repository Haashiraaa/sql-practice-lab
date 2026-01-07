

SELECT
    bk.title,
    bk.book_id

FROM books AS bk
LEFT JOIN loans AS ls ON bk.book_id = ls.book_id
WHERE ls.loan_date IS NULL;


SELECT * FROM loaned_books
WHERE loan_date IS NOT NULL AND return_date IS NULL;


