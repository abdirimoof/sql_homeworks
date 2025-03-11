--# Lesson 8 Homework Tasks

--Easy-Level Tasks (10)

--1
use Homeworkdb
select * from Customers
select * from CustomerOrders

select C.FirstName, CO.OrderDate from Customers as C inner join CustomerOrders as CO 
on C.CustomerID = CO.CustomerID

--2

select * from EmployeeRoles
select * from Employees

Select * from EmployeeRoles join Employees on EmployeeRoles.DepartmentID = Employees.DepartmentID

--3
select p.ProductName, class_3.categoryName from Products p inner join Categories c on Price > 700


--4
select * from Customers
select * from CustomerOrders
select * from Customers c left join CustomerOrders co on c.CustomerID = co.CustomerID

--5
use Homeworkdb
select * from Customers
select * from CustomerOrders
select * from CustomerOrders as co cross join products p 

--6
select * from categories as co cross join products p 

--7
select * from Customers inner join CustomerOrders on  Customers.CustomerID = CustomerOrders.CustomerID

--8

select * from categories as co cross join CustomerOrders where orderAmount > 500


--9
select * from  Departments d inner join Employees e on d.DepartmentID = e.departmentID

--10
select * from Departments
select * from Employees
select * from Departments d inner join Employees e on d.DepartmentID <> e.departmentID

--Medium-Level Tasks (10)

--11

select * from Customers
select * from CustomerOrders
select c.firstname, o.Quantity from Customers c inner join CustomerOrders o on c.CustomerID = o.CustomerID

--12
select * from Students cross join Courses

--13

select * from Employees cross join Departments where salary > 5000

--14
select * from EmployeeRoles
select * from Employees
select * from EmployeeRoles er inner join Employees e on
er.DepartmentID = e.employeeId

--15
use TSQL2012
select * from Production.Suppliers
select * from Production.Products
select * from Production.Suppliers as PS inner join Production.Products as PP on PS.supplierid = PP.supplierid
where companyname = 'Supplier SWRXU'

--16
select  * from  Products 
select * from Sales
select * from Products left join Sales on
PRODUCTs.ProductID = Sales.ProductID

--17
select * from products
select * from CustomerOrders

select * from Departments cross join Employees
where Employees.salary > 40000 and DepartmentName = 'Human Resources'

--18
select * from Departments  join Employees on
salary >= 60000 and Employees.departmentID = 2

--19
select * from Products as p inner join CustomerOrders c on p.productid = c.productid
where price >= 50

--20
select * from Sales
select *from Customers
select * from Sales s cross join customers c 
where s.customerID = c.customerID and saleAmount > 250


--Hard-Level Tasks (10)
--21

select * from Products
select * from customerorders
select Author.AuthorName, Book.bookTitle from Author inner join AuthorBooks on Author.author_id = AuthorBooks.author_id inner join Books on  
AuthorBooks.book_id = Books.book_id

--22

select * from Products p inner join Sales s on
p.productid = s.productid
where productname != 'laptop'

--23

select * from Products p cross join customerorders c where
p.productid = c.productid and quantity > 2

--24
select * from Employees
select * from Departments
SELECT CONVERT (date, GETDATE());

--25
select * from Employees
select * from Departments

select d.departmentID, e.departmentID  from departments d inner join Employees e on d.departmentid = e.departmentID
select d.departmentID, e.departmentID  from departments d left join Employees e on d.departmentid = e.departmentID


--26
select * from Products p cross join Suppliers s where 
p.product_id = s.product_id and category = 'A'

--27
select * from Departments
select * from CustomerOrders
select * from customers c inner join CustomerOrders o on
c.customerId = o.customerId
where quantity > 3

--29
select * from Employees e left join Departments d on
e.departmentid = d.departmentID
where departmentname = 'Marketing'


--30
select * from Employees e join Departments d on
e.departmentid >= 3
