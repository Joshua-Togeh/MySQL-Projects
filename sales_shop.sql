-- creating the databse
CREATE DATABASE try;

-- creating the tables 
CREATE TABLE electronics_sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity_sold INT,
    revenue DECIMAL(10,2),
    sale_date DATE
);

CREATE TABLE clothing_sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity_sold INT,
    revenue DECIMAL(10,2),
    sale_date DATE
);

CREATE TABLE furniture_sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity_sold INT,
    revenue DECIMAL(10,2),
    sale_date DATE
);

-- insert and update records into the clothing_sales
INSERT INTO clothing_sales (sale_id, product_name, quantity_sold, revenue, sale_date) VALUES
(201, 'Nike Sneakers', 15, 4500.00, '2024-01-12'),
(202, 'T-Shirt', 50, 2500.00, '2024-01-16'),
(203, 'Leather Jacket', 10, 8000.00, '2023-12-05'),
(204, 'Jeans', 30, 6000.00, '2023-12-20'),
(205, 'Winter Coat', 12, 7200.00, '2023-12-28'),
(206, 'Men trousers', 19, 11700.00, '2023-12-16')
    ON DUPLICATE KEY UPDATE 
     sale_id = VALUES(sale_id),
    product_name = VALUES(product_name),
     quantity_sold = VALUES(quantity_sold),
    sale_date = VALUES(sale_date);
       
    -- insert and update records into the electronics_sales
INSERT INTO electronics_sales (sale_id, product_name, quantity_sold, revenue, sale_date) VALUES
(101, 'iPhone 15', 10, 12000.00, '2024-01-15'),
(102, 'MacBook Pro', 5, 15000.00, '2024-01-20'),
(103, 'Samsung TV', 8, 6000.00, '2024-01-25'),
(104, 'AirPods Pro', 20, 5000.00, '2023-12-10'),
(105, 'PlayStation 5', 7, 3500.00, '2023-12-22'),
(106, 'Microwave', 4, 11800.00, '2023-12-27')
    ON DUPLICATE KEY UPDATE 
     sale_id = VALUES(sale_id),
    product_name = VALUES(product_name),
     quantity_sold = VALUES(quantity_sold),
    sale_date = VALUES(sale_date);
    
    -- insert and update records into the furniture_sales    
INSERT INTO furniture_sales (sale_id, product_name, quantity_sold, revenue, sale_date) VALUES
(301, 'Dining Table', 3, 9000.00, '2024-01-10'),
(302, 'Sofa', 5, 4500.00, '2024-01-17'),
(303, 'Office Chair', 12, 3600.00, '2023-12-15'),
(304, 'Bookshelf', 7, 4200.00, '2023-12-22'),
(305, 'King Size Bed', 4, 11000.00, '2023-12-30'),
(306, 'queen Size Bed', 7, 17000.00, '2023-12-20')
    ON DUPLICATE KEY UPDATE 
     sale_id = VALUES(sale_id),
    product_name = VALUES(product_name),
     quantity_sold = VALUES(quantity_sold),
    sale_date = VALUES(sale_date);
    
    -- combine all the three tables with UNION and make it view
    CREATE VIEW sales AS
    SELECT sale_id, product_name, quantity_sold, sale_date, revenue, 'clothing' AS categories
    FROM clothing_sales
    UNION 
    SELECT sale_id, product_name, quantity_sold, sale_date, revenue, 'electronics' AS categories
    FROM electronics_sales
    UNION
    SELECT sale_id, product_name, quantity_sold, sale_date, revenue, 'furniture' AS categories
    FROM furniture_sales
    ORDER BY  sale_date DESC;
    
    -- create monthly sales report as view
CREATE VIEW monthly_sales_report AS
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month, 
    category,
    SUM(quantity_sold) AS total_sales, 
    SUM(revenue) AS total_revenue
FROM (
    SELECT sale_date, quantity_sold, revenue, 'Electronics' AS category FROM electronics_sales
    UNION ALL
    SELECT sale_date, quantity_sold, revenue, 'Clothing' AS category FROM clothing_sales
    UNION ALL
    SELECT sale_date, quantity_sold, revenue, 'Furniture' AS category FROM furniture_sales
) AS all_sales
GROUP BY month, category 
ORDER BY month DESC, total_revenue DESC;








