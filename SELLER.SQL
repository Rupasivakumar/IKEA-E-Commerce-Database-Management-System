CREATE TABLE SELLER3 (
    Seller_ID NUMBER PRIMARY KEY,
    Seller_Name VARCHAR2(100) NOT NULL,
    Contact_Number VARCHAR2(15),
    Email VARCHAR2(100),
    Address VARCHAR2(200)
);

INSERT INTO Seller VALUES
(1, 'IKEA India', '1800-419-4532', 'support@ikea.in', 'Bengaluru, Karnataka');

INSERT INTO Seller VALUES
(2, 'IKEA Chennai', '1800-419-4532', 'chennai@ikea.in', 'Chennai, Tamil Nadu');

INSERT INTO Seller VALUES
(3, 'IKEA Hyderabad', '1800-419-4532', 'hyderabad@ikea.in', 'Hyderabad, Telangana');

INSERT INTO Seller VALUES
(4, 'IKEA Mumbai', '1800-419-4532', 'mumbai@ikea.in', 'Mumbai, Maharashtra');

INSERT INTO Seller VALUES
(5, 'IKEA Pune', '1800-419-4532', 'pune@ikea.in', 'Pune, Maharashtra');

INSERT INTO Seller VALUES
(6, 'IKEA Delhi', '1800-419-4532', 'delhi@ikea.in', 'New Delhi');

INSERT INTO Seller VALUES
(7, 'IKEA Noida', '1800-419-4532', 'noida@ikea.in', 'Noida, Uttar Pradesh');

INSERT INTO Seller VALUES
(8, 'IKEA Kolkata', '1800-419-4532', 'kolkata@ikea.in', 'Kolkata, West Bengal');

INSERT INTO Seller VALUES
(9, 'IKEA Ahmedabad', '1800-419-4532', 'ahmedabad@ikea.in', 'Ahmedabad, Gujarat');

INSERT INTO Seller VALUES
(10, 'IKEA Bengaluru', '1800-419-4532', 'bengaluru@ikea.in', 'Bengaluru, Karnataka');

COMMIT;

SQL> INSERT INTO Seller VALUES
  2  (1, 'IKEA India', '1800-419-4532', 'support@ikea.in', 'Bengaluru, Karnataka');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (2, 'IKEA Chennai', '1800-419-4532', 'chennai@ikea.in', 'Chennai, Tamil Nadu');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (3, 'IKEA Hyderabad', '1800-419-4532', 'hyderabad@ikea.in', 'Hyderabad, Telangana');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (4, 'IKEA Mumbai', '1800-419-4532', 'mumbai@ikea.in', 'Mumbai, Maharashtra');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (5, 'IKEA Pune', '1800-419-4532', 'pune@ikea.in', 'Pune, Maharashtra');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (6, 'IKEA Delhi', '1800-419-4532', 'delhi@ikea.in', 'New Delhi');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (7, 'IKEA Noida', '1800-419-4532', 'noida@ikea.in', 'Noida, Uttar Pradesh');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (8, 'IKEA Kolkata', '1800-419-4532', 'kolkata@ikea.in', 'Kolkata, West Bengal');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (9, 'IKEA Ahmedabad', '1800-419-4532', 'ahmedabad@ikea.in', 'Ahmedabad, Gujarat');

1 row created.

SQL> 
SQL> INSERT INTO Seller VALUES
  2  (10, 'IKEA Bengaluru', '1800-419-4532', 'bengaluru@ikea.in', 'Bengaluru, Karnataka');

1 row created.

SQL> 
SQL> COMMIT;

SQL> SELECT * FROM Seller;

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         1
IKEA India
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
support@ikea.in
Bengaluru, Karnataka


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         2
IKEA Chennai
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
chennai@ikea.in
Chennai, Tamil Nadu


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         3
IKEA Hyderabad
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
hyderabad@ikea.in
Hyderabad, Telangana


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         4
IKEA Mumbai
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
mumbai@ikea.in
Mumbai, Maharashtra


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         5
IKEA Pune
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
pune@ikea.in
Pune, Maharashtra


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         6
IKEA Delhi
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
delhi@ikea.in
New Delhi


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         7
IKEA Noida
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
noida@ikea.in
Noida, Uttar Pradesh


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         8
IKEA Kolkata
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
kolkata@ikea.in
Kolkata, West Bengal


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
         9
IKEA Ahmedabad
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
ahmedabad@ikea.in
Ahmedabad, Gujarat


 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
        10
IKEA Bengaluru
1800-419-4532

 SELLER_ID
----------
SELLER_NAME
--------------------------------------------------------------------------------
CONTACT_NUMBER
---------------
EMAIL
--------------------------------------------------------------------------------
ADDRESS
--------------------------------------------------------------------------------
bengaluru@ikea.in
Bengaluru, Karnataka