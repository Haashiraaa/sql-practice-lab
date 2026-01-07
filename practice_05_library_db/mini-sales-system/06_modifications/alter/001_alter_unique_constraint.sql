

-- 001_alter_unique_constraint.sql

START TRANSACTION;

ALTER TABLE customers
    DROP CONSTRAINT email_unique;

COMMIT;
