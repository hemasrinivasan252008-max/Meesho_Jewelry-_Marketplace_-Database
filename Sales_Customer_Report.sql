
SELECT COUNT(*) FROM ORDERS;

  COUNT(*)
----------
         5
SELECT SUM(TOTAL_AMOUNT) FROM ORDERS;
SUM(TOTAL_AMOUNT)
-----------------
             5994

SELECT AVG(TOTAL_AMOUNT) FROM ORDERS;
AVG(TOTAL_AMOUNT)
-----------------
           1198.8

SELECT MIN(PRICE) FROM PRODUCT;
MIN(PRICE)
----------
       599
SELECT MAX(PRICE) FROM PRODUCT;

MAX(PRICE)
----------
      1599

SELECT
    COUNT(*) AS TOTAL_ORDERS,
    SUM(TOTAL_AMOUNT) AS TOTAL_SALES,
    AVG(TOTAL_AMOUNT) AS AVERAGE_SALES
FROM ORDERS;

TOTAL_ORDERS TOTAL_SALES AVERAGE_SALES
------------ ----------- -------------
           5        5994        1198.8



SELECT
    C.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
FROM CUSTOMER C
INNER JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
GROUP BY C.CUSTOMER_ID, C.CUSTOMER_NAME
ORDER BY TOTAL_PURCHASE DESC;

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_PURCHASE
----------- -------------------------------------------------- --------------
          1 Priya                                                        2797
          2 Anu                                                          1599
          3 Divya                                                         999
          5 Meena                                                         599


SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD
FROM PRODUCT P
INNER JOIN ORDER_DETAILS OD
ON P.PRODUCT_ID = OD.PRODUCT_ID
GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
ORDER BY TOTAL_QUANTITY_SOLD DESC;


PRODUCT_ID PRODUCT_NAME                                                                                         TOTAL_QUANTITY_SOLD
---------- ---------------------------------------------------------------------------------------------------- -------------------
       201 Gold Plated Necklace                                                                                                   2
       202 Diamond Earrings                                                                                                       1
       205 Stone Ring                                                                                                             1
       203 Pearl Bracelet                                                                                                         1



SELECT
    C.CATEGORY_ID,
    C.CATEGORY_NAME,
    SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD
FROM CATEGORY C
INNER JOIN PRODUCT P
ON C.CATEGORY_ID = P.CATEGORY_ID
INNER JOIN ORDER_DETAILS OD
ON P.PRODUCT_ID = OD.PRODUCT_ID
GROUP BY C.CATEGORY_ID, C.CATEGORY_NAME
ORDER BY TOTAL_QUANTITY_SOLD DESC;


CATEGORY_ID CATEGORY_NAME                                                                                        TOTAL_QUANTITY_SOLD
----------- ---------------------------------------------------------------------------------------------------- -------------------
          2 Necklaces                                                                                                              2
          1 Rings                                                                                                                  1
          3 Earrings                                                                                                               1
          5 Bangles                                                                                                                1

