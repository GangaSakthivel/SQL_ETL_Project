-- Create sales_data table (source)
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    sale_date DATE,
    sale_amount DECIMAL(10, 2)
);

-- Create customer_info table (source)
CREATE TABLE customer_info (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50)
);

-- Create report_data table (target)
CREATE TABLE report_data (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    total_sales DECIMAL(10, 2),
    sale_count INT
);

