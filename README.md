# Meesho Jewelry Marketplace Database

## Introduction

The **Meesho Jewelry Marketplace Database** is a relational database designed for a multi-vendor online jewelry marketplace inspired by Meesho. It manages customer information, seller details, jewelry products, categories, shopping carts, orders, payments, shipments, and product reviews. The database is designed to organize data efficiently, reduce redundancy, and support smooth marketplace operations.

---

## Objective

* To design a relational database for a Meesho-inspired jewelry marketplace.
* To manage customer, seller, and product information efficiently.
* To maintain records of orders, payments, shipments, and reviews.
* To reduce data redundancy using proper database design.
* To ensure data integrity through Primary Keys and Foreign Keys.
* To demonstrate the practical implementation of DBMS concepts in an e-commerce platform.

---

## Motivation of the Project

The motivation behind this project is the rapid growth of online shopping and the increasing demand for jewelry through e-commerce platforms. Managing large volumes of customer, seller, product, and order data manually is difficult and prone to errors. This project provides a structured database that improves data management, supports efficient business operations, and offers a better shopping experience for customers and sellers.

---

## Stakeholders

* Customers
* Sellers
* Administrator
* Payment Service Providers
* Delivery Partners
* Suppliers
* Warehouse Staff
* Customer Support Team
* Inventory Manager
* Marketing Team
* Business Owner

---

## Entities

* Customer
* Seller
* Product
* Category
* Cart
* Order
* Order_Item
* Payment
* Shipment
* Review
* Inventory
* Administrator

---

## Attributes

* Customer_ID
* Customer_Name
* Email
* Phone_Number
* Password
* Address
* Seller_ID
* Seller_Name
* Store_Name
* Product_ID
* Product_Name
* Description
* Price
* Stock
* Image
* Category_ID
* Category_Name
* Cart_ID
* Quantity
* Order_ID
* Order_Date
* Total_Amount
* Order_Status
* Order_Item_ID
* Payment_ID
* Payment_Method
* Payment_Status
* Payment_Date
* Shipment_ID
* Delivery_Address
* Shipment_Status
* Delivery_Date
* Review_ID
* Rating
* Review_Text
* Review_Date
* Inventory_ID
* Stock_Quantity
* Last_Updated
* Admin_ID
* Admin_Name

---

## Primary Keys

* Customer_ID
* Seller_ID
* Product_ID
* Category_ID
* Cart_ID
* Order_ID
* Order_Item_ID
* Payment_ID
* Shipment_ID
* Review_ID
* Inventory_ID
* Admin_ID

---

## Relationships

* Customer owns Cart.
* Customer places Order.
* Customer writes Review.
* Customer makes Payment.
* Seller lists Product.
* Seller manages Inventory.
* Seller receives Order.
* Category categorizes Product.
* Cart contains Product.
* Order includes Order_Item.
* Product appears in Order_Item.
* Order has Payment.
* Order has Shipment.
* Product receives Review.
* Shipment delivers Order.
* Administrator manages Customers, Sellers, Products, Categories, and Orders.
