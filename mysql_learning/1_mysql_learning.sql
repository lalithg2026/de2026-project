-- Create database MySQL - uses SQL - Structured(csv/relational); Q: Query : FETCH/Read/Get what records - ALL/Some(Where); L : Language
-- database: top folder
-- schema: sub-folder
-- table: file (csv, xls)
-- view
CREATE DATABASE IF NOT EXISTS de_db;
USE de_db;
show tables; -- Error Code: 1046. No database selected Select the default DB to be used by double-clicking its name in the SCHEMAS list in the sidebar.

-- Client/tool (MySQL workbench/Dbeaver) - Server (ysql_containe running on Docker) - provides some service.
-- Create customers table
-- Defining schema for table -- which column should have what kind of Data - data ype, and other constraints
-- PRIMARY KEY: When you mark a column(s) as PK, it should have 1. No Empty values 2. Save value should not be present.
--              1. PK = Not NULL + Distinct values in that column.  *****************
-- CONSTRAING = RULE. e.g. Primary Key
-- MySQL engine enforces the rule which you request at Table creation.
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(2),
    signup_date DATE
);

# Duplicate/Repeat/REDUNDANCY
# Insert one row into the table 
INSERT INTO customers VALUES (1, 'Diana', 'Garcia', 'diana.garcia1@example.com', 'Chicago', 'AZ', '2024-01-01');
-- Error Code: 1062. Duplicate entry '1' for key 'customers.PRIMARY'

-- ################# 2.transactions ############################

-- Create transactions table
CREATE TABLE transactions (
    txn_id INT PRIMARY KEY,
    customer_id INT,
    txn_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert transactions
-- IMP: 1. Need to create a record in CUSTOMER . 2. ONLY then we can create a RECORD (after customer row is preseent) in the TRANCSACTON.
--      1. Parent: Customer  2. Child : Transactions  *********
--       WHY: A transaction cannot occur without a CUSTOMER.
-- If we needto create a Transaction(Child), the CUSTOMER(parent) need to be already existing.alter
INSERT INTO transactions VALUES (1, 10, '2023-08-20', 250.79, 'Credit Card', 'Failed');
INSERT INTO transactions VALUES (2, 40, '2023-07-29', 47.03, 'Bank Transfer', 'Pending');
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`de_db`.`transactions`, CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))













