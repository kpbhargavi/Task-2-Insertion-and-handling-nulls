create database company;
use company;

-- Create the Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2) DEFAULT 30000
);


-- Insert a row using default salary
INSERT INTO Employees (EmpID, Name, Age, Department)VALUES (1, 'Jyothi', 28, 'HR');
INSERT INTO Employees (EmpID, Name, Age, Department)
VALUES (2, 'Revathi', 29, 'FINANCE');
INSERT INTO Employees (EmpID, Name, Age, Department)
VALUES (3, 'Bharagvi', 26, 'ACCOUNTANT');
INSERT INTO Employees (EmpID, Name, Age, Department)
VALUES (4, 'Nikhitha', 27, 'BUSINESS');
INSERT INTO Employees (EmpID, Name, Age, Department)
VALUES (5, 'shirisha', 23, 'COMPUTERS');

select * from Employees;


-- Insert a row with NULLs
INSERT INTO Employees (EmpID, Name, Age, Department, Salary)
VALUES (6, 'Bob', NULL, 'Finance', NULL);

-- Update salary for a specific employee

SET SQL_SAFE_UPDATES=0;
UPDATE Employees
SET Salary = 35000
WHERE EmpID = 1;

-- Delete rows where age is NULL
DELETE FROM Employees
WHERE Age IS NULL;