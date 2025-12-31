CREATE TABLE authors (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    author_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    birth_year INTEGER,
    country TEXT
);
