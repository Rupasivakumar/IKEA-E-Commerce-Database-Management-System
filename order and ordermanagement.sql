-- 1. TABLE CREATION

-- 1.1 Create Orders Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10,2),
    Order_Status VARCHAR(30),
    Shipping_Address VARCHAR(255),
    Delivery_Date DATE
);

-- 1.2 Create Order_Items Table
CREATE TABLE Order_Items (
    Order_Item_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    Total_Price DECIMAL(10,2),
    CONSTRAINT fk_order FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    CONSTRAINT fk_product FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

-- 2. DATA INSERTION

-- 2.1 Orders Data Insertion
INSERT INTO Orders VALUES (1001, 1, DATE '2026-09-01', 12999.00, 'Delivered', 'Chennai, Tamil Nadu', DATE '2026-09-05');
INSERT INTO Orders VALUES (1002, 2, DATE '2026-09-03', 6999.00, 'Shipped', 'Bengaluru, Karnataka', DATE '2026-09-08');
INSERT INTO Orders VALUES (1003, 3, DATE '2026-09-05', 5999.00, 'Placed', 'Hyderabad, Telangana', NULL);
INSERT INTO Orders VALUES (1004, 4, DATE '2026-09-07', 4999.00, 'Delivered', 'Mumbai, Maharashtra', DATE '2026-09-11');
INSERT INTO Orders VALUES (1005, 5, DATE '2026-09-10', 3999.00, 'Shipped', 'Pune, Maharashtra', DATE '2026-09-14');
INSERT INTO Orders VALUES (1006, 6, DATE '2026-09-12', 1499.00, 'Placed', 'New Delhi', NULL);
INSERT INTO Orders VALUES (1007, 7, DATE '2026-09-15', 1999.00, 'Delivered', 'Noida, Uttar Pradesh', DATE '2026-09-19');
INSERT INTO Orders VALUES (1008, 8, DATE '2026-09-18', 8999.00, 'Shipped', 'Kolkata, West Bengal', DATE '2026-09-23');
INSERT INTO Orders VALUES (1009, 9, DATE '2026-09-20', 2499.00, 'Placed', 'Ahmedabad, Gujarat', NULL);
INSERT INTO Orders VALUES (1010, 10, DATE '2026-09-22', 799.00, 'Delivered', 'Bengaluru, Karnataka', DATE '2026-09-26');
COMMIT;

-- 2.2 Order_Items Data Insertion
INSERT INTO Order_Items VALUES (1, 1001, 102, 1, 12999.00, 0.00, 12999.00);
INSERT INTO Order_Items VALUES (2, 1002, 104, 1, 6999.00, 0.00, 6999.00);
INSERT INTO Order_Items VALUES (3, 1003, 105, 1, 5999.00, 0.00, 5999.00);
INSERT INTO Order_Items VALUES (4, 1004, 101, 1, 4999.00, 0.00, 4999.00);
INSERT INTO Order_Items VALUES (5, 1005, 106, 1, 3999.00, 0.00, 3999.00);
INSERT INTO Order_Items VALUES (6, 1006, 107, 1, 1499.00, 0.00, 1499.00);
INSERT INTO Order_Items VALUES (7, 1007, 108, 1, 1999.00, 0.00, 1999.00);
INSERT INTO Order_Items VALUES (8, 1008, 109, 1, 8999.00, 0.00, 8999.00);
INSERT INTO Order_Items VALUES (9, 1009, 103, 1, 2499.00, 0.00, 2499.00);
INSERT INTO Order_Items VALUES (10, 1010, 110, 1, 799.00, 0.00, 799.00);
COMMIT;

-- 3. ORDER MODIFICATION OPERATIONS

-- 3.1 Modify Order Amount
UPDATE Orders
SET Total_Amount = 13499.00
WHERE Order_ID = 1001;
COMMIT;

-- 3.2 Modify Order Date
UPDATE Orders
SET Order_Date = DATE '2026-09-02'
WHERE Order_ID = 1001;
COMMIT;

-- 4. ORDER_ITEMS MODIFICATION OPERATIONS

-- 4.1 Modify Order Item Quantity
UPDATE Order_Items
SET Quantity = 2,
    Total_Price = 25998.00
WHERE Order_Item_ID = 1;
COMMIT;

-- 4.2 Modify Order Item Price
UPDATE Order_Items
SET Unit_Price = 13500.00
WHERE Order_Item_ID = 1;
COMMIT;

-- 5. REPORTING QUERIES

-- 5.1 Customer Order History Report
SELECT
    o.Order_ID,
    o.Customer_ID,
    o.Order_Date,
    o.Total_Amount,
    o.Order_Status,
    oi.Product_ID,
    oi.Quantity,
    oi.Unit_Price,
    oi.Total_Price
FROM Orders o
JOIN Order_Items oi
ON o.Order_ID = oi.Order_ID
ORDER BY o.Order_Date;

-- 5.2 Customer-wise Order Summary
SELECT
    Customer_ID,
    COUNT(Order_ID) AS Total_Orders,
    SUM(Total_Amount) AS Total_Amount
FROM Orders
GROUP BY Customer_ID
ORDER BY Customer_ID;