use cw1_db;

-- ###################################
-- I. SELECT - Query related Questions
-- ###################################
-- 1. Select employees from a specific department

-- 2. Select employees with a salary greater than 75,000

-- 3. Select employees hired after January 1, 2020

-- 4. Select employees with first names starting with 'J'

-- 5. Select employees with salaries between 60,000 and 80,000

-- 6. Select employees who work in either Engineering or Marketing

-- 7. Select employees who do not belong to IT Support

-- 8. Select employees whose last name is 'Smith'

-- 9. Select employees with missing email addresses

-- 10. Select employees hired in the year 2019

-- 11. Select employees located in 'New York' based on their address

-- 12. Select departments located in 'San Francisco'

-- 13. Select employees sorted by salary in descending order

-- 14. Select employees whose email contains 'example'

-- 15. Select employees with salaries lower than 70,000 and working in HR

-- 16. Select employees whose salary is exactly 75,000  

-- 17. Select employees whose last name ends with 'son'  

-- 18. Select employees whose salary is not between 60,000 and 90,000  

-- 19. Select employees who were hired before June 1, 2018  

-- 20. Select employees belonging to departments with a location in 'Boston'  

-- 21. Select employees who do not have an assigned department  

-- 22. Select employees with either 'Smith' or 'Brown' as last names  

-- 23. Select employees living in 'Chicago' based on their address  

-- 24. Select employees whose hire date is in 2021 and salary is above 80,000  

-- 25. Select employees ordered alphabetically by first name  

-- 26. Extract employees who have salaries that are NULL (missing values)

-- 27. Extract employees who have been hired in the last 40 months
-- 28. Extract departments with no employees assigned

-- 29. Extract employees whose first names are longer than 5 characters

-- 30. Extract employees whose salaries are unusually low or high (potential outliers)

-- 31. Extract employees where the email does not match a standard format (contains spaces)

-- 32. Extract employees who have a missing address

-- 33. Extract employees hired in February (useful for seasonal hiring analysis)

-- 34. Extract employees who have changed departments at least once

-- 35. Extract employees whose salary is above the average salary of their department

-- 36. Extract employees who have the same first and last name

-- 37. Extract addresses where ZIP codes contain non-numeric characters (possible data issues)

-- 38. Extract employees whose hire dates fall on weekends (potential onboarding anomalies)

-- 39. Extract departments where employees earn significantly different salaries (potential inconsistencies)

-- 40. Extract employees with duplicate first and last names in the database



-- ###################################
-- II. ETL.
-- ###################################
-- ETL (Extract, Transform, Load) processes, focusing on data extraction, cleaning, and transformation.
-- 1. Extract employees whose salary needs transformation (rounding)

-- 2. Extract employees with missing email addresses

-- 3. Extract employees with improperly formatted emails (checking for '@')
 
-- 4. Extract employees hired in the last 3 years

-- 5. Extract duplicate email addresses to clean up duplicates

-- 6. Extract employees from departments with missing location information

-- 7. Extract employees whose names contain special characters (data cleansing)

-- 8. Extract employees without department assignments (NULL values)

-- 9. Extract employees living in a specific ZIP code range for location-based analysis

-- 10. Extract employees with the highest salaries in each department

-- 11. Extract employees hired on a weekday (useful for time-based ETL logic)

-- 12. Extract departments with fewer than 3 employees for further ETL actions

-- 13. Extract employees whose salary falls outside the expected range (flagging anomalies)

-- 14. Extract employees with mismatched department locations

-- 15. Extract employees with non-standard hire dates (possible data inconsistencies)


-- ###################################
-- III. Group By
-- ###################################
-- 1. Count employees per department

-- 2. Average salary per department

-- 3. Maximum salary per department

-- 4. Minimum salary per department

-- 5. Total salary expenditure per department

-- 6. Count employees hired per year

-- 7. Count employees in each city

-- 8. Count employees per ZIP code

-- 9. Count employees with the same first name

-- 10. Count employees per salary range (grouping by rounded salary)

-- 11. Count employees per department, filtering those with more than 5 employees

-- 12. Average hire year per department

-- 13. Total salary per location

-- 14. Number of employees per job role (assuming role column exists)

-- 15. Count of employees per state

-- 16. Count of employees per month hired

-- 17. Count of employees with missing email addresses

-- 18. Maximum salary per city

-- 19. Minimum salary per city

-- 20. Employees grouped by first letter of last name


-- ###################################
--IV. 15 MySQL JOIN questions 
-- ###################################
-- NOTE: Insert additional rows for testing:

INSERT INTO cw1_db.Department(DepartmentID,DepartmentName,Location)
VALUES (6,'Sales','New York');

INSERT INTO cw1_db.Employee
(EmployeeID,
FirstName,
LastName,
Email,
HireDate,
Salary)
VALUES (31,'JOHN','WHITE','','2025-05-20',99999);

-- 1. Retrieve all employees along with their department names.

-- 2. Find employees' full details along with their department location.

-- 3. Get employees' names and their respective addresses.

-- 4. List all departments that have employees working in them.

-- 5. Retrieve employees along with their department and address details.

-- 6. Find employees who earn more than $70,000 along with their department names.

-- 7. Get employees who were hired before 2020 along with their addresses.

-- 8. List all employees with their departments, even if they do not belong to a department.
--    EMP to DEPT

-- 9. Find all departments, including those without employees.
--    DEPT to EMP

-- 10. Retrieve employees and departments where department information is missing.
--    EMP to DEPT

-- 11. Find employees whose addresses are missing.
--    EMP to ADDR

-- 12. Get a count of employees per department on DepartmentName
--    DEPT to EMP

-- 13. Retrieve employees who work in the same city where their department is located.

-- 14. Find the highest-paid employee in each department.

-- 15. Retrieve employees who belong to departments located in the same city as their addresses.
--     get the Department name as well.




-- ###############################################################################
-- The END. The above had helped practice afew Queries (close to 100 questions).
-- ###############################################################################




















