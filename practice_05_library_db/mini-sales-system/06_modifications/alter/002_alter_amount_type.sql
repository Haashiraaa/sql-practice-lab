
-- 002_alter_amount_type.sql

BEGIN;

ALTER TABLE orders
ALTER COLUMN amount
TYPE NUMERIC(10,2)
USING CAST(amount AS NUMERIC(10,2));


SELECT * FROM orders;


COMMIT;

