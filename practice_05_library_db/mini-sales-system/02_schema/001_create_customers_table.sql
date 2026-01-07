-- 001_create_customers_table.sql

CREATE TABLE customers (
    customer_id INTEGER NOT NULL,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150),
    country VARCHAR(100) NOT NULL,

    CONSTRAINT customer_key PRIMARY KEY (customer_id),
    CONSTRAINT email_unique UNIQUE (email)
);


