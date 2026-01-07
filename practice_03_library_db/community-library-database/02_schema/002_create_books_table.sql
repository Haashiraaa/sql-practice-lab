
-- 002_create_books_table.sql

CREATE TABLE books (
    book_id INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(150) NOT NULL,
    CONSTRAINT book_key PRIMARY KEY (book_id)

);
