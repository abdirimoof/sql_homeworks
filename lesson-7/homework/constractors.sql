--Lesson 7 Homework Tasks

  --1
  select MIN(Price) from Products

  --2
  select MAX(salary) from Employees

  --3
  select COUNT(*) from Customers

  --4
  select COUNT(distinct category) from Products
  select * from Products

  --5
  select SUM(SaleAmount) from Sales

  --6
  select AVG(salary) from Employees

  --7
  select COUNT(employeeID) from Employees
  group by DepartmentID
  select * from Products

  --8
  select category, MIN(price) as min_price, MAX(price) as max_price from Products
  group by Category

  --9
  select productId, SUM(SaleAmount) from Sales
  group by ProductID

  -10
  select	departmentid, COUNT(departmentID) from Employees
  group by departmentID
  having COUNT(departmentID) > 5



  --Medium-Level Tasks (10)
  --11
  select ProductID, SUM(SaleAmount) as 'Sumamount', AVG(SaleAmount) as 'AvgAmount' from Sales
  group by ProductID

  --12
  select departmentID, COUNT(EmployeeID) from Employees
  group by DepartmentID

  --13
  select MIN(Salary) as 'Min', MAX(Salary) as 'Max' from Employees
  group by DepartmentID

  --14
   select Avg(Salary) as 'Avg' from Employees
  group by DepartmentID

  --15
   select Avg(Salary) as 'Avg', COUNT(EmployeeID) as 'Count' from Employees
  group by DepartmentID
  --16

  select ProductName, AVG(price) from Products
  group by ProductName
  having  AVG(price) > 100



  --17
  select COUNT(distinct ProductID) from Sales
  where SaleAmount > 100
  select * from sales

  --18
SELECT YEAR(SaleDate) AS SalesYear, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate)
ORDER BY SalesYear;


--19
select * from Customers
select COUNT(CustomerId) as CountByCity from customers
group by city
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);
--2. Insert 40 Rows into Customers Table
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'UK'),
(3, 'Michael Johnson', 'Canada'),
(4, 'Sarah Brown', 'Australia'),
(5, 'David Green', 'USA'),
(6, 'Linda White', 'Canada'),
(7, 'James Black', 'UK'),
(8, 'Emily Blue', 'Australia'),
(9, 'Matthew Red', 'USA'),
(10, 'Olivia Yellow', 'Canada'),
(11, 'John Doe', 'Australia'),
(12, 'Jane Smith', 'Canada'),
(13, 'Michael Johnson', 'UK'),
(14, 'Sarah Brown', 'USA'),
(15, 'David Green', 'Canada'),
(16, 'Linda White', 'Australia'),
(17, 'James Black', 'USA'),
(18, 'Emily Blue', 'Canada'),
(19, 'Matthew Red', 'UK'),
(20, 'Olivia Yellow', 'Australia'),
(21, 'John Doe', 'Canada'),
(22, 'Jane Smith', 'Australia'),
(23, 'Michael Johnson', 'USA'),
(24, 'Sarah Brown', 'UK'),
(25, 'David Green', 'Australia'),
(26, 'Linda White', 'USA'),
(27, 'James Black', 'Canada'),
(28, 'Emily Blue', 'UK'),
(29, 'Matthew Red', 'Australia'),
(30, 'Olivia Yellow', 'USA'),
(31, 'John Doe', 'UK'),
(32, 'Jane Smith', 'USA'),
(33, 'Michael Johnson', 'Australia'),
(34, 'Sarah Brown', 'Canada'),
(35, 'David Green', 'UK'),
(36, 'Linda White', 'USA'),
(37, 'James Black', 'Australia'),
(38, 'Emily Blue', 'Canada'),
(39, 'Matthew Red', 'USA'),
(40, 'Olivia Yellow', 'UK');


--20
select DepartmentID, SUM(salary) from Employees
group by DepartmentID
having SUM(salary) > 500000

--##  Hard-Level Tasks (10)

--21
SELECT * FROM Products
select Category,AVG(Price)  from Products
group by Category
having AVG(Price) > 200


--22
select * from Sales
select CustomerID,sum(saleAmount)  from Sales
group by CustomerID
having sum(saleAmount) < 1000


--23
select DepartmentID, SUM(salary) as 'sumSalaryPerDep', AVG(salary) as 'avgSalaryPerDep' from Employees
group by DepartmentID
having AVG(salary) > 60000

--24
use TSQL2012
select * from Sales.OrderValues
select custid, MIN(val),MAX(val)  from sales.OrderValues
group by custid
having sum(val) < 500

--25
select SUM(orderid), COUNT(shipperid) from Sales.Orders
group by shipcountry
having count(empid) > 5

--26
select categoryid from Production.Products
group by categoryid

--27

select SUM(freight) from Sales.Orders
group by requireddate


