
-- 001_update_customer_email.sql

BEGIN;

UPDATE customers
SET email = 'dami@mail.com'
WHERE customer_id = 4;

TABLE customers;

COMMIT;
