-- Create Database
CREATE DATABASE Dmart;
USE Dmart;

-- Create Tables
CREATE TABLE Customers (
    CustID INT PRIMARY KEY,
    CustName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    Category VARCHAR(30)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustID INT,
    OrderDate DATE,
    FOREIGN KEY (CustID) REFERENCES Customers(CustID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert Data into Customers
INSERT INTO Customers VALUES
(1, 'Aarav', 'Pune'),
(2, 'Riya', 'Mumbai'),
(3, 'Karan', 'Delhi'),
(4, 'Neha', 'Nashik');

-- Insert Data into Products
INSERT INTO Products VALUES
(101, 'Rice 5kg', 450.00, 'Grocery'),
(102, 'Shampoo', 180.00, 'Personal Care'),
(103, 'Soap', 40.00, 'Personal Care'),
(104, 'LED Bulb', 120.00, 'Electronics'),
(105, 'Biscuits', 30.00, 'Snacks');

-- Insert Data into Orders
INSERT INTO Orders VALUES
(1001, 1, '2025-11-01'),
(1002, 2, '2025-11-02'),
(1003, 3, '2025-11-02'),
(1004, 4, '2025-11-03');

-- Insert Data into OrderDetails
INSERT INTO OrderDetails VALUES
(1, 1001, 101, 1),
(2, 1001, 105, 3),
(3, 1002, 102, 2),
(4, 1002, 103, 4),
(5, 1003, 104, 2),
(6, 1004, 105, 5);

-- INNER JOIN
Use Dmart;
SELECT c.CustName, p.ProductName, od.Quantity
FROM Customers c
JOIN Orders o ON c.CustID = o.CustID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;

-- LEFT JOIN
SELECT c.CustName, o.OrderID
FROM Customers c
LEFT JOIN Orders o ON c.CustID = o.CustID;

-- RIGHT JOIN
SELECT o.OrderID, c.CustName
FROM Customers c
RIGHT JOIN Orders o ON c.CustID = o.CustID;

SELECT 
    c.CustName,
    SUM(p.Price * od.Quantity) AS Total_Amount,
    COUNT(od.OrderDetailID) AS Total_Items
FROM Customers c
JOIN Orders o ON c.CustID = o.CustID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.CustName;
-- AGRREGATE FUNCTION
SELECT c.CustName, o.OrderID
FROM Customers c
LEFT JOIN Orders o ON c.CustID = o.CustID
-- Full JOIN
UNION
SELECT c.CustName, o.OrderID
FROM Customers c
RIGHT JOIN Orders o ON c.CustID = o.CustID;




