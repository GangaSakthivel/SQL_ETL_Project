-- Insert sample data into sales_data
INSERT INTO sales_data (sale_id, customer_id, sale_date, sale_amount)
VALUES
(1, 101, '2024-01-01', 100.50),
(2, 102, '2024-01-02', 200.00),
(3, 101, '2024-01-03', 150.75),
(4, 103, '2024-01-04', 300.00),
(5, 102, '2024-01-05', 250.00);

-- Insert sample data into customer_info
INSERT INTO customer_info (customer_id, customer_name, region)
VALUES
(101, 'Alice', 'North'),
(102, 'Bob', 'South'),
(103, 'Charlie', 'East');
