CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    Product_ID NUMBER,
    Warehouse_ID NUMBER,
    Stock_Quantity NUMBER
);

INSERT INTO Inventory VALUES (101, 101, 1, 25);
INSERT INTO Inventory VALUES (102, 102, 2, 18);
INSERT INTO Inventory VALUES (103, 103, 3, 0);
INSERT INTO Inventory VALUES (104, 104, 4, 32);
INSERT INTO Inventory VALUES (105, 105, 5, 15);
INSERT INTO Inventory VALUES (106, 106, 6, 0);
INSERT INTO Inventory VALUES (107, 107, 7, 40);
INSERT INTO Inventory VALUES (108, 108, 8, 12);
INSERT INTO Inventory VALUES (109, 109, 9, 27);
INSERT INTO Inventory VALUES (110, 110, 10, 0);

COMMIT;

SELECT * FROM Inventory;
10 rows selected.

SQL> INSERT INTO Inventory VALUES (101, 101, 1, 25);

1 row created.

SQL> INSERT INTO Inventory VALUES (102, 102, 2, 18);

1 row created.

SQL> INSERT INTO Inventory VALUES (103, 103, 3, 0);

1 row created.

SQL> INSERT INTO Inventory VALUES (104, 104, 4, 32);

1 row created.

SQL> INSERT INTO Inventory VALUES (105, 105, 5, 15);

1 row created.

SQL> INSERT INTO Inventory VALUES (106, 106, 6, 0);

1 row created.

SQL> INSERT INTO Inventory VALUES (107, 107, 7, 40);

1 row created.

SQL> INSERT INTO Inventory VALUES (108, 108, 8, 12);

1 row created.

SQL> INSERT INTO Inventory VALUES (109, 109, 9, 27);

1 row created.

SQL> INSERT INTO Inventory VALUES (110, 110, 10, 0);

1 row created.

SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID WAREHOUSE_ID STOCK_QUANTITY
------------ ---------- ------------ --------------
         101        101            1             25
         102        102            2             18
         103        103            3              0
         104        104            4             32
         105        105            5             15
         106        106            6              0
         107        107            7             40
         108        108            8             12
         109        109            9             27
         110        110           10              0

10 rows selected.
