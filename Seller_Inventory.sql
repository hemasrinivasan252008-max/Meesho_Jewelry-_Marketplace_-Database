CREATE TABLE Seller (
    Seller_ID NUMBER PRIMARY KEY,
    Seller_Name VARCHAR2(100) NOT NULL,
    Store_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Phone_Number VARCHAR2(15) UNIQUE,
    Address VARCHAR2(100)
);
Table Created

CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    Product_ID NUMBER NOT NULL,
    Seller_ID NUMBER NOT NULL,
    Stock_Quantity NUMBER NOT NULL,
    Stock_Status VARCHAR2(20) NOT NULL,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID)
);
Table Created

CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Description VARCHAR2(500),
    Price NUMBER(10,2) NOT NULL,
    Image VARCHAR2(255),
    Seller_ID NUMBER NOT NULL,
    CONSTRAINT FK_PRODUCT_SELLER
        FOREIGN KEY (Seller_ID)
        REFERENCES Seller(Seller_ID)
);
Table Created

INSERT INTO Seller VALUES
(101, 'Anitha Kumar', 'Elegant Jewels',
'anitha@gmail.com', '9876543210', 'Chennai');
1 row created
INSERT INTO Seller VALUES
(102, 'Priya Sharma', 'Shine Collections',
'priya@gmail.com', '9876543211', 'Bangalore');
1 row created
INSERT INTO Seller VALUES
(103, 'Kavitha Raj', 'Jewel World',
'kavitha@gmail.com', '9876543212', 'Coimbatore');
1 row created
INSERT INTO Seller VALUES
(104, 'Divya Singh', 'Trendy Jewels',
'divya@gmail.com', '9876543213', 'Hyderabad');
1 row created
INSERT INTO Seller VALUES
(105, 'Meena Devi', 'Royal Accessories',
'meena@gmail.com', '9876543214', 'Mumbai');
1 row created
INSERT INTO Inventory VALUES
(1, 1, 101, 50, 'Available');
1 row created
INSERT INTO Inventory VALUES
(2, 2, 102, 30, 'Available');
1 row created
INSERT INTO Inventory VALUES
(3, 3, 103, 0, 'Unavailable');
1 row created
INSERT INTO Inventory VALUES
(4, 4, 104, 25, 'Available');
1 row created
INSERT INTO Inventory VALUES
(5, 5, 105, 0, 'Unavailable');
1 row created
INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Image, Seller_ID)
VALUES
(1, 'Gold Plated Necklace', 'Elegant gold plated necklace for women', 599.00, 'gold_necklace.jpg', 101);
1 row created
INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Image, Seller_ID)
VALUES
(2, 'Diamond Earrings', 'Stylish diamond earrings for women', 799.00, 'diamond_earrings.jpg', 102);
1 row created
INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Image, Seller_ID)
VALUES
(3, 'Pearl Bracelet', 'Beautiful pearl bracelet for women', 450.00, 'pearl_bracelet.jpg', 103);
1 row created
INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Image, Seller_ID)
VALUES
(4, 'Silver Anklet', 'Traditional silver anklet design', 350.00, 'silver_anklet.jpg', 104);
1 row created
INSERT INTO Product
(Product_ID, Product_Name, Description, Price, Image, Seller_ID)
VALUES
(5, 'Stone Ring', 'Trendy stone ring for women', 299.00, 'stone_ring.jpg', 105);
1 row created
COMMIT;
commit completed

SELECT
    i.Inventory_ID,
    p.Product_Name,
    s.Seller_Name,
    s.Store_Name,
    s.Email,
    s.Phone_Number,
    i.Stock_Quantity,
    i.Stock_Status
FROM Inventory i
JOIN Product p
ON i.Product_ID = p.Product_ID
JOIN Seller s
ON i.Seller_ID = s.Seller_ID;

SELECT
    i.Inventory_ID,
    p.Product_Name,
    s.Store_Name,
    i.Stock_Quantity,
    i.Stock_Status
FROM Inventory i
JOIN Product p
ON i.Product_ID = p.Product_ID
JOIN Seller s
ON i.Seller_ID = s.Seller_ID
WHERE i.Stock_Status = 'Available';

SELECT
    i.Inventory_ID,
    p.Product_Name,
    s.Store_Name,
    i.Stock_Quantity,
    i.Stock_Status
FROM Inventory i
JOIN Product p
ON i.Product_ID = p.Product_ID
JOIN Seller s
ON i.Seller_ID = s.Seller_ID
WHERE i.Stock_Status = 'Unavailable';

UPDATE Inventory
SET Stock_Quantity = 20,
    Stock_Status = 'Available'
WHERE Inventory_ID = 3;

COMMIT;
commit completed

SELECT *
FROM Inventory
WHERE Inventory_ID = 3;