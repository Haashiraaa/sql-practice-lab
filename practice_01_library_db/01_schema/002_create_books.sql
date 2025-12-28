CREATE TABLE books (
    id bigserial,
    book_id numeric,
    title varchar(100),
    author_id numeric,
    publication_year numeric,
    genre varchar(100),
    available boolean
);