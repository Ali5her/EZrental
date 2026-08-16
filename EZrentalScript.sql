--  1 Country
CREATE TABLE Country
(
    CountryID            NUMBER(3)         NOT NULL,
    CountryCode2Char     CHAR(2)           NOT NULL UNIQUE,
    CountryCode3Char     CHAR(3)           NOT NULL UNIQUE,
    CountryName          VARCHAR2(100)     NOT NULL UNIQUE,
    CONSTRAINT pk_Country PRIMARY KEY (CountryID)
);

--  2 USState
CREATE TABLE USState
(
    StateID          NUMBER(2)        NOT NULL
        CHECK (StateID BETWEEN 1 AND 75),
    StateCode2Char   CHAR(2)          NOT NULL UNIQUE,
    StateName        VARCHAR2(50)     NOT NULL UNIQUE,
    
    CONSTRAINT pk_USState PRIMARY KEY (StateID)
);



--  3 DriverLicense

CREATE TABLE DriverLicense
(
    DriverLicenseNumber    VARCHAR2(25)     NOT NULL,
    DriverLicenseExpDate   DATE             NOT NULL,
    DriverLicenseState     CHAR(2)          NOT NULL,
    CONSTRAINT pk_DriverLicense PRIMARY KEY (DriverLicenseNumber)
);

--  4 CustomerUserAccount

CREATE TABLE CustomerUserAccount
(
    CustomerUserAccountID   RAW(16)        DEFAULT SYS_GUID() NOT NULL,
    Username                VARCHAR2(50)   NOT NULL UNIQUE,
    Password                VARCHAR2(75)   NOT NULL,
    Email                   VARCHAR2(100)  NOT NULL UNIQUE,
    CONSTRAINT pk_CustomerUserAccount PRIMARY KEY (CustomerUserAccountID)
);

--  5 Credit Card Processing Merchant Service Company Table
CREATE TABLE CC_ProcessingMerchantSvcCo
(
    CCPMS_CompanyCode   NUMBER(2)        NOT NULL
        CHECK (CCPMS_CompanyCode BETWEEN 1 AND 20),
    CCPMS_CompanyName   VARCHAR2(50)     NOT NULL
        UNIQUE,
    CONSTRAINT pk_CCPMS PRIMARY KEY (CCPMS_CompanyCode)
);

--  6 CreditCardNetworkCompany

CREATE TABLE CreditCardNetworkCompany
(
    CreditCardNetworkCompanyCode   NUMBER(2)     NOT NULL
        CHECK (CreditCardNetworkCompanyCode BETWEEN 1 AND 20),
    CreditCardNetworkCompanyName   VARCHAR2(50)  NOT NULL
        UNIQUE,
    CONSTRAINT pk_CCN PRIMARY KEY (CreditCardNetworkCompanyCode)
);

--  7 CreditCardIssuingBank
CREATE TABLE CreditCardIssuingBank
(
    CreditCardIssuingBankCode   NUMBER(2)        NOT NULL
        CHECK (CreditCardIssuingBankCode BETWEEN 1 AND 20),
    CreditCardIssuingBankName   VARCHAR2(50)     NOT NULL
        UNIQUE,
    CONSTRAINT pk_CCI PRIMARY KEY (CreditCardIssuingBankCode)
);

--  8 CreditCardCorprateMerchantBank

CREATE TABLE CC_CorpMerchantBank
(
    CC_CMB_Code     NUMBER(2)        NOT NULL
        CHECK (CC_CMB_Code BETWEEN 1 AND 20),
    CC_CMB_Name     VARCHAR2(50)     NOT NULL
        UNIQUE,
    CONSTRAINT pk_CC_CMB PRIMARY KEY (CC_CMB_Code)
);
--  9 Discount
CREATE TABLE Discount
(
    DiscountID        NUMBER(10)        NOT NULL,
    DiscountCode      CHAR(10)          NOT NULL UNIQUE,
    DiscountCodeDesc  VARCHAR2(150)     NOT NULL,
    CONSTRAINT pk_Discount PRIMARY KEY (DiscountID)
);
--  10 Company
CREATE TABLE Company
(
    CompanyID                NUMBER(5)        NOT NULL,
    CompanyName              VARCHAR2(100)    NOT NULL UNIQUE,
    AddressLine1             VARCHAR2(50)     NOT NULL,
    AddressLine2             VARCHAR2(50)     NULL,
    City                     VARCHAR2(50)     NOT NULL,
    StateCode                CHAR(2)          NOT NULL,
    Zipcode                  VARCHAR2(10)     NOT NULL,
    Country                  VARCHAR2(100)    NOT NULL,
    CompanyRepName           VARCHAR2(50)     NOT NULL,
    ContactPhone             VARCHAR2(20)     NOT NULL,
    ContactEmail             VARCHAR2(100)    NOT NULL UNIQUE,
    CorporateDiscountPercent NUMBER(8,2)      NOT NULL,
    CONSTRAINT pk_Company PRIMARY KEY (CompanyID),
    CONSTRAINT ck_CompanyID CHECK (CompanyID BETWEEN 1 AND 20000),
    CONSTRAINT fk_Company_State
        FOREIGN KEY (StateCode)
        REFERENCES USState (StateCode2Char),
    CONSTRAINT fk_Company_Country
        FOREIGN KEY (Country)
        REFERENCES Country (CountryName)	);
--  11 Customer
CREATE TABLE Customer(
    CustomerID              NUMBER(10)        NOT NULL,
    FirstName               VARCHAR2(50)      NOT NULL,
    LastName                VARCHAR2(50)      NOT NULL,
    BirthDate               DATE              NOT NULL,
    AddressLine1            VARCHAR2(50)      NOT NULL,
    AddressLine2            VARCHAR2(50)      NULL,
    City                    VARCHAR2(50)      NOT NULL,
    StateCode               CHAR(2)           NOT NULL,
    Zipcode                 VARCHAR2(10)      NOT NULL,
    Country                 VARCHAR2(100)     NOT NULL,
    Phone                   VARCHAR2(20)      NOT NULL,
    Email                   VARCHAR2(100)     NOT NULL UNIQUE,
    DriverLicenseNumber     VARCHAR2(25)      NOT NULL,
    CustomerUserAccountID   RAW(16)           NULL,
    CustomerType            CHAR(1)           NOT NULL
        CHECK (CustomerType IN ('R','C')),
    CONSTRAINT pk_Customer PRIMARY KEY (CustomerID),
    CONSTRAINT fk_Customer_State
        FOREIGN KEY (StateCode)
        REFERENCES USState (StateCode2Char),
    CONSTRAINT fk_Customer_Country
        FOREIGN KEY (Country)
        REFERENCES Country (CountryName),
    CONSTRAINT fk_Customer_DriverLicense
        FOREIGN KEY (DriverLicenseNumber)
        REFERENCES DriverLicense (DriverLicenseNumber),
    CONSTRAINT fk_Customer_UserAccount
        FOREIGN KEY (CustomerUserAccountID)
        REFERENCES CustomerUserAccount (CustomerUserAccountID)	);
--  12 CreditCard

CREATE TABLE CreditCard
(
    CreditCardNumber     VARCHAR2(16)      NOT NULL,
    CreditCardOwnerName  VARCHAR2(100)     NOT NULL,
    CCPMS_Code           NUMBER(2)         NOT NULL
        CHECK (CCPMS_Code BETWEEN 1 AND 20),
    CCN_Code             NUMBER(2)         NOT NULL
        CHECK (CCN_Code BETWEEN 1 AND 20),
    CCI_Code             NUMBER(2)         NOT NULL
        CHECK (CCI_Code BETWEEN 1 AND 20),
    CCCMB_Code           NUMBER(2)         NOT NULL
        CHECK (CCCMB_Code BETWEEN 1 AND 20),
    ExpDate              DATE              NOT NULL,
    AddressLine1         VARCHAR2(50)      NOT NULL,
    AddressLine2         VARCHAR2(50)      NULL,
    City                 VARCHAR2(50)      NOT NULL,
    StateCode            CHAR(2)           NOT NULL,
    Zipcode              VARCHAR2(10)      NOT NULL,
    Country              VARCHAR2(100)     NOT NULL,
    CreditCardLimit      NUMBER(8,2)       NOT NULL,
    CC_AvailCredit       NUMBER(8,2)       NOT NULL,
    ActivationStatus     NUMBER(1)         NOT NULL
        CHECK (ActivationStatus IN (1,0)),

    CONSTRAINT pk_CreditCard PRIMARY KEY (CreditCardNumber),

    CONSTRAINT fk_CC_PMS
        FOREIGN KEY (CCPMS_Code)
        REFERENCES CC_ProcessingMerchantSvcCo (CCPMS_CompanyCode),

    CONSTRAINT fk_CC_Network
        FOREIGN KEY (CCN_Code)
        REFERENCES CreditCardNetworkCompany (CreditCardNetworkCompanyCode),

    CONSTRAINT fk_CC_Issuer
        FOREIGN KEY (CCI_Code)
        REFERENCES CreditCardIssuingBank (CreditCardIssuingBankCode),

    CONSTRAINT fk_CC_CorpBank
        FOREIGN KEY (CCCMB_Code)
        REFERENCES CC_CorpMerchantBank (CC_CMB_Code)
);

--  13 Customer_CreditCard

CREATE TABLE Customer_CreditCard
(
    CreditCardNumber   VARCHAR2(16)    NOT NULL,
    CustomerID         NUMBER(10)      NOT NULL,

    CONSTRAINT pk_Customer_CreditCard
        PRIMARY KEY (CreditCardNumber, CustomerID),

    CONSTRAINT fk_CustCard_Card
        FOREIGN KEY (CreditCardNumber)
        REFERENCES CreditCard (CreditCardNumber),

    CONSTRAINT fk_CustCard_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID)	);

--  14 EZPlus
CREATE TABLE EZPlus
(
    EZPlusID                    NUMBER(10)      NOT NULL,
    CustomerID                  NUMBER(10)      NOT NULL,
    EZPlusRewardsCode           CHAR(13)        NOT NULL UNIQUE,
    EZPlusRewardsEarnedPoints   NUMBER
        CHECK (EZPlusRewardsEarnedPoints BETWEEN 0 AND 50000),

    CONSTRAINT pk_EZPlus PRIMARY KEY (EZPlusID),

    CONSTRAINT fk_EZPlus_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID)
);

--  15 RetailCustomer
CREATE TABLE RetailCustomer
(
    RetailCustomerID    NUMBER(10)     NOT NULL,
    CustomerID          NUMBER(10)     NOT NULL,
    EZPlusID            NUMBER(10)     NOT NULL,
    CONSTRAINT pk_RetailCustomer PRIMARY KEY (RetailCustomerID),
    CONSTRAINT fk_RetailCustomer_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID),
    CONSTRAINT fk_RetailCustomer_EZPlus
        FOREIGN KEY (EZPlusID)
        REFERENCES EZPlus (EZPlusID)
);
--  16 RetailCustomer_Discount
CREATE TABLE RetailCustomer_Discount	(
    RetailCustomerDiscountID   NUMBER(10)       NOT NULL,
    CustomerID                 NUMBER(10)       NOT NULL,
    DiscountID                 NUMBER(10)       NOT NULL,
    DiscountSubmittedDate      DATE             NOT NULL,
    DiscountRedeemedDate       DATE             NULL,
    CONSTRAINT pk_RetailCustomerDiscount PRIMARY KEY (RetailCustomerDiscountID),
    CONSTRAINT fk_RCD_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID),
    CONSTRAINT fk_RCD_Discount
        FOREIGN KEY (DiscountID)
        REFERENCES Discount (DiscountID)
);

--  17	CorporateCustomer
CREATE TABLE CorporateCustomer
(
    CustomerID   NUMBER(10)     NOT NULL,
    CompanyID    NUMBER(10)     NOT NULL
        CHECK (CompanyID BETWEEN 1 AND 20000),
    CONSTRAINT pk_CorporateCustomer PRIMARY KEY (CustomerID),
    CONSTRAINT fk_CorporateCustomer_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID),
    CONSTRAINT fk_CorporateCustomer_Company
        FOREIGN KEY (CompanyID)
        REFERENCES Company (CompanyID)
); 
