CREATE TABLE Category (
    Category_ID   INT PRIMARY KEY,
    Category_Name VARCHAR2(100),
    Description   VARCHAR2(255)
);

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (1, 'Living Room', 'Furniture and accessories for living rooms');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (2, 'Bedroom', 'Furniture and accessories for bedrooms');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (3, 'Kitchen', 'Kitchen furniture and storage products');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (4, 'Dining', 'Dining tables, chairs and accessories');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (5, 'Office', 'Furniture and accessories for workspaces');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (6, 'Outdoor', 'Furniture and products for outdoor spaces');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (7, 'Storage', 'Storage solutions and organizers');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (8, 'Lighting', 'Lamps and lighting products');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (9, 'Bathroom', 'Bathroom furniture and accessories');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (10, 'Home Decor', 'Decorative products and accessories');

COMMIT;
