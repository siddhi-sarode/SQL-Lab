-- Create a table
CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

-- Insert sample data
INSERT INTO Employees VALUES
(1, 'Aarav', 'HR', 40000),
(2, 'Riya', 'IT', 60000),
(3, 'Karan', 'Sales', 50000),
(4, 'Neha', 'IT', 65000),
(5, 'Rohan', 'HR', 45000);

-- Use of aggregate functions
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary
FROM Employees;

-- You can also group by Department
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department;
