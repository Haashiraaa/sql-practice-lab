


-- 002_create_orders_table.sql


CREATE TABLE orders (
    order_id INTEGER NOT NULL,
    customer_id INTEGER REFERENCES customers (customer_id) NOT NULL,
    amount INTEGER NOT NULL,
    status VARCHAR(100) NOT NULL,
    
    CONSTRAINT order_key PRIMARY KEY (order_id)
);
