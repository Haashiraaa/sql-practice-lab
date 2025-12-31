
\copy sales (sale_id, client_name, client_type, region, product, units_sold, revenue, sale_date) FROM '01_csv_file/sales.csv' DELIMITER ',' CSV;
