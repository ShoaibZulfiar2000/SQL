-- Step 1: Create Tables
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderTotal DECIMAL(10, 2)
);

-- Step 2: Insert Dummy Data
INSERT INTO Customers VALUES 
(1, 'Ahmed Ali', 'Karachi'),
(2, 'Sara Khan', 'Lahore'),
(3, 'Zainab Fatima', 'Karachi');

INSERT INTO Orders VALUES 
(101, 1, 60000),  -- Ahmed (Karachi)
(102, 1, 50000),  -- Ahmed (Total: 110,000)
(103, 2, 30000),  -- Sara (Lahore - will be filtered out)
(104, 3, 25000),  -- Zainab (Karachi)
(105, 3, 5000);   -- Zainab (Total: 30,000)
SELECT * FROM customers;
SELECT 
    C.Name, 
    SUM(O.OrderTotal) AS TotalLifetimeSpend,
    CASE 
        WHEN SUM(O.OrderTotal) > 100000 THEN 'VIP'
        ELSE 'Regular'
    END AS CustomerStatus
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE C.City = 'Karachi'               -- Filter individual rows first
GROUP BY C.Name                        -- Group for math
HAVING SUM(O.OrderTotal) > 20000       -- Filter based on the sum
ORDER BY TotalLifetimeSpend DESC;      -- Final sorting
