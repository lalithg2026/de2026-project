-- Q1: List all customers
SELECT * FROM customers;

-- Q2: List all transactions
SELECT * FROM transactions;

-- Q3: Get customers who live in Phoenix
SELECT customer_id, first_name, last_name
FROM customers
WHERE city = 'Phoenix';

-- Q4: Get transactions above $300
SELECT txn_id, customer_id, amount
FROM transactions
WHERE amount > 300;

-- Q5: Find customers who signed up after July 1, 2023
SELECT customer_id, first_name, signup_date
FROM customers
WHERE signup_date > '2023-07-01';

-- Q6: Find failed transactions
SELECT txn_id, amount
FROM transactions
WHERE status = 'Failed';

-- Q7: Show customer full names
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;

-- Q8: Find customers whose email ends with example.com
SELECT customer_id, email
FROM customers
WHERE email LIKE '%example.com';

-- Q9: Find customers whose first name starts with 'D'
SELECT customer_id, first_name
FROM customers
WHERE first_name LIKE 'D%';

-- Q10: Convert city names to uppercase
SELECT UPPER(city) AS city_upper
FROM customers;

-- Q11: Extract signup year
SELECT customer_id, YEAR(signup_date) AS signup