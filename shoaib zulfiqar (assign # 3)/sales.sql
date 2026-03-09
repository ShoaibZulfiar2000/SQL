

CREATE TABLE salesreport (
    OrderID INT PRIMARY KEY,
    City VARCHAR(50),
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO salesreport (OrderID, City, TotalAmount)
VALUES 
(1, 'Lahore', 500.00),
(2, 'Karachi', 1200.00),
(3, 'Lahore', 300.00),
(4, 'Islamabad', 1000.00),
(5, 'Karachi', 800.00);

SELECT * FROM salesreport;
-- Ab CEO wali report run karein:
SELECT City, SUM(TotalAmount) AS TotalRevenue
FROM Orders
GROUP BY City;
