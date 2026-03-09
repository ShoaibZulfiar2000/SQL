-- 1. Pehle purana table urao
DROP TABLE IF EXISTS Menu;

-- 2. Fresh table banao
CREATE TABLE Menu (
    ItemID INTEGER PRIMARY KEY AUTOINCREMENT,
    ItemName TEXT,
    Category TEXT,
    Price INTEGER,
    IsAvailable INTEGER
);

-- 3. Naya data dalo
INSERT INTO Menu (ItemName, Category, Price, IsAvailable) 
VALUES ('Zinger', 'Burgers', 550, 1),
('Zinger', 'shawarma', 550, 2);
-- 4. Data dekhne ke liye
SELECT * FROM Menu;
