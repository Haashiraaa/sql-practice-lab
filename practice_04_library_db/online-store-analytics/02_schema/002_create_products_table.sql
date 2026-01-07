



CREATE TABLE products (
    product_id INTEGER NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    price INTEGER,
    CONSTRAINT product_key PRIMARY KEY (product_id),
    CONSTRAINT product_name_unique UNIQUE (product_name)
);
