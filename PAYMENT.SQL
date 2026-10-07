SQL> CREATE TABLE Payment (
  2      Payment_ID INT PRIMARY KEY,
  3      Order_ID INT,
  4      Customer_ID INT,
  5      Payment_Mode VARCHAR2(30),
  6      Payment_Date DATE,
  7      Payment_Amount DECIMAL(10,2),
  8      Payment_Status VARCHAR2(30),
  9      Transaction_Reference VARCHAR2(50)
 10  );

Table created.


SQL> INSERT INTO Payment VALUES
  2  (1, 1001, 1, 'UPI', DATE '2026-09-01', 12999.00, 'Successful', 'TXN100001');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (2, 1002, 2, 'Credit Card', DATE '2026-09-03', 6999.00, 'Successful', 'TXN100002');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (3, 1003, 3, 'Debit Card', DATE '2026-09-05', 5999.00, 'Failed', 'TXN100003');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (4, 1004, 4, 'Net Banking', DATE '2026-09-07', 4999.00, 'Successful', 'TXN100004');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (5, 1005, 5, 'UPI', DATE '2026-09-10', 3999.00, 'Successful', 'TXN100005');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (6, 1006, 6, 'Credit Card', DATE '2026-09-12', 1499.00, 'Failed', 'TXN100006');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (7, 1007, 7, 'Debit Card', DATE '2026-09-15', 1999.00, 'Successful', 'TXN100007');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (8, 1008, 8, 'Cash on Delivery', DATE '2026-09-18', 8999.00, 'Successful', 'TXN100008');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (9, 1009, 9, 'UPI', DATE '2026-09-20', 2499.00, 'Failed', 'TXN100009');

1 row created.

SQL> 
SQL> INSERT INTO Payment VALUES
  2  (10, 1010, 10, 'Net Banking', DATE '2026-09-22', 799.00, 'Successful', 'TXN100010');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.


SQL> SELECT * FROM Payment;

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
         1       1001           1 UPI                            01-SEP-26
         12999 Successful
TXN100001

         2       1002           2 Credit Card                    03-SEP-26
          6999 Successful
TXN100002

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------

         3       1003           3 Debit Card                     05-SEP-26
          5999 Failed
TXN100003

         4       1004           4 Net Banking                    07-SEP-26
          4999 Successful

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
TXN100004

         5       1005           5 UPI                            10-SEP-26
          3999 Successful
TXN100005

         6       1006           6 Credit Card                    12-SEP-26

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
          1499 Failed
TXN100006

         7       1007           7 Debit Card                     15-SEP-26
          1999 Successful
TXN100007


PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
         8       1008           8 Cash on Delivery               18-SEP-26
          8999 Successful
TXN100008

         9       1009           9 UPI                            20-SEP-26
          2499 Failed
TXN100009

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_D
---------- ---------- ----------- ------------------------------ ---------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------

        10       1010          10 Net Banking                    22-SEP-26
           799 Successful
TXN100010


10 rows selected.



SQL> SELECT
  2      Payment_ID,
  3      Order_ID,
  4      Customer_ID,
  5      Payment_Mode,
  6      Payment_Amount,
  7      Payment_Status
  8  FROM Payment
  9  WHERE Payment_Status = 'Successful';

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_AMOUNT
---------- ---------- ----------- ------------------------------ --------------
PAYMENT_STATUS
------------------------------
         1       1001           1 UPI                                     12999
Successful

         2       1002           2 Credit Card                              6999
Successful

         4       1004           4 Net Banking                              4999
Successful


PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_AMOUNT
---------- ---------- ----------- ------------------------------ --------------
PAYMENT_STATUS
------------------------------
         5       1005           5 UPI                                      3999
Successful

         7       1007           7 Debit Card                               1999
Successful

         8       1008           8 Cash on Delivery                         8999
Successful


PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_AMOUNT
---------- ---------- ----------- ------------------------------ --------------
PAYMENT_STATUS
------------------------------
        10       1010          10 Net Banking                               799
Successful


7 rows selected.



SQL> SELECT
  2      Payment_ID,
  3      Order_ID,
  4      Customer_ID,
  5      Payment_Mode,
  6      Payment_Amount,
  7      Payment_Status
  8  FROM Payment
  9  WHERE Payment_Status = 'Failed';

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_MODE                   PAYMENT_AMOUNT
---------- ---------- ----------- ------------------------------ --------------
PAYMENT_STATUS
------------------------------
         3       1003           3 Debit Card                               5999
Failed

         6       1006           6 Credit Card                              1499
Failed

         9       1009           9 UPI                                      2499
Failed


3 rows selected.


SQL> SELECT
  2      Payment_Mode,
  3      COUNT(*) AS Number_of_Transactions,
  4      SUM(Payment_Amount) AS Total_Amount
  5  FROM Payment
  6  WHERE Payment_Status = 'Successful'
  7  GROUP BY Payment_Mode
  8  ORDER BY Number_of_Transactions DESC;

PAYMENT_MODE                   NUMBER_OF_TRANSACTIONS TOTAL_AMOUNT
------------------------------ ---------------------- ------------
UPI                                                 2        16998
Net Banking                                         2         5798
Cash on Delivery                                    1         8999
Debit Card                                          1         1999
Credit Card                                         1         6999


SQL> SELECT
  2      p.Payment_ID,
  3      p.Order_ID,
  4      p.Customer_ID,
  5      o.Order_Date,
  6      p.Payment_Mode,
  7      p.Payment_Date,
  8      p.Payment_Amount,
  9      p.Payment_Status,
 10      p.Transaction_Reference
 11  FROM Payment p
 12  JOIN Orders o
 13  ON p.Order_ID = o.Order_ID
 14  ORDER BY p.Payment_ID;

PAYMENT_ID   ORDER_ID CUSTOMER_ID ORDER_DAT PAYMENT_MODE
---------- ---------- ----------- --------- ------------------------------
PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------- -------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
         1       1001           1 02-SEP-26 UPI
01-SEP-26          12999 Successful
TXN100001

         2       1002           2 03-SEP-26 Credit Card
03-SEP-26           6999 Successful
TXN100002

PAYMENT_ID   ORDER_ID CUSTOMER_ID ORDER_DAT PAYMENT_MODE
---------- ---------- ----------- --------- ------------------------------
PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------- -------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------

         3       1003           3 05-SEP-26 Debit Card
05-SEP-26           5999 Failed
TXN100003

         4       1004           4 07-SEP-26 Net Banking
07-SEP-26           4999 Successful

PAYMENT_ID   ORDER_ID CUSTOMER_ID ORDER_DAT PAYMENT_MODE
---------- ---------- ----------- --------- ------------------------------
PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------- -------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
TXN100004

         5       1005           5 10-SEP-26 UPI
10-SEP-26           3999 Successful
TXN100005

         6       1006           6 12-SEP-26 Credit Card

PAYMENT_ID   ORDER_ID CUSTOMER_ID ORDER_DAT PAYMENT_MODE
---------- ---------- ----------- --------- ------------------------------
PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------- -------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
12-SEP-26           1499 Failed
TXN100006

         7       1007           7 15-SEP-26 Debit Card
15-SEP-26           1999 Successful
TXN100007


PAYMENT_ID   ORDER_ID CUSTOMER_ID ORDER_DAT PAYMENT_MODE
---------- ---------- ----------- --------- ------------------------------
PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------- -------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------
         8       1008           8 18-SEP-26 Cash on Delivery
18-SEP-26           8999 Successful
TXN100008

         9       1009           9 20-SEP-26 UPI
20-SEP-26           2499 Failed
TXN100009

PAYMENT_ID   ORDER_ID CUSTOMER_ID ORDER_DAT PAYMENT_MODE
---------- ---------- ----------- --------- ------------------------------
PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS
--------- -------------- ------------------------------
TRANSACTION_REFERENCE
--------------------------------------------------

        10       1010          10 22-SEP-26 Net Banking
22-SEP-26            799 Successful
TXN100010


10 rows selected.



SQL> SELECT
  2      Payment_Status,
  3      COUNT(*) AS Transaction_Count,
  4      SUM(Payment_Amount) AS Total_Amount
  5  FROM Payment
  6  GROUP BY Payment_Status;

PAYMENT_STATUS                 TRANSACTION_COUNT TOTAL_AMOUNT
------------------------------ ----------------- ------------
Successful                                     7        40793
Failed                                         3         9997

SQL> 