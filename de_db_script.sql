-- Create database
CREATE DATABASE IF NOT EXISTS de_db;
USE de_db;

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(2),
    signup_date DATE
);

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

-- Insert customers
INSERT INTO customers VALUES (1, 'Diana', 'Garcia', 'diana.garcia1@example.com', 'Chicago', 'AZ', '2024-01-01');
INSERT INTO customers VALUES (2, 'Jane', 'Rodriguez', 'jane.rodriguez2@example.com', 'Phoenix', 'CA', '2023-09-11');
INSERT INTO customers VALUES (3, 'Charlie', 'Martinez', 'charlie.martinez3@example.com', 'Phoenix', 'IL', '2023-07-31');
INSERT INTO customers VALUES (4, 'Diana', 'Jones', 'diana.jones4@example.com', 'Los Angeles', 'CA', '2023-11-05');
INSERT INTO customers VALUES (5, 'Bob', 'Rodriguez', 'bob.rodriguez5@example.com', 'Houston', 'IL', '2023-11-19');
INSERT INTO customers VALUES (6, 'Hank', 'Martinez', 'hank.martinez6@example.com', 'Los Angeles', 'NY', '2023-11-26');
INSERT INTO customers VALUES (7, 'Bob', 'Rodriguez', 'bob.rodriguez7@example.com', 'Los Angeles', 'AZ', '2023-08-11');
INSERT INTO customers VALUES (8, 'Frank', 'Brown', 'frank.brown8@example.com', 'Los Angeles', 'CA', '2023-11-23');
INSERT INTO customers VALUES (9, 'Charlie', 'Johnson', 'charlie.johnson9@example.com', 'Phoenix', 'NY', '2023-08-08');
INSERT INTO customers VALUES (10, 'Alice', 'Brown', 'alice.brown10@example.com', 'New York', 'IL', '2023-10-09');
INSERT INTO customers VALUES (11, 'Eve', 'Johnson', 'eve.johnson11@example.com', 'Los Angeles', 'NY', '2023-03-08');
INSERT INTO customers VALUES (12, 'Hank', 'Davis', 'hank.davis12@example.com', 'Chicago', 'NY', '2023-06-27');
INSERT INTO customers VALUES (13, 'Grace', 'Miller', 'grace.miller13@example.com', 'New York', 'TX', '2023-04-11');
INSERT INTO customers VALUES (14, 'Eve', 'Williams', 'eve.williams14@example.com', 'Chicago', 'TX', '2023-12-10');
INSERT INTO customers VALUES (15, 'Grace', 'Jones', 'grace.jones15@example.com', 'New York', 'TX', '2023-08-07');
INSERT INTO customers VALUES (16, 'Alice', 'Miller', 'alice.miller16@example.com', 'Chicago', 'TX', '2023-10-07');
INSERT INTO customers VALUES (17, 'Bob', 'Davis', 'bob.davis17@example.com', 'Houston', 'NY', '2023-10-25');
INSERT INTO customers VALUES (18, 'Bob', 'Davis', 'bob.davis18@example.com', 'Phoenix', 'CA', '2023-02-13');
INSERT INTO customers VALUES (19, 'Jane', 'Williams', 'jane.williams19@example.com', 'Chicago', 'AZ', '2023-01-07');
INSERT INTO customers VALUES (20, 'Jane', 'Davis', 'jane.davis20@example.com', 'Houston', 'NY', '2023-03-20');
INSERT INTO customers VALUES (21, 'John', 'Smith', 'john.smith21@example.com', 'Phoenix', 'TX', '2023-02-13');
INSERT INTO customers VALUES (22, 'Diana', 'Miller', 'diana.miller22@example.com', 'Phoenix', 'NY', '2023-04-10');
INSERT INTO customers VALUES (23, 'Eve', 'Rodriguez', 'eve.rodriguez23@example.com', 'Houston', 'TX', '2023-11-09');
INSERT INTO customers VALUES (24, 'Charlie', 'Martinez', 'charlie.martinez24@example.com', 'Chicago', 'TX', '2023-03-26');
INSERT INTO customers VALUES (25, 'Frank', 'Rodriguez', 'frank.rodriguez25@example.com', 'New York', 'TX', '2023-02-05');
INSERT INTO customers VALUES (26, 'Diana', 'Davis', 'diana.davis26@example.com', 'Houston', 'AZ', '2023-05-13');
INSERT INTO customers VALUES (27, 'Grace', 'Brown', 'grace.brown27@example.com', 'Phoenix', 'AZ', '2023-03-19');
INSERT INTO customers VALUES (28, 'Frank', 'Johnson', 'frank.johnson28@example.com', 'Phoenix', 'IL', '2023-02-06');
INSERT INTO customers VALUES (29, 'Diana', 'Johnson', 'diana.johnson29@example.com', 'Chicago', 'NY', '2023-09-18');
INSERT INTO customers VALUES (30, 'John', 'Miller', 'john.miller30@example.com', 'Phoenix', 'TX', '2023-02-19');

-- Insert transactions
INSERT INTO transactions VALUES (1, 10, '2023-08-20', 250.79, 'Credit Card', 'Failed');
INSERT INTO transactions VALUES (2, 13, '2023-07-29', 47.03, 'Bank Transfer', 'Pending');
INSERT INTO transactions VALUES (3, 10, '2023-11-20', 291.47, 'Debit Card', 'Completed');
INSERT INTO transactions VALUES (4, 30, '2023-09-13', 291.54, 'Credit Card', 'Completed');
INSERT INTO transactions VALUES (5, 27, '2023-06-18', 267.1, 'Credit Card', 'Pending');
INSERT INTO transactions VALUES (6, 5, '2023-10-23', 413.73, 'Credit Card', 'Failed');
INSERT INTO transactions VALUES (7, 30, '2023-08-16', 70.21, 'PayPal', 'Refunded');
INSERT INTO transactions VALUES (8, 21, '2023-06-28', 409.18, 'PayPal', 'Pending');
INSERT INTO transactions VALUES (9, 30, '2023-11-16', 245.6, 'Credit Card', 'Failed');
INSERT INTO transactions VALUES (10, 2, '2023-07-15', 228.9, 'PayPal', 'Failed');
INSERT INTO transactions VALUES (11, 27, '2023-06-13', 452.17, 'Bank Transfer', 'Completed');
INSERT INTO transactions VALUES (12, 25, '2023-09-23', 471.12, 'PayPal', 'Refunded');
INSERT INTO transactions VALUES (13, 26, '2023-10-06', 437.27, 'Bank Transfer', 'Pending');
INSERT INTO transactions VALUES (14, 18, '2023-08-26', 256.91, 'Bank Transfer', 'Refunded');
INSERT INTO transactions VALUES (15, 6, '2023-10-16', 279.83, 'Credit Card', 'Pending');
INSERT INTO transactions VALUES (16, 11, '2023-06-18', 30.66, 'Bank Transfer', 'Refunded');
INSERT INTO transactions VALUES (17, 15, '2023-06-21', 38.53, 'Bank Transfer', 'Pending');
INSERT INTO transactions VALUES (18, 19, '2023-11-16', 461.49, 'PayPal', 'Failed');
INSERT INTO transactions VALUES (19, 17, '2023-11-28', 59.27, 'Bank Transfer', 'Pending');
INSERT INTO transactions VALUES (20, 12, '2023-06-14', 256.25, 'PayPal', 'Refunded');
INSERT INTO transactions VALUES (21, 28, '2023-08-22', 272.52, 'Bank Transfer', 'Completed');
INSERT INTO transactions VALUES (22, 23, '2023-08-13', 109.78, 'Debit Card', 'Failed');
INSERT INTO transactions VALUES (23, 6, '2023-07-15', 192.79, 'Debit Card', 'Pending');
INSERT INTO transactions VALUES (24, 5, '2023-08-03', 310.68, 'Bank Transfer', 'Completed');
INSERT INTO transactions VALUES (25, 3, '2023-09-27', 447.53, 'Bank Transfer', 'Completed');
INSERT INTO transactions VALUES (26, 3, '2023-08-19', 36.37, 'PayPal', 'Pending');
INSERT INTO transactions VALUES (27, 13, '2023-11-12', 256.14, 'Bank Transfer', 'Refunded');
INSERT INTO transactions VALUES (28, 3, '2023-06-22', 22.16, 'Bank Transfer', 'Failed');
INSERT INTO transactions VALUES (29, 14, '2023-10-06', 28.1, 'Credit Card', 'Failed');
INSERT INTO transactions VALUES (30, 9, '2023-09-21', 48.79, 'PayPal', 'Failed');
