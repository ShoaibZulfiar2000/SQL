DROP TABLE IF EXISTS Accounts;

CREATE TABLE  IF NOT EXISTS Accounts (
    AccountID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Balance DECIMAL(10, 2)
);

INSERT INTO Accounts (AccountID, CustomerName, Balance)
VALUES 
(1, 'Ali', 20000.00),
(2, 'Sara', 90000.00),
(3, 'Zain', 45000.00),
(4, 'Hamza', 150000.00),
(5, 'Usman', 30000.00);

select * FROM Accounts;

-- Ab Subquery run karein:
SELECT CustomerName, Balance
FROM Accounts
WHERE Balance > (SELECT AVG(Balance) FROM Accounts);
