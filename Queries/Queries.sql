-- Retrieve all suppliers from the Suppliers table
SELECT * FROM Suppliers;

-- Retrieve all sales data from the Sales table
SELECT * FROM Sales;

-- Retrieve all purchases data from the Purchases table
SELECT * FROM Purchases;

-- Retrieve all inventory transactions from the Inventory_Transactions table
SELECT * FROM Inventory_Transactions;

-- Retrieve all products in a specific category
SELECT * FROM Products
WHERE category = ?; -- Replace ? with the desired category

-- Retrieve products with stock levels below the reorder level
SELECT
    product_id,
    product_name,
    stock_level,
    reorder_level
FROM Products
WHERE stock_level <= reorder_level;

-- Retrieve details of a specific product by its ID
SELECT * FROM Products
WHERE product_id = ?; -- Replace ? with the actual product_id

-- Retrieve details of a specific supplier by its ID
SELECT * FROM Suppliers
WHERE supplier_id = ?; -- Replace ? with the actual supplier_id


-- Retrieve the suppliers for a specific product
SELECT s.supplier_id, s.supplier_name, s.contact_info
FROM Suppliers s
JOIN Products p ON s.supplier_id = p.supplier_id
WHERE p.product_id = ?; -- Replace ? with the actual product_id

-- Retrieve all sales data for a specific product
SELECT * FROM Sales
WHERE product_id = ?; -- Replace ? with the actual product_id

-- Retrieve all sales data for a specific product
SELECT * FROM Sales
WHERE product_id = ?; -- Replace ? with the actual product_id

-- Calculate the total sales amount for each product
SELECT
    p.product_id,
    p.product_name,
    SUM(s.sale_amount) AS total_sales_amount
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;

-- Retrieve all purchase records for a specific product
SELECT * FROM Purchases
WHERE product_id = ?; -- Replace ? with the actual product_id

-- Calculate the total purchase amount for each product
SELECT
    p.product_id,
    p.product_name,
    SUM(pur.purchase_amount) AS total_purchase_amount
FROM Products p
JOIN Purchases pur ON p.product_id = pur.product_id
GROUP BY p.product_id, p.product_name;

-- Retrieve all inventory transactions for a specific product
SELECT * FROM Inventory_Transactions
WHERE product_id = ?; -- Replace ? with the actual product_id

-- Calculate the total number of transactions and quantities for each type of inventory transaction
SELECT
    transaction_type,
    COUNT(transaction_id) AS total_transactions,
    SUM(quantity) AS total_quantity
FROM Inventory_Transactions
GROUP BY transaction_type;
-- Calculate the total sales amount for each product category
SELECT
    p.category,
    SUM(s.sale_amount) AS total_sales_amount
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.category;

-- Calculate the average sale amount per transaction
SELECT
    AVG(sale_amount) AS avg_sale_amount
FROM Sales;


-- Insert a new product into the Products table
INSERT INTO Products (product_name, category, price, supplier_id, stock_level, reorder_level)
VALUES (?, ?, ?, ?, ?, ?); -- Replace ? with actual values

-- Update the stock level of a specific product
UPDATE Products
SET stock_level = ?
WHERE product_id = ?; -- Replace ? with the new stock level and product_id

-- Delete a product from the Products table
DELETE FROM Products
WHERE product_id = ?; -- Replace ? with the actual product_id


-- Create a view to monitor the status of product inventory
CREATE VIEW Product_Inventory_Status AS
SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.price,
    p.stock_level,
    p.reorder_level,
    COALESCE(SUM(s.quantity_sold), 0) AS total_sold,
    COALESCE(SUM(pur.quantity_purchased), 0) AS total_purchased
FROM Products p
LEFT JOIN Sales s ON p.product_id = s.product_id
LEFT JOIN Purchases pur ON p.product_id = pur.product_id
GROUP BY p.product_id, p.product_name, p.category, p.price, p.stock_level, p.reorder_level;


-- Create a view to summarize monthly sales data
CREATE VIEW Monthly_Sales_Summary AS
SELECT
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM(quantity_sold) AS total_quantity_sold,
    SUM(sale_amount) AS total_sales_amount
FROM Sales
GROUP BY EXTRACT(YEAR FROM sale_date), EXTRACT(MONTH FROM sale_date);

-- Create a view to analyze supplier performance
CREATE VIEW Supplier_Performance AS
SELECT
    s.supplier_id,
    s.supplier_name,
    COUNT(p.product_id) AS total_products,
    COALESCE(SUM(p.stock_level), 0) AS total_stock_level,
    COALESCE(SUM(sale_amount), 0) AS total_sales
FROM Suppliers s
LEFT JOIN Products p ON s.supplier_id = p.supplier_id
LEFT JOIN Sales sa ON p.product_id = sa.product_id
GROUP BY s.supplier_id, s.supplier_name;

-- Add a foreign key constraint to the Sales table
ALTER TABLE Sales
ADD CONSTRAINT fk_sales_product_id
FOREIGN KEY (product_id) REFERENCES Products(product_id);

-- Add a check constraint on the transaction_type column in the Inventory_Transactions table
ALTER TABLE Inventory_Transactions
ADD CONSTRAINT chk_transaction_type
CHECK (transaction_type IN ('SALE', 'PURCHASE'));

-- Create an index on the product_id column in the Sales table to improve query performance
CREATE INDEX idx_sales_product_id ON Sales(product_id);

-- Create an index on the supplier_id column in the Products table to improve query performance
CREATE INDEX idx_products_supplier_id ON Products(supplier_id);

-- Create an index on the sale_date column in the Sales table to improve query performance
CREATE INDEX idx_sales_sale_date ON Sales(sale_date);

-- Create an index on the purchase_date column in the Purchases table to improve query performance
CREATE INDEX idx_purchases_purchase_date ON Purchases(purchase_date);

-- Create an index on the transaction_date column in the Inventory_Transactions table to improve query performance
CREATE INDEX idx_inventory_transactions_transaction_date ON Inventory_Transactions(transaction_date);

-- Analyze and optimize table performance in the database
ANALYZE;

-- Vacuum the database to reclaim storage and improve performance
VACUUM;








