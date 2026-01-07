


CREATE TABLE order_items (
    order_items_id INTEGER NOT NULL,
    order_id INTEGER REFERENCES orders (order_id) NOT NULL,
    product_id INTEGER REFERENCES products (product_id) NOT NULL,
    quantity INTEGER,
    CONSTRAINT order_items_key PRIMARY KEY (order_items_id)
);
