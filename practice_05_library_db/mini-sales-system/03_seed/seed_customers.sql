

-- seed_customers.sql

\copy customers FROM '01_csv_files/customers.csv' WITH (FORMAT csv, HEADER true, NULL 'null');
