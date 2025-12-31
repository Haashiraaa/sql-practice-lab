CREATE TABLE members (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    member_id INTEGER,
    full_name TEXT,
    email TEXT,
    join_date DATE,
    active_member BOOLEAN
);
