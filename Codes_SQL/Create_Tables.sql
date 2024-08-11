-- Create Suppliers table
CREATE TABLE Suppliers (
    supplier_id SERIAL PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    contact_info TEXT
);

-- Create Products table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10, 2) NOT NULL,
    supplier_id INT REFERENCES Suppliers(supplier_id),
    stock_level INT NOT NULL,
    reorder_level INT NOT NULL
);

-- Create Sales table
CREATE TABLE Sales (
    sale_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Products(product_id),
    sale_date DATE NOT NULL,
    quantity_sold INT NOT NULL,
    sale_amount DECIMAL(10, 2) NOT NULL
);

-- Create Purchases table
CREATE TABLE Purchases (
    purchase_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Products(product_id),
    purchase_date DATE NOT NULL,
    quantity_purchased INT NOT NULL,
    purchase_amount DECIMAL(10, 2) NOT NULL
);

-- Create Inventory Transactions table
CREATE TABLE Inventory_Transactions (
    transaction_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Products(product_id),
    transaction_date DATE NOT NULL,
    quantity INT NOT NULL,
    transaction_type VARCHAR(10) CHECK (transaction_type IN ('SALE', 'PURCHASE'))
);
