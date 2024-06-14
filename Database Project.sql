Create Database MiniMarketManagementSystem;
Use MiniMarketManagementSystem;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    SupplierID INT,
    UnitPrice DECIMAL(10, 2),
    StockQuantity INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
insert into Products(ProductName, Category, SupplierID, UnitPrice, StockQuantity) values
( 'OLPERS', 'MILK', 2001, 200.00, 20),
( 'BUBBLY', 'CHOCOLOTE', 2002, 100.00, 15),
( 'POLLY', 'JUICE', 2003,80,25);

select*from products; 

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address)
VALUES
('Ahmed', 'Khan', 'ahmed.khan@example.pk', '0301-1234567', '12 Clifton Road, Karachi'),
('Fatima', 'Ali', 'fatima.ali@example.pk', '0321-7654321', '45 Gulberg Street, Lahore'),
('Bilal', 'Malik', 'bilal.malik@example.pk', '0333-9876543', '78 Satellite Town, Islamabad');

select*from Customers; 

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);
insert into Employees values
(1101, 'ARIF', 'HUSSAIN', 'MANAGER', '2020-07-14', 10000),
(1102, 'ISRAR', 'AHMED', 'ASISTANT MANAGER', '2021-05-11', 60000),
(1103, 'QAMAR', 'ABBAS', 'SERVANT', '2022-02-02', 40000);

select*from Employees; 

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50),
    Phone VARCHAR(20)
);
insert into suppliers values
(2001, 'ALI', 'ALI123', 'ASIA_TOWER_KHARADAR', 'KARACHI', 'PAKISTAN', 033426364),
(2002, 'YASIR', 'YASIR123', 'MIDTOWN_TOWER_NUMAISH', 'KARACHI', 'PAKISTAN', 033462756),
(2003, 'NAVEED', 'NAVEED123', 'CLIFTON', 'KARACHI', 'PAKISTAN', 0343745454);

select*from Suppliers; 

CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

insert into Sales(EmployeeID,SaleDate,TotalAmount) values 
(1101,'2024-03-13',10000.00),
(1102,'2024-03-14',2000.00),
(1103,'2024-04-15',1000.00);

select*from Sales; 

CREATE TABLE SalesDetails (

    SaleDetailID INT AUTO_INCREMENT PRIMARY KEY,
    SaleID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
insert into SalesDetails(Quantity,UnitPrice) values
(10,20.00),
(20,30.00),
(30,40.00);

select*from SalesDetails;

CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL,
    Description TEXT
);
INSERT INTO Categories (CategoryName, Description)
VALUES
('Personal Care', 'Products for personal hygiene and grooming.'),
('Food', 'Edible items including groceries and snacks.'),
('Beverages', 'Drinks, both non-alcoholic and alcoholic.'),
('Household', 'Household items including cleaning supplies.'),
('Electronics', 'Electronic gadgets and appliances.');

select*from Categories; 

CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    LastUpdated DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
insert into Inventory(InventoryID, Quantity, lastUpdated)  values
(1011, 100, '2024-02-22'),
(1012, 101, '2024-03-14'),
(1013, 102, '2024-04-02');

select*from Inventory; 

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID INT,
    OrderDate DATE,
    DeliveryDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

insert into Orders(OrderID, SupplierID, OrderDate, DeliveryDate, TotalAmount) values
(2011, 2001, '2024-05-01', '2024-05-02', 500),
(2012, 2002, '2024-05-03', '2024-05-04', 300),
(2013, 2003, '2024-05-06', '2024-05-07', 400);

select*from Orders; 

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

insert into OrderDetails(OrderDetailID, OrderID, Quantity, UnitPrice) values
(1111, 2011, 30, 250),
(1112, 2012, 25, 350);

select*from OrderDetails; 

SELECT orderid, unitprice FROM orderdetails;

SELECT * FROM orderdetails ORDER BY quantity;

SELECT * FROM orderdetails ORDER BY quantity DESC;

SELECT * From Orders Where DeliveryDate = '2024-05-04';

SELECT * From Orders Where DeliveryDate < '2024-05-07' and DeliveryDate > '2024-05-02' ;

SELECT * FROM SalesDetails LIMIT 2;

SELECT COUNT(*) FROM orderDetails;

SELECT CategoryID, COUNT(*) FROM Categories GROUP BY CategoryID;

ALTER TABLE Orders ADD new_column int;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

ALTER TABLE Orders MODIFY new_column char(10);

CREATE TABLE mysql (
    column1 INT,
    column2 VARCHAR(50)
);

DROP TABLE mysql;

ALTER TABLE mysql DROP COLUMN column1;

RENAME TABLE mysql TO sql_1;

SELECT * FROM Orders WHERE TotalAmount BETWEEN 300 AND 400;

SELECT * FROM Inventory WHERE Quantity IN (99, 102, 105);

SELECT * FROM Customers ORDER BY Lastname;
	
SELECT * from Orders INNER JOIN  Products on Orders.SupplierID = Products.SupplierID;

SELECT * from Orders LEFT JOIN  Products on Orders.SupplierID = Products.SupplierID;

SELECT * from Orders RIGHT JOIN  Products on Orders.SupplierID = Products.SupplierID;

SELECT * from Orders LEFT JOIN  Products on Orders.SupplierID = Products.SupplierID 
UNION
SELECT * from Orders RIGHT JOIN  Products on Orders.SupplierID = Products.SupplierID;