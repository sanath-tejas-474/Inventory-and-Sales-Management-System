INSERT INTO Suppliers (supplier_name, contact_info)
VALUES
('ABC Electronics', 'abc@electronics.com, +123456789'),
('XYZ Supplies', 'xyz@supplies.com, +987654321'),
('Global Tech', 'global@tech.com, +1122334455'),
('Office Depot', 'info@officedepot.com, +9988776655'),
('Home Essentials', 'contact@homeessentials.com, +4433221100');


INSERT INTO Products (product_name, category, price, supplier_id, stock_level, reorder_level)
VALUES
('Laptop', 'Electronics', 1000.00, 1, 50, 10),
('Smartphone', 'Electronics', 600.00, 1, 100, 20),
('Printer', 'Office Supplies', 150.00, 2, 30, 5),
('Desk Chair', 'Furniture', 85.00, 4, 20, 5),
('Monitor', 'Electronics', 200.00, 3, 40, 8),
('Tablet', 'Electronics', 400.00, 1, 60, 15),
('Desk', 'Furniture', 250.00, 4, 10, 3),
('Wireless Mouse', 'Electronics', 25.00, 3, 150, 30),
('Office Paper', 'Office Supplies', 5.00, 2, 200, 50),
('Smartwatch', 'Electronics', 150.00, 1, 75, 15),
('Headphones', 'Electronics', 75.00, 1, 80, 20),
('Scanner', 'Office Supplies', 120.00, 2, 25, 5),
('Coffee Maker', 'Home Appliances', 80.00, 5, 35, 10),
('LED Lamp', 'Home Appliances', 45.00, 5, 50, 12),
('Bookshelf', 'Furniture', 120.00, 4, 15, 5);


INSERT INTO Sales (product_id, sale_date, quantity_sold, sale_amount)
VALUES
(1, '2024-08-01', 5, 5000.00),
(2, '2024-08-02', 10, 6000.00),
(3, '2024-08-03', 3, 450.00),
(4, '2024-08-04', 2, 170.00),
(5, '2024-08-05', 6, 1200.00),
(6, '2024-08-06', 8, 3200.00),
(7, '2024-08-07', 1, 250.00),
(8, '2024-08-08', 20, 500.00),
(9, '2024-08-09', 30, 150.00),
(10, '2024-08-10', 7, 1050.00),
(11, '2024-08-11', 6, 450.00),
(12, '2024-08-12', 4, 480.00),
(13, '2024-08-13', 5, 400.00),
(14, '2024-08-14', 9, 405.00),
(15, '2024-08-15', 3, 360.00);


INSERT INTO Purchases (product_id, purchase_date, quantity_purchased, purchase_amount)
VALUES
(1, '2024-07-25', 20, 20000.00),
(2, '2024-07-26', 50, 30000.00),
(3, '2024-07-27', 10, 1500.00),
(4, '2024-07-28', 5, 425.00),
(5, '2024-07-29', 15, 3000.00),
(6, '2024-07-30', 30, 12000.00),
(7, '2024-07-31', 3, 750.00),
(8, '2024-08-01', 60, 1500.00),
(9, '2024-08-02', 80, 400.00),
(10, '2024-08-03', 20, 3000.00),
(11, '2024-08-04', 10, 750.00),
(12, '2024-08-05', 8, 960.00),
(13, '2024-08-06', 12, 960.00),
(14, '2024-08-07', 25, 1125.00),
(15, '2024-08-08', 7, 840.00);



INSERT INTO Inventory_Transactions (product_id, transaction_date, quantity, transaction_type)
VALUES
(1, '2024-08-01', 5, 'SALE'),
(2, '2024-08-02', 10, 'SALE'),
(3, '2024-08-03', 3, 'SALE'),
(4, '2024-08-04', 2, 'SALE'),
(5, '2024-08-05', 6, 'SALE'),
(6, '2024-08-06', 8, 'SALE'),
(7, '2024-08-07', 1, 'SALE'),
(8, '2024-08-08', 20, 'SALE'),
(9, '2024-08-09', 30, 'SALE'),
(10, '2024-08-10', 7, 'SALE'),
(11, '2024-08-11', 6, 'SALE'),
(12, '2024-08-12', 4, 'SALE'),
(13, '2024-08-13', 5, 'SALE'),
(14, '2024-08-14', 9, 'SALE'),
(15, '2024-08-15', 3, 'SALE'),
(1, '2024-07-25', 20, 'PURCHASE'),
(2, '2024-07-26', 50, 'PURCHASE'),
(3, '2024-07-27', 10, 'PURCHASE'),
(4, '2024-07-28', 5, 'PURCHASE'),
(5, '2024-07-29', 15, 'PURCHASE'),
(6, '2024-07-30', 30, 'PURCHASE'),
(7, '2024-07-31', 3, 'PURCHASE'),
(8, '2024-08-01', 60, 'PURCHASE'),
(9, '2024-08-02', 80, 'PURCHASE'),
(10, '2024-08-03', 20, 'PURCHASE'),
(11, '2024-08-04', 10, 'PURCHASE'),
(12, '2024-08-05', 8, 'PURCHASE'),
(13, '2024-08-06', 12, 'PURCHASE'),
(14, '2024-08-07', 25, 'PURCHASE'),
(15, '2024-08-08', 7, 'PURCHASE');

