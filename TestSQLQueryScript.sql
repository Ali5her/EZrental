INSERT INTO DriverLicense VALUES ('A11111111111111', DATE '2025-01-01', 'NJ');
INSERT INTO DriverLicense VALUES ('222222222', DATE '2029-02-02', 'NY');
INSERT INTO DriverLicense VALUES ('333333333', DATE '2026-03-03', 'NY');
INSERT INTO DriverLicense VALUES ('44444444', DATE '2028-04-04', 'PA');
INSERT INTO DriverLicense VALUES ('555555555', DATE '2025-05-05', 'CT');
INSERT INTO DriverLicense VALUES ('666666666', DATE '2026-06-06', 'NY');
INSERT INTO DriverLicense VALUES ('777777777', DATE '2027-07-07', 'NY');
select * from Driverlicense
 
 
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'jsmith', 'Joey&1111', 'jsmith@pmail.com');
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'agomez', 'SoundSource@1525', 'agomez@arodcorp.com');
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'speterson', 'TechDev_101', 'speterson@coldmail.com');
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'mjohnson', 'Rose042484', 'mjohnson@inlook.com');
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'nrivera', 'LaGata555', 'nrivera@xfactorsystems.com');
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'asavage', 'LoveMoney666', 'abatista@acurateaccounting.com');
INSERT INTO CustomerUserAccount VALUES (SYS_GUID(), 'fhum', 'BestPhotos777', 'fhum@pmail.com');
select * from CustomerUserAccount;
 
 
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (1, 'Stax by Fattmerchant');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (2, 'Helcim');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (3, 'Dharma Merchant Services');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (4, 'Payment Depot');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (5, 'National Processing');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (6, 'Block');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (7, 'Intuit Quickbooks');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (8, 'PayPal');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (9, 'Stripe');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (10, 'Flagship Merchant Services');
INSERT INTO CC_ProcessingMerchantSvcCo VALUES (11, 'Clover');
SELECT * FROM CC_PROCESSINGMERCHANTSVCCO;





 
INSERT INTO CreditCardNetworkCompany VALUES (1, 'American Express');
INSERT INTO CreditCardNetworkCompany VALUES (2, 'Visa');
INSERT INTO CreditCardNetworkCompany VALUES (3, 'Mastercard');
INSERT INTO CreditCardNetworkCompany VALUES (4, 'Discover');
INSERT INTO CreditCardNetworkCompany VALUES (5, 'Diners Club');
INSERT INTO CreditCardNetworkCompany VALUES (6, 'Interlink');
INSERT INTO CreditCardNetworkCompany VALUES (7, 'Star');
INSERT INTO CreditCardNetworkCompany VALUES (8, 'Accel');
INSERT INTO CreditCardNetworkCompany VALUES (9, 'Interac');
INSERT INTO CreditCardNetworkCompany VALUES (10, 'Visa ReadyLink');
INSERT INTO CreditCardNetworkCompany VALUES (11, 'Pulse');
INSERT INTO CreditCardNetworkCompany VALUES (12, 'JCB (Japan Credit Bureau)');
INSERT INTO CreditCardNetworkCompany VALUES (13, 'Rupay');
SELECT * 
FROM CREDITCARDNETWORKCOMPANY;
 
 
INSERT INTO CreditCardIssuingBank VALUES (1, 'American Express');
INSERT INTO CreditCardIssuingBank VALUES (2, 'Bank of America');
INSERT INTO CreditCardIssuingBank VALUES (3, 'Barclays');
INSERT INTO CreditCardIssuingBank VALUES (4, 'Capital One');
INSERT INTO CreditCardIssuingBank VALUES (5, 'Chase');
INSERT INTO CreditCardIssuingBank VALUES (6, 'Citi');
INSERT INTO CreditCardIssuingBank VALUES (7, 'Discover');
INSERT INTO CreditCardIssuingBank VALUES (8, 'Synchrony Bank');
INSERT INTO CreditCardIssuingBank VALUES (9, 'U.S. Bank');
INSERT INTO CreditCardIssuingBank VALUES (10, 'Wells Fargo');
SELECT * FROM CREDITCARDISSUINGBANK;
 
 
INSERT INTO CC_CorpMerchantBank VALUES (1, 'Chase');
INSERT INTO CC_CorpMerchantBank VALUES (2, 'Citi');
INSERT INTO CC_CorpMerchantBank VALUES (3, 'Capital One');
SELECT * FROM CC_CORPMERCHANTBANK;
 



INSERT INTO Discount VALUES (1, 'AAA9970054', 'AAA Membership Discount - 25% off base rate plus 10% donated for breast cancer research');
INSERT INTO Discount VALUES (2, 'GOV8756921', 'Government Employee Discount - 30% off base rate');
INSERT INTO Discount VALUES (3, 'STA3415632', 'State Employee Discount for 25% off base rate');
INSERT INTO Discount VALUES (4, 'VET2055179', 'Veteran Discount 35% off base rate Plus 10% donation to veteran’s family fund.');
INSERT INTO Discount VALUES (5, 'PMD3759905', 'Prime Membership Discount');
SELECT * FROM DISCOUNT;
 
 
INSERT INTO Company VALUES (
    1001, 'Acme Corporation', '123 Main Street', 'Suite 100', 'New York', 'NY', '10001', 
    'UNITED STATES', 'John Smith', '212-555-1234', 'jsmith@acme.com', 15.00);
INSERT INTO Company VALUES (
    1002, 'Tech Solutions Inc.', '456 Tech Drive', NULL, 'Jersey City', 'NJ', '07302',
    'UNITED STATES', 'Maria Rodriguez', '201-555-5678', 'mrodriguez@techsolutions.com', 20.00);
INSERT INTO Company VALUES (
    1003, 'Global Logistics LLC', '789 Commerce Blvd', 'Building C', 'Philadelphia', 'PA', 
    '19103', 'UNITED STATES', 'Robert Chen', '215-555-9012', 'rchen@globallogistics.com', 10.00);
INSERT INTO Company VALUES (
    1004, 'Precision Manufacturing', '321 Industrial Way', NULL, 'Stamford', 'CT', '06902', 
    'UNITED STATES', 'Sarah Johnson', '203-555-3456', 'sjohnson@precisionmfg.com', 25.00);
INSERT INTO Company VALUES (
    1005, 'Healthcare Partners', '654 Medical Center Drive', 'Floor 3', 'Albany', 'NY', '12207',
    'UNITED STATES', 'Dr. Michael Wong', '518-555-7890', 'mwong@healthcarepartners.com', 18.00);
SELECT * FROM COMPANY;
 
 
INSERT INTO Customer VALUES (
    10001,'Joey','Smith',DATE '1990-05-15','123 Oak Street','Apt 2B','New York',
    'NY','10001','UNITED STATES','212-111-2222','jsmith@pmail.com','A11111111111111',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'jsmith'),'R');
INSERT INTO Customer VALUES (
    10002,'Ana','Gomez',DATE '1985-08-22','456 Maple Avenue',NULL,
    'Jersey City','NJ','07302','UNITED STATES','201-222-3333','agomez@arodcorp.com','222222222',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'agomez'),'C');
INSERT INTO Customer VALUES (
    10003,'Sam','Peterson',DATE '1992-03-10','789 Pine Road','Unit 5','Albany',
    'NY','12207','UNITED STATES','518-333-4444','speterson@coldmail.com','333333333',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'speterson'),'R');
INSERT INTO Customer VALUES (
    10004,'Mary','Johnson',DATE '1984-04-24','321 Birch Lane',NULL,
    'Philadelphia','PA','19103','UNITED STATES','215-444-5555','mjohnson@inlook.com','44444444',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'mjohnson'),'R');
INSERT INTO Customer VALUES (
    10005,'Nina','Rivera',DATE '1991-11-30','654 Cedar Court','Apt 3C','Stamford',
    'CT','06902','UNITED STATES','203-555-6666','nrivera@xfactorsystems.com','555555555',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'nrivera'),'C');
INSERT INTO Customer VALUES (
    10006,'Alex','Savage',DATE '1988-07-18','987 Elm Street','Suite 200','New York',
    'NY','10016','UNITED STATES','212-666-7777','abatista@acurateaccounting.com','666666666',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'asavage'),'C');
INSERT INTO Customer VALUES (
    10007,'Frank','Hum',DATE '1993-12-05','147 Walnut Avenue','Apt 1A',
    'Buffalo','NY','14201','UNITED STATES','716-777-8888','fhum@pmail.com','777777777',
    (SELECT CustomerUserAccountID FROM CustomerUserAccount WHERE Username = 'fhum'),'R');
SELECT * FROM Customer;
 
 
 
INSERT INTO CreditCard VALUES (
    '4111111111111111','JOEY SMITH',
    1,  -- Stax by Fattmerchant
    2,  -- Visa
    5,  -- Chase
    1,  -- Chase (corp merchant bank)
    DATE '2027-12-31','123 Oak Street',
    'Apt 2B','New York','NY','10001','UNITED STATES',10000.00,8500.00,1);
INSERT INTO CreditCard VALUES (
    '5555555555554444','ANA GOMEZ',
    9,  -- Stripe
    3,  -- Mastercard
    4,  -- Capital One
    3,  -- Capital One (corp merchant bank)
    DATE '2028-06-30','456 Maple Avenue',
    NULL,'Jersey City','NJ','07302','UNITED STATES',15000.00,12500.00,1);




INSERT INTO CreditCard VALUES (
    '378282246310005','SAM PETERSON',
    8,  -- PayPal
    1,  -- American Express 
    1,  -- American Express
    2,  -- Citi (corp merchant bank)
    DATE '2026-09-30',
    '789 Pine Road','Unit 5','Albany','NY','12207','UNITED STATES',5000.00,3500.00,1);
INSERT INTO CreditCard VALUES (
    '6011111111111117','MARY JOHNSON',4,
    -- Payment Depot
    4,  -- Discover
    7,  -- Discover
    1,  -- Chase (corp merchant bank)
    DATE '2029-03-31',
    '321 Birch Lane',NULL,'Philadelphia','PA','19103','UNITED STATES',8000.00,7200.00,1);
INSERT INTO CreditCard VALUES (
    '3530111333300000','NINA RIVERA',
    6,  -- Block1
    2, -- JCB
    6,  -- Citi
    2,  -- Citi (corp merchant bank)DATE '2027-08-31',
    '654 Cedar Court','Apt 3C','Stamford','CT','06902','UNITED STATES',12000.00,11000.00,1);
SELECT * FROM CreditCard;
 
 
 
INSERT INTO Customer_CreditCard VALUES ('4111111111111111', 10001);
INSERT INTO Customer_CreditCard VALUES ('5555555555554444', 10002);
INSERT INTO Customer_CreditCard VALUES ('378282246310005', 10003);
INSERT INTO Customer_CreditCard VALUES ('6011111111111117', 10004);
INSERT INTO Customer_CreditCard VALUES ('3530111333300000', 10005);
SELECT * FROM Customer_CreditCard;
 
 
INSERT INTO EZPlus VALUES (1, 10001, 'EZP0012345678', 1250);
INSERT INTO EZPlus VALUES (2, 10003, 'EZP0098765432', 500);
INSERT INTO EZPlus VALUES (3, 10004, 'EZP0054321987', 3000);
INSERT INTO EZPlus VALUES (4, 10007, 'EZP0076543219', 750);
SELECT * FROM EZPlus;
 
 
INSERT INTO RetailCustomer VALUES (1, 10001, 1);
INSERT INTO RetailCustomer VALUES (2, 10003, 2);
INSERT INTO RetailCustomer VALUES (3, 10004, 3);
INSERT INTO RetailCustomer VALUES (4, 10007, 4);
SELECT * FROM RetailCustomer
 
 
INSERT INTO RetailCustomer_Discount VALUES (1, 10001, 1, DATE '2024-01-15', DATE '2024-01-20');
INSERT INTO RetailCustomer_Discount VALUES (2, 10001, 5, DATE '2024-02-01', DATE '2024-02-05');
INSERT INTO RetailCustomer_Discount VALUES (3, 10003, 3, DATE '2024-03-10', NULL);
INSERT INTO RetailCustomer_Discount VALUES (4, 10004, 1, DATE '2024-04-05', DATE '2024-04-10');
INSERT INTO RetailCustomer_Discount VALUES (5, 10007, 4, DATE '2024-05-20', NULL);
SELECT * FROM RetailCustomer_Discount
 
 
INSERT INTO CorporateCustomer VALUES (10002, 1002);  -- Ana Gomez at Tech Solutions Inc.
INSERT INTO CorporateCustomer VALUES (10005, 1004);  -- Nina Rivera at Precision Manufacturing
INSERT INTO CorporateCustomer VALUES (10006, 1001);  -- Alex Savage at Acme Corporation
SELECT * FROM CorporateCustomer
 






 
SELECT c.CustomerID, c.FirstName, c.LastName, c.Email, c.Phone, c.City || ', ' || c.StateCode AS Location
FROM Customer c
INNER JOIN RetailCustomer rc ON c.CustomerID = rc.CustomerID
ORDER BY c.LastName, c.FirstName;
 
 
SELECT cc.CreditCardNumber, cc.CreditCardOwnerName, cc.CreditCardLimit, cc.CC_AvailCredit, 
       (cc.CreditCardLimit - cc.CC_AvailCredit) AS CreditUsed,
       ROUND((cc.CC_AvailCredit / cc.CreditCardLimit) * 100, 2) AS AvailablePercentage
FROM CreditCard cc
WHERE cc.ActivationStatus = 1 
  AND cc.CC_AvailCredit < 2000
ORDER BY cc.CC_AvailCredit;
 
 
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Email, c.Phone,
       co.CompanyName, co.CorporateDiscountPercent || '%' AS DiscountPercent,
       co.ContactPhone AS CompanyPhone
FROM Customer c
INNER JOIN CorporateCustomer cc ON c.CustomerID = cc.CustomerID
INNER JOIN Company co ON cc.CompanyID = co.CompanyID
ORDER BY co.CompanyName, c.LastName;
 

SELECT dl.DriverLicenseNumber, dl.DriverLicenseState, 
       dl.DriverLicenseExpDate,
       ROUND(SYSDATE - dl.DriverLicenseExpDate) AS DaysUntilExpiration,
       c.FirstName || ' ' || c.LastName AS CustomerName,
       c.Email, c.Phone
FROM DriverLicense dl
INNER JOIN Customer c ON dl.DriverLicenseNumber = c.DriverLicenseNumber
WHERE dl.DriverLicenseExpDate BETWEEN SYSDATE AND ADD_MONTHS(SYSDATE, 6)
ORDER BY dl.DriverLicenseExpDate;
 
 
UPDATE Company 
SET CorporateDiscountPercent = CorporateDiscountPercent + 5
WHERE CompanyID IN (1001, 1002, 1003, 1004, 1005);
 
 
UPDATE Company
SET ContactPhone = '212-555-9999',
    ContactEmail = 'support@acme.com',
    CompanyRepName = 'Jonathan Smith'
WHERE CompanyID = 1001;
 
 
UPDATE CreditCard
SET CreditCardLimit = CreditCardLimit * 1.10,  -- Increase by 10%
    CC_AvailCredit = CC_AvailCredit * 1.10
WHERE CCI_Code = 5;  -- Chase bank code
 
 
DELETE FROM RetailCustomer_Discount 
WHERE RetailCustomerDiscountID = 4;
 
 
DELETE FROM RetailCustomer_Discount
WHERE DiscountRedeemedDate IS NULL 
  AND DiscountSubmittedDate < ADD_MONTHS(SYSDATE, -12);
