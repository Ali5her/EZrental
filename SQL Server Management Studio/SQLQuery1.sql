-- =============================================
-- Pharmacy Database Schema Creation
-- =============================================
CREATE SCHEMA Pharmacy_ProfG_FP;
GO

CREATE TABLE Patient_ProfG_FP (
    PatientID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    SSN CHAR(11) NOT NULL UNIQUE,
    Sex CHAR(1) NOT NULL CHECK(Sex IN ('M','F','O')),
    DOB DATE,
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE(),
    Modified_dt DATETIME NOT NULL DEFAULT GETUTCDATE()
);
GO

INSERT INTO Patient_ProfG_FP 
(FirstName, LastName, SSN, Sex, DOB)
VALUES
('John', 'Smith', '113-45-6779', 'M', '1980-05-15'),
('Sarah', 'Johnson', '234-56-7991', 'F', '1975-08-22'),
('Michael', 'Williams', '335-67-8911', 'M', '1990-03-10'),
('Emily', 'Brown', '456-77-9012', 'F', '1985-11-25'),
('David', 'Jones', '567-85-0123', 'M', '1972-07-18'),
('Jessica', 'Garcia', '675-90-1234', 'F', '1995-02-28'),
('Robert', 'Miller', '789-11-2345', 'M', '1988-09-14'),
('Jennifer', 'Davis', '891-22-3456', 'F', '1983-04-05'),
('William', 'Rodriguez', '121-33-4567', 'M', '1978-12-30'),
('Elizabeth', 'Martinez', '011-34-5678', 'F', '1992-06-22'),
('James', 'Hernandez', '182-34-5678', 'M', '1987-01-19'),
('Linda', 'Lopez', '223-55-6789', 'F', '1974-10-08'),
('Christopher', 'Gonzalez', '334-56-7990', 'M', '1991-08-15'),
('Susan', 'Wilson', '425-67-8901', 'F', '1969-05-27'),
('Daniel', 'Anderson', '556-78-9112', 'M', '1982-03-03'),
('Margaret', 'Thomas', '667-89-0113', 'F', '1977-11-11'),
('Matthew', 'Taylor', '778-90-1224', 'M', '1994-07-09'),
('Patricia', 'Moore', '889-01-2335', 'F', '1981-02-17'),
('Joseph', 'Jackson', '990-12-3446', 'M', '1976-09-24'),
('Barbara', 'Martin', '001-23-4557', 'F', '1989-04-12'),
('Thomas', 'Lee', '113-45-6889', 'M', '1973-12-01'),
('Karen', 'Perez', '224-56-7880', 'F', '1996-10-20'),
('Richard', 'Thompson', '333-67-8901', 'M', '1984-06-07'),
('Nancy', 'White', '448-88-9012', 'F', '1971-01-29'),
('Charles', 'Harris', '757-89-0123', 'M', '1986-08-13'),
('Lisa', 'Sanchez', '468-90-1234', 'F', '1993-05-26'),
('Mark', 'Clark', '719-01-2345', 'M', '1979-03-31'),
('Betty', 'Ramirez', '880-12-1456', 'F', '1980-11-04'),
('Donald', 'Lewis', '991-23-4566', 'M', '1975-07-16'),
('Dorothy', 'Robinson', '002-34-5328', 'F', '1990-02-09');
GO


CREATE TABLE Medication_ProfG_FP (
    MedicationID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Strength VARCHAR(50) NOT NULL,
    Form VARCHAR(50) NOT NULL,
    Manufacturer VARCHAR(100),
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE()
);
GO


INSERT INTO Medication_ProfG_FP 
(Name, Strength, Form, Manufacturer)
VALUES
('Lisinopril', '10mg', 'Tablet', 'Generic'),
('Atorvastatin', '20mg', 'Tablet', 'Pfizer'),
('Metformin', '500mg', 'Tablet', 'Generic'),
('Albuterol', '90mcg', 'Inhaler', 'GSK'),
('Omeprazole', '20mg', 'Capsule', 'AstraZeneca'),
('Levothyroxine', '50mcg', 'Tablet', 'AbbVie'),
('Amlodipine', '5mg', 'Tablet', 'Pfizer'),
('Simvastatin', '40mg', 'Tablet', 'Merck'),
('Losartan', '50mg', 'Tablet', 'Generic'),
('Gabapentin', '300mg', 'Capsule', 'Pfizer'),
('Hydrochlorothiazide', '25mg', 'Tablet', 'Generic'),
('Sertraline', '50mg', 'Tablet', 'Pfizer'),
('Metoprolol', '50mg', 'Tablet', 'AstraZeneca'),
('Pantoprazole', '40mg', 'Tablet', 'Pfizer'),
('Fluoxetine', '20mg', 'Capsule', 'Generic'),
('Tramadol', '50mg', 'Tablet', 'Janssen'),
('Warfarin', '5mg', 'Tablet', 'Bristol-Myers Squibb'),
('Furosemide', '40mg', 'Tablet', 'Sanofi'),
('Citalopram', '20mg', 'Tablet', 'Lundbeck'),
('Diazepam', '5mg', 'Tablet', 'Roche'),
('Prednisone', '10mg', 'Tablet', 'Generic'),
('Tamsulosin', '0.4mg', 'Capsule', 'Astellas'),
('Clonazepam', '1mg', 'Tablet', 'Roche'),
('Lorazepam', '1mg', 'Tablet', 'Pfizer'),
('Trazodone', '50mg', 'Tablet', 'Pfizer'),
('Carvedilol', '12.5mg', 'Tablet', 'GSK'),
('Venlafaxine', '75mg', 'Capsule', 'Pfizer'),
('Duloxetine', '30mg', 'Capsule', 'Eli Lilly'),
('Pregabalin', '75mg', 'Capsule', 'Pfizer'),
('Montelukast', '10mg', 'Tablet', 'Merck');
GO


CREATE TABLE Physician_ProfG_FP (  
    PhysicianID INT IDENTITY(1,1) PRIMARY KEY,  
    FirstName VARCHAR(50) NOT NULL,  
    LastName VARCHAR(50) NOT NULL,  
    LicenseNumber VARCHAR(20) NOT NULL UNIQUE,  
    Specialty VARCHAR(50),  
    Phone VARCHAR(15) MASKED WITH (FUNCTION = 'partial(2, "XXX-XXX-", 4)'),  
    Email VARCHAR(100) MASKED WITH (FUNCTION = 'email()'),  
    Create_dt DATETIME DEFAULT GETUTCDATE() 
);
GO


INSERT INTO Physician_ProfG_FP 
(FirstName, LastName, LicenseNumber, Specialty, Phone, Email)
VALUES
('Robert', 'Johnson', 'MD123456', 'Cardiology', '212-555-1001', 'r.johnson@example.com'),
('Jennifer', 'Smith', 'MD234567', 'Pediatrics', '212-555-1002', 'j.smith@example.com'),
('Michael', 'Williams', 'MD345678', 'Neurology', '212-555-1003', 'm.williams@example.com'),
('Sarah', 'Brown', 'MD456789', 'Oncology', '212-555-1004', 's.brown@example.com'),
('David', 'Jones', 'MD567890', 'Orthopedics', '212-555-1005', 'd.jones@example.com'),
('Lisa', 'Garcia', 'MD678901', 'Dermatology', '212-555-1006', 'l.garcia@example.com'),
('James', 'Miller', 'MD789012', 'Psychiatry', '212-555-1007', 'j.miller@example.com'),
('Patricia', 'Davis', 'MD890123', 'Endocrinology', '212-555-1008', 'p.davis@example.com'),
('John', 'Rodriguez', 'MD901234', 'Gastroenterology', '212-555-1009', 'j.rodriguez@example.com'),
('Elizabeth', 'Martinez', 'MD012345', 'Rheumatology', '212-555-1010', 'e.martinez@example.com'),
('William', 'Hernandez', 'MD112233', 'Cardiology', '212-555-1011', 'w.hernandez@example.com'),
('Linda', 'Lopez', 'MD223344', 'Pediatrics', '212-555-1012', 'l.lopez@example.com'),
('Richard', 'Gonzalez', 'MD334455', 'Neurology', '212-555-1013', 'r.gonzalez@example.com'),
('Susan', 'Wilson', 'MD445566', 'Oncology', '212-555-1014', 's.wilson@example.com'),
('Joseph', 'Anderson', 'MD556677', 'Orthopedics', '212-555-1015', 'j.anderson@example.com'),
('Margaret', 'Thomas', 'MD667788', 'Dermatology', '212-555-1016', 'm.thomas@example.com'),
('Thomas', 'Taylor', 'MD778899', 'Psychiatry', '212-555-1017', 't.taylor@example.com'),
('Nancy', 'Moore', 'MD889900', 'Endocrinology', '212-555-1018', 'n.moore@example.com'),
('Charles', 'Jackson', 'MD990011', 'Gastroenterology', '212-555-1019', 'c.jackson@example.com'),
('Karen', 'Martin', 'MD001122', 'Rheumatology', '212-555-1020', 'k.martin@example.com'),
('Christopher', 'Lee', 'MD002233', 'Cardiology', '212-555-1021', 'c.lee@example.com'),
('Betty', 'Perez', 'MD003344', 'Pediatrics', '212-555-1022', 'b.perez@example.com'),
('Daniel', 'Thompson', 'MD004455', 'Neurology', '212-555-1023', 'd.thompson@example.com'),
('Dorothy', 'White', 'MD005566', 'Oncology', '212-555-1024', 'd.white@example.com'),
('Matthew', 'Harris', 'MD006677', 'Orthopedics', '212-555-1025', 'm.harris@example.com'),
('Jessica', 'Sanchez', 'MD007788', 'Dermatology', '212-555-1026', 'j.sanchez@example.com'),
('Donald', 'Clark', 'MD008899', 'Psychiatry', '212-555-1027', 'd.clark@example.com'),
('Barbara', 'Ramirez', 'MD009900', 'Endocrinology', '212-555-1028', 'b.ramirez@example.com'),
('Mark', 'Lewis', 'MD010101', 'Gastroenterology', '212-555-1029', 'm.lewis@example.com'),
('Emily', 'Robinson', 'MD020202', 'Rheumatology', '212-555-1030', 'e.robinson@example.com');
GO


CREATE TABLE Prescription_ProfG_FP (
    PrescriptionID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL FOREIGN KEY REFERENCES Patient_ProfG_FP(PatientID) ON UPDATE CASCADE,
    MedicationID INT NOT NULL FOREIGN KEY REFERENCES Medication_ProfG_FP(MedicationID),
    Dosage VARCHAR(50) NOT NULL,
    Frequency VARCHAR(50) NOT NULL,
    Refills INT NOT NULL DEFAULT 0,
    Status VARCHAR(20) NOT NULL CHECK(Status IN ('Pending','Active','Completed','Cancelled')),
    DatePrescribed DATETIME NOT NULL DEFAULT GETUTCDATE(),
    ExpirationDate DATETIME,
    PhysicianID INT FOREIGN KEY REFERENCES Physician_ProfG_FP(PhysicianID),
    CONSTRAINT CHK_Expiration CHECK (ExpirationDate > DatePrescribed)
);
GO


CREATE TABLE Insurance_ProfG_FP (  
    InsuranceID INT IDENTITY(1,1) PRIMARY KEY,  
    PatientID INT FOREIGN KEY REFERENCES Patient_ProfG_FP(PatientID),  
    ProviderName VARCHAR(100) NOT NULL,  
    PolicyNumber VARCHAR(50) NOT NULL,  
    GroupNumber VARCHAR(50),  
    EffectiveDate DATE NOT NULL,  
    ExpirationDate DATE,  
    Create_dt DATETIME DEFAULT GETUTCDATE() 
);
GO


INSERT INTO Insurance_ProfG_FP 
(PatientID, ProviderName, PolicyNumber, GroupNumber, EffectiveDate, ExpirationDate)
SELECT 
    PatientID,
    CASE 
        WHEN PatientID % 5 = 0 THEN 'Aetna'
        WHEN PatientID % 5 = 1 THEN 'Blue Cross Blue Shield'
        WHEN PatientID % 5 = 2 THEN 'UnitedHealthcare'
        WHEN PatientID % 5 = 3 THEN 'Cigna'
        ELSE 'Medicare'
    END AS ProviderName,
    'POL' + RIGHT('000000' + CAST(PatientID AS VARCHAR(6)), 6) AS PolicyNumber,
    'GRP' + RIGHT('000' + CAST(PatientID % 10 AS VARCHAR(3)), 3) AS GroupNumber,
    DATEADD(DAY, -365, GETDATE()) AS EffectiveDate,
    DATEADD(DAY, 365, GETDATE()) AS ExpirationDate
FROM Patient_ProfG_FP;
GO


CREATE TABLE PrescriptionFill_ProfG_FP (  
    FillID INT IDENTITY(1,1) PRIMARY KEY,  
    PrescriptionID INT FOREIGN KEY REFERENCES Prescription_ProfG_FP(PrescriptionID),  
    FillDate DATETIME NOT NULL DEFAULT GETUTCDATE(),  
    Quantity INT NOT NULL,  
    PharmacistID INT,  
    Cost DECIMAL(10,2),  
    InsuranceCoverage DECIMAL(10,2),  
    Create_dt DATETIME DEFAULT GETUTCDATE() 
);
GO


CREATE TABLE DrugInteraction_ProfG_FP (  
    InteractionID INT IDENTITY(1,1) PRIMARY KEY,  
    MedicationID1 INT FOREIGN KEY REFERENCES Medication_ProfG_FP(MedicationID),  
    MedicationID2 INT FOREIGN KEY REFERENCES Medication_ProfG_FP(MedicationID),  
    Severity VARCHAR(20) NOT NULL,  
    Description VARCHAR(500) NOT NULL,  
    Create_dt DATETIME DEFAULT GETUTCDATE(),
    CONSTRAINT CHK_Different_Medications CHECK (MedicationID1 <> MedicationID2)
);
GO


CREATE TABLE Allergy_ProfG_FP (  
    AllergyID INT IDENTITY(1,1) PRIMARY KEY,  
    PatientID INT FOREIGN KEY REFERENCES Patient_ProfG_FP(PatientID),  
    AllergenName VARCHAR(100) NOT NULL,  
    ReactionSeverity VARCHAR(20) NOT NULL,  
    FirstObserved DATE,  
    LastObserved DATE,  
    Notes VARCHAR(500),  
    Create_dt DATETIME DEFAULT GETUTCDATE() 
);
GO


CREATE TABLE Inventory_ProfG_FP (  
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,  
    MedicationID INT FOREIGN KEY REFERENCES Medication_ProfG_FP(MedicationID),  
    LotNumber VARCHAR(50),  
    ExpirationDate DATE NOT NULL,  
    QuantityInStock INT NOT NULL,  
    ReorderThreshold INT,  
    LastStockDate DATETIME,  
    Create_dt DATETIME DEFAULT GETUTCDATE() 
);
GO


INSERT INTO Inventory_ProfG_FP 
(MedicationID, LotNumber, ExpirationDate, QuantityInStock, ReorderThreshold, LastStockDate)
SELECT 
    MedicationID,
    'LOT' + RIGHT('000' + CAST(MedicationID AS VARCHAR(3)), 3) AS LotNumber,
    DATEADD(MONTH, 24, GETDATE()) AS ExpirationDate,
    CASE 
        WHEN MedicationID % 3 = 0 THEN 50
        WHEN MedicationID % 3 = 1 THEN 100
        ELSE 150
    END AS QuantityInStock,
    CASE 
        WHEN MedicationID % 3 = 0 THEN 20
        WHEN MedicationID % 3 = 1 THEN 30
        ELSE 40
    END AS ReorderThreshold,
    DATEADD(DAY, -30, GETDATE()) AS LastStockDate
FROM Medication_ProfG_FP;
GO


CREATE TABLE PharmacyStaff_ProfG_FP (  
    StaffID INT IDENTITY(1,1) PRIMARY KEY,  
    FirstName VARCHAR(50) NOT NULL,  
    LastName VARCHAR(50) NOT NULL,  
    Role VARCHAR(50) NOT NULL,  
    LicenseNumber VARCHAR(50),  
    SSN CHAR(11) MASKED WITH (FUNCTION = 'partial(0, "XXX-XX-", 4)'),  
    HireDate DATE NOT NULL,  
    Create_dt DATETIME DEFAULT GETUTCDATE()
);
GO


INSERT INTO PharmacyStaff_ProfG_FP 
(FirstName, LastName, Role, LicenseNumber, SSN, HireDate)
VALUES
('John', 'Doe', 'Pharmacist', 'RPH12345', '111-22-3333', '2020-01-15'),
('Jane', 'Smith', 'Pharmacy Technician', 'PHT67890', '222-33-4444', '2020-02-20'),
('Robert', 'Johnson', 'Pharmacist', 'RPH23456', '333-44-5555', '2019-03-10'),
('Emily', 'Williams', 'Pharmacy Technician', 'PHT78901', '444-55-6666', '2021-04-05'),
('Michael', 'Brown', 'Pharmacist', 'RPH34567', '555-66-7777', '2018-05-12'),
('Sarah', 'Jones', 'Pharmacy Technician', 'PHT89012', '666-77-8888', '2022-06-18'),
('David', 'Garcia', 'Pharmacist', 'RPH45678', '777-88-9999', '2017-07-22'),
('Jennifer', 'Miller', 'Pharmacy Technician', 'PHT90123', '888-99-0000', '2023-08-30'),
('James', 'Davis', 'Pharmacist', 'RPH56789', '999-00-1111', '2016-09-14'),
('Lisa', 'Rodriguez', 'Pharmacy Technician', 'PHT01234', '000-11-2222', '2024-10-25'),
('William', 'Martinez', 'Pharmacist', 'RPH67890', '123-45-6789', '2015-11-05'),
('Mary', 'Hernandez', 'Pharmacy Technician', 'PHT12345', '234-56-7890', '2020-12-10'),
('Richard', 'Lopez', 'Pharmacist', 'RPH78901', '345-67-8901', '2014-01-15'),
('Patricia', 'Gonzalez', 'Pharmacy Technician', 'PHT23456', '456-78-9012', '2021-02-20'),
('Charles', 'Wilson', 'Pharmacist', 'RPH89012', '567-89-0123', '2013-03-25'),
('Susan', 'Anderson', 'Pharmacy Technician', 'PHT34567', '678-90-1234', '2022-04-30'),
('Joseph', 'Thomas', 'Pharmacist', 'RPH90123', '789-01-2345', '2012-05-05'),
('Margaret', 'Taylor', 'Pharmacy Technician', 'PHT45678', '890-12-3456', '2023-06-10'),
('Thomas', 'Moore', 'Pharmacist', 'RPH01234', '901-23-4567', '2011-07-15'),
('Nancy', 'Jackson', 'Pharmacy Technician', 'PHT56789', '012-34-5678', '2024-08-20'),
('Daniel', 'Martin', 'Pharmacist', 'RPH12345', '112-34-5678', '2010-09-25'),
('Karen', 'Lee', 'Pharmacy Technician', 'PHT67890', '223-45-6789', '2020-10-30'),
('Paul', 'Perez', 'Pharmacist', 'RPH23456', '334-56-7890', '2009-11-05'),
('Betty', 'Thompson', 'Pharmacy Technician', 'PHT78901', '445-67-8901', '2021-12-10'),
('Mark', 'White', 'Pharmacist', 'RPH34567', '556-78-9012', '2008-01-15'),
('Dorothy', 'Harris', 'Pharmacy Technician', 'PHT89012', '667-89-0123', '2022-02-20'),
('Donald', 'Sanchez', 'Pharmacist', 'RPH45678', '778-90-1234', '2007-03-25'),
('Sandra', 'Clark', 'Pharmacy Technician', 'PHT90123', '889-01-2345', '2023-04-30'),
('Steven', 'Ramirez', 'Pharmacist', 'RPH56789', '990-12-3456', '2006-05-05'),
('Donna', 'Lewis', 'Pharmacy Technician', 'PHT01234', '001-23-4567', '2024-06-10');
GO


CREATE TABLE AuditLog_ProfG_FP (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    ActionType NVARCHAR(10),
    TableName NVARCHAR(128),
    RecordID INT,
    ChangeDetails NVARCHAR(MAX),
    ChangedBy NVARCHAR(128),
    ChangeDateTime DATETIME DEFAULT GETDATE()
);
GO


CREATE TABLE PrescriptionHistory_ProfG_FP (
    PrescriptionID INT NOT NULL,
    PatientID INT NOT NULL,
    MedicationID INT NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    Frequency VARCHAR(50) NOT NULL,
    Refills INT NOT NULL,
    Status VARCHAR(20) NOT NULL,
    DatePrescribed DATETIME NOT NULL,
    ExpirationDate DATETIME,
    PhysicianID INT,
    ValidFrom DATETIME2 NOT NULL,
    ValidTo DATETIME2 NOT NULL
);
GO


ALTER TABLE Prescription_ProfG_FP
ADD
    ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START,
    ValidTo DATETIME2 GENERATED ALWAYS AS ROW END,
    PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO

ALTER TABLE Prescription_ProfG_FP
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = PrescriptionHistory_ProfG_FP));
GO


INSERT INTO Prescription_ProfG_FP
(PatientID, MedicationID, Dosage, Frequency, Refills, Status, PhysicianID, ExpirationDate)
SELECT 
    p.PatientID,
    m.MedicationID,
    CASE 
        WHEN m.MedicationID % 3 = 0 THEN '1 tablet'
        WHEN m.MedicationID % 3 = 1 THEN '2 tablets'
        ELSE '1 capsule'
    END AS Dosage,
    CASE 
        WHEN m.MedicationID % 4 = 0 THEN 'Once daily'
        WHEN m.MedicationID % 4 = 1 THEN 'Twice daily'
        WHEN m.MedicationID % 4 = 2 THEN 'Three times daily'
        ELSE 'As needed'
    END AS Frequency,
    CASE 
        WHEN m.MedicationID % 5 = 0 THEN 0
        WHEN m.MedicationID % 5 = 1 THEN 1
        WHEN m.MedicationID % 5 = 2 THEN 2
        WHEN m.MedicationID % 5 = 3 THEN 3
        ELSE 4
    END AS Refills,
    CASE 
        WHEN m.MedicationID % 6 = 0 THEN 'Pending'
        WHEN m.MedicationID % 6 = 1 THEN 'Active'
        WHEN m.MedicationID % 6 = 2 THEN 'Completed'
        WHEN m.MedicationID % 6 = 3 THEN 'Cancelled'
        ELSE 'Active'
    END AS Status,
    phy.PhysicianID,
    DATEADD(DAY, 30, GETDATE()) AS ExpirationDate
FROM Patient_ProfG_FP p
CROSS JOIN Medication_ProfG_FP m
JOIN Physician_ProfG_FP phy ON phy.PhysicianID = p.PatientID % 30 + 1
WHERE p.PatientID % 10 = m.MedicationID % 10
AND p.PatientID <= 30 AND m.MedicationID <= 30;
GO


INSERT INTO PrescriptionFill_ProfG_FP
(PrescriptionID, Quantity, PharmacistID, Cost, InsuranceCoverage)
SELECT 
    p.PrescriptionID,
    CASE 
        WHEN p.PrescriptionID % 3 = 0 THEN 30
        WHEN p.PrescriptionID % 3 = 1 THEN 60
        ELSE 90
    END AS Quantity,
    s.StaffID,
    CASE 
        WHEN p.PrescriptionID % 5 = 0 THEN 10.00
        WHEN p.PrescriptionID % 5 = 1 THEN 20.00
        WHEN p.PrescriptionID % 5 = 2 THEN 30.00
        WHEN p.PrescriptionID % 5 = 3 THEN 40.00
        ELSE 50.00
    END AS Cost,
    CASE 
        WHEN p.PrescriptionID % 5 = 0 THEN 8.00
        WHEN p.PrescriptionID % 5 = 1 THEN 16.00
        WHEN p.PrescriptionID % 5 = 2 THEN 24.00
        WHEN p.PrescriptionID % 5 = 3 THEN 32.00
        ELSE 40.00
    END AS InsuranceCoverage
FROM Prescription_ProfG_FP p
CROSS JOIN (SELECT 1 AS n UNION SELECT 2) AS nums
JOIN PharmacyStaff_ProfG_FP s ON s.StaffID = p.PrescriptionID % 30 + 1
WHERE p.PrescriptionID <= 30;
GO


INSERT INTO DrugInteraction_ProfG_FP
(MedicationID1, MedicationID2, Severity, Description)
VALUES
(1, 2, 'Moderate', 'Increased risk of myopathy'),
(1, 3, 'Mild', 'Potential for increased blood sugar'),
(2, 4, 'Severe', 'Risk of rhabdomyolysis'),
(3, 5, 'Moderate', 'Potential for increased hypoglycemia'),
(4, 6, 'Mild', 'Possible increased sedation'),
(5, 7, 'Moderate', 'Increased risk of bleeding'),
(6, 8, 'Severe', 'Risk of serotonin syndrome'),
(7, 9, 'Mild', 'Potential for increased dizziness'),
(8, 10, 'Moderate', 'Increased risk of QT prolongation'),
(9, 11, 'Severe', 'Risk of kidney damage'),
(10, 12, 'Mild', 'Possible increased drowsiness'),
(11, 13, 'Moderate', 'Potential for increased potassium'),
(12, 14, 'Severe', 'Risk of seizures'),
(13, 15, 'Mild', 'Possible increased blood pressure'),
(14, 16, 'Moderate', 'Potential for decreased effectiveness'),
(15, 17, 'Severe', 'Risk of liver damage'),
(16, 18, 'Mild', 'Possible increased side effects'),
(17, 19, 'Moderate', 'Potential for increased sedation'),
(18, 20, 'Severe', 'Risk of respiratory depression'),
(19, 21, 'Mild', 'Possible increased drowsiness');
GO


INSERT INTO Allergy_ProfG_FP
(PatientID, AllergenName, ReactionSeverity, FirstObserved, LastObserved, Notes)
SELECT 
    PatientID,
    CASE 
        WHEN PatientID % 5 = 0 THEN 'Penicillin'
        WHEN PatientID % 5 = 1 THEN 'Sulfa Drugs'
        WHEN PatientID % 5 = 2 THEN 'NSAIDs'
        WHEN PatientID % 5 = 3 THEN 'Latex'
        ELSE 'Peanuts'
    END AS AllergenName,
    CASE 
        WHEN PatientID % 3 = 0 THEN 'Mild'
        WHEN PatientID % 3 = 1 THEN 'Moderate'
        ELSE 'Severe'
    END AS ReactionSeverity,
    DATEADD(YEAR, -5, GETDATE()) AS FirstObserved,
    DATEADD(YEAR, -1, GETDATE()) AS LastObserved,
    CASE 
        WHEN PatientID % 5 = 0 THEN 'Hives and itching'
        WHEN PatientID % 5 = 1 THEN 'Rash and fever'
        WHEN PatientID % 5 = 2 THEN 'Stomach pain'
        WHEN PatientID % 5 = 3 THEN 'Skin irritation'
        ELSE 'Difficulty breathing'
    END AS Notes
FROM Patient_ProfG_FP;
GO


---- Patient table masking
ALTER TABLE Patient_ProfG_FP 
ALTER COLUMN SSN ADD MASKED WITH (FUNCTION = 'partial(0, "XXX-XX-", 4)');

ALTER TABLE Patient_ProfG_FP 
ALTER COLUMN FirstName ADD MASKED WITH (FUNCTION = 'partial(1, "XXXX", 0)');

ALTER TABLE Patient_ProfG_FP 
ALTER COLUMN LastName ADD MASKED WITH (FUNCTION = 'partial(1, "XXXX", 0)');



-- GetPatientByID procedure
IF OBJECT_ID('GetPatientByID_ProfG_FP', 'P') IS NOT NULL
    DROP PROCEDURE GetPatientByID_ProfG_FP;
GO

CREATE PROCEDURE GetPatientByID_ProfG_FP
    @PatientID INT
AS
BEGIN
    SET NOCOUNT ON;

    IF @PatientID IS NULL OR @PatientID <= 0
    BEGIN
        RAISERROR('Invalid Patient ID provided', 16, 1);
        RETURN;
    END;

    SELECT 
        PatientID,
        FirstName,
        LastName,
        SSN,
        Sex,
        DOB,
        Create_dt,
        Modified_dt
    FROM Patient_ProfG_FP
    WHERE PatientID = @PatientID;

    IF @@ROWCOUNT = 0
    BEGIN
        RAISERROR('Patient not found', 16, 1);
    END
END;
GO



---- GetActivePrescriptions procedure
CREATE OR ALTER PROCEDURE GetActivePrescriptions_ProfG_FP
    @PatientID INT
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @PatientID IS NULL OR @PatientID <= 0
    BEGIN
        RAISERROR('Invalid Patient ID provided', 16, 1);
        RETURN;
    END

    SELECT 
        p.PrescriptionID, 
        m.Name AS Medication, 
        m.Strength,
        m.Form,
        p.Dosage, 
        p.Frequency,
        p.Refills,
        p.DatePrescribed, 
        p.ExpirationDate,
        phy.FirstName + ' ' + phy.LastName AS PrescribingPhysician
    FROM Prescription_ProfG_FP p
    JOIN Medication_ProfG_FP m 
        ON p.MedicationID = m.MedicationID
    LEFT JOIN Physician_ProfG_FP phy
        ON p.PhysicianID = phy.PhysicianID
    WHERE p.PatientID = @PatientID 
    AND p.Status = 'Active';
END;
GO

-- AddPrescription procedure
CREATE OR ALTER PROCEDURE AddPrescription_ProfG_FP  
    @PatientID INT,  
    @MedicationID INT,  
    @Dosage VARCHAR(50),  
    @Frequency VARCHAR(50),  
    @Refills INT = 0,  
    @PhysicianID INT = NULL,
    @PrescriptionID INT OUTPUT
AS  
BEGIN  
    SET NOCOUNT ON;  

    BEGIN TRY  
        BEGIN TRANSACTION;  

        -- Validate patient exists  
        IF NOT EXISTS (SELECT 1 FROM Patient_ProfG_FP WHERE PatientID = @PatientID)  
        BEGIN  
            RAISERROR('Invalid Patient ID', 16, 1);  
            ROLLBACK;  
            RETURN -1;  
        END  

        -- Validate medication exists  
        IF NOT EXISTS (SELECT 1 FROM Medication_ProfG_FP WHERE MedicationID = @MedicationID)  
        BEGIN  
            RAISERROR('Invalid Medication ID', 16, 1);  
            ROLLBACK;  
            RETURN -2;  
        END  

        -- Validate physician if provided
        IF @PhysicianID IS NOT NULL AND NOT EXISTS (
            SELECT 1 FROM Physician_ProfG_FP 
            WHERE PhysicianID = @PhysicianID)
        BEGIN
            RAISERROR('Invalid Physician ID', 16, 1);
            ROLLBACK;
            RETURN -3;
        END

        -- Insert prescription  
        INSERT INTO Prescription_ProfG_FP (  
            PatientID, MedicationID, Dosage, Frequency,  
            Refills, Status, PhysicianID, ExpirationDate )  
        VALUES (  
            @PatientID, @MedicationID, @Dosage, @Frequency,  
            @Refills, 'Active', @PhysicianID, DATEADD(DAY, 30, GETDATE()));  

        SET @PrescriptionID = SCOPE_IDENTITY();
        
        COMMIT TRANSACTION;
        RETURN 0;
    END TRY  
    BEGIN CATCH  
        IF @@TRANCOUNT > 0  
            ROLLBACK TRANSACTION;  

        RAISERROR('Error adding prescription: %s', 16, 1, ERROR_MESSAGE());
        RETURN -99;  
    END CATCH  
END;  
GO

-- RefillPrescription procedure
CREATE OR ALTER PROCEDURE RefillPrescription_ProfG_FP  
    @PrescriptionID INT,
    @Quantity INT,
    @PharmacistID INT,
    @Result INT OUTPUT
AS  
BEGIN  
    SET NOCOUNT ON;  
    DECLARE @RefillsLeft INT;  
    DECLARE @Status VARCHAR(20);  
    DECLARE @PatientID INT;
    DECLARE @MedicationID INT;

    BEGIN TRY  
        BEGIN TRANSACTION;  

        -- Check prescription status and get current values  
        SELECT @RefillsLeft = Refills, 
               @Status = Status,
               @PatientID = PatientID,
               @MedicationID = MedicationID
        FROM Prescription_ProfG_FP WITH (UPDLOCK)  
        WHERE PrescriptionID = @PrescriptionID;  

        IF @@ROWCOUNT = 0
        BEGIN  
            RAISERROR('Prescription not found', 16, 1);  
            SET @Result = -1;
            ROLLBACK;  
            RETURN;  
        END  

        IF @Status <> 'Active'  
        BEGIN  
            RAISERROR('Prescription is not active', 16, 1);  
            SET @Result = -2;
            ROLLBACK;  
            RETURN;  
        END  

        IF @RefillsLeft <= 0  
        BEGIN  
            RAISERROR('No refills remaining', 16, 1);  
            SET @Result = -3;
            ROLLBACK;  
            RETURN;  
        END  

        -- Check medication availability
        DECLARE @Available BIT;
        EXEC @Available = CheckDrugAvailability_ProfG_FP 
            @MedicationID, @Quantity;
            
        IF @Available = 0
        BEGIN
            RAISERROR('Medication not available in required quantity', 16, 1);
            SET @Result = -4;
            ROLLBACK;
            RETURN;
        END

        -- Update refill count  
        UPDATE Prescription_ProfG_FP  
        SET Refills = Refills - 1,  
            Modified_dt = GETUTCDATE()  
        WHERE PrescriptionID = @PrescriptionID;  

        -- Log the fill
        INSERT INTO PrescriptionFill_ProfG_FP (  
            PrescriptionID, FillDate, Quantity, PharmacistID, Cost, InsuranceCoverage )  
        SELECT
            @PrescriptionID,
            GETUTCDATE(),
            @Quantity,
            @PharmacistID,
            m.Cost,
            m.Cost * 0.8 -- Assuming 80% insurance coverage
        FROM Medication_ProfG_FP m
        WHERE m.MedicationID = @MedicationID;

        -- Update inventory
        UPDATE Inventory_ProfG_FP
        SET QuantityInStock = QuantityInStock - @Quantity,
            LastStockDate = GETUTCDATE()
        WHERE MedicationID = @MedicationID;

        COMMIT TRANSACTION;  
        SET @Result = 0;
    END TRY  
    BEGIN CATCH  
        IF @@TRANCOUNT > 0  
            ROLLBACK TRANSACTION;  

        RAISERROR('Error processing refill: %s', 16, 1, ERROR_MESSAGE());  
        SET @Result = -99;  
    END CATCH  
END;  
GO

---- CheckDrugInteractions procedure
CREATE OR ALTER PROCEDURE CheckDrugInteractions_ProfG_FP  
    @MedicationID1 INT,  
    @MedicationID2 INT,  
    @InteractionFound BIT OUTPUT  
AS  
BEGIN  
    SET @InteractionFound = 0;  

    IF EXISTS (  
        SELECT 1  
        FROM DrugInteraction_ProfG_FP  
        WHERE (MedicationID1 = @MedicationID1 AND MedicationID2 = @MedicationID2)  
        OR (MedicationID1 = @MedicationID2 AND MedicationID2 = @MedicationID1) )  
    BEGIN  
        SET @InteractionFound = 1;  
    END  
END;  
GO

-- PrescribeMedication procedure with interaction check
CREATE OR ALTER PROCEDURE PrescribeMedication_ProfG_FP  
    @PatientID INT,  
    @MedicationID INT,  
    @Dosage VARCHAR(50),  
    @Frequency VARCHAR(50),  
    @PhysicianID INT,  
    @Result INT OUTPUT  
AS  
BEGIN  
    DECLARE @OtherMeds TABLE (MedID INT);  
    DECLARE @Interaction BIT;  
    DECLARE @InteractionDetails VARCHAR(500);
    DECLARE @InteractionSeverity VARCHAR(20);

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Get patient's current medications  
        INSERT INTO @OtherMeds  
        SELECT MedicationID  
        FROM Prescription_ProfG_FP  
        WHERE PatientID = @PatientID AND Status = 'Active';  

        -- Check for interactions  
        DECLARE @CurrentMed INT;  
        DECLARE MedCursor CURSOR FOR SELECT MedID FROM @OtherMeds;  

        OPEN MedCursor;  
        FETCH NEXT FROM MedCursor INTO @CurrentMed;  

        WHILE @@FETCH_STATUS = 0  
        BEGIN  
            EXEC CheckDrugInteractions_ProfG_FP  
                @MedicationID1 = @CurrentMed,  
                @MedicationID2 = @MedicationID,  
                @InteractionFound = @Interaction OUTPUT;  

            IF @Interaction = 1  
            BEGIN  
                -- Get interaction details
                SELECT @InteractionDetails = Description,
                       @InteractionSeverity = Severity
                FROM DrugInteraction_ProfG_FP  
                WHERE (MedicationID1 = @CurrentMed AND MedicationID2 = @MedicationID)
                   OR (MedicationID1 = @MedicationID AND MedicationID2 = @CurrentMed);

                CLOSE MedCursor;  
                DEALLOCATE MedCursor;  

                SET @Result = -1;
                RAISERROR('Drug interaction found (%s - Severity: %s): %s', 16, 1, 
                    @InteractionSeverity, @InteractionSeverity, @InteractionDetails);
                ROLLBACK;
                RETURN;  
            END  

            FETCH NEXT FROM MedCursor INTO @CurrentMed;  
        END  

        CLOSE MedCursor;  
        DEALLOCATE MedCursor;  

        -- If no interactions, add prescription  
        DECLARE @PrescriptionID INT;  
        DECLARE @ProcResult INT;

        EXEC @ProcResult = AddPrescription_ProfG_FP  
            @PatientID = @PatientID,  
            @MedicationID = @MedicationID,  
            @Dosage = @Dosage,  
            @Frequency = @Frequency,  
            @PhysicianID = @PhysicianID,
            @PrescriptionID = @PrescriptionID OUTPUT;  

        IF @ProcResult <> 0
        BEGIN
            SET @Result = @ProcResult;
            ROLLBACK;
            RETURN;
        END

        SET @Result = @PrescriptionID;  
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
            
        RAISERROR('Error prescribing medication: %s', 16, 1, ERROR_MESSAGE());
        SET @Result = -99;
    END CATCH
END;  
GO


---- Calculate patient age function
CREATE OR ALTER FUNCTION Pharmacy_ProfG_FP.CalculateAge_ProfG_FP (  
    @DOB DATE  
)  
RETURNS INT  
AS  
BEGIN  
    DECLARE @Age INT;  

    SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) -  
        CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, @DOB, GETDATE()), @DOB) > GETDATE()  
             THEN 1 ELSE 0 END;  

    RETURN @Age;  
END;  
GO

---- Get patient prescriptions function
CREATE OR ALTER FUNCTION GetPatientPrescriptions_ProfG_FP (  
    @PatientID INT = 0  
)  
RETURNS TABLE  
AS  
RETURN (  
    SELECT 
        p.PrescriptionID, 
        m.Name AS Medication, 
        p.Dosage, 
        p.Frequency, 
        p.DatePrescribed, 
        p.ExpirationDate, 
        p.Status  
    FROM Prescription_ProfG_FP p  
    JOIN Medication_ProfG_FP m ON p.MedicationID = m.MedicationID  
    WHERE @PatientID = 0 OR p.PatientID = @PatientID  
);  
GO

---- Check drug availability function
CREATE OR ALTER FUNCTION CheckDrugAvailability_ProfG_FP (  
    @MedicationID INT,  
    @QuantityNeeded INT  
)  
RETURNS BIT  
AS  
BEGIN  
    DECLARE @Available BIT = 0;  
    
    IF EXISTS (  
        SELECT 1  
        FROM Inventory_ProfG_FP  
        WHERE MedicationID = @MedicationID   
        AND QuantityInStock >= @QuantityNeeded   
        AND ExpirationDate > GETDATE()  
    )  
    BEGIN  
        SET @Available = 1;  
    END  
    
    RETURN @Available;  
END;  
GO

---- Format phone number function
CREATE OR ALTER FUNCTION FormatPhone_ProfG_FP (  
    @Phone VARCHAR(15)  
)  
RETURNS VARCHAR(15)  
AS  
BEGIN  
    -- Remove all non-numeric characters
    DECLARE @CleanedPhone VARCHAR(15) = '';
    DECLARE @i INT = 1;
    
    WHILE @i <= LEN(@Phone)
    BEGIN
        IF SUBSTRING(@Phone, @i, 1) LIKE '[0-9]'
            SET @CleanedPhone = @CleanedPhone + SUBSTRING(@Phone, @i, 1);
        SET @i = @i + 1;
    END
    
    -- Format as (XXX) XXX-XXXX if we have 10 digits
    IF LEN(@CleanedPhone) = 10
        RETURN '(' + SUBSTRING(@CleanedPhone, 1, 3) + ') ' + 
               SUBSTRING(@CleanedPhone, 4, 3) + '-' + 
               SUBSTRING(@CleanedPhone, 7, 4);
    
    -- Return original if not 10 digits
    RETURN @Phone;
END;  
GO

-- Calculate days until refill function
CREATE OR ALTER FUNCTION DaysUntilRefill_ProfG_FP (  
    @PrescriptionID INT  
)  
RETURNS INT  
AS  
BEGIN  
    DECLARE @Days INT;  

    SELECT @Days = DATEDIFF(DAY, GETDATE(), DATEADD(DAY, DaysSupply, LastFillDate))  
    FROM (  
        SELECT 
            MAX(FillDate) AS LastFillDate,  
            CASE   
                WHEN Frequency LIKE '%Daily%' THEN 30  
                WHEN Frequency LIKE '%Weekly%' THEN 7 * 4  
                ELSE 30  
            END AS DaysSupply  
        FROM Prescription_ProfG_FP p  
        LEFT JOIN PrescriptionFill_ProfG_FP f ON p.PrescriptionID = f.PrescriptionID  
        WHERE p.PrescriptionID = @PrescriptionID  
    ) AS t;  

    RETURN @Days;  
END;  
GO



---- Prescription audit trigger
CREATE OR ALTER TRIGGER trg_Prescription_Audit_ProfG_FP  
ON Prescription_ProfG_FP  
AFTER INSERT, UPDATE, DELETE  
AS  
BEGIN  
    SET NOCOUNT ON;  

    DECLARE @Action NVARCHAR(10);  

    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)  
        SET @Action = 'UPDATE';  
    ELSE IF EXISTS (SELECT * FROM inserted)  
        SET @Action = 'INSERT';  
    ELSE  
        SET @Action = 'DELETE';  

    INSERT INTO AuditLog_ProfG_FP (  
        ActionType, TableName, RecordID, ChangeDetails, ChangedBy )  
    SELECT  
        @Action,  
        'Prescription',  
        COALESCE(i.PrescriptionID, d.PrescriptionID),  
        CASE  
            WHEN @Action = 'INSERT' THEN 'New prescription added'  
            WHEN @Action = 'DELETE' THEN 'Prescription deleted'  
            ELSE  
            'Changes: '+  
            CASE WHEN i.PatientID <> d.PatientID THEN 'PatientID, ' ELSE '' END +  
            CASE WHEN i.MedicationID <> d.MedicationID THEN 'MedicationID, ' ELSE '' END +  
            CASE WHEN i.Dosage <> d.Dosage THEN 'Dosage, ' ELSE '' END +  
            CASE WHEN i.Status <> d.Status THEN 'Status' ELSE '' END  
        END,  
        SYSTEM_USER  
    FROM inserted i  
        FULL OUTER JOIN deleted d ON i.PrescriptionID = d.PrescriptionID;  
END;  
GO

---- Patient update audit trigger
CREATE OR ALTER TRIGGER trg_Patient_Update_ProfG_FP  
ON Patient_ProfG_FP  
AFTER UPDATE  
AS  
BEGIN  
    INSERT INTO AuditLog_ProfG_FP  
    (ActionType, TableName, RecordID, ChangeDetails, ChangedBy)  
    SELECT  
        'UPDATE',  
        'Patient',  
        i.PatientID,  
        'Updated: ' +  
        CASE WHEN i.FirstName <> d.FirstName THEN 'FirstName, ' ELSE '' END +  
        CASE WHEN i.LastName <> d.LastName THEN 'LastName, ' ELSE '' END +  
        CASE WHEN i.SSN <> d.SSN THEN 'SSN, ' ELSE '' END +  
        CASE WHEN i.DOB <> d.DOB THEN 'DOB' ELSE '' END,  
        SYSTEM_USER   
    FROM inserted i  
    JOIN deleted d ON i.PatientID = d.PatientID;  
END;  
GO

---- Medication delete archive trigger
CREATE OR ALTER TRIGGER trg_Medication_Delete_ProfG_FP  
ON Medication_ProfG_FP  
INSTEAD OF DELETE  
AS  
BEGIN  
    -- First create archive table if it doesn't exist
    IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'MedicationArchive_ProfG_FP' AND schema_id = SCHEMA_ID('Pharmacy_ProfG_FP'))
    BEGIN
        CREATE TABLE MedicationArchive_ProfG_FP (
            MedicationID INT PRIMARY KEY,
            Name VARCHAR(100) NOT NULL,
            Strength VARCHAR(50) NOT NULL,
            Form VARCHAR(50) NOT NULL,
            Manufacturer VARCHAR(100),
            Create_dt DATETIME NOT NULL,
            ArchiveDate DATETIME NOT NULL,
            ArchivedBy VARCHAR(128) NOT NULL
        );
    END

    -- Archive deleted medications
    INSERT INTO MedicationArchive_ProfG_FP  
    SELECT 
        MedicationID, 
        Name, 
        Strength, 
        Form, 
        Manufacturer, 
        Create_dt, 
        GETDATE(), 
        SYSTEM_USER 
    FROM deleted;

    -- Delete from main table
    DELETE FROM Medication_ProfG_FP  
    WHERE MedicationID IN (SELECT MedicationID FROM deleted);  
END;  
GO



-- Create restricted user
CREATE USER PharmacyStaff WITHOUT LOGIN;  
GRANT SELECT ON SCHEMA::Pharmacy_ProfG_FP TO PharmacyStaff;  
GO

-- Row-Level Security implementation
CREATE SCHEMA Security;  
GO

CREATE OR ALTER FUNCTION Security.fn_securitypredicate_ProfG_FP(@PatientID INT)  
RETURNS TABLE  
WITH SCHEMABINDING  
AS  
RETURN SELECT 1 AS fn_securitypredicate_result  
WHERE @PatientID = CAST(SESSION_CONTEXT(N'PatientID') AS INT)  
OR IS_ROLEMEMBER('db_owner') = 1;  
GO

CREATE SECURITY POLICY Security.PatientFilter_ProfG_FP  
ADD FILTER PREDICATE Security.fn_securitypredicate_ProfG_FP(PatientID)  
ON Pharmacy_ProfG_FP.Patient_ProfG_FP;  
GO


-- Indexed view for frequently run reports
CREATE OR ALTER VIEW vw_PrescriptionSummary_ProfG_FP  
WITH SCHEMABINDING  
AS  
SELECT  
    p.PatientID,  
    m.MedicationID,  
    COUNT_BIG(*) AS PrescriptionCount,  
    SUM(p.Refills) AS TotalRefills  
FROM  
    Prescription_ProfG_FP p  
    JOIN Medication_ProfG_FP m ON p.MedicationID = m.MedicationID  
GROUP BY  
    p.PatientID, m.MedicationID;  
GO

CREATE UNIQUE CLUSTERED INDEX IX_vw_PrescriptionSummary  
ON vw_PrescriptionSummary_ProfG_FP (PatientID, MedicationID);  
GO


---- Report: Patients with Active Prescriptions
CREATE OR ALTER PROCEDURE GetPatientsWithActivePrescriptions  
AS  
BEGIN  
    SET NOCOUNT ON;  
    
    SELECT  
        p.PatientID,  
        p.FirstName,  
        p.LastName,  
        p.DOB,  
        dbo.CalculateAge_ProfG_FP(p.DOB) AS Age,  
        COUNT(pr.PrescriptionID) AS ActivePrescriptionCount  
    FROM Patient_ProfG_FP p  
    LEFT JOIN Prescription_ProfG_FP pr  
        ON p.PatientID = pr.PatientID AND pr.Status = 'Active'  
    GROUP BY p.PatientID, p.FirstName, p.LastName, p.DOB  
    ORDER BY p.LastName, p.FirstName;  
END;  
GO

---- Report: Medication Inventory Status
CREATE OR ALTER PROCEDURE GetMedicationInventoryStatus  
AS  
BEGIN  
    SET NOCOUNT ON;  
    
    SELECT  
        m.MedicationID,  
        m.Name,  
        m.Strength,  
        m.Form,  
        i.QuantityInStock,  
        i.ReorderThreshold,  
        i.ExpirationDate,  
        CASE  
            WHEN i.QuantityInStock <= i.ReorderThreshold THEN 'Reorder'  
            WHEN i.ExpirationDate < DATEADD(MONTH, 3, GETDATE()) THEN 'Expiring Soon'  
            ELSE 'OK'  
        END AS Status  
    FROM Medication_ProfG_FP m  
    JOIN Inventory_ProfG_FP i ON m.MedicationID = i.MedicationID  
    ORDER BY Status, m.Name;  
END;  
GO

---- Report: Prescription Fills by Month
CREATE OR ALTER PROCEDURE GetPrescriptionFillsByMonth  
    @Year INT = NULL  
AS  
BEGIN  
    SET NOCOUNT ON;  
    
    IF @Year IS NULL  
        SET @Year = YEAR(GETDATE());  
    
    SELECT  
        MONTH(pf.FillDate) AS MonthNumber,  
        DATENAME(MONTH, pf.FillDate) AS MonthName,  
        COUNT(pf.FillID) AS FillCount,  
        SUM(pf.Quantity) AS TotalQuantity,  
        SUM(pf.Cost) AS TotalCost,  
        SUM(pf.InsuranceCoverage) AS TotalCoverage,  
        SUM(pf.Cost - pf.InsuranceCoverage) AS TotalPatientCost  
    FROM PrescriptionFill_ProfG_FP pf  
    WHERE YEAR(pf.FillDate) = @Year  
    GROUP BY MONTH(pf.FillDate), DATENAME(MONTH, pf.FillDate)  
    ORDER BY MONTH(pf.FillDate);  
END;  
GO


---- Verify all tables have the correct number of rows
CREATE OR ALTER PROCEDURE VerifyTableRowCounts  
AS  
BEGIN  
    SET NOCOUNT ON;  
    
    DECLARE @Results TABLE (TableName VARCHAR(100), ExpectedRows INT, ActualRows INT, Status VARCHAR(20));  
    
    -- Patient table  
    INSERT INTO @Results  
    SELECT 'Patient', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Patient_ProfG_FP;  
    
    -- Medication table  
    INSERT INTO @Results  
    SELECT 'Medication', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Medication_ProfG_FP;  
    
    -- Physician table  
    INSERT INTO @Results  
    SELECT 'Physician', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Physician_ProfG_FP;  
    
    -- Insurance table  
    INSERT INTO @Results  
    SELECT 'Insurance', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Insurance_ProfG_FP;  
    
    -- Inventory table  
    INSERT INTO @Results  
    SELECT 'Inventory', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Inventory_ProfG_FP;  
    
    -- PharmacyStaff table  
    INSERT INTO @Results  
    SELECT 'PharmacyStaff', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM PharmacyStaff_ProfG_FP;  
    
    -- Prescription table (should have 30)  
    INSERT INTO @Results  
    SELECT 'Prescription', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Prescription_ProfG_FP;  
    
    -- PrescriptionFill table (should have 60)  
    INSERT INTO @Results  
    SELECT 'PrescriptionFill', 60, COUNT(*),   
        CASE WHEN COUNT(*) = 60 THEN 'OK' ELSE 'ERROR' END  
    FROM PrescriptionFill_ProfG_FP;  
    
    -- DrugInteraction table (should have 20)  
    INSERT INTO @Results  
    SELECT 'DrugInteraction', 20, COUNT(*),   
        CASE WHEN COUNT(*) = 20 THEN 'OK' ELSE 'ERROR' END  
    FROM DrugInteraction_ProfG_FP;  
    
    -- Allergy table (should have 30)  
    INSERT INTO @Results  
    SELECT 'Allergy', 30, COUNT(*),   
        CASE WHEN COUNT(*) = 30 THEN 'OK' ELSE 'ERROR' END  
    FROM Allergy_ProfG_FP;  
    
    -- Return results  
    SELECT TableName, ExpectedRows, ActualRows, Status  
    FROM @Results  
    ORDER BY Status, TableName;  
END;  
GO


-- Verify SSN uniqueness
SELECT SSN, COUNT(*) AS DuplicateCount
FROM Patient_ProfG_FP
GROUP BY SSN
HAVING COUNT(*) > 1;

-- Verify sex constraint
SELECT PatientID, FirstName, LastName, Sex
FROM Patient_ProfG_FP
WHERE Sex NOT IN ('M', 'F', 'O');

-- Verify prescription status constraint
SELECT PrescriptionID, Status
FROM Prescription_ProfG_FP
WHERE Status NOT IN ('Pending','Active','Completed','Cancelled');

-- Verify expiration date constraint
SELECT PrescriptionID, DatePrescribed, ExpirationDate
FROM Prescription_ProfG_FP
WHERE ExpirationDate <= DatePrescribed;

-- Verify drug interaction constraint
SELECT InteractionID, MedicationID1, MedicationID2
FROM DrugInteraction_ProfG_FP
WHERE MedicationID1 = MedicationID2;
GO

