SQL> CREATE TABLE Review (
  2      Review_ID INT PRIMARY KEY,
  3      Customer_ID INT,
  4      Product_ID INT,
  5      Review_Text VARCHAR2(500),
  6      Review_Date DATE
  7  );

Table created.



SQL> CREATE TABLE Rating (
  2      Rating_ID INT PRIMARY KEY,
  3      Review_ID INT,
  4      Rating_Value INT,
  5      Rating_Date DATE
  6  );

Table created.

SQL> INSERT INTO Review VALUES
  2  (1, 1, 101, 'Good quality and useful storage space.', DATE '2026-09-01');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (2, 2, 102, 'Comfortable bed frame with a simple design.', DATE '2026-09-03');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (3, 3, 103, 'Nice coffee table for a small living room.', DATE '2026-09-05');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (4, 4, 104, 'Very comfortable and stylish armchair.', DATE '2026-09-07');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (5, 5, 105, 'Good desk for studying and working.', DATE '2026-09-10');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (6, 6, 106, 'The chair is strong and looks good.', DATE '2026-09-12');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (7, 7, 107, 'Simple lamp with a nice appearance.', DATE '2026-09-15');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (8, 8, 108, 'Easy to use and useful for organizing clothes.', DATE '2026-09-18');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (9, 9, 109, 'Good outdoor table with sturdy construction.', DATE '2026-09-20');

1 row created.

SQL> 
SQL> INSERT INTO Review VALUES
  2  (10, 10, 110, 'Looks realistic and adds decoration to the room.', DATE '2026-09-22');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.



SQL> INSERT INTO Rating VALUES
  2  (1, 1, 5, DATE '2026-09-01');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (2, 2, 4, DATE '2026-09-03');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (3, 3, 4, DATE '2026-09-05');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (4, 4, 5, DATE '2026-09-07');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (5, 5, 5, DATE '2026-09-10');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (6, 6, 4, DATE '2026-09-12');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (7, 7, 3, DATE '2026-09-15');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (8, 8, 4, DATE '2026-09-18');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (9, 9, 5, DATE '2026-09-20');

1 row created.

SQL> 
SQL> INSERT INTO Rating VALUES
  2  (10, 10, 4, DATE '2026-09-22');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      r.Review_ID,
  5      r.Customer_ID,
  6      r.Review_Text,
  7      r.Review_Date,
  8      rt.Rating_Value
  9  FROM Product p
 10  JOIN Review r
 11  ON p.Product_ID = r.Product_ID
 12  JOIN Rating rt
 13  ON r.Review_ID = rt.Review_ID
 14  ORDER BY p.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       101
KALLAX Shelf Unit
         1           1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Good quality and useful storage space.
01-SEP-26            5


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       102
MALM Bed Frame
         2           2

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Comfortable bed frame with a simple design.
03-SEP-26            4


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       103
LACK Coffee Table
         3           3

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Nice coffee table for a small living room.
05-SEP-26            4


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       104
POANG Armchair
         4           4

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Very comfortable and stylish armchair.
07-SEP-26            5


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       105
MICKE Desk
         5           5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Good desk for studying and working.
10-SEP-26            5


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       106
INGOLF Dining Chair
         6           6

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
The chair is strong and looks good.
12-SEP-26            4


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       107
FADO Table Lamp
         7           7

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Simple lamp with a nice appearance.
15-SEP-26            3


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       108
MULIG Clothes Rack
         8           8

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Easy to use and useful for organizing clothes.
18-SEP-26            4


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       109
APPLARO Outdoor Table
         9           9

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Good outdoor table with sturdy construction.
20-SEP-26            5


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
       110
FEJKA Artificial Plant
        10          10

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA RATING_VALUE
--------- ------------
Looks realistic and adds decoration to the room.
22-SEP-26            4


10 rows selected.


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      ROUND(AVG(rt.Rating_Value), 2) AS Average_Rating
  5  FROM Product p
  6  JOIN Review r
  7  ON p.Product_ID = r.Product_ID
  8  JOIN Rating rt
  9  ON r.Review_ID = rt.Review_ID
 10  GROUP BY
 11      p.Product_ID,
 12      p.Product_Name
 13  ORDER BY Average_Rating DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
       101
KALLAX Shelf Unit
             5

       105
MICKE Desk
             5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------

       109
APPLARO Outdoor Table
             5

       104
POANG Armchair

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
             5

       110
FEJKA Artificial Plant
             4

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
INGOLF Dining Chair
             4

       108
MULIG Clothes Rack
             4


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
       103
LACK Coffee Table
             4

       102
MALM Bed Frame
             4

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------

       107
FADO Table Lamp
             3


10 rows selected.


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      ROUND(AVG(rt.Rating_Value), 2) AS Average_Rating
  5  FROM Product p
  6  JOIN Review r
  7  ON p.Product_ID = r.Product_ID
  8  JOIN Rating rt
  9  ON r.Review_ID = rt.Review_ID
 10  GROUP BY
 11      p.Product_ID,
 12      p.Product_Name
 13  HAVING AVG(rt.Rating_Value) >= 4
 14  ORDER BY Average_Rating DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
       101
KALLAX Shelf Unit
             5

       105
MICKE Desk
             5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------

       109
APPLARO Outdoor Table
             5

       104
POANG Armchair

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
             5

       110
FEJKA Artificial Plant
             4

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
INGOLF Dining Chair
             4

       108
MULIG Clothes Rack
             4


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
       103
LACK Coffee Table
             4

       102
MALM Bed Frame
             4

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------


9 rows selected.

