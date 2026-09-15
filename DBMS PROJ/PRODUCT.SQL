CREATE TABLE Product (
    Product_ID   INT PRIMARY KEY,
    Product_Name VARCHAR2(100),
    Description  VARCHAR2(255),
    Price        NUMBER(10,2),
    Brand        VARCHAR2(100),
    Weight       NUMBER(8,2),
    Color        VARCHAR2(50),
    Material     VARCHAR2(100),
    Category_ID  INT,
    Supplier_ID  INT
);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(101, 'KALLAX Shelf Unit', 'Versatile shelf unit for storage and display', 4999.00, 'IKEA', 18.50, 'White', 'Particleboard', 7, 1);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(102, 'MALM Bed Frame', 'Simple modern bed frame for bedrooms', 12999.00, 'IKEA', 35.00, 'White', 'Wood', 2, 2);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(103, 'LACK Coffee Table', 'Minimal coffee table for living rooms', 2499.00, 'IKEA', 8.20, 'Black', 'Particleboard', 1, 3);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(104, 'POANG Armchair', 'Comfortable armchair with curved design', 6999.00, 'IKEA', 12.50, 'Brown', 'Wood', 1, 4);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(105, 'MICKE Desk', 'Compact desk suitable for home offices', 5999.00, 'IKEA', 21.00, 'White', 'Particleboard', 5, 5);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(106, 'INGOLF Dining Chair', 'Classic dining chair with comfortable seating', 3999.00, 'IKEA', 7.80, 'Black', 'Wood', 4, 6);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(107, 'FADO Table Lamp', 'Decorative table lamp with soft lighting', 1499.00, 'IKEA', 1.20, 'White', 'Glass', 8, 7);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(108, 'MULIG Clothes Rack', 'Simple rack for organizing clothes', 1999.00, 'IKEA', 3.50, 'White', 'Steel', 7, 8);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(109, 'ÄPPLARÖ Outdoor Table', 'Outdoor table suitable for balconies and patios', 8999.00, 'IKEA', 24.00, 'Brown', 'Acacia Wood', 6, 9);

INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Brand, Weight, Color, Material, Category_ID, Supplier_ID)
VALUES
(110, 'FEJKA Artificial Plant', 'Low-maintenance artificial decorative plant', 799.00, 'IKEA', 0.80, 'Green', 'Plastic', 10, 10);

COMMIT;