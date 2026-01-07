

CREATE TABLE customers (
    customer_id INTEGER NOT NULL,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(200) NOT NULL,
    signup_date DATE,
    CONSTRAINT customer_key PRIMARY KEY (customer_id),
    CONSTRAINT name_email_unique UNIQUE (name, email)
);
