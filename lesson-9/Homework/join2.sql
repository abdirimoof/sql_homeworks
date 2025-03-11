--Lesson 9 Homework Tasks

--Easy-Level Tasks (10)
--1

use Homeworkdb

select * from Employees
select * from Departments
select * from employees inner join Departments on
Employees.DepartmentID =  Departments.DepartmentID
where salary > 5000


--2
select * from Customers
select * from CustomerOrders

select * from Customers inner join CustomerOrders
on Customers.CustomerID = CustomerOrders.CustomerID
where Month(OrderDate) = 01

--3
select * from Employees e left join Departments d on
e.departmentID = d.DepartmentID

--4
select * from Products p  right join Suppliers s on
p.ProductID = s.ProductId

--5
select * from Orders full outer join Payments on
Order.ProductId = Payment.ProductID

--6
CREATE TABLE Employees1 (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Position NVARCHAR(100),
    Department NVARCHAR(100),
    Salary DECIMAL(10,2),
    HireDate DATE,
    ManagerID INT NULL
);

INSERT INTO Employees1 (ID, Name, Position, Department, Salary, HireDate, ManagerID)
VALUES 
    (1, 'John Smith', 'CEO', 'Executive', 200000, '2015-06-01', NULL),
    (2, 'Emma Johnson', 'CFO', 'Finance', 150000, '2016-07-15', 1),
    (3, 'Michael Brown', 'CTO', 'IT', 160000, '2017-03-10', 1),
    (4, 'Sarah Davis', 'HR Manager', 'HR', 90000, '2018-09-20', 1),
    (5, 'David Wilson', 'Software Engineer', 'IT', 80000, '2019-11-05', 3),
    (6, 'Sophia Martinez', 'Software Engineer', 'IT', 85000, '2020-01-12', 3),
    (7, 'James Anderson', 'Accountant', 'Finance', 75000, '2021-05-22', 2),
    (8, 'Olivia Taylor', 'Recruiter', 'HR', 70000, '2021-08-18', 4),
    (9, 'William Thomas', 'IT Support', 'IT', 65000, '2022-02-28', 3),
    (10, 'Isabella White', 'Finance Analyst', 'Finance', 78000, '2022-10-15', 2),
    (11, 'Ethan Harris', 'Intern', 'IT', 40000, '2023-06-01', 5),
    (12, 'Mia Clark', 'Intern', 'HR', 40000, '2023-06-01', 4),
    (13, 'Noah Lewis', 'Intern', 'Finance', 40000, '2023-06-01', 7);

SELECT * FROM Employees1;

select e1.Name as 'Manager',e2.Name as 'Employee' from Employees1 e1  join Employees1 e2 on
e1.ID = e2.ManagerID

--7
select * from Sales inner join Products on
Sales.CustomerID = Products.ProductID
where SaleAmount > 100

--8
Select * from Students join Courses on
Students.CourseId = Courses.CourseID
where groupName = 'Math 101'

--9
select * from Customers
Select OrderID, COUNT(OrderID) from Customers join CustomerOrders on
Customers.CustomerID = CustomerOrders.CustomerID
group by OrderID

--10
select * from Employees left join Departments on
Departments.DepartmentID = Employees.DepartmentID
where DepartmentName = 'Human Resources'



--11
use Homeworkdb
select departmentname, count(DepartmentName)  from Employees  join Departments on
Departments.DepartmentID = Employees.DepartmentID
group by DepartmentName
having count(DepartmentName) > 10

--12

select * from Products p  left join Sales s on
s.ProductID = p.ProductID
where SaleID is null

--13
select * from Orders
select FirstName, COUNT(FirstName) from Customers c right join CustomerOrders o on
c.CustomerID = o.customerID
group by FirstName
having COUNT(FirstName) > 1

--14

select * from Employees full join Departments on
Departments.DepartmentID = Employees.DepartmentID
where Employees.DepartmentID is null

--15
select e1.Name as 'Manager',e2.Name as 'Employee' from Employees1 e1  join Employees1 e2 on
e1.ID = e2.ManagerID

--16
select * from CustomerOrders o left join Customers c on
o.CustomerID = c.CustomerID
where YEAR(OrderDate) = 2022

--17
select * from Employees
select * from Departments

select * from Employees e join Departments d on
e.departmentID = d.DepartmentID
where DepartmentName = 'Sales' and Salary > 5000

--18
select * from Departments d inner join Employees e on
d.DepartmentID = e.departmentID
where DepartmentName = 'IT'

--19
select * from CustomerOrders full join Products 
on CustomerOrders.ProductId = Products.ProductID

--20
select *from  Products left join CustomerOrders on
CustomerOrders.ProductID = Products.ProductID
where CustomerOrders.OrderID is null

--Hard-Level Tasks (10)
--21
select * from Employees e join Departments d on
e.DepartmentID = d.DepartmentID
where salary > (select AVG(salary) from Employees)

--22
select  * from CustomerOrders o left join Customers c on
o.CustomerID = c.CustomerID
where YEAR(OrderDate) < 2020

--23
use TSQL2012
select * from Production.Products
select * from Production.Categories

select * from Production.Products p full outer join Production.Categories c on
p.categoryid = c.categoryid
where categoryname is null

--24
use Homeworkdb
select * from Employees1 e1 join Employees1 e2 on
e1.ID = e2.ManagerID
where e1.Salary > 5000 

--25
select * from Employees right join Departments on
Employees.departmentID = Departments.DepartmentID
where DepartmentName like 'M%'

--26
select * from sales
select * from Products join Sales on Price > 500
select * from Products p join Sales s on p.ProductID = s.ProductID
where Price > 500

--27
select * from Students s join Courses c on
s.courseID = c.CourseID
where course != 'Math 101'

--28
select * from CustomerOrders full outer join Payment on
CustomerOrders.OrderID = Payment.OrderID
where paymentAmount is null

--29
use TSQL2012
select * from  Production.Products
select * from Production.Categories  c join Production.Products p on
c.categoryid = p.categoryid
where categoryname in ('Beverages', 'Produce','Electronics' , 'Furniture')

--30
use Homeworkdb
select * from CustomerOrders
select o.CustomerID, COUNT(o.CustomerID) from CustomerOrders o cross join Customers
where  YEAR(OrderDate) = 2023
group by o.CustomerID 
having  COUNT(o.CustomerID) > 2  
