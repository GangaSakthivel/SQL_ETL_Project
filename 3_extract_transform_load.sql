-- Extract data (select from both source tables)
SELECT 
    s.sale_id,
    s.customer_id,
    s.sale_date,
    s.sale_amount,
    c.customer_name,
    c.region
FROM 
    sales_data s
JOIN 
    customer_info c ON s.customer_id = c.customer_id;


-- Load transformed data into report_data table
INSERT INTO report_data (customer_name, region, total_sales, sale_count)
SELECT 
    c.customer_name,
    c.region,
    SUM(s.sale_amount) AS total_sales,
    COUNT(s.sale_id) AS sale_count
FROM 
    sales_data s
JOIN 
    customer_info c ON s.customer_id = c.customer_id
GROUP BY 
    c.customer_name, c.region;


-- Verify the data in report_data table
SELECT * FROM report_data;

Final Notes
Extract: We pulled data from the sales_data and customer_info tables.
Transform: We aggregated the data to calculate total sales and sale counts per customer.
Load: We inserted the transformed data into the report_data table for reporting.
