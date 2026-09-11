# <img width="202" height="148" alt="image" src="https://github.com/user-attachments/assets/964d1434-83e7-40f9-9376-ae5263cff675" />
 Meesho Jewelry Marketplace Database

## 📌 About the Project

The **Meesho Jewelry Marketplace Database** is a DBMS project designed to represent the database system of an online jewelry marketplace.

The project focuses on organizing and managing information related to jewelry products, categories, customers, sellers, orders, payments, deliveries, reviews, and other marketplace operations.

The database is designed using **relational database concepts** and will be implemented using **Oracle SQL**.

---

## 🎯 Project Objectives

- Design a structured database for a jewelry marketplace.
- Manage jewelry products and categories efficiently.
- Maintain customer and seller information.
- Manage orders, payments, and delivery details.
- Store product reviews and inventory information.
- Establish relationships between different entities.
- Perform database operations using SQL.
- Generate useful reports from the stored data.
- Apply DBMS concepts such as normalization, keys, relationships, and constraints.

---

## 🗂️ Main Entities

The planned database consists of the following major entities:

- Customer
- Seller
- Administrator
- Category
- Product
- Cart
- Order
- Order Item
- Payment
- Shipment
- Review
- Inventory

---

## 🔗 Database Relationships

The database will establish relationships between the entities to represent the operations of an online jewelry marketplace.

Some major relationships include:

- Customer → Cart
- Customer → Order
- Customer → Review
- Seller → Product
- Category → Product
- Cart → Product
- Order → Order Item
- Product → Order Item
- Order → Payment
- Order → Shipment
- Product → Review
- Seller → Inventory
- Administrator → Marketplace Management

These relationships will help maintain data consistency and reduce unnecessary data duplication.

---

## 🛠️ Technologies Used

- **Oracle Database**
- **Oracle SQL**
- **SQL\*Plus**
- **Visual Studio Code**

---

## 📚 Project Development

The project is being developed step-by-step through different stages.

### Week 1 – Requirement Analysis & Database Design

- Identify the requirements of the jewelry marketplace.
- Identify entities and attributes.
- Define primary keys and foreign keys.
- Identify relationships between entities.
- Prepare the ER diagram.
- Perform initial database design.

### Week 2 – Functional Dependencies & Normalization

- Identify functional dependencies.
- Analyze redundancy.
- Identify insertion, update, and deletion anomalies.
- Apply normalization concepts.
- Refine the database design.

### Week 3 – SQL Implementation

- Create database tables.
- Define primary and foreign key constraints.
- Insert sample data.
- Retrieve data using SQL queries.
- Perform update and delete operations.
- Generate category-wise and product-related reports.

### Future Development

Further stages of the project will extend the database implementation and reporting based on the finalized database design.

---

## 💡 Key DBMS Concepts

This project demonstrates the practical application of:

- Entity-Relationship Modeling
- Relational Database Design
- Primary Keys
- Foreign Keys
- Constraints
- Functional Dependencies
- Normalization
- CRUD Operations
- SQL Joins
- Aggregate Functions
- Data Retrieval
- Database Reporting

---

## 📁 Project Structure

The repository will contain documentation, database design files, SQL scripts, and output files as the project progresses.

```text
Meesho_Jewelry_Marketplace_Database/
│
├── README.md
│
├── Documentation/
│
├── ER_Diagram/
│
├── SQL/
│
└── Outputs/
