-- 1. CREATE CATEGORY TABLE

CREATE TABLE Category (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50)
);

-- OUTPUT:
-- Table created.
-- 2. CREATE PRODUCT TABLE

CREATE TABLE Product (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category_id NUMBER,
    price NUMBER(10,2),
    stock NUMBER,
    FOREIGN KEY (category_id)
        REFERENCES Category(category_id)
);

-- OUTPUT:
-- Table created.
-- 3. INSERT DATA

INSERT INTO Category VALUES (1, 'Rings');
INSERT INTO Category VALUES (2, 'Necklaces');
INSERT INTO Category VALUES (3, 'Earrings');
INSERT INTO Category VALUES (4, 'Bracelets');
INSERT INTO Category VALUES (5, 'Bangles');

-- OUTPUT:
-- 1 row created.
-- 1 row created.
-- 1 row created.
-- 1 row created.
-- 1 row created.
SELECT * FROM Category;

-- OUTPUT:
-- CATEGORY_ID  CATEGORY_NAME
-- 1            Rings
-- 2            Necklaces
-- 3            Earrings
-- 4            Bracelets
-- 5            Bangles
-- 3. INSERT DATA
-- PRODUCT DATA

INSERT INTO Product VALUES (101, 'Gold Ring', 1, 2500, 20);
INSERT INTO Product VALUES (102, 'Diamond Necklace', 2, 8500, 10);
INSERT INTO Product VALUES (103, 'Pearl Earrings', 3, 1800, 25);
INSERT INTO Product VALUES (104, 'Silver Bracelet', 4, 2200, 15);
INSERT INTO Product VALUES (105, 'Gold Bangles', 5, 6000, 12);
-- OUTPUT:
-- 1 row created.
-- 1 row created.
-- 1 row created.
-- 1 row created.
-- 1 row created.
SELECT * FROM Product;
-- OUTPUT:
-- PRODUCT_ID  PRODUCT_NAME          CATEGORY_ID  PRICE  STOCK
-- 101         Gold Ring             1            2500   20
-- 102         Diamond Necklace      2            8500   10
-- 103         Pearl Earrings        3            1800   25
-- 104         Silver Bracelet       4            2200   15
-- 105         Gold Bangles          5            6000   12
-- 4. UPDATE PRODUCT

UPDATE Product
SET price = 2800,
    stock = 25
WHERE product_id = 101;
-- OUTPUT:
-- 1 row updated.
SELECT * FROM Product
WHERE product_id = 101;
-- OUTPUT:
-- PRODUCT_ID  PRODUCT_NAME  CATEGORY_ID  PRICE  STOCK
-- 101         Gold Ring     1            2800   25
-- DELETE PRODUCT

DELETE FROM Product
WHERE product_id = 105;
-- OUTPUT:
-- 1 row deleted.
SELECT * FROM Product;
-- OUTPUT:
-- 101  Gold Ring           1  2800  25
-- 102  Diamond Necklace    2  8500  10
-- 103  Pearl Earrings      3  1800  25
-- 104  Silver Bracelet     4  2200  15
-- 5. CATEGORY-WISE PRODUCT REPORT

SELECT c.category_name,
       p.product_name,
       p.price,
       p.stock
FROM Category c
JOIN Product p
ON c.category_id = p.category_id
ORDER BY c.category_name;
-- OUTPUT:
-- CATEGORY_NAME   PRODUCT_NAME        PRICE   STOCK
-- Bracelets       Silver Bracelet     2200    15
-- Earrings        Pearl Earrings      1800    25
-- Necklaces       Diamond Necklace    8500    10
-- Rings           Gold Ring            2800    25