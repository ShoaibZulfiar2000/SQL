
CREATE TABLE IF NOT EXISTS Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Phone VARCHAR(15),
    Status VARCHAR(20)
);

-- Kuch dummy data taake check kar saken
INSERT INTO Patients (PatientID, Name, Phone, Status)
VALUES 
(45, 'Ali', '0300-1234567', 'Admitted'),
(46, 'Sara', '0321-7654321', 'Admitted'),
(47, 'Zain', '0345-1122334', 'Admitted');

-- Check karein data insert ho gaya?
SELECT * FROM Patients;

UPDATE Patients 
SET Status = 'Discharged' 
WHERE PatientID = 45;

-- Confirm karein ke sirf Ali change hua?
SELECT * FROM Patients;

