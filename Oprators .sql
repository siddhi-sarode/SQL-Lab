 CREATE TABLE Netflix_Plan (
    User_ID INT PRIMARY KEY,
    Plan_Cost INT,
    Discount INT 
);

INSERT INTO Netflix_Plan (User_ID, Plan_Cost, Discount)
VALUES
(1, 800, 100),
(2, 500, 50),
(3, 1200, 200);
-- Addition
SELECT User_ID, Plan_Cost + Discount AS Total_Cost
FROM Netflix_Plan;
-- Substraction
SELECT User_ID, Plan_Cost - Discount AS Net_Cost
FROM Netflix_Plan;
-- MUltiplication
SELECT User_ID, Plan_Cost * 2 AS Double_Cost
FROM Netflix_Plan;
-- Division
SELECT User_ID, Plan_Cost / 2 AS Half_Cost
FROM Netflix_Plan;
-- Modulus
SELECT User_ID, Plan_Cost % 3 AS Remainder
FROM Netflix_Plan;

CREATE TABLE Netflix_Users (
    User_ID INT PRIMARY KEY,
    User_Name VARCHAR(100),
    City VARCHAR(100),
    Plan_Type VARCHAR(50),
    Email_Address VARCHAR(100),
    Phone_Number VARCHAR(15)
);
INSERT INTO Netflix_Users (User_ID, User_Name, City, Plan_Type, Email_Address, Phone_Number)
VALUES
(1, 'Rohit Sharma', 'Pune', 'Premium', 'rohit@gmail.com', '9876543210'),
(2, 'Sneha Patil', 'Mumbai', 'Standard', 'sneha@gmail.com', '9123456780'),
(3, 'Amit Deshmukh', 'Nagpur', 'Basic', 'amit@gmail.com', '9988776655');
-- Equal to (=)
SELECT * 
FROM Netflix_Users
WHERE Plan_Type = 'Premium';

-- Not Equal to (<> or !=)
SELECT * 
FROM Netflix_Users
WHERE City <> 'Pune';
-- Alter table
ALTER TABLE Netflix_users 
ADD Rating DECIMAL(3,1);
-- Insert in Rating 
UPDATE library.netflix_users
SET Rating = 8.2
WHERE User_ID = 1;
UPDATE library.netflix_users
SET Rating = 3.8
WHERE User_ID = 2;
UPDATE library.netflix_users
SET Rating = 8.7
WHERE User_ID = 3;
-- Greater Than (>)
SELECT * 
FROM Netflix_Users
WHERE Rating > 8.5;
-- Less Than (<)
SELECT * 
FROM Netflix_Users
WHERE Rating < 8.5;
-- Greater Than or Equal To (>=)
SELECT * 
FROM Netflix_Users
WHERE Rating >= 8.2;
-- Less Than or Equal To (<=)
SELECT * 
FROM Netflix_Users
WHERE Rating <= 8.7;
-- AND Operator
SELECT * 
FROM Netflix_Users
WHERE City = 'Pune' AND Plan_Type = 'Premium';
-- OR Operator
SELECT * 
FROM Netflix_Users
WHERE City = 'Pune' OR City = 'Mumbai';
-- NOT Operator
SELECT * 
FROM Netflix_Users
WHERE NOT Plan_Type = 'Basic';
-- BETWEEN Operator
SELECT * 
FROM Netflix_Users
WHERE Rating BETWEEN 8.2 AND 8.7;
-- IN Operator
SELECT * 
FROM Netflix_Users
WHERE City IN ('Pune', 'Mumbai');
-- LIKE Operator
SELECT * 
FROM Netflix_Users
WHERE User_Name LIKE 'S%';







