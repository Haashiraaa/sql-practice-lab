

\copy loans FROM '01_csv_files/loans.csv' WITH (FORMAT csv, HEADER true, NULL 'NULL');
