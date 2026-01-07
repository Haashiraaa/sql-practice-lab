
-- 001_create_members_table.sql

CREATE TABLE members (
    member_id INTEGER NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    join_date DATE,
    CONSTRAINT member_key PRIMARY KEY (member_id),
    CONSTRAINT member_unique UNIQUE (first_name, last_name)
);



