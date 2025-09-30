# 🛒 Mini Market Management System

A **MySQL database project** that manages a small market’s operations, including products, customers, employees, suppliers, sales, inventory, and orders.  
The project also includes a **PowerPoint presentation** and an **ERD (Entity Relationship Diagram)** for better understanding.  

---

## 📂 Project Structure
- **Database Name:** `MiniMarketManagementSystem`
- **Main Components:**
  - `Products` – Product information with supplier reference.
  - `Customers` – Customer details (name, email, phone, address).
  - `Employees` – Employee records (position, salary, hire date).
  - `Suppliers` – Supplier details (name, contact, address).
  - `Sales` – Sales transactions linked with customers and employees.
  - `SalesDetails` – Line items for each sale.
  - `Categories` – Product categories.
  - `Inventory` – Tracks available stock.
  - `Orders` – Orders placed with suppliers.
  - `OrderDetails` – Detailed breakdown of each order.

---

## 🚀 Features
- ✅ Database creation with normalized tables.  
- ✅ Sample data inserted for all tables.  
- ✅ **DDL & DML Queries**: `CREATE`, `INSERT`, `ALTER`, `DROP`.  
- ✅ **Filtering Queries**: `ORDER BY`, `LIMIT`, `BETWEEN`, `IN`.  
- ✅ **Aggregate Functions**: `COUNT`, `GROUP BY`.  
- ✅ **Joins**: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `UNION`.  
- ✅ **Constraints**: Primary Key, Foreign Key relationships for integrity.  

---

## 📊 ERD (Entity Relationship Diagram)
The ERD illustrates how entities like **Products, Customers, Suppliers, Employees, Sales, and Orders** are related.  

![ERD Diagram](ER Model.pdf)
