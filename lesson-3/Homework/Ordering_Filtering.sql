-- fourth day Lesson 4: Filtering and Ordering Data
-- easy level

--1 

use Homeworkdb
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    SignupDate DATE
);
select * from Employees

insert into Employees values
(2, 'Bob', 28, 'Canada', '2024-01-05'),
(3, 'Charlie', 35, 'UK', '2024-01-10'),
(4, 'Diana', 22, 'USA', '2024-01-15'),
(5, 'Edward', 40, 'Germany', '2024-01-20'),
(6, 'Fiona', 29, 'Australia', '2024-01-25'),
(7, 'George', 31, 'USA', '2024-02-01'),
(8, 'Hannah', 27, 'Canada', '2024-02-05'),
(9, 'Ian', 36, 'UK', '2024-02-10'),
(10, 'Julia', 33, 'USA', '2024-02-15'),
(11, 'Kevin', 26, 'USA', '2024-02-20'),
(12, 'Laura', 38, 'Canada', '2024-02-25'),
(13, 'Michael', 42, 'UK', '2024-03-01'),
(14, 'Nina', 24, 'USA', '2024-03-05'),
(15, 'Oliver', 39, 'Germany', '2024-03-10'),
(16, 'Paula', 30, 'Australia', '2024-03-15'),
(17, 'Quincy', 37, 'USA', '2024-03-20'),
(18, 'Rachel', 28, 'Canada', '2024-03-25'),
(19, 'Steve', 45, 'UK', '2024-03-30'),
(20, 'Tina', 32, 'USA', '2024-04-01');

Select top 10 name from Employees

--2
Select distinct Country from Employees

--3

Select * from Employees
where Age > 30

--4
Select * from Employees
where Name like 'A%'

--5
select * from Employees
order by Age asc

--6
use Homeworkdb
select * from Employees
where Age >= 35 and Country = 'UK'

--7
create table emails 
(email1 varchar(30), alternative_email varchar(30))

insert into emails values ('bob@gmail.com', 'alex@gmail.com')
insert into emails values (null, 'apex@gmail.com')
insert into emails values ('bobby@gmail.com', null)
insert into emails values (null, 'dele@gmail.com')

select ISNULL(email1, 'noemail@example.com') from emails

--8
select * from Employees
where age between 30 and 40

--9
select distinct age, Country from Employees
order by age

--10
select * from Employees
order by Name desc

--Medium-Level Tasks (10)

--11
select * from sales
select top(10) product_name from sales
order by price desc 
use  Homeworkdb
--12
select coalesce (name, lastname,'NOT value') from Employee

--13
select distinct Name, country from Employees

--14

select * from sales
where (quantity between 3 and 9) or (category = 'Furniture')

--15
select * from Employees
order by  Age desc
offset 10 rows
fetch next 10 rows only

--16

select * from Employees

where (age > 35) and (ID < 10)
order by Age desc

--17
select * from Sales
where product_name like '%e%'

--18
select * from employees
where country in ('USA', 'UK')

--19

Select * from Employees
where Age >
any (Select Avg(Age) 
from Employees group by country)

--20
Select * from Employees
order by age asc, ID desc

--Hard-Level Tasks (10)
--21
use homeworkdb
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 1200.00, 'Electronics', 30),
(2, 'Smartphone', 800.00, 'Electronics', 50),
(3, 'Tablet', 400.00, 'Electronics', 40),
(4, 'Monitor', 250.00, 'Electronics', 60),
(5, 'Keyboard', 50.00, 'Accessories', 100),
(6, 'Mouse', 30.00, 'Accessories', 120),
(7, 'Chair', 150.00, 'Furniture', 80),
(8, 'Desk', 200.00, 'Furniture', 75),
(9, 'Pen', 5.00, 'Stationery', 300),
(10, 'Notebook', 10.00, 'Stationery', 500),
(11, 'Printer', 180.00, 'Electronics', 25),
(12, 'Camera', 500.00, 'Electronics', 40),
(13, 'Flashlight', 25.00, 'Tools', 200),
(14, 'Shirt', 30.00, 'Clothing', 150),
(15, 'Jeans', 45.00, 'Clothing', 120),
(16, 'Jacket', 80.00, 'Clothing', 70),
(17, 'Shoes', 60.00, 'Clothing', 100),
(18, 'Hat', 20.00, 'Accessories', 50),
(19, 'Socks', 10.00, 'Clothing', 200),
(20, 'T-Shirt', 25.00, 'Clothing', 150),
(21, 'Lamp', 60.00, 'Furniture', 40),
(22, 'Coffee Table', 100.00, 'Furniture', 35),
(23, 'Book', 15.00, 'Stationery', 250),
(24, 'Rug', 90.00, 'Furniture', 60),
(25, 'Cup', 5.00, 'Accessories', 500),
(26, 'Bag', 25.00, 'Accessories', 300),
(27, 'Couch', 450.00, 'Furniture', 15),
(28, 'Fridge', 600.00, 'Electronics', 20),
(29, 'Stove', 500.00, 'Electronics', 15),
(30, 'Microwave', 120.00, 'Electronics', 25),
(31, 'Air Conditioner', 350.00, 'Electronics', 10),
(32, 'Washing Machine', 450.00, 'Electronics', 15),
(33, 'Dryer', 400.00, 'Electronics', 10),
(34, 'Hair Dryer', 30.00, 'Accessories', 100),
(35, 'Iron', 40.00, 'Electronics', 50),
(36, 'Coffee Maker', 50.00, 'Electronics', 60),
(37, 'Blender', 35.00, 'Electronics', 40),
(38, 'Juicer', 55.00, 'Electronics', 30),
(39, 'Toaster', 40.00, 'Electronics', 70),
(40, 'Dishwasher', 500.00, 'Electronics', 20);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);
drop table Employees

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate) VALUES
(1, 'John Doe', 1, 55000.00, '2020-01-01'),
(2, 'Jane Smith', 2, 65000.00, '2019-03-15'),
(3, 'Mary Johnson', 3, 45000.00, '2021-05-10'),
(4, 'James Brown', 1, 60000.00, '2018-07-22'),
(5, 'Patricia Davis', 4, 70000.00, '2017-08-30'),
(6, 'Michael Miller', 2, 75000.00, '2020-12-12'),
(7, 'Linda Wilson', 3, 48000.00, '2016-11-02'),
(8, 'David Moore', 4, 85000.00, '2021-09-01'),
(9, 'Elizabeth Taylor', 1, 60000.00, '2019-05-18'),
(10, 'William Anderson', 2, 64000.00, '2020-04-10'),
(11, 'Susan Thomas', 3, 47000.00, '2017-01-25'),
(12, 'Joseph Jackson', 4, 78000.00, '2016-09-30'),
(13, 'Karen White', 1, 59000.00, '2018-06-10'),
(14, 'Steven Harris', 2, 71000.00, '2021-07-15'),
(15, 'Nancy Clark', 3, 45000.00, '2020-02-20'),
(16, 'George Lewis', 4, 80000.00, '2019-11-10'),
(17, 'Betty Lee', 1, 55000.00, '2017-04-05'),
(18, 'Samuel Walker', 2, 72000.00, '2021-03-22'),
(19, 'Helen Hall', 3, 49000.00, '2018-10-16'),
(20, 'Charles Allen', 4, 90000.00, '2015-08-11'),
(21, 'Betty Young', 1, 53000.00, '2020-05-17'),
(22, 'Frank King', 2, 67000.00, '2021-02-02'),
(23, 'Deborah Scott', 3, 47000.00, '2019-07-09'),
(24, 'Matthew Green', 4, 76000.00, '2021-01-15'),
(25, 'Sandra Adams', 1, 54000.00, '2020-06-21'),
(26, 'Paul Nelson', 2, 71000.00, '2018-12-03'),
(27, 'Margaret Carter', 3, 46000.00, '2020-08-19'),
(28, 'Anthony Mitchell', 4, 82000.00, '2021-04-10'),
(29, 'Lisa Perez', 1, 60000.00, '2021-03-05'),
(30, 'Christopher Roberts', 2, 69000.00, '2019-09-24'),
(31, 'Jessica Gonzalez', 3, 47000.00, '2017-12-13'),
(32, 'Brian Moore', 4, 85000.00, '2018-11-05'),
(33, 'Dorothy Evans', 1, 59000.00, '2019-06-11'),
(34, 'Matthew Carter', 2, 70000.00, '2020-01-29'),
(35, 'Rachel Martinez', 3, 51000.00, '2021-06-06'),
(36, 'Daniel Perez', 4, 83000.00, '2021-07-01'),
(37, 'Catherine Roberts', 1, 60000.00, '2020-09-19'),
(38, 'Ronald Murphy', 2, 68000.00, '2017-02-04'),
(39, 'Angela Jenkins', 3, 52000.00, '2018-04-23'),
(40, 'Gary Wright', 4, 87000.00, '2021-01-10');


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'Human Resources'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Finance'),
(6, 'Legal'),
(7, 'Operations'),
(8, 'Research & Development'),
(9, 'Customer Support'),
(10, 'Procurement'),
(11, 'Supply Chain'),
(12, 'Logistics'),
(13, 'Design'),
(14, 'Product Management'),
(15, 'Public Relations'),
(16, 'Business Development'),
(17, 'Quality Assurance'),
(18, 'Data Analytics'),
(19, 'Software Engineering'),
(20, 'Compliance'),
(21, 'Audit'),
(22, 'Product Design'),
(23, 'Health & Safety'),
(24, 'Training & Development'),
(25, 'Accounting'),
(26, 'IT Security'),
(27, 'Market Research'),
(28, 'Customer Success'),
(29, 'Talent Acquisition'),
(30, 'Communications'),
(31, 'Sales Support'),
(32, 'Business Intelligence'),
(33, 'Project Management'),
(34, 'Legal Affairs'),
(35, 'Creative Services'),
(36, 'Information Systems'),
(37, 'Corporate Strategy'),
(38, 'Change Management'),
(39, 'Investor Relations'),
(40, 'Employee Relations');

	CREATE TABLE Customers (
		CustomerID INT PRIMARY KEY,
		FirstName VARCHAR(100),
		LastName VARCHAR(100),
		Email VARCHAR(100),
		Phone VARCHAR(50),
		Address VARCHAR(255),
		City VARCHAR(100),
		State VARCHAR(100),
		PostalCode VARCHAR(20)
	);
drop table Customers

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001'),
(3, 'Alice', 'Johnson', 'alicej@example.com', '555-3456', '789 Pine St', 'Chicago', 'IL', '60601'),
(4, 'Bob', 'Brown', 'bobbrown@example.com', '555-4567', '101 Maple St', 'Houston', 'TX', '77001'),
(5, 'Charlie', 'Davis', 'charliedavis@example.com', '555-5678', '202 Birch St', 'Phoenix', 'AZ', '85001'),
(6, 'David', 'Martinez', 'davidm@example.com', '555-6789', '303 Cedar St', 'San Diego', 'CA', '92101'),
(7, 'Emily', 'Garcia', 'emilyg@example.com', '555-7890', '404 Redwood St', 'Dallas', 'TX', '75201'),
(8, 'Frank', 'Hernandez', 'frankh@example.com', '555-8901', '505 Willow St', 'Austin', 'TX', '73301'),
(9, 'Grace', 'Lopez', 'gracel@example.com', '555-9012', '606 Aspen St', 'Miami', 'FL', '33101'),
(10, 'Helen', 'Gonzalez', 'heleng@example.com', '555-0123', '707 Fir St', 'San Francisco', 'CA', '94101'),
(11, 'Irene', 'Perez', 'irenep@example.com', '555-1234', '808 Maple Ave', 'Seattle', 'WA', '98101'),
(12, 'Jack', 'Wilson', 'jackw@example.com', '555-2345', '909 Oak Ave', 'Denver', 'CO', '80201'),
(13, 'Kim', 'Anderson', 'kima@example.com', '555-3456', '111 Pine Ave', 'Boston', 'MA', '02101'),
(14, 'Liam', 'Thomas', 'liamt@example.com', '555-4567', '222 Cedar Ave', 'Atlanta', 'GA', '30301'),
(15, 'Megan', 'Taylor', 'megant@example.com', '555-5678', '333 Redwood Ave', 'Washington', 'DC', '20001'),
(16, 'Nathan', 'Moore', 'nathanm@example.com', '555-6789', '444 Willow Ave', 'Detroit', 'MI', '48201'),
(17, 'Olivia', 'Jackson', 'oliviaj@example.com', '555-7890', '555 Birch Ave', 'Portland', 'OR', '97201'),
(18, 'Paul', 'White', 'paulw@example.com', '555-8901', '666 Maple Blvd', 'Minneapolis', 'MN', '55101'),
(19, 'Quincy', 'Lee', 'quincyl@example.com', '555-9012', '777 Oak Blvd', 'Charlotte', 'NC', '28201'),
(20, 'Rachel', 'Harris', 'rachelh@example.com', '555-0123', '888 Pine Blvd', 'Las Vegas', 'NV', '89101'),
(21, 'Sam', 'Clark', 'samc@example.com', '555-1234', '999 Cedar Blvd', 'Orlando', 'FL', '32801'),
(22, 'Tina', 'Allen', 'tinaallen@example.com', '555-2345', '1010 Redwood Blvd', 'New Orleans', 'LA', '70112'),
(23, 'Ursula', 'Scott', 'ursulas@example.com', '555-3456', '1111 Willow Blvd', 'Tampa', 'FL', '33601'),
(24, 'Victor', 'Adams', 'victora@example.com', '555-4567', '1212 Birch Blvd', 'Cleveland', 'OH', '44101'),
(25, 'Walter', 'Baker', 'walterb@example.com', '555-5678', '1313 Oak Blvd', 'Columbus', 'OH', '43201'),
(26, 'Xander', 'Nelson', 'xandern@example.com', '555-6789', '1414 Cedar Blvd', 'Indianapolis', 'IN', '46201'),
(27, 'Yvonne', 'Carter', 'yvonnec@example.com', '555-7890', '1515 Maple Dr', 'Kansas City', 'MO', '64101'),
(28, 'Zane', 'Mitchell', 'zanem@example.com', '555-8901', '1616 Redwood Dr', 'Salt Lake City', 'UT', '84101'),
(29, 'Anna', 'Roberts', 'annar@example.com', '555-9012', '1717 Willow Dr', 'Birmingham', 'AL', '35203'),
(30, 'Ben', 'King', 'benk@example.com', '555-0123', '1818 Birch Dr', 'Nashville', 'TN', '37201'),
(31, 'Chloe', 'Green', 'chloeg@example.com', '555-1234', '1919 Oak Dr', 'Boulder', 'CO', '80301'),
(32, 'Daniel', 'Evans', 'daniele@example.com', '555-2345', '2020 Cedar Dr', 'Sacramento', 'CA', '94201'),
(33, 'Ella', 'Collins', 'ellac@example.com', '555-3456', '2121 Redwood Dr', 'Louisville', 'KY', '40202'),
(34, 'Finn', 'Morris', 'finnm@example.com', '555-4567', '2222 Willow St', 'Cincinnati', 'OH', '45202'),
(35, 'Grace', 'Lee', 'gracel@example.com', '555-5678', '2323 Birch St', 'Baltimore', 'MD', '21201'),
(36, 'Holly', 'Martinez', 'hollym@example.com', '555-6789', '2424 Oak St', 'St. Louis', 'MO', '63101'),
(37, 'Ian', 'Robinson', 'ianr@example.com', '555-7890', '2525 Cedar St', 'Fort Worth', 'TX', '76101'),
(38, 'Jasmine', 'Walker', 'jasminew@example.com', '555-8901', '2626 Redwood St', 'Raleigh', 'NC', '27601'),
(39, 'Kyle', 'Young', 'kyley@example.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201'),
(40, 'Liam', 'Harris', 'liamh@example.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220');
drop table Products

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10, 2),
    StockQuantity INT
);
--4. Insert 40 Rows into Products Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);


--21

select * from Sales
select top (10) * from Sales
order by SaleAmount desc

--22
drop table Employee
select * from Employees

SELECT 
    RTRIM(LTRIM(
        CONCAT(
            COALESCE(FirstName + ' ', '')
            , COALESCE(Lastname, '')
        )
    )) AS FullName
FROM Employees

--23
select * from Products

select distinct Category, ProductName, Price  from Products
where price > 50

--24

select * from Products

select * from Products
where   price > x
having (AVG(price) * 0.1) as x

--25
select * from employeeRoles
where (salary < 70000) and (Rolename = 'HR Specialist' or Rolename = 'Developer')
CREATE TABLE EmployeeRoles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100),
    EmployeeID INT,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    StartDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
--2. Insert 40 Rows into EmployeeRoles Table
INSERT INTO EmployeeRoles (RoleID, RoleName, EmployeeID, DepartmentID, Salary, StartDate) VALUES
(1, 'Manager', 1, 1, 75000.00, '2018-01-01'),
(2, 'Developer', 2, 2, 60000.00, '2019-02-01'),
(3, 'Analyst', 3, 3, 55000.00, '2020-03-15'),
(4, 'HR Specialist', 4, 4, 50000.00, '2021-04-10'),
(5, 'Designer', 5, 2, 65000.00, '2017-06-05'),
(6, 'Tester', 6, 3, 45000.00, '2022-07-20'),
(7, 'Developer', 7, 2, 60000.00, '2018-11-15'),
(8, 'Manager', 8, 1, 80000.00, '2016-01-01'),
(9, 'HR Specialist', 9, 4, 47000.00, '2021-08-30'),
(10, 'Analyst', 10, 3, 55000.00, '2020-05-20'),
(11, 'Developer', 11, 2, 63000.00, '2019-03-10'),
(12, 'Manager', 12, 1, 78000.00, '2017-02-01'),
(13, 'Tester', 13, 3, 46000.00, '2020-06-15'),
(14, 'HR Specialist', 14, 4, 50000.00, '2021-07-01'),
(15, 'Developer', 15, 2, 62000.00, '2019-09-10'),
(16, 'Analyst', 16, 3, 54000.00, '2020-10-20'),
(17, 'Manager', 17, 1, 81000.00, '2015-01-01'),
(18, 'Designer', 18, 2, 66000.00, '2018-05-05'),
(19, 'Developer', 19, 2, 61000.00, '2021-06-01'),
(20, 'HR Specialist', 20, 4, 49000.00, '2022-04-15'),
(21, 'Tester', 21, 3, 46000.00, '2022-01-10'),
(22, 'Developer', 22, 2, 63000.00, '2019-11-15'),
(23, 'Manager', 23, 1, 76000.00, '2017-01-10'),
(24, 'HR Specialist', 24, 4, 51000.00, '2021-03-25'),
(25, 'Analyst', 25, 3, 56000.00, '2020-02-15'),
(26, 'Developer', 26, 2, 59000.00, '2019-07-15'),
(27, 'Tester', 27, 3, 47000.00, '2021-12-01'),
(28, 'Manager', 28, 1, 82000.00, '2016-06-05'),
(29, 'Developer', 29, 2, 62000.00, '2019-02-10'),
(30, 'Analyst', 30, 3, 54000.00, '2020-11-01'),
(31, 'HR Specialist', 31, 4, 48000.00, '2021-09-25'),
(32, 'Developer', 32, 2, 65000.00, '2020-04-15'),
(33, 'Manager', 33, 1, 77000.00, '2018-10-05'),
(34, 'Analyst', 34, 3, 53000.00, '2020-09-10'),
(35, 'Tester', 35, 3, 45000.00, '2022-02-01'),
(36, 'Developer', 36, 2, 62000.00, '2020-07-10'),
(37, 'Manager', 37, 1, 78000.00, '2015-11-15'),
(38, 'Designer', 38, 2, 67000.00, '2020-01-01'),
(39, 'HR Specialist', 39, 4, 49000.00, '2021-05-10'),
(40, 'Developer', 40, 2, 65000.00, '2021-12-01');

--26
select * from customers
where email like '%@example.com'

--27
SELECT * FROM employees
WHERE salary > ALL (SELECT salary FROM employees WHERE departmentID = 2);

--28


select * from Employees
order by salary asc
offset 10 rows
fetch next 10 rows only

--29
select * from CustomerOrders

SELECT *
FROM CustomerOrders
WHERE OrderDate BETWEEN OrderDATE(day, -30, CURRENT_DATE) AND CURRENT_DATE;


SELECT * FROM CustomerOrders
WHERE OrderDate BETWEEN DATEADD(day, -30, GETDATE()) AND GETDATE();

CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
--2. Insert 40 Rows into CustomerOrders Table
INSERT INTO CustomerOrders (OrderID, CustomerID, OrderDate, ProductID, Quantity, TotalAmount) VALUES
(1, 1, '2023-01-15', 2, 2, 1600.00),
(2, 2, '2023-01-20', 3, 1, 400.00),
(3, 3, '2023-02-15', 5, 3, 150.00),
(4, 4, '2023-02-18', 8, 1, 100.00),
(5, 5, '2023-03-10', 6, 4, 120.00),
(6, 6, '2023-03-12', 7, 2, 300.00),
(7, 7, '2023-03-20', 9, 1, 80.00),
(8, 8, '2023-04-05', 1, 1, 1200.00),
(9, 9, '2023-04-10', 4, 2, 400.00),
(10, 10, '2023-04-15', 10, 1, 60.00),
(11, 11, '2023-05-01', 3, 2, 800.00),
(12, 12, '2023-05-03', 6, 1, 60.00),
(13, 13, '2023-05-10', 2, 1, 800.00),
(14, 14, '2023-06-01', 8, 3, 300.00),
(15, 15, '2023-06-02', 5, 2, 100.00),
(16, 16, '2023-06-15', 7, 2, 150.00),
(17, 17, '2023-06-20', 9, 1, 80.00),
(18, 18, '2023-07-01', 4, 3, 600.00),
(19, 19, '2023-07-05', 1, 1, 1200.00),
(20, 20, '2023-07-10', 10, 1, 60.00),
(21, 21, '2023-08-01', 6, 2, 120.00),
(22, 22, '2023-08-03', 2, 3, 1200.00),
(23, 23, '2023-08-10', 3, 1, 400.00),
(24, 24, '2023-09-01', 5, 1, 150.00),
(25, 25, '2023-09-05', 7, 2, 300.00),
(26, 26, '2023-09-10', 8, 3, 300.00),
(27, 27, '2023-09-15', 4, 1, 200.00),
(28, 28, '2023-10-01', 9, 1, 80.00),
(29, 29, '2023-10-05', 1, 2, 2400.00),
(30, 30, '2023-10-10', 3, 1, 400.00),
(31, 31, '2023-11-01', 6, 4, 240.00),
(32, 32, '2023-11-05', 7, 3, 450.00),
(33, 33, '2023-11-10', 5, 2, 100.00),
(34, 34, '2023-11-15', 9, 1, 80.00),
(35, 35, '2023-12-01', 8, 1, 100.00),
(36, 36, '2023-12-05', 10, 2, 120.00),
(37, 37, '2023-12-10', 4, 3, 600.00),
(38, 38, '2023-12-15', 3, 2, 800.00),
(39, 39, '2023-12-20', 2, 3, 1200.00),
(40, 40, '2023-12-25', 1, 1, 1200.00);

--30
select * from employees

Select * from employees
where salary >
All (Select Avg(salary) 
from employees group by DepartmentID)
