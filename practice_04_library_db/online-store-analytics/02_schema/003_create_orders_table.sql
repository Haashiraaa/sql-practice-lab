

CREATE TABLE orders (
    order_id INTEGER NOT NULL,
    customer_id INTEGER REFERENCES customers (customer_id) NOT NULL,
    order_date DATE,
    CONSTRAINT order_key PRIMARY KEY (order_id)
);
