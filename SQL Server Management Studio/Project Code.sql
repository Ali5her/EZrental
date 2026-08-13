CREATE SCHEMA Pharmacy_ProfG_FP;
GO

CREATE TABLE Pharmacy_ProfG_FP.Patient_ProfG_FP (
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


INSERT INTO Pharmacy_ProfG_FP.Patient_ProfG_FP 
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


SELECT PatientID, FirstName, LastName, SSN, Sex, DOB 
FROM Pharmacy_ProfG_FP.Patient_ProfG_FP;
GO



CREATE TABLE Pharmacy_ProfG_FP.Doctor_ProfG_FP (
    DoctorID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Specialty VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE()
);
GO


INSERT INTO Pharmacy_ProfG_FP.Doctor_ProfG_FP 
(FirstName, LastName, Specialty, Phone, Email)
VALUES
('Alice', 'Green', 'Cardiology', '123-456-7890', 'alice.green@example.com'),
('Bob', 'Taylor', 'Neurology', '234-567-8901', 'bob.taylor@example.com'),
('Carol', 'King', 'Pediatrics', '345-678-9012', 'carol.king@example.com'),
('David', 'Scott', 'Oncology', '456-789-0123', 'david.scott@example.com'),
('Emily', 'Adams', 'Dermatology', '567-890-1234', 'emily.adams@example.com'),
('Frank', 'Baker', 'Orthopedics', '678-901-2345', 'frank.baker@example.com'),
('Grace', 'Cooper', 'Gynecology', '789-012-3456', 'grace.cooper@example.com'),
('Henry', 'Evans', 'Urology', '890-123-4567', 'henry.evans@example.com'),
('Ivy', 'Foster', 'Endocrinology', '901-234-5678', 'ivy.foster@example.com'),
('Jack', 'Garcia', 'Psychiatry', '012-345-6789', 'jack.garcia@example.com'),
('Karen', 'Hughes', 'Gastroenterology', '123-456-7800', 'karen.hughes@example.com'),
('Leo', 'Ingram', 'Rheumatology', '234-567-8900', 'leo.ingram@example.com'),
('Mona', 'Johnson', 'Hematology', '345-678-9001', 'mona.johnson@example.com'),
('Nick', 'Keller', 'Pulmonology', '456-789-0112', 'nick.keller@example.com'),
('Olivia', 'Lane', 'Nephrology', '567-890-1223', 'olivia.lane@example.com'),
('Paul', 'Morris', 'Radiology', '678-901-2334', 'paul.morris@example.com'),
('Quinn', 'Nelson', 'Pathology', '789-012-3445', 'quinn.nelson@example.com'),
('Rachel', 'Owens', 'Family Medicine', '890-123-4556', 'rachel.owens@example.com'),
('Steve', 'Parker', 'Internal Medicine', '901-234-5667', 'steve.parker@example.com'),
('Tina', 'Quincy', 'ENT', '012-345-6778', 'tina.quincy@example.com'),
('Umar', 'Reed', 'Surgery', '123-456-7889', 'umar.reed@example.com'),
('Vera', 'Simmons', 'Geriatrics', '234-567-8990', 'vera.simmons@example.com'),
('Will', 'Turner', 'Anesthesiology', '345-678-9001', 'will.turner@example.com'),
('Xena', 'Underwood', 'Ophthalmology', '456-789-0112', 'xena.underwood@example.com'),
('Yara', 'Vasquez', 'Allergy & Immunology', '567-890-1223', 'yara.vasquez@example.com'),
('Zane', 'White', 'Critical Care', '678-901-2334', 'zane.white@example.com'),
('Amy', 'Young', 'Emergency Medicine', '789-012-3445', 'amy.young@example.com'),
('Ben', 'Zimmer', 'Infectious Disease', '890-123-4556', 'ben.zimmer@example.com'),
('Clara', 'Xavier', 'Palliative Care', '901-234-5667', 'clara.xavier@example.com'),
('Derek', 'Watson', 'Occupational Medicine', '012-345-6778', 'derek.watson@example.com');
GO


SELECT DoctorID, FirstName, LastName, Specialty, Phone, Email 
FROM Pharmacy_ProfG_FP.Doctor_ProfG_FP;
GO



CREATE TABLE Pharmacy_ProfG_FP.Medication_ProfG_FP (
    MedicationID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Strength VARCHAR(50) NOT NULL,
    Form VARCHAR(50) NOT NULL,
    Manufacturer VARCHAR(100),
    Price DECIMAL(10,2),
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE()
);
GO


INSERT INTO Pharmacy_ProfG_FP.Medication_ProfG_FP 
(Name, Strength, Form, Manufacturer, Price)
VALUES
('Amoxicillin', '500mg', 'Capsule', 'Pfizer', 12.50),
('Ibuprofen', '200mg', 'Tablet', 'Advil', 8.99),
('Lisinopril', '10mg', 'Tablet', 'Merck', 15.25),
('Metformin', '500mg', 'Tablet', 'Teva', 11.00),
('Atorvastatin', '20mg', 'Tablet', 'Pfizer', 13.75),
('Omeprazole', '20mg', 'Capsule', 'Prilosec', 9.50),
('Amlodipine', '5mg', 'Tablet', 'Sandoz', 10.10),
('Simvastatin', '40mg', 'Tablet', 'Merck', 12.00),
('Azithromycin', '250mg', 'Tablet', 'Zithromax', 17.99),
('Hydrochlorothiazide', '25mg', 'Tablet', 'Teva', 8.45),
('Gabapentin', '300mg', 'Capsule', 'Neurontin', 14.20),
('Sertraline', '50mg', 'Tablet', 'Zoloft', 16.50),
('Montelukast', '10mg', 'Tablet', 'Singulair', 12.99),
('Fluoxetine', '20mg', 'Capsule', 'Prozac', 11.80),
('Levothyroxine', '100mcg', 'Tablet', 'Synthroid', 9.30),
('Clopidogrel', '75mg', 'Tablet', 'Plavix', 14.00),
('Prednisone', '10mg', 'Tablet', 'Deltasone', 13.50),
('Alprazolam', '0.5mg', 'Tablet', 'Xanax', 10.75),
('Ciprofloxacin', '500mg', 'Tablet', 'Cipro', 18.25),
('Cetirizine', '10mg', 'Tablet', 'Zyrtec', 9.60),
('Metoprolol', '50mg', 'Tablet', 'Lopressor', 12.20),
('Tramadol', '50mg', 'Tablet', 'Ultram', 11.10),
('Warfarin', '5mg', 'Tablet', 'Coumadin', 13.95),
('Furosemide', '40mg', 'Tablet', 'Lasix', 10.99),
('Tamsulosin', '0.4mg', 'Capsule', 'Flomax', 15.80),
('Doxycycline', '100mg', 'Capsule', 'Vibramycin', 16.70),
('Escitalopram', '10mg', 'Tablet', 'Lexapro', 14.40),
('Meloxicam', '15mg', 'Tablet', 'Mobic', 13.10),
('Ranitidine', '150mg', 'Tablet', 'Zantac', 11.55),
('Insulin Glargine', '100U/mL', 'Injection', 'Lantus', 45.00);
GO


SELECT MedicationID, Name, Strength, Form, Manufacturer, Price
FROM Pharmacy_ProfG_FP.Medication_ProfG_FP;
GO



CREATE TABLE Pharmacy_ProfG_FP.Prescription_ProfG_FP (
    PrescriptionID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    MedicationID INT NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    Frequency VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Notes VARCHAR(255),
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE(),
    FOREIGN KEY (PatientID) REFERENCES Pharmacy_ProfG_FP.Patient_ProfG_FP(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Pharmacy_ProfG_FP.Doctor_ProfG_FP(DoctorID),
    FOREIGN KEY (MedicationID) REFERENCES Pharmacy_ProfG_FP.Medication_ProfG_FP(MedicationID)
);
GO


INSERT INTO Pharmacy_ProfG_FP.Prescription_ProfG_FP
(PatientID, DoctorID, MedicationID, Dosage, Frequency, StartDate, EndDate, Notes)
VALUES
(1, 1, 1, '500mg', 'Twice a day', '2024-01-01', '2024-01-10', 'Take after meals'),
(2, 2, 2, '200mg', 'Once daily', '2024-02-01', '2024-02-14', 'With water'),
(3, 3, 3, '10mg', 'Once daily', '2024-03-01', '2024-03-30', ''),
(4, 4, 4, '500mg', 'Twice daily', '2024-01-15', '2024-01-25', ''),
(5, 5, 5, '20mg', 'At bedtime', '2024-03-01', '2024-03-15', ''),
(6, 6, 6, '20mg', 'Before meals', '2024-04-01', '2024-04-10', ''),
(7, 7, 7, '5mg', 'Once a day', '2024-05-01', '2024-05-20', ''),
(8, 8, 8, '40mg', 'Once a day', '2024-05-05', '2024-05-25', ''),
(9, 9, 9, '250mg', 'Once daily', '2024-06-01', '2024-06-10', ''),
(10, 10, 10, '25mg', 'Twice daily', '2024-06-01', '2024-06-14', ''),
(11, 11, 11, '300mg', 'Three times a day', '2024-07-01', '2024-07-21', ''),
(12, 12, 12, '50mg', 'Once daily', '2024-08-01', '2024-08-20', ''),
(13, 13, 13, '10mg', 'Every night', '2024-09-01', '2024-09-30', ''),
(14, 14, 14, '20mg', 'Twice daily', '2024-10-01', '2024-10-15', ''),
(15, 15, 15, '100mcg', 'Daily', '2024-11-01', '2024-11-21', ''),
(16, 16, 16, '75mg', 'After lunch', '2024-12-01', '2024-12-20', ''),
(17, 17, 17, '10mg', 'Twice a day', '2024-12-05', '2024-12-25', ''),
(18, 18, 18, '0.5mg', 'At bedtime', '2025-01-01', '2025-01-15', ''),
(19, 19, 19, '500mg', 'Twice daily', '2025-01-10', '2025-01-20', ''),
(20, 20, 20, '10mg', 'Morning', '2025-02-01', '2025-02-15', ''),
(21, 21, 21, '50mg', 'Evening', '2025-03-01', '2025-03-20', ''),
(22, 22, 22, '50mg', 'Daily', '2025-03-05', '2025-03-25', ''),
(23, 23, 23, '5mg', 'Night', '2025-04-01', '2025-04-10', ''),
(24, 24, 24, '0.4mg', 'Morning', '2025-04-15', '2025-04-30', ''),
(25, 25, 25, '100mg', 'Twice a day', '2025-05-01', '2025-05-15', ''),
(26, 26, 26, '10mg', 'Every night', '2025-05-05', '2025-05-20', ''),
(27, 27, 27, '15mg', 'Once daily', '2025-06-01', '2025-06-15', ''),
(28, 28, 28, '150mg', 'Once daily', '2025-07-01', '2025-07-10', ''),
(29, 29, 29, '100U/mL', 'Inject once daily', '2025-07-15', '2025-08-01', ''),
(30, 30, 30, '50mg', 'Every morning', '2025-08-01', '2025-08-20', '');
GO


SELECT PrescriptionID, PatientID, DoctorID, MedicationID, Dosage, Frequency, StartDate, EndDate
FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP;
GO


CREATE TABLE Pharmacy_ProfG_FP.Pharmacist_ProfG_FP (
    PharmacistID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    LicenseNumber VARCHAR(20) NOT NULL UNIQUE,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    HireDate DATE,
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE()
);
GO

INSERT INTO Pharmacy_ProfG_FP.Pharmacist_ProfG_FP 
(FirstName, LastName, LicenseNumber, Phone, Email, HireDate)
VALUES
('Alan', 'Walker', 'LIC001', '555-101-1001', 'alan.walker@example.com', '2020-01-01'),
('Beth', 'Hill', 'LIC002', '555-102-1002', 'beth.hill@example.com', '2020-02-01'),
('Carl', 'Young', 'LIC003', '555-103-1003', 'carl.young@example.com', '2020-03-01'),
('Diana', 'Stone', 'LIC004', '555-104-1004', 'diana.stone@example.com', '2020-04-01'),
('Ethan', 'Frost', 'LIC005', '555-105-1005', 'ethan.frost@example.com', '2020-05-01'),
('Fiona', 'Grant', 'LIC006', '555-106-1006', 'fiona.grant@example.com', '2020-06-01'),
('George', 'Knight', 'LIC007', '555-107-1007', 'george.knight@example.com', '2020-07-01'),
('Hannah', 'Stone', 'LIC008', '555-108-1008', 'hannah.stone@example.com', '2020-08-01'),
('Isaac', 'Page', 'LIC009', '555-109-1009', 'isaac.page@example.com', '2020-09-01'),
('Julia', 'Drew', 'LIC010', '555-110-1010', 'julia.drew@example.com', '2020-10-01'),
('Kevin', 'Ross', 'LIC011', '555-111-1011', 'kevin.ross@example.com', '2020-11-01'),
('Laura', 'Nash', 'LIC012', '555-112-1012', 'laura.nash@example.com', '2020-12-01'),
('Matt', 'Perry', 'LIC013', '555-113-1013', 'matt.perry@example.com', '2021-01-01'),
('Nina', 'Gale', 'LIC014', '555-114-1014', 'nina.gale@example.com', '2021-02-01'),
('Oscar', 'West', 'LIC015', '555-115-1015', 'oscar.west@example.com', '2021-03-01'),
('Paula', 'Chase', 'LIC016', '555-116-1016', 'paula.chase@example.com', '2021-04-01'),
('Quincy', 'Long', 'LIC017', '555-117-1017', 'quincy.long@example.com', '2021-05-01'),
('Rita', 'Fox', 'LIC018', '555-118-1018', 'rita.fox@example.com', '2021-06-01'),
('Sam', 'Blake', 'LIC019', '555-119-1019', 'sam.blake@example.com', '2021-07-01'),
('Tina', 'Zane', 'LIC020', '555-120-1020', 'tina.zane@example.com', '2021-08-01'),
('Uma', 'Wells', 'LIC021', '555-121-1021', 'uma.wells@example.com', '2021-09-01'),
('Victor', 'Doyle', 'LIC022', '555-122-1022', 'victor.doyle@example.com', '2021-10-01'),
('Wendy', 'Stone', 'LIC023', '555-123-1023', 'wendy.stone@example.com', '2021-11-01'),
('Xander', 'Quinn', 'LIC024', '555-124-1024', 'xander.quinn@example.com', '2021-12-01'),
('Yasmin', 'Lee', 'LIC025', '555-125-1025', 'yasmin.lee@example.com', '2022-01-01'),
('Zack', 'Ford', 'LIC026', '555-126-1026', 'zack.ford@example.com', '2022-02-01'),
('Abby', 'Shaw', 'LIC027', '555-127-1027', 'abby.shaw@example.com', '2022-03-01'),
('Brian', 'Cole', 'LIC028', '555-128-1028', 'brian.cole@example.com', '2022-04-01'),
('Cindy', 'Marx', 'LIC029', '555-129-1029', 'cindy.marx@example.com', '2022-05-01'),
('Derek', 'Ng', 'LIC030', '555-130-1030', 'derek.ng@example.com', '2022-06-01');
GO

SELECT PharmacistID, FirstName, LastName, LicenseNumber, Phone, Email, HireDate
FROM Pharmacy_ProfG_FP.Pharmacist_ProfG_FP;
GO


CREATE TABLE Pharmacy_ProfG_FP.Inventory_ProfG_FP (
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,
    MedicationID INT NOT NULL,
    QuantityInStock INT NOT NULL,
    LastRestocked DATE,
    ExpirationDate DATE,
    StorageLocation VARCHAR(100),
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE(),
    FOREIGN KEY (MedicationID) REFERENCES Pharmacy_ProfG_FP.Medication_ProfG_FP(MedicationID)
);
GO

INSERT INTO Pharmacy_ProfG_FP.Inventory_ProfG_FP 
(MedicationID, QuantityInStock, LastRestocked, ExpirationDate, StorageLocation)
VALUES
(1, 150, '2025-04-01', '2026-04-01', 'Aisle 1'),
(2, 200, '2025-03-15', '2026-03-15', 'Aisle 1'),
(3, 180, '2025-03-20', '2026-03-20', 'Aisle 1'),
(4, 220, '2025-02-10', '2026-02-10', 'Aisle 2'),
(5, 170, '2025-01-25', '2026-01-25', 'Aisle 2'),
(6, 190, '2025-04-10', '2026-04-10', 'Aisle 2'),
(7, 160, '2025-04-12', '2026-04-12', 'Aisle 3'),
(8, 210, '2025-03-30', '2026-03-30', 'Aisle 3'),
(9, 140, '2025-03-05', '2026-03-05', 'Aisle 3'),
(10, 230, '2025-02-28', '2026-02-28', 'Aisle 4'),
(11, 185, '2025-04-05', '2026-04-05', 'Aisle 4'),
(12, 200, '2025-04-08', '2026-04-08', 'Aisle 4'),
(13, 195, '2025-03-22', '2026-03-22', 'Aisle 5'),
(14, 170, '2025-03-12', '2026-03-12', 'Aisle 5'),
(15, 160, '2025-02-15', '2026-02-15', 'Aisle 5'),
(16, 180, '2025-02-18', '2026-02-18', 'Aisle 6'),
(17, 175, '2025-03-25', '2026-03-25', 'Aisle 6'),
(18, 190, '2025-04-15', '2026-04-15', 'Aisle 6'),
(19, 200, '2025-04-20', '2026-04-20', 'Aisle 7'),
(20, 210, '2025-03-10', '2026-03-10', 'Aisle 7'),
(21, 195, '2025-02-12', '2026-02-12', 'Aisle 7'),
(22, 220, '2025-02-20', '2026-02-20', 'Aisle 8'),
(23, 160, '2025-03-18', '2026-03-18', 'Aisle 8'),
(24, 155, '2025-04-02', '2026-04-02', 'Aisle 8'),
(25, 230, '2025-03-01', '2026-03-01', 'Aisle 9'),
(26, 225, '2025-02-22', '2026-02-22', 'Aisle 9'),
(27, 170, '2025-03-28', '2026-03-28', 'Aisle 9'),
(28, 190, '2025-04-18', '2026-04-18', 'Aisle 10'),
(29, 250, '2025-03-07', '2026-03-07', 'Aisle 10'),
(30, 240, '2025-03-17', '2026-03-17', 'Aisle 10');
GO

SELECT InventoryID, MedicationID, QuantityInStock, LastRestocked, ExpirationDate, StorageLocation
FROM Pharmacy_ProfG_FP.Inventory_ProfG_FP;
GO


CREATE TABLE Pharmacy_ProfG_FP.Transaction_ProfG_FP (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    PrescriptionID INT NOT NULL,
    PharmacistID INT NOT NULL,
    PaymentMethod VARCHAR(50),
    TotalAmount DECIMAL(10,2),
    TransactionDate DATETIME DEFAULT GETUTCDATE(),
    FOREIGN KEY (PrescriptionID) REFERENCES Pharmacy_ProfG_FP.Prescription_ProfG_FP(PrescriptionID),
    FOREIGN KEY (PharmacistID) REFERENCES Pharmacy_ProfG_FP.Pharmacist_ProfG_FP(PharmacistID)
);
GO

INSERT INTO Pharmacy_ProfG_FP.Transaction_ProfG_FP 
(PrescriptionID, PharmacistID, PaymentMethod, TotalAmount, TransactionDate)
VALUES
(1, 1, 'Credit Card', 25.00, '2025-01-01'),
(2, 2, 'Cash', 10.00, '2025-02-01'),
(3, 3, 'Insurance', 5.00, '2025-03-01'),
(4, 4, 'Credit Card', 20.00, '2025-01-20'),
(5, 5, 'Cash', 15.00, '2025-03-05'),
(6, 6, 'Insurance', 12.00, '2025-04-05'),
(7, 7, 'Cash', 8.50, '2025-05-10'),
(8, 8, 'Credit Card', 18.75, '2025-05-15'),
(9, 9, 'Cash', 7.25, '2025-06-05'),
(10, 10, 'Credit Card', 23.99, '2025-06-15'),
(11, 11, 'Cash', 16.45, '2025-07-10'),
(12, 12, 'Insurance', 13.99, '2025-08-01'),
(13, 13, 'Cash', 14.35, '2025-09-01'),
(14, 14, 'Credit Card', 20.00, '2025-10-01'),
(15, 15, 'Credit Card', 10.00, '2025-11-01'),
(16, 16, 'Insurance', 9.90, '2025-12-01'),
(17, 17, 'Cash', 8.80, '2025-12-10'),
(18, 18, 'Credit Card', 11.45, '2025-01-15'),
(19, 19, 'Cash', 13.20, '2025-01-20'),
(20, 20, 'Insurance', 17.00, '2025-02-10'),
(21, 21, 'Credit Card', 9.75, '2025-03-01'),
(22, 22, 'Cash', 10.50, '2025-03-10'),
(23, 23, 'Insurance', 15.30, '2025-04-01'),
(24, 24, 'Cash', 12.40, '2025-04-20'),
(25, 25, 'Credit Card', 19.60, '2025-05-05'),
(26, 26, 'Cash', 16.25, '2025-05-10'),
(27, 27, 'Insurance', 14.00, '2025-06-01'),
(28, 28, 'Credit Card', 22.30, '2025-07-01'),
(29, 29, 'Cash', 17.90, '2025-07-15'),
(30, 30, 'Insurance', 20.00, '2025-08-01');
GO

SELECT TransactionID, PrescriptionID, PharmacistID, PaymentMethod, TotalAmount, TransactionDate
FROM Pharmacy_ProfG_FP.Transaction_ProfG_FP;
GO


CREATE TABLE Pharmacy_ProfG_FP.Payment_ProfG_FP (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    PrescriptionID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    AmountPaid DECIMAL(10,2) NOT NULL,
    InsuranceUsed BIT DEFAULT 0,
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE(),
    FOREIGN KEY (PrescriptionID) REFERENCES Pharmacy_ProfG_FP.Prescription_ProfG_FP(PrescriptionID)
);
GO


INSERT INTO Pharmacy_ProfG_FP.Payment_ProfG_FP
(PrescriptionID, PaymentDate, PaymentMethod, AmountPaid, InsuranceUsed)
VALUES
(1, '2025-04-01', 'Credit Card', 24.99, 1),
(2, '2025-04-02', 'Cash', 8.99, 0),
(3, '2025-04-03', 'Debit Card', 15.25, 1),
(4, '2025-04-04', 'Credit Card', 11.00, 1),
(5, '2025-04-05', 'Insurance', 0.00, 1),
(6, '2025-04-06', 'Cash', 13.75, 0),
(7, '2025-04-07', 'Credit Card', 9.50, 0),
(8, '2025-04-08', 'Debit Card', 10.10, 1),
(9, '2025-04-09', 'Cash', 12.00, 0),
(10, '2025-04-10', 'Insurance', 0.00, 1),
(11, '2025-04-11', 'Credit Card', 17.99, 0),
(12, '2025-04-12', 'Cash', 8.45, 0),
(13, '2025-04-13', 'Debit Card', 14.20, 1),
(14, '2025-04-14', 'Insurance', 0.00, 1),
(15, '2025-04-15', 'Credit Card', 16.50, 0),
(16, '2025-04-16', 'Cash', 12.99, 1),
(17, '2025-04-17', 'Debit Card', 11.80, 1),
(18, '2025-04-18', 'Credit Card', 9.30, 0),
(19, '2025-04-19', 'Cash', 14.00, 0),
(20, '2025-04-20', 'Insurance', 0.00, 1),
(21, '2025-04-21', 'Credit Card', 13.50, 0),
(22, '2025-04-22', 'Cash', 10.75, 1),
(23, '2025-04-23', 'Debit Card', 18.25, 0),
(24, '2025-04-24', 'Credit Card', 9.60, 0),
(25, '2025-04-25', 'Cash', 12.20, 0),
(26, '2025-04-26', 'Insurance', 0.00, 1),
(27, '2025-04-27', 'Credit Card', 11.10, 1),
(28, '2025-04-28', 'Cash', 13.95, 0),
(29, '2025-04-29', 'Debit Card', 10.99, 0),
(30, '2025-04-30', 'Credit Card', 15.80, 1);
GO

SELECT PaymentID, PrescriptionID, PaymentDate, PaymentMethod, AmountPaid, InsuranceUsed
FROM Pharmacy_ProfG_FP.Payment_ProfG_FP;
GO


CREATE TABLE Pharmacy_ProfG_FP.Appointment_ProfG_FP (
    AppointmentID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Purpose VARCHAR(255),
    Status VARCHAR(50) CHECK(Status IN ('Scheduled', 'Completed', 'Cancelled')) DEFAULT 'Scheduled',
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE(),
    FOREIGN KEY (PatientID) REFERENCES Pharmacy_ProfG_FP.Patient_ProfG_FP(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Pharmacy_ProfG_FP.Doctor_ProfG_FP(DoctorID)
);
GO

INSERT INTO Pharmacy_ProfG_FP.Appointment_ProfG_FP 
(PatientID, DoctorID, AppointmentDate, Purpose, Status)
VALUES
(1, 1, '2025-05-06 10:00:00', 'Follow-up', 'Completed'),
(2, 2, '2025-05-07 11:00:00', 'Routine Checkup', 'Completed'),
(3, 3, '2025-05-08 14:00:00', 'Blood Pressure', 'Scheduled'),
(4, 4, '2025-05-09 09:00:00', 'Prescription Renewal', 'Completed'),
(5, 5, '2025-05-10 13:00:00', 'Skin Rash', 'Cancelled'),
(6, 6, '2025-05-11 15:00:00', 'Stomach Pain', 'Scheduled'),
(7, 7, '2025-05-12 16:00:00', 'Hormone Imbalance', 'Completed'),
(8, 8, '2025-05-13 10:00:00', 'Psych Evaluation', 'Completed'),
(9, 9, '2025-05-14 08:30:00', 'Kidney Scan', 'Scheduled'),
(10, 10, '2025-05-15 12:00:00', 'Allergy Test', 'Cancelled'),
(11, 11, '2025-05-16 13:30:00', 'Blood Work', 'Completed'),
(12, 12, '2025-05-17 11:00:00', 'Chest Pain', 'Scheduled'),
(13, 13, '2025-05-18 09:00:00', 'Liver Function', 'Completed'),
(14, 14, '2025-05-19 14:00:00', 'Thyroid Check', 'Completed'),
(15, 15, '2025-05-20 10:30:00', 'CT Scan', 'Scheduled'),
(16, 16, '2025-05-21 12:30:00', 'Cholesterol Check', 'Completed'),
(17, 17, '2025-05-22 14:30:00', 'General Exam', 'Scheduled'),
(18, 18, '2025-05-23 10:00:00', 'Back Pain', 'Cancelled'),
(19, 19, '2025-05-24 09:45:00', 'Cough & Cold', 'Completed'),
(20, 20, '2025-05-25 15:00:00', 'Surgery Follow-up', 'Scheduled'),
(21, 21, '2025-05-26 11:00:00', 'Joint Pain', 'Completed'),
(22, 22, '2025-05-27 13:00:00', 'Sleep Issues', 'Scheduled'),
(23, 23, '2025-05-28 14:15:00', 'Vaccination', 'Completed'),
(24, 24, '2025-05-29 10:00:00', 'Vision Test', 'Completed'),
(25, 25, '2025-05-30 09:30:00', 'Infection', 'Scheduled'),
(26, 26, '2025-05-31 10:30:00', 'Fever', 'Scheduled'),
(27, 27, '2025-06-01 12:00:00', 'Fatigue', 'Completed'),
(28, 28, '2025-06-02 13:15:00', 'Weight Loss', 'Completed'),
(29, 29, '2025-06-03 11:45:00', 'Digestive Issues', 'Cancelled'),
(30, 30, '2025-06-04 14:30:00', 'Wound Check', 'Scheduled');
GO


SELECT AppointmentID, PatientID, DoctorID, AppointmentDate, Purpose, Status
FROM Pharmacy_ProfG_FP.Appointment_ProfG_FP;
GO


CREATE TABLE Pharmacy_ProfG_FP.Insurance_ProfG_FP (
    InsuranceID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL,
    ProviderName VARCHAR(100) NOT NULL,
    PolicyNumber VARCHAR(50) NOT NULL UNIQUE,
    CoverageStartDate DATE,
    CoverageEndDate DATE,
    PlanType VARCHAR(50),
    Create_dt DATETIME NOT NULL DEFAULT GETUTCDATE(),
    FOREIGN KEY (PatientID) REFERENCES Pharmacy_ProfG_FP.Patient_ProfG_FP(PatientID)
);
GO


INSERT INTO Pharmacy_ProfG_FP.Insurance_ProfG_FP 
(PatientID, ProviderName, PolicyNumber, CoverageStartDate, CoverageEndDate, PlanType)
VALUES
(1, 'HealthFirst', 'HF001', '2023-01-01', '2025-01-01', 'Gold'),
(2, 'UnitedHealth', 'UH002', '2023-02-01', '2025-02-01', 'Silver'),
(3, 'BlueCross', 'BC003', '2023-03-01', '2025-03-01', 'Bronze'),
(4, 'Aetna', 'AE004', '2023-04-01', '2025-04-01', 'Gold'),
(5, 'Cigna', 'CI005', '2023-05-01', '2025-05-01', 'Platinum'),
(6, 'Kaiser', 'KP006', '2023-06-01', '2025-06-01', 'Silver'),
(7, 'Oscar', 'OS007', '2023-07-01', '2025-07-01', 'Bronze'),
(8, 'Molina', 'MO008', '2023-08-01', '2025-08-01', 'Gold'),
(9, 'HealthFirst', 'HF009', '2023-09-01', '2025-09-01', 'Silver'),
(10, 'UnitedHealth', 'UH010', '2023-10-01', '2025-10-01', 'Gold'),
(11, 'BlueCross', 'BC011', '2023-11-01', '2025-11-01', 'Platinum'),
(12, 'Aetna', 'AE012', '2023-12-01', '2025-12-01', 'Gold'),
(13, 'Cigna', 'CI013', '2024-01-01', '2026-01-01', 'Silver'),
(14, 'Kaiser', 'KP014', '2024-02-01', '2026-02-01', 'Bronze'),
(15, 'Oscar', 'OS015', '2024-03-01', '2026-03-01', 'Gold'),
(16, 'Molina', 'MO016', '2024-04-01', '2026-04-01', 'Silver'),
(17, 'HealthFirst', 'HF017', '2024-05-01', '2026-05-01', 'Bronze'),
(18, 'UnitedHealth', 'UH018', '2024-06-01', '2026-06-01', 'Gold'),
(19, 'BlueCross', 'BC019', '2024-07-01', '2026-07-01', 'Silver'),
(20, 'Aetna', 'AE020', '2024-08-01', '2026-08-01', 'Platinum'),
(21, 'Cigna', 'CI021', '2024-09-01', '2026-09-01', 'Gold'),
(22, 'Kaiser', 'KP022', '2024-10-01', '2026-10-01', 'Silver'),
(23, 'Oscar', 'OS023', '2024-11-01', '2026-11-01', 'Bronze'),
(24, 'Molina', 'MO024', '2024-12-01', '2026-12-01', 'Gold'),
(25, 'HealthFirst', 'HF025', '2025-01-01', '2027-01-01', 'Platinum'),
(26, 'UnitedHealth', 'UH026', '2025-02-01', '2027-02-01', 'Silver'),
(27, 'BlueCross', 'BC027', '2025-03-01', '2027-03-01', 'Gold'),
(28, 'Aetna', 'AE028', '2025-04-01', '2027-04-01', 'Silver'),
(29, 'Cigna', 'CI029', '2025-05-01', '2027-05-01', 'Bronze'),
(30, 'Kaiser', 'KP030', '2025-06-01', '2027-06-01', 'Gold');
GO

SELECT InsuranceID, PatientID, ProviderName, PolicyNumber, CoverageStartDate, CoverageEndDate, PlanType
FROM Pharmacy_ProfG_FP.Insurance_ProfG_FP;
GO


-- Alter columns in Patient table to apply masking
ALTER TABLE Pharmacy_ProfG_FP.Patient_ProfG_FP
ALTER COLUMN SSN ADD MASKED WITH (FUNCTION = 'partial(0,"XXX-XX-",4)');
GO

ALTER TABLE Pharmacy_ProfG_FP.Patient_ProfG_FP
ALTER COLUMN FirstName ADD MASKED WITH (FUNCTION = 'partial(1,"*",1)');
GO

-- Create secure view to test masking behavior
CREATE OR ALTER VIEW Pharmacy_ProfG_FP.vw_PatientMasked_ProfG_FP
AS
SELECT 
    PatientID,
    FirstName,
    LastName,
    SSN,
    DOB,
    Sex
FROM Pharmacy_ProfG_FP.Patient_ProfG_FP;
GO

SELECT * FROM Pharmacy_ProfG_FP.vw_PatientMasked_ProfG_FP;
GO


CREATE OR ALTER PROCEDURE Pharmacy_ProfG_FP.sp_AddPrescription_ProfG_FP
    @PatientID INT,
    @DoctorID INT,
    @MedicationID INT,
    @Dosage VARCHAR(50),
    @Frequency VARCHAR(50),
    @StartDate DATE,
    @EndDate DATE,
    @Notes VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Pharmacy_ProfG_FP.Prescription_ProfG_FP
        (PatientID, DoctorID, MedicationID, Dosage, Frequency, StartDate, EndDate, Notes)
        VALUES
        (@PatientID, @DoctorID, @MedicationID, @Dosage, @Frequency, @StartDate, @EndDate, @Notes);

        COMMIT TRANSACTION;
        PRINT 'Prescription successfully added.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error occurred while adding prescription:';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
GO


EXEC Pharmacy_ProfG_FP.sp_AddPrescription_ProfG_FP
    @PatientID = 1,
    @DoctorID = 1,
    @MedicationID = 1,
    @Dosage = '250mg',
    @Frequency = 'Once Daily',
    @StartDate = '2025-05-10',
    @EndDate = '2025-05-20',
    @Notes = 'Prescribed for follow-up infection';
GO

SELECT TOP 1 PrescriptionID, PatientID, DoctorID, MedicationID, Dosage, StartDate, EndDate
FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP
ORDER BY PrescriptionID DESC;
GO



CREATE TABLE Pharmacy_ProfG_FP.AuditLog_ProfG_FP (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    ActionType VARCHAR(10),
    TableName VARCHAR(100),
    RecordID INT,
    ChangeDate DATETIME DEFAULT GETDATE()
);
GO


CREATE OR ALTER TRIGGER Pharmacy_ProfG_FP.trg_PrescriptionAudit_ProfG_FP
ON Pharmacy_ProfG_FP.Prescription_ProfG_FP
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT * FROM INSERTED) AND NOT EXISTS (SELECT * FROM DELETED)
    BEGIN
        -- Insert action
        INSERT INTO Pharmacy_ProfG_FP.AuditLog_ProfG_FP (ActionType, TableName, RecordID)
        SELECT 'INSERT', 'Prescription_ProfG_FP', PrescriptionID FROM INSERTED;
    END
    ELSE IF EXISTS (SELECT * FROM INSERTED) AND EXISTS (SELECT * FROM DELETED)
    BEGIN
        -- Update action
        INSERT INTO Pharmacy_ProfG_FP.AuditLog_ProfG_FP (ActionType, TableName, RecordID)
        SELECT 'UPDATE', 'Prescription_ProfG_FP', PrescriptionID FROM INSERTED;
    END
    ELSE IF EXISTS (SELECT * FROM DELETED) AND NOT EXISTS (SELECT * FROM INSERTED)
    BEGIN
        -- Delete action
        INSERT INTO Pharmacy_ProfG_FP.AuditLog_ProfG_FP (ActionType, TableName, RecordID)
        SELECT 'DELETE', 'Prescription_ProfG_FP', PrescriptionID FROM DELETED;
    END
END;
GO

UPDATE Pharmacy_ProfG_FP.Prescription_ProfG_FP
SET Dosage = '275mg'
WHERE PrescriptionID = (
    SELECT TOP 1 PrescriptionID FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP ORDER BY PrescriptionID DESC
);
GO

DELETE FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP
WHERE PrescriptionID = (
    SELECT TOP 1 PrescriptionID FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP ORDER BY PrescriptionID DESC
);
GO


SELECT * FROM Pharmacy_ProfG_FP.AuditLog_ProfG_FP;
GO


CREATE OR ALTER FUNCTION Pharmacy_ProfG_FP.fn_CalculatePatientAge_ProfG_FP
(
    @DOB DATE
)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
    SET @Age = DATEDIFF(YEAR, @DOB, GETDATE());
    IF (MONTH(@DOB) > MONTH(GETDATE()) OR (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE())))
        SET @Age = @Age - 1;
    RETURN @Age;
END;
GO


SELECT 
    PatientID,
    FirstName,
    LastName,
    DOB,
    (DOB) AS Age
FROM Pharmacy_ProfG_FP.Patient_ProfG_FP;
GO


-- Include patient, doctor, and medication info
SELECT
    P.PrescriptionID,
    Pt.FirstName + ' ' + Pt.LastName AS PatientName,
    D.FirstName + ' ' + D.LastName AS DoctorName,
    M.Name AS MedicationName,
    P.Dosage,
    P.Frequency,
    P.StartDate,
    P.EndDate,
    P.Notes
FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP P
JOIN Pharmacy_ProfG_FP.Patient_ProfG_FP Pt ON P.PatientID = Pt.PatientID
JOIN Pharmacy_ProfG_FP.Doctor_ProfG_FP D ON P.DoctorID = D.DoctorID
JOIN Pharmacy_ProfG_FP.Medication_ProfG_FP M ON P.MedicationID = M.MedicationID
FOR JSON AUTO, INCLUDE_NULL_VALUES;
GO


-- Index for searching patients by LastName
CREATE NONCLUSTERED INDEX IX_Patient_LastName
ON Pharmacy_ProfG_FP.Patient_ProfG_FP(LastName);
GO

-- Index for fast lookup by Prescription StartDate
CREATE NONCLUSTERED INDEX IX_Prescription_StartDate
ON Pharmacy_ProfG_FP.Prescription_ProfG_FP(StartDate);
GO

-- Index for Medication Name filtering
CREATE NONCLUSTERED INDEX IX_Medication_Name
ON Pharmacy_ProfG_FP.Medication_ProfG_FP(Name);
GO

-- Index on Appointment Date
CREATE NONCLUSTERED INDEX IX_Appointment_Date
ON Pharmacy_ProfG_FP.Appointment_ProfG_FP(AppointmentDate);
GO

SELECT PrescriptionID, StartDate, EndDate
FROM Pharmacy_ProfG_FP.Prescription_ProfG_FP
WHERE StartDate >= '2025-01-01';
GO


-- Drop and recreate Inventory with temporal support
IF OBJECT_ID('Pharmacy_ProfG_FP.Inventory_ProfG_FP', 'U') IS NOT NULL
    DROP TABLE Pharmacy_ProfG_FP.Inventory_ProfG_FP;
GO

CREATE TABLE Pharmacy_ProfG_FP.Inventory_ProfG_FP (
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,
    MedicationID INT NOT NULL,
    QuantityInStock INT NOT NULL,
    LastRestocked DATE,
    ExpirationDate DATE,
    StorageLocation VARCHAR(100),
    Create_dt DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL DEFAULT SYSUTCDATETIME(),
    Modified_dt DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL DEFAULT SYSUTCDATETIME(),
    PERIOD FOR SYSTEM_TIME (Create_dt, Modified_dt),
    FOREIGN KEY (MedicationID) REFERENCES Pharmacy_ProfG_FP.Medication_ProfG_FP(MedicationID)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = Pharmacy_ProfG_FP.Inventory_History_ProfG_FP));
GO

-- Reinsert sample data into temporal Inventory table
INSERT INTO Pharmacy_ProfG_FP.Inventory_ProfG_FP 
(MedicationID, QuantityInStock, LastRestocked, ExpirationDate, StorageLocation)
VALUES
(1, 150, '2025-04-01', '2026-04-01', 'Aisle 1'),
(2, 200, '2025-03-15', '2026-03-15', 'Aisle 1'),
(3, 180, '2025-03-20', '2026-03-20', 'Aisle 1'),
(4, 220, '2025-02-10', '2026-02-10', 'Aisle 2'),
(5, 170, '2025-01-25', '2026-01-25', 'Aisle 2'),
(6, 190, '2025-04-10', '2026-04-10', 'Aisle 2');
GO

-- Update inventory to generate history
UPDATE Pharmacy_ProfG_FP.Inventory_ProfG_FP
SET QuantityInStock = 145
WHERE InventoryID = 1;
GO

