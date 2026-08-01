create database cw1_db;
use cw1_db;

-- Create Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

-- Create Address table
CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    Street VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(50) NOT NULL,
    ZipCode VARCHAR(20) NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),
    DepartmentID INT,
    AddressID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID) ON DELETE CASCADE,
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID) ON DELETE CASCADE
);

--- Insert data into Department table
INSERT INTO Department (DepartmentID, DepartmentName, Location) VALUES 
(1, 'Human Resources', 'New York'),
(2, 'Engineering', 'San Francisco'),
(3, 'Marketing', 'Chicago'),
(4, 'Finance', 'Boston'),
(5, 'IT Support', 'Seattle');

-- Insert data into Address table
INSERT INTO Address (AddressID, Street, City, State, ZipCode) VALUES
(1, '123 Main St', 'New York', 'NY', '10001'),
(2, '456 Elm St', 'San Francisco', 'CA', '94101'),
(3, '789 Oak St', 'Chicago', 'IL', '60601'),
(4, '321 Pine St', 'Boston', 'MA', '02101'),
(5, '654 Maple St', 'Seattle', 'WA', '98101'),
(6, '987 Birch St', 'Austin', 'TX', '73301'),
(7, '741 Cedar St', 'Denver', 'CO', '80201'),
(8, '852 Pine St', 'Miami', 'FL', '33101'),
(9, '963 Maple St', 'Los Angeles', 'CA', '90001'),
(10, '159 Oak St', 'Chicago', 'IL', '60602'),
(11, '753 Walnut St', 'Dallas', 'TX', '75201'),
(12, '258 Cherry St', 'New York', 'NY', '10002'),
(13, '369 Peach St', 'Seattle', 'WA', '98102'),
(14, '147 Palm St', 'Las Vegas', 'NV', '89101'),
(15, '456 Spruce St', 'Phoenix', 'AZ', '85001'),
(16, '789 Cedar St', 'Portland', 'OR', '97201'),
(17, '654 Willow St', 'Houston', 'TX', '77001'),
(18, '321 Magnolia St', 'Atlanta', 'GA', '30301'),
(19, '741 Redwood St', 'Philadelphia', 'PA', '19101'),
(20, '963 Sycamore St', 'San Diego', 'CA', '92101'),
(21, '258 Aspen St', 'Nashville', 'TN', '37201'),
(22, '753 Chestnut St', 'Indianapolis', 'IN', '46201'),
(23, '147 Hickory St', 'Charlotte', 'NC', '28201'),
(24, '369 Acacia St', 'Salt Lake City', 'UT', '84101'),
(25, '852 Juniper St', 'Boston', 'MA', '02102'),
(26, '987 Poplar St', 'Detroit', 'MI', '48201'),
(27, '159 Elm St', 'Minneapolis', 'MN', '55401'),
(28, '741 Alder St', 'Tampa', 'FL', '33601'),
(29, '456 Dogwood St', 'St. Louis', 'MO', '63101'),
(30, '789 Laurel St', 'Kansas City', 'KS', '66101');

-- Insert data into Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, HireDate, Salary, DepartmentID, AddressID) VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '2020-01-15', 75000.00, 2, 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2019-03-22', 80000.00, 2, 2),
(3, 'Sam', 'Brown', 'sam.brown@example.com', '2021-06-10', 60000.00, 3, 3),
(4, 'Nancy', 'Johnson', 'nancy.johnson@example.com', '2018-07-01', 95000.00, 4, 4),
(5, 'Mike', 'Wilson', 'mike.wilson@example.com', '2020-11-13', 72000.00, 5, 5),
(6, 'Emily', 'Davis', 'emily.davis@example.com', '2019-08-30', 67000.00, 1, 6),
(7, 'Robert', 'Miller', 'robert.miller@example.com', '2022-02-14', 78000.00, 3, 7),
(8, 'Laura', 'Taylor', 'laura.taylor@example.com', '2017-05-25', 90000.00, 4, 8),
(9, 'David', 'Anderson', 'david.anderson@example.com', '2021-09-29', 88000.00, 2, 9),
(10, 'Sarah', 'Martinez', 'sarah.martinez@example.com', '2020-04-19', 62000.00, 5, 10),
(11, 'James', 'Thomas', 'james.thomas@example.com', '2018-12-06', 95000.00, 1, 11),
(12, 'Patricia', 'Harris', 'patricia.harris@example.com', '2019-06-15', 64000.00, 3, 12),
(13, 'Daniel', 'Clark', 'daniel.clark@example.com', '2020-10-07', 73000.00, 5, 13),
(14, 'Jessica', 'Lewis', 'jessica.lewis@example.com', '2021-01-22', 67000.00, 2, 14),
(15, 'Brian', 'Lee', 'brian.lee@example.com', '2018-04-30', 92000.00, 4, 15),
(16, 'Sophia', 'Walker', 'sophia.walker@example.com', '2017-07-18', 89000.00, 1, 16),
(17, 'Ryan', 'Hall', 'ryan.hall@example.com', '2022-03-09', 77000.00, 3, 17),
(18, 'Amanda', 'Allen', 'amanda.allen@example.com', '2019-11-05', 81000.00, 4, 18),
(19, 'Kevin', 'Young', 'kevin.young@example.com', '2020-05-27', 76000.00, 2, 19),
(20, 'Megan', 'King', 'megan.king@example.com', '2021-08-14', 68000.00, 5, 20),
(21, 'Eric', 'Scott', 'eric.scott@example.com', '2018-09-23', 95000.00, 1, 21),
(22, 'Linda', 'Green', 'linda.green@example.com', '2019-12-12', 63000.00, 3, 22),
(23, 'Joshua', 'Adams', 'joshua.adams@example.com', '2020-07-04', 74000.00, 5, 23),
(24, 'Rebecca', 'Baker', 'rebecca.baker@example.com', '2021-02-16', 66000.00, 2, 24),
(25, 'Mark', 'Nelson', 'mark.nelson@example.com', '2017-11-28', 91000.00, 4, 25),
(26, 'Hannah', 'Carter', 'hannah.carter@example.com', '2018-03-21', 88000.00, 1, 26),
(27, 'Alex', 'Mitchell', 'alex.mitchell@example.com', '2022-05-01', 79000.00, 3, 27),
(28, 'Olivia', 'Perez', 'olivia.perez@example.com', '2019-09-17', 82000.00, 4, 28),
(29, 'Ethan', 'Roberts', 'ethan.roberts@example.com', '2020-12-20', 75000.00, 2, 29),
(30, 'Rachel', 'Evans', 'rachel.evans@example.com', '2021-07-07', 69000.00, 5, 30);
