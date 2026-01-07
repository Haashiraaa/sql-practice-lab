
-- seed_orders.sql

\copy orders FROM '01_csv_files/orders.csv' WITH (FORMAT csv, HEADER true, NULL 'null');
