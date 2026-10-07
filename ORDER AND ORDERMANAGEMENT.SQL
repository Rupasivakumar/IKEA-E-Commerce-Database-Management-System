
SQL> CREATE TABLE Orders (
  2      Order_ID INT PRIMARY KEY,
  3      Customer_ID INT,
  4      Order_Date DATE,
  5      Total_Amount DECIMAL(10,2),
  6      Order_Status VARCHAR(30),
  7      Shipping_Address VARCHAR(255),
  8      Delivery_Date DATE
  9  );

Table created.

SQL> CREATE TABLE Order_Items (
  2      Order_Item_ID INT PRIMARY KEY,
  3      Order_ID INT,
  4      Product_ID INT,
  5      Quantity INT,
  6      Unit_Price DECIMAL(10,2),
  7      Discount DECIMAL(5,2),
  8      Total_Price DECIMAL(10,2)
  9  );

Table created.

SQL> INSERT INTO Orders VALUES
  2  (1001, 1, DATE '2026-09-01', 12999.00, 'Delivered', 'Chennai, Tamil Nadu', DATE '2026-09-05');

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1002, 2, DATE '2026-09-03', 6999.00, 'Shipped', 'Bengaluru, Karnataka', DATE '2026-09-08');

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1003, 3, DATE '2026-09-05', 5999.00, 'Placed', 'Hyderabad, Telangana', NULL);

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1004, 4, DATE '2026-09-07', 4999.00, 'Delivered', 'Mumbai, Maharashtra', DATE '2026-09-11');

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1005, 5, DATE '2026-09-10', 3999.00, 'Shipped', 'Pune, Maharashtra', DATE '2026-09-14');

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1006, 6, DATE '2026-09-12', 1499.00, 'Placed', 'New Delhi', NULL);

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1007, 7, DATE '2026-09-15', 1999.00, 'Delivered', 'Noida, Uttar Pradesh', DATE '2026-09-19');

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1008, 8, DATE '2026-09-18', 8999.00, 'Shipped', 'Kolkata, West Bengal', DATE '2026-09-23');

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1009, 9, DATE '2026-09-20', 2499.00, 'Placed', 'Ahmedabad, Gujarat', NULL);

1 row created.

SQL> 
SQL> INSERT INTO Orders VALUES
  2  (1010, 10, DATE '2026-09-22', 799.00, 'Delivered', 'Bengaluru, Karnataka', DATE '2026-09-26');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.


SQL> INSERT INTO Order_Items VALUES
  2  (1, 1001, 102, 1, 12999.00, 0.00, 12999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (2, 1002, 104, 1, 6999.00, 0.00, 6999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (3, 1003, 105, 1, 5999.00, 0.00, 5999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (4, 1004, 101, 1, 4999.00, 0.00, 4999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (5, 1005, 106, 1, 3999.00, 0.00, 3999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (6, 1006, 107, 1, 1499.00, 0.00, 1499.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (7, 1007, 108, 1, 1999.00, 0.00, 1999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (8, 1008, 109, 1, 8999.00, 0.00, 8999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (9, 1009, 103, 1, 2499.00, 0.00, 2499.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Items VALUES
  2  (10, 1010, 110, 1, 799.00, 0.00, 799.00);

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.


SQL> UPDATE Orders
  2  SET Total_Amount = 13499.00
  3  WHERE Order_ID = 1001;

1 row updated.

SQL> 
SQL> COMMIT;

Commit complete.


SQL> UPDATE Orders
  2  SET Order_Date = DATE '2026-09-02'
  3  WHERE Order_ID = 1001;

1 row updated.

SQL> 
SQL> COMMIT;

Commit complete.



SQL> UPDATE Order_Items
  2  SET Quantity = 2,
  3      Total_Price = 25998.00
  4  WHERE Order_Item_ID = 1;

1 row updated.

SQL> 
SQL> COMMIT;

Commit complete.



SQL> UPDATE Order_Items
  2  SET Unit_Price = 13500.00
  3  WHERE Order_Item_ID = 1;

1 row updated.

SQL> 
SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      o.Order_ID,
  3      o.Customer_ID,
  4      o.Order_Date,
  5      o.Total_Amount,
  6      o.Order_Status,
  7      oi.Product_ID,
  8      oi.Quantity,
  9      oi.Unit_Price,
 10      oi.Total_Price
 11  FROM Orders o
 12  JOIN Order_Items oi
 13  ON o.Order_ID = oi.Order_ID
 14  ORDER BY o.Order_Date;

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ ------------------------------
PRODUCT_ID   QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- ---------- -----------
      1001           1 02-SEP-26        13499 Delivered
       102          2      13500       25998

      1002           2 03-SEP-26         6999 Shipped
       104          1       6999        6999

      1003           3 05-SEP-26         5999 Placed
       105          1       5999        5999


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ ------------------------------
PRODUCT_ID   QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- ---------- -----------
      1004           4 07-SEP-26         4999 Delivered
       101          1       4999        4999

      1005           5 10-SEP-26         3999 Shipped
       106          1       3999        3999

      1006           6 12-SEP-26         1499 Placed
       107          1       1499        1499


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ ------------------------------
PRODUCT_ID   QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- ---------- -----------
      1007           7 15-SEP-26         1999 Delivered
       108          1       1999        1999

      1008           8 18-SEP-26         8999 Shipped
       109          1       8999        8999

      1009           9 20-SEP-26         2499 Placed
       103          1       2499        2499


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ ------------------------------
PRODUCT_ID   QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- ---------- -----------
      1010          10 22-SEP-26          799 Delivered
       110          1        799         799


10 rows selected.



SQL> SELECT
  2      Customer_ID,
  3      COUNT(Order_ID) AS Total_Orders,
  4      SUM(Total_Amount) AS Total_Amount
  5  FROM Orders
  6  GROUP BY Customer_ID
  7  ORDER BY Customer_ID;

CUSTOMER_ID TOTAL_ORDERS TOTAL_AMOUNT
----------- ------------ ------------
          1            1        13499
          2            1         6999
          3            1         5999
          4            1         4999
          5            1         3999
          6            1         1499
          7            1         1999
          8            1         8999
          9            1         2499
         10            1          799

10 rows selected.
