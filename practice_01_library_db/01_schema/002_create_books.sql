CREATE TABLE books (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    book_id INTEGER,
    title TEXT,
    author_id INTEGER,
    publication_year INTEGER,
    genre TEXT,
    available BOOLEAN
);
