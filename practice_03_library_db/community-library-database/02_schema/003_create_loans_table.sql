

-- 003_create_loans_table.sql


CREATE TABLE loans (
    loan_id INTEGER NOT NULL,
    member_id INTEGER REFERENCES members (member_id) NOT NULL,
    book_id INTEGER REFERENCES books (book_id) NOT NULL,
    loan_date DATE,
    return_date DATE,
    CONSTRAINT loan_key PRIMARY KEY (loan_id)
);

