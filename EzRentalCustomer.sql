-- CUSTOMER
CREATE TABLE Customer
(
    CustomerID      NUMBER(10)        CONSTRAINT pk_Customer PRIMARY KEY,
    FirstName       VARCHAR2(50)      NOT NULL,
    LastName        VARCHAR2(50)      NOT NULL,
    SSNumber        VARCHAR2(11)      CONSTRAINT uq_Customer_SSNumber UNIQUE NOT NULL,
    BirthDate       DATE              NOT NULL,
    Address_Line1   VARCHAR2(50)      NOT NULL,
    Address_Line2   VARCHAR2(50),
    City            VARCHAR2(50)      NOT NULL,
    StateCode       CHAR(2)           NOT NULL,
    PostalCode      VARCHAR2(10)      NOT NULL,
    Gender          CHAR(1)           NOT NULL,
    MaritalStatus   VARCHAR2(15)      NOT NULL,
    Phone           VARCHAR2(20)      NOT NULL,
    Email           VARCHAR2(50)      CONSTRAINT uq_Customer_Email UNIQUE NOT NULL
);


-- PRODUCT

CREATE TABLE Product
(
    ProductID       NUMBER(10)
        CONSTRAINT pk_Product PRIMARY KEY,

    ProductName     VARCHAR2(50)      NOT NULL,
    ModelNumber     VARCHAR2(10)      NOT NULL,
    SerialNumber    VARCHAR2(14)
        CONSTRAINT uq_Product_SerialNumber UNIQUE NOT NULL,
    Description     VARCHAR2(100)     NOT NULL,
    ProductType     VARCHAR2(30)      NOT NULL,
    DateAvailable   DATE              NOT NULL,
    Price           NUMBER(8,2)       NOT NULL
);


-- EMPLOYEE 

CREATE TABLE Employee
(
    Employee_ID     NUMBER(10)
        CONSTRAINT pk_Employee PRIMARY KEY,

    EmployeeName    VARCHAR2(50)      NOT NULL,
    BDate           DATE              NOT NULL,
    Address         VARCHAR2(75)      NOT NULL,
    Phone           VARCHAR2(20)      NOT NULL,
    Gender          CHAR(1)           NOT NULL,
    Email           VARCHAR2(50),
    DateHired       DATE              NOT NULL,
    EmployeeType    CHAR(1)           NOT NULL
);


-- HOURLY_EMPLOYEE 

CREATE TABLE Hourly_Employee
(
    HEmployee_ID    NUMBER(10)
        CONSTRAINT pk_HourlyEmployee PRIMARY KEY,
    HourlyRate      NUMBER(5,2)       NOT NULL,

    CONSTRAINT fk_HourlyEmployee_Employee
        FOREIGN KEY (HEmployee_ID)
        REFERENCES Employee (Employee_ID)
);


-- SALARY_EMPLOYEE 

CREATE TABLE Salary_Employee
(
    SEmployee_ID    NUMBER(10)
        CONSTRAINT pk_SalaryEmployee PRIMARY KEY,
    AnnualSalary    NUMBER(8,2)       NOT NULL,
    StockOptions    NUMBER(7),

    CONSTRAINT fk_SalaryEmployee_Employee
        FOREIGN KEY (SEmployee_ID)
        REFERENCES Employee (Employee_ID)
);


-- CONSULTANT 

CREATE TABLE Consultant
(
    CEmployee_ID        NUMBER(10)
        CONSTRAINT pk_Consultant PRIMARY KEY,
    ContractNumber      NUMBER(6)     NOT NULL,
    HourlyBillingRate   NUMBER(6,2)   NOT NULL,

    CONSTRAINT fk_Consultant_Employee
        FOREIGN KEY (CEmployee_ID)
        REFERENCES Employee (Employee_ID)
);


-- PURCHASE  

CREATE TABLE Purchase
(
    PurchaseID      NUMBER(10)     NOT NULL,
    CustomerID      NUMBER(10)     NOT NULL,
    ProductID       NUMBER(10)     NOT NULL,
    PurchaseDate    DATE           NOT NULL,
    Quantity        NUMBER(5)      NOT NULL,
    TotalCharge     NUMBER(10,2)   NOT NULL,

    CONSTRAINT pk_Purchase PRIMARY KEY (PurchaseID),

    CONSTRAINT fk_Purchase_Customer
        FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID),

    CONSTRAINT fk_Purchase_Product
        FOREIGN KEY (ProductID)
        REFERENCES Product (ProductID)
);

