
--1
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


INSERT INTO Employees VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', NULL);

INSERT INTO Departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');


select * from Employees
select * from Departments
select * from Employees join Departments
on Employees.DepartmentID = Departments.DepartmentID

--2
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    ClassID INT
);

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'John', 201),
(2, 'Emma', NULL),
(3, 'Liam', 202);

INSERT INTO Classes VALUES
(201, 'Math'),
(202, 'Science');

select * from Students left join Classes
on Students.ClassID = Classes.ClassID


--3
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

INSERT INTO Orders VALUES
(1, 301, '2024-11-01'),
(2, 302, '2024-11-05');

INSERT INTO Customers VALUES
(301, 'Alice'),
(302, 'Bob'),
(303, 'Charlie');

select * from Orders
select * from Customers
select * from Orders o right join Customers c
o.CutomerID = c.CustomerID

--4
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT
);
--#### Sample Data:
INSERT INTO Products VALUES
(1, 'Laptop'),
(2, 'Tablet'),
(3, 'Phone');

INSERT INTO Sales VALUES
(100, 1, 10),
(101, 2, 5),
(102, NULL, 8);
select * from Products
select * from Sales

select * from Products p full join Sales s
on p.ProductID = s.ProductID

--5
drop table Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManagerID INT
);
--#### Sample Data:
INSERT INTO Employees VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'Diana', 2);
select e1.Name, e2.Name from Employees e1 join Employees e2 
on e1.EmployeeID = e2.ManagerID

--### Task 6: CROSS JOIN
--Question: Generate all possible combinations of colors and sizes.

--#### Table Schema:
CREATE TABLE Colors (
    ColorID INT PRIMARY KEY,
    ColorName VARCHAR(50)
);

CREATE TABLE Sizes (
    SizeID INT PRIMARY KEY,
    SizeName VARCHAR(50)
);
--#### Sample Data:
INSERT INTO Colors VALUES
(1, 'Red'),
(2, 'Blue');

INSERT INTO Sizes VALUES
(1, 'Small'),
(2, 'Medium');
select * from Colors
select * from Sizes
select * from Colors cross join Sizes

--### Task 7: Join with WHERE Clause
--Question: Find all movies released after 2015 and their associated actors.

--#### Table Schema:
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(50),
    ReleaseYear INT
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(50),
    MovieID INT
);
--#### Sample Data:
INSERT INTO Movies VALUES
(1, 'Inception', 2010),
(2, 'Interstellar', 2014),
(3, 'Dune', 2021);

INSERT INTO Actors VALUES
(101, 'Leonardo DiCaprio', 1),
(102, 'Matthew McConaughey', 2),
(103, 'Timothée Chalamet', 3);

select * from Movies
select * from Actors
select Title, Name, ReleaseYear from Movies m join Actors a
on m.MovieID = a.MovieID
where ReleaseYear > 2015 


--### Task 8: MULTIPLE JOINS
--Question: Retrieve the order date, customer name, and the product ID for all orders.

--#### Table Schema:
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT
);
--#### Sample Data:
INSERT INTO Orders VALUES
(1, 401, '2024-11-01'),
(2, 402, '2024-11-05');

INSERT INTO Customers VALUES
(401, 'Alice'),
(402, 'Bob');

INSERT INTO OrderDetails VALUES
(1001, 1, 501),
(1002, 2, 502);
drop table Orders
drop table Customers
select * from Orders
select * from Customers

select orderdate, CustomerNAme, ProductID  from Orders o 
join Customers c on o.CustomerID = c.CustomerID join OrderDetails od on o.OrderID = od.OrderID




--### Task 9: JOIN with Aggregation
--Question: Calculate the total revenue generated for each product.

--#### Table Schema:
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);
--#### Sample Data:
INSERT INTO Sales VALUES
(1, 601, 3),
(2, 602, 5),
(3, 601, 2);

INSERT INTO Products VALUES
(601, 'TV', 500.00),
(602, 'Speaker', 150.00);

drop Table Sales
drop table Products

select * from sales
select * from Products

select ProductNAme, (SUM(Price) * quantity) from sales join Products
on sales.ProductID = PRODUCTs.ProductID
group by ProductNAme,quantity



















 













