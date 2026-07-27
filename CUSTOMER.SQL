-- ====================================================================
-- Project: IKEA Furniture Database Management System
-- Module: Customer Management
-- Table: Customer
-- Description: DDL, DML (CRUD operations), and Transaction Management
-- Engine: Oracle Database 21c (SQL*Plus)
-- ====================================================================

-- 1. CLEANUP (Drop Table if Exists)
DROP TABLE Customer CASCADE CONSTRAINTS;

-- 2. CREATE TABLE WITH CONSTRAINTS (DDL)
CREATE TABLE Customer (
    Customer_ID         NUMBER          CONSTRAINT PK_Customer PRIMARY KEY,
    Customer_Name       VARCHAR2(100)   CONSTRAINT NN_Customer_Name NOT NULL,
    Email               VARCHAR2(100)   CONSTRAINT NN_Customer_Email NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    Phone_Number        VARCHAR2(15)    CONSTRAINT NN_Customer_Phone NOT NULL CONSTRAINT UQ_Customer_Phone UNIQUE,
    Password            VARCHAR2(100)   CONSTRAINT NN_Customer_Password NOT NULL,
    Registration_Date   DATE            DEFAULT SYSDATE,
    Customer_Status     VARCHAR2(20)    CONSTRAINT NN_Customer_Status NOT NULL CONSTRAINT CHK_Customer_Status CHECK (Customer_Status IN ('Active','Inactive'))
);

-- 3. INSERT SAMPLE DATA (CREATE - DML)
INSERT INTO Customer VALUES (101, 'Honey',   'honey@gmail.com',   '9876543210', 'Honey@123',   DEFAULT, 'Active');
INSERT INTO Customer VALUES (102, 'Priya',   'priya@gmail.com',   '9876543211', 'Priya@123',   DEFAULT, 'Active');
INSERT INTO Customer VALUES (103, 'Arun',    'arun@gmail.com',    '9876543212', 'Arun@123',    DEFAULT, 'Active');
INSERT INTO Customer VALUES (104, 'Rahul',   'rahul@gmail.com',   '9876543213', 'Rahul@123',   DEFAULT, 'Inactive');
INSERT INTO Customer VALUES (105, 'Sneha',   'sneha@gmail.com',   '9876543214', 'Sneha@123',   DEFAULT, 'Active');
INSERT INTO Customer VALUES (106, 'Karthik', 'karthik@gmail.com', '9876543215', 'Karthik@123', DEFAULT, 'Active');
INSERT INTO Customer VALUES (107, 'Ananya',  'ananya@gmail.com',  '9876543216', 'Ananya@123',  DEFAULT, 'Inactive');
INSERT INTO Customer VALUES (108, 'Vikram',  'vikram@gmail.com',  '9876543217', 'Vikram@123',  DEFAULT, 'Active');
INSERT INTO Customer VALUES (109, 'Divya',   'divya@gmail.com',   '9876543218', 'Divya@123',   DEFAULT, 'Active');
INSERT INTO Customer VALUES (110, 'Rohan',   'rohan@gmail.com',   '9876543219', 'Rohan@123',   DEFAULT, 'Inactive');

COMMIT;

-- 4. READ OPERATIONS (SELECT)
SELECT * FROM Customer;

SELECT Customer_ID, Customer_Name, Email, Phone_Number, Customer_Status 
FROM Customer 
WHERE Customer_ID = 103;

-- 5. UPDATE OPERATION
UPDATE Customer 
SET Phone_Number = '9999999999' 
WHERE Customer_ID = 103;

COMMIT;

-- 6. DELETE OPERATION
DELETE FROM Customer 
WHERE Customer_ID = 110;

COMMIT;

-- 7. VERIFY FINAL DATA
SELECT Customer_ID, Customer_Name, Email, Phone_Number, Customer_Status 
FROM Customer;