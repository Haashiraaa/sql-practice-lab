-- 001_create_sales_table.sql

CREATE TABLE sales (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    sale_id INTEGER,
    client_name TEXT,
    client_type TEXT,
    region TEXT,
    product TEXT,
    units_sold INTEGER,
    revenue NUMERIC,
    sale_date DATE
);

