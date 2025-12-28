CREATE TABLE members (
    id bigserial,
    member_id numeric,
    full_name varchar(100),
    email varchar(100),
    join_date date,
    active_member boolean
);