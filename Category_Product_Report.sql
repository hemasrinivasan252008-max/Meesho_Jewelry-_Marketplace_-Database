CREATE TABLE CATEGORY (
    CATEGORY_ID NUMBER(5) PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(50) NOT NULL,
    CATEGORY_DESCRIPTION VARCHAR2(200)
);
Table created
INSERT INTO CATEGORY VALUES (1, 'Earrings', 'Different types of jewelry earrings');
1 row created
INSERT INTO CATEGORY VALUES (2, 'Necklaces', 'Necklaces and chains');
1 row created
INSERT INTO CATEGORY VALUES (3, 'Rings', 'Fashion and traditional rings');
1 row created
INSERT INTO CATEGORY VALUES (4, 'Bangles', 'Bangles and bracelets');
1 row created
INSERT INTO CATEGORY VALUES (5, 'Bracelets', 'Fashion bracelets');
1 row created
INSERT INTO CATEGORY VALUES (6, 'Anklets', 'Traditional and fashion anklets');
1 row created
INSERT INTO CATEGORY VALUES (7, 'Pendants', 'Pendants and pendant sets');
1 row created
INSERT INTO CATEGORY VALUES (8, 'Jewelry Sets', 'Complete jewelry sets');
1 row created
INSERT INTO CATEGORY VALUES (9, 'Nose Pins', 'Fashion and traditional nose pins');
1 row created
INSERT INTO CATEGORY VALUES (10, 'Hair Accessories', 'Jewelry-based hair accessories');
1 row created
COMMIT;
commit Complete
CREATE TABLE PRODUCT (
    PRODUCT_ID NUMBER(5) PRIMARY KEY,
    PRODUCT_NAME VARCHAR2(100) NOT NULL,
    DESCRIPTION VARCHAR2(200),
    PRICE NUMBER(10,2) NOT NULL,
    STOCK NUMBER(5) NOT NULL,
    IMAGE VARCHAR2(200),
    SELLER_ID NUMBER(5),
    CATEGORY_ID NUMBER(5),
    CONSTRAINT FK_PRODUCT_CATEGORY
        FOREIGN KEY (CATEGORY_ID)
        REFERENCES CATEGORY(CATEGORY_ID)
);
Table created 
INSERT INTO PRODUCT VALUES
(101, 'Gold Plated Earrings', 'Elegant gold plated earrings', 299.00, 20, 'earrings.jpg', 1, 1);
1 row created
INSERT INTO PRODUCT VALUES
(102, 'Pearl Necklace', 'Beautiful pearl necklace', 499.00, 15, 'necklace.jpg', 2, 2);
1 row created
INSERT INTO PRODUCT VALUES
(103, 'Fashion Ring', 'Stylish fashion ring', 199.00, 25, 'ring.jpg', 3, 3);
1 row created
INSERT INTO PRODUCT VALUES
(104, 'Traditional Bangles', 'Traditional decorative bangles', 349.00, 30, 'bangles.jpg', 4, 4);
1 row created
INSERT INTO PRODUCT VALUES
(105, 'Charm Bracelet', 'Trendy charm bracelet', 249.00, 18, 'bracelet.jpg', 5, 5);
1 row created
INSERT INTO PRODUCT VALUES
(106, 'Designer Anklet', 'Fashionable designer anklet', 299.00, 12, 'anklet.jpg', 6, 6);
1 row created
INSERT INTO PRODUCT VALUES
(107, 'Heart Pendant', 'Simple heart shaped pendant', 179.00, 22, 'pendant.jpg', 7, 7);
1 row created
INSERT INTO PRODUCT VALUES
(108, 'Jewelry Set', 'Complete matching jewelry set', 699.00, 10, 'set.jpg', 8, 8);
1 row created
INSERT INTO PRODUCT VALUES
(109, 'Nose Pin', 'Traditional fashion nose pin', 149.00, 20, 'nosepin.jpg', 9, 9);
1 row created
INSERT INTO PRODUCT VALUES
(110, 'Hair Jewelry', 'Decorative hair accessory', 229.00, 14, 'hair.jpg', 10, 10);
1 row created
COMMIT;
commit Complete
-- 5. RETRIEVE PRODUCT DATA

SELECT * FROM PRODUCT;



-- 7. UPDATE PRODUCT

UPDATE PRODUCT
SET PRICE = 600.00,
    STOCK = 50
WHERE PRODUCT_ID = 102;

1 row updated

COMMIT;
commit completed

-- 8. DELETE PRODUCT

DELETE FROM PRODUCT
WHERE PRODUCT_ID = 110;

1 row deleted

COMMIT;
commit complete 

-- 9. PRODUCT LISTING BY CATEGORY

SELECT C.CATEGORY_NAME,
       P.PRODUCT_NAME,
       P.PRICE,
       P.STOCK
FROM CATEGORY C
JOIN PRODUCT P
ON C.CATEGORY_ID = P.CATEGORY_ID
ORDER BY C.CATEGORY_NAME;



-- 10. PRODUCTS IN A SPECIFIC CATEGORY

SELECT C.CATEGORY_NAME,
       P.PRODUCT_NAME,
       P.PRICE,
       P.STOCK
FROM CATEGORY C
JOIN PRODUCT P
ON C.CATEGORY_ID = P.CATEGORY_ID
WHERE C.CATEGORY_NAME = 'Necklaces';


-- 11. PRODUCT COUNT BY CATEGORY

SELECT C.CATEGORY_NAME,
       COUNT(P.PRODUCT_ID) AS PRODUCT_COUNT
FROM CATEGORY C
LEFT JOIN PRODUCT P
ON C.CATEGORY_ID = P.CATEGORY_ID
GROUP BY C.CATEGORY_NAME
ORDER BY C.CATEGORY_NAME;

