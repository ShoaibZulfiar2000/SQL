-- Purana table khatam karo taake fresh start ho
DROP TABLE IF EXISTS Employees;

-- Naya table "Rules" (Constraints) ke sath banao
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,              -- Rule 1: Unique Identity
    Name VARCHAR(100) NOT NULL,              -- Rule 2: Cannot be blank
    Email VARCHAR(100) UNIQUE NOT NULL,      -- Rule 3: No duplicates
    Salary DECIMAL(10, 2) CHECK (Salary >= 0), -- Rule 4: No negative numbers
    DepartmentID INT
);

-- Sirf aik Sahi Data dalo taake table khali na rahe
INSERT INTO Employees (EmployeeID, Name, Email, Salary, DepartmentID)
VALUES (2, 'Sara', 'sara@test.com', 500, 102);


-- Data check karo
SELECT * FROM Employees;
