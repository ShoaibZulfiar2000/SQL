DROP TABLE IF EXISTS trips;
CREATE TABLE Trips (
    TripID INT PRIMARY KEY,
    DriverID INT,
    TripFare DECIMAL(10, 2)
);
INSERT INTO Trips (TripID, DriverID, TripFare) VALUES
(1, 101, 20000), -- Driver 101: Trip 1
(2, 102, 15000), -- Driver 102
(3, 101, 25000), -- Driver 101: Trip 2
(4, 103, 10000), -- Driver 103
(5, 101, 10000); -- Driver 101: Trip 3 (Total = 55,000)
SELECT * FROM trips;

SELECT 
    DriverID, 
    SUM(TripFare) AS TotalEarnings
FROM Trips
GROUP BY DriverID
HAVING SUM(TripFare) > 50000;
 