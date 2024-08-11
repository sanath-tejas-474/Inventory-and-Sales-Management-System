# Inventory and Sales Management System

## Objective
This project aims to design and implement a comprehensive inventory and sales management system. The system tracks various aspects of inventory, sales, and purchases to help businesses manage their stock levels, sales, and supplier information efficiently.

## Components

### 1. Products Table
- **Purpose:** To store information about products available for sale.
- **Key Columns:**
  - `product_id`: Unique identifier for each product.
  - `product_name`: Name of the product.
  - `category`: Category to which the product belongs.
  - `price`: Selling price of the product.
  - `supplier_id`: Reference to the supplier providing the product.
  - `stock_level`: Current quantity in stock.
  - `reorder_level`: Minimum stock level at which reordering is triggered.

### 2. Suppliers Table
- **Purpose:** To store information about suppliers who provide products.
- **Key Columns:**
  - `supplier_id`: Unique identifier for each supplier.
  - `supplier_name`: Name of the supplier.
  - `contact_info`: Contact details of the supplier.

### 3. Sales Table
- **Purpose:** To record details of each sale transaction.
- **Key Columns:**
  - `sale_id`: Unique identifier for each sale.
  - `product_id`: Reference to the product being sold.
  - `sale_date`: Date of the sale.
  - `quantity_sold`: Quantity of the product sold.
  - `sale_amount`: Total amount of the sale.

### 4. Purchases Table
- **Purpose:** To record details of each purchase transaction from suppliers.
- **Key Columns:**
  - `purchase_id`: Unique identifier for each purchase.
  - `product_id`: Reference to the product being purchased.
  - `purchase_date`: Date of the purchase.
  - `quantity_purchased`: Quantity of the product purchased.
  - `purchase_amount`: Total amount of the purchase.

### 5. Inventory Transactions Table
- **Purpose:** To track all inventory-related transactions, including both sales and purchases.
- **Key Columns:**
  - `transaction_id`: Unique identifier for each transaction.
  - `product_id`: Reference to the product involved in the transaction.
  - `transaction_date`: Date of the transaction.
  - `quantity`: Quantity involved in the transaction (positive for purchases, negative for sales).
  - `transaction_type`: Type of transaction (`SALE` or `PURCHASE`).

## Use Cases
- **Inventory Management:** Track stock levels, reorder products, and manage inventory transactions.
- **Sales Tracking:** Record and analyze sales data to understand product performance and revenue.
- **Supplier Management:** Maintain up-to-date supplier information and manage purchasing details.

## Benefits
- Provides a structured approach to manage and track inventory, sales, and purchases.
- Helps in optimizing stock levels and ensuring timely reordering.
- Enhances the ability to analyze sales performance and supplier relationships.
