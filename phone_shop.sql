-- creating the database
CREATE DATABASE phone_shop;
USE phone_shop;

-- creating the table
CREATE TABLE phones (
    id INT NOT NULL AUTO_INCREMENT,
    model VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100),
    price DECIMAL(10,2),
    release_date DATE,
    PRIMARY KEY (id)
);

-- id: A unique identifier for each phone (using auto-increment).
-- model: The model name (set as NOT NULL so every record has a model).
-- manufacturer, price, release_date: Additional details about each phone.

-- Insert Data into the Table
INSERT INTO phones (model, manufacturer, price, release_date) VALUES 
('Galaxy S21', 'Samsung', 799.99, '2021-01-29'),
('iPhone 12', 'Apple', 699.99, '2020-10-23'),
('Pixel 5', 'Google', 599.99, '2020-09-30'),
('OnePlus 9 Pro', 'OnePlus', 969.99, '2021-03-23'),
('Moto G Power', 'Motorola', 249.99, '2021-02-15'),
('Nokia 8.3', 'Nokia', 479.99, '2020-09-15'),
('Xperia 1 III', 'Sony', 1299.99, '2021-08-19'),
('Redmi Note 10', 'Xiaomi', 199.99, '2021-03-04'),
('Oppo Find X3 Pro', 'Oppo', 1199.99, '2021-03-11'),
('LG Velvet', 'LG', 599.99, '2020-05-07'),
('Huawei P40 Pro', 'Huawei', 999.99, '2020-04-07'),
('Realme 8 Pro', 'Realme', 279.99, '2021-03-17'),
('Vivo X60 Pro', 'Vivo', 799.99, '2021-03-22'),
('iPhone 13', 'Apple', 899.99, '2021-09-24'),
('Galaxy Note 20', 'Samsung', 999.99, '2020-08-21'),
('Pixel 6', 'Google', 599.00, '2021-10-19'),
('OnePlus 8T', 'OnePlus', 749.99, '2020-10-14'),
('Moto G Stylus', 'Motorola', 299.99, '2021-02-01'),
('Nokia X20', 'Nokia', 549.99, '2021-03-15'),
('Xperia 5 III', 'Sony', 999.99, '2021-04-01'),
('Redmi Note 11', 'Xiaomi', 229.99, '2021-11-04'),
('Oppo Reno 6 Pro', 'Oppo', 749.99, '2021-05-31'),
('LG Wing', 'LG', 999.99, '2020-10-15')
ON DUPLICATE KEY UPDATE 
    model = VALUES(model),
     manufacturer = VALUES(manufacturer),
    price = VALUES(price),
	release_date = VALUES(release_date);
    
    -- creating view for Above-Average Priced Phones
    CREATE VIEW above_avg_phones AS
  SELECT model, manufacturer, price, release_date
  FROM phones
  WHERE price > (SELECT AVG(price) FROM phones);
  
  -- CREATE VIEW manufacturer_summary AS
CREATE VIEW manufacturer_summary AS
  SELECT manufacturer, COUNT(*) AS model_count, AVG(price) AS avg_price
  FROM phones
  GROUP BY manufacturer;
  
  -- recent release view
  CREATE VIEW recent_releases AS
  SELECT model, manufacturer, price, release_date
  FROM phones
  WHERE release_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
  
  -- discounted view
  CREATE VIEW discounted_phones AS
  SELECT model, manufacturer, price, release_date,
    CASE
      WHEN release_date <= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
      THEN price * 0.9
      ELSE price
    END AS discounted_price
  FROM phones;
  
  -- Find phones released after a certain date
  SELECT * FROM phones WHERE release_date > '2021-01-01';
  
  --  Update and Delete Data
  UPDATE phones SET price = 749.99 WHERE model = 'iPhone 12';
  
  DELETE FROM phones WHERE model = 'Pixel 5';
  
-- Procedure to Add a New Phone  
  DELIMITER //

CREATE PROCEDURE sp_addPhone (
    IN p_model VARCHAR(100),
    IN p_manufacturer VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_release_date DATE
)
BEGIN
    INSERT INTO phones (model, manufacturer, price, release_date)
    VALUES (p_model, p_manufacturer, p_price, p_release_date);
END //

DELIMITER ;

-- Procedure to Update Phone Information
DELIMITER //

CREATE PROCEDURE sp_updatePhone (
    IN p_id INT,
    IN p_model VARCHAR(100),
    IN p_manufacturer VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_release_date DATE
)
BEGIN
    UPDATE phones
    SET model = p_model,
        manufacturer = p_manufacturer,
        price = p_price,
        release_date = p_release_date
    WHERE id = p_id;
END //

DELIMITER ;

-- Procedure to Retrieve Phone Details by ID
DELIMITER //

CREATE PROCEDURE sp_getPhoneById (IN p_id INT)
BEGIN
    SELECT * FROM phones WHERE id = p_id;
END //

DELIMITER ;

-- Procedure to Retrieve Phones Released in a Date Range
DELIMITER //

CREATE PROCEDURE sp_getPhonesByDateRange (
    IN p_start DATE,
    IN p_end DATE
)
BEGIN
    SELECT * FROM phones
    WHERE release_date BETWEEN p_start AND p_end;
END //

DELIMITER ;












