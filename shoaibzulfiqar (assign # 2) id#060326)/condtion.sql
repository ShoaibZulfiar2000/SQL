DROP TABLE IF EXISTS MonthlySales;
CREATE TABLE MonthlySales (
    SalespersonName VARCHAR(50),
    RevenueGenerated INT
);

INSERT INTO MonthlySales (SalespersonName, RevenueGenerated)
VALUES 
    ('Ali', 1200000),  -- Star
    ('Sara', 750000),  -- Solid
    ('Zain', 300000),  -- Needs Improvement
    ('Hamza', 500000); -- Solid (Exact boundary)

-- Ab HR wali Query run karein:
SELECT SalespersonName, RevenueGenerated,
    CASE 
        WHEN RevenueGenerated > 1000000 THEN 'Star Performer'
        WHEN RevenueGenerated >= 500000 THEN 'Solid'
        ELSE 'Needs Improvement'
    END AS PerformanceStatus
FROM MonthlySales;
