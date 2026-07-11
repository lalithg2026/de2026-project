use de_db;
-- Select all columns from the customers table.
select * from customers;
-- Select all columns from the transactions table.
select * from transactions;
-- Select the first_name and last_name of all customers.
select first_name, last_name,email from customers;
-- Select the email of all customers.
-- Select the city and state of all customers.
select city, state from customers;
-- Select the customer_id and amount from the transactions table.
select distinct customer_id from transactions;

-- Select all customers who live in the state 'CA'.
select * from customers where state='CA';
-- Select all customers who live in the city 'Boston'.
select * from customers where city ='Chicago';
update customers
	SET city ='CHICAGO'
	where customer_id=1;
select * from customers where customer_id=1;
-- Get customers fron Chicago -- case insesitive
select * from customers where city ='Chicago';
select * from customers where upper(city) ='CHICAGO';

-- Select all transactions where the amount is greater than 50.
select * from transactions where amount > 50;

-- Select all transactions where the payment_method is 'Credit Card'.
select * from transactions where payment_method = 'Credit Card';
-- Select all customers who signed up after '2023-01-01'.
select * from customers where signup_date>='2023-01-01';
-- Select all customers who made transactions that occurred on '2024-01-01' or '2023-11-05'.
select * from customers where signup_date='2024-01-01';
select * from customers where signup_date='2024-01-01' or signup_date='2023-11-05';
select * from customers where signup_date IN ('2024-01-01', '2023-11-05');

-- Select the first 5 customers from the customers table.
select * from customers limit 5; 
-- Select the first 10 transactions from the transactions table.
select * from transactions limit 10;
-- Select all customers ordered by last_name.
select * from customers order by last_name asc; -- sorting
-- Select all transactions ordered by amount in descending order.

-- Select all customers whose first_name starts with 'A'.
-- =; !=
-- select * from customers where first_name = 'Diana'; -- EXACT match, we use '='; != means NOT equal to
select * from customers where first_name like '%A%';    -- Wild card; PARTIAL SEARCH; RE - regular expression

-- Select all customers whose email contains '.com'.
select * from customers where email like '%.com%';
select * from customers where email not like '%.com%';

-- Select all transactions where status is 'Completed'.
select * from transactions where status ='Completed';

-- Select all transactions where amount is less than 20.

-- ####################################################
-- I. AGGREGATIONs:--- SUMMARY report (help Decision Making)
-- ####################################################
-- Write a query to find the total number of customers in the customers table.
select 'customers' table_name, count(*) total from customers;
-- Write a query to find the total number of transactions recorded.
select count(*) total_transactions from transactions;

-- APPEND rows from Query_result1 and Query_result2
select 'customers' table_name, count(*) total from customers
UNION 
select 'transactions' table_name, count(*) total from transactions;

-- Write a query to calculate the total transaction amount across all transactions.
select * from transactions;
select sum(amount) tot_transaction_amount from transactions;

-- Write a query to find the average transaction amount.
select avg(amount) tot_transaction_amount from transactions;
-- Write a query to find the highest transaction amount.
select max(amount) tot_transaction_amount from transactions;
-- Write a query to find the lowest transaction amount.

-- Write a query to count the number of transactions per payment method.
select count(*) from transactions; -- give TOTAL txns on ENTIRE table
select * from transactions;
select * from transactions order by payment_method;  -- SHUFFLE data/ReArrange data -- but bring all the data -- no loss of data
select payment_method, count(*) as txn_cnt from transactions group by payment_method;  
select payment_method, max(amount) as txn_cnt from transactions group by payment_method;  

-- Group by -- per each Group/category/Buckets/Partitions *****

-- Write a query to count the number of transactions per status.

-- Write a query to find the total transaction amount per customer.

-- Write a query to find the number of transactions per customer.
-- How many transactions did A/Each customer make.
select customer_id, count(*) cust_txn_cnt from transactions group by customer_id;
select customer_id, count(1) cust_txn_cnt from transactions group by customer_id;
select customer_id, count(*) cust_txn_cnt from transactions group by customer_id;

-- How many transactions did A/Each customer make. And WHO made the MAX txns.
-- FROM - use -> Where
-- Group by - use -> HAVING
-- Approach_1: group by + having
select customer_id, count(*) cust_txn_cnt 
from transactions 
	group by customer_id 
    HAVING count(*) = 3;
		
-- Approach_2: CTAS - PHYSICAL table
select * from transactions;
-- 2.1. Per each customer get the no_of_txns they made 
--      Generated on the fly -- at Run time -- derived values *****
select customer_id, count(*) cust_txn_cnt from transactions group by customer_id;

-- 2.2. Store the derived result in a temp PHYSICAL table:
-- CTAS
create table cust_txn_cnt_tbl as 
	select customer_id, count(*) cust_txn_cnt from transactions group by customer_id;
-- 2.3. From the TEMP table(from group by) -> get customers with HIGHEST txns.
		select * from cust_txn_cnt_tbl where cust_txn_cnt = 3;
    
-- Approach_3: Logical table - Nested Queries. Select within Select.
select * from (
	select customer_id, count(*) cust_txn_cnt from transactions group by customer_id
) tbl
where cust_txn_cnt= 3 ;

select * from transactions; -- Transactional data(FACT). CUSTOMER -- may be DIMENSIONAL data)
-- Find the customers with highest amount on payment_method = credit card.
-- Requirement: For each customer - group by (customer_id, payment_method) -> max(payment_method)
select customer_id, payment_method, max(amount) max_amount  from transactions group by customer_id, payment_method;
