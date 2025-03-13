
--Lesson 10 Homework Tasks
--1
use Homeworkdb
select * from CustomerOrders
select * from Customers
select * from Customers inner join CustomerOrders
on Customers.CustomerID = CustomerOrders.CustomerID and YEAR(OrderDate) > 2022


--2
select * from Employees join Departments on
Employees.DepartmentID = Departments.DepartmentID and
(Departments.DepartmentName = 'Sales' or Departments.DepartmentName = 'Marketing')

--3
Select * from Products
select * from CustomerOrders Co join (select * from Products where Price > 100) as Dt 
on Co.ProductID = Dt.ProductID

--4
select * from CustomerOrders
select * from #temp_Orders
Create table #temp_orders(Order_ID int, Customer_ID int,
Order_Date date, Product_ID int, QuantityAmount int, Total_Amount int)

insert into #temp_orders
Select * from CustomerOrders
select * from #temp_Orders

--5
select * from Sales
select * from Employees1

Select * from Departments d cross Apply 
(select top 5 * from Employees e where d.DepartmentID = e.departmentId order by salary desc) as Ca

--6
select * from Customers
Select * from CustomerOrders o join Customers c on
o.CustomerID = c.CustomerID and year(orderdate) = 2023 and city = 'New York'

--7
select * from Customers
Select * from CustomerOrders o join (SELECT CustomerID, COUNT(*) as 'count' FROM CustomerOrders GROUP BY CustomerID) as dt
on o.CustomerID = dt.CustomerID

--8
select * from Products join Suppliers on
Products.ProductID = Suppliers.ProductID or Suppliers.Category = 'Supplier A' or Suppliers.Category = 'Supplier B'


--9
SELECT e.CustomerID, e.FirstName, e.LastName, o.OrderID, o.OrderDate FROM Customers e
OUTER APPLY (
    SELECT TOP 1 OrderID, OrderDate
    FROM Orders
    WHERE EmployeeID = e.EmployeeID
    ORDER BY OrderDate DESC
) o;

--10
Select DepartmentName, e.Name from Departments d
cross apply (select Name from Employees where d.departmentId = departmentID) as e
order by d.DepartmentName

-- Medium-Level Tasks (10)
--11

select c.CustomerID, (TotalAmount) as 'summ' from CustomerOrders o join Customers c on
o.CustomerID = c.CustomerID  and (TotalAmount) > 500

select * from Products
--12
select * from Sales join Products on
 Sales.ProductID = Products.ProductID and (year(SaleDate) = 2022 or discount > 20) 

--13

select * from Products p join (SELECT ProductID, SUM(SaleAmount) as 'sum' FROM Sales  GROUP BY ProductID) as s on
p.ProductID = s.ProductID
select * from Sales

--14
create table #Temp_product (product_id int, product_name varchar(20), category varchar(20), price int, stockquantity int)
insert into #Temp_product
select * from Products
select * from #Temp_product

--15

--16
select  * from Employees join Departments on
Employees.DepartmentID = Departments.DepartmentID and DepartmentName = 'Human Resources' and salary > 5000

--17
select * from Order o join Payment p on
o.orderId = p.OrderID and (paid = 'fully' or paid = 'partially')

--18
select * from Customers outer apply 
(select top 1 * from CustomerOrders
where
Customers.CustomerID = CustomerOrders.CustomerID
order by CustomerOrders.OrderDate desc) as oa

--19
select * from Products join Sales on
Products.ProductID = Sales.ProductID and year(SaleDate) = 2023 and rating > 4

--20
select * from Employees1 e join Departments d
on e.DepartmentID = d.DepartmentID and (DepartmentName = 'Sales' or Position = 'Manager' )



--Hard-Level Tasks (10)
--21
select * from Customers c join (
select CustomerID, COUNT(OrderID) as 'countOrder' from CustomerOrders
group by CustomerID) d
on c.CustomerID = d.CustomerID and city = 'New York' and countOrder > 10

--22

select * from Sales s join Products p on
s.ProductID = p.ProductID and (Category  = 'Electronics' or discount > 15)

--23
use TSQL2012
select * from Production.Products
select c.categoryid, categoryname, count  from Production.Categories c join
(SELECT CategoryID, COUNT(*) as count FROM Production.Products GROUP BY CategoryID) p on
c.categoryid = p.categoryid

--24
select * from Employees


create table #Temp_Employee(Employee_ID int, Name varchar(20), DepartmentId int, Salary int, HireDate date)
insert into #Temp_Employee
select * from Employees
select * from #Temp_Employee t join Employees e on
t.Employee_ID = E.departmentID and (( e.salary > 4000 AND e.departmentID = 1))

--25
select * from Employees
select d.departmentName, ca.counte from  Departments d cross apply 
(select departmentID, COUNT(EmployeeID) as counte from Employees where d.departmentID = departmentID
group by DepartmentID
) ca 

--26
select * from Customers join CustomerOrders on
Customers.CustomerID = CustomerOrders.CustomerID and city = 'California' and totalAmount > 1000

--27
select *from Employees join Departments on
Employees.DepartmentID = Departments.DepartmentID and
(DepartmentNAme = 'Human Resources' or DepartmentNAme = 'Finance' or Position = 'Executive' )

--28
select c.customerID, firstname, oa.countOrder from	Customers c outer apply
(select CustomerID, COUNT(OrderID) countOrder from CustomerOrders where c.CustomerID = customerID
group by CustomerID) oa 


--29
select * from Sales join products 
on Sales.productid = products.productid and Stockquantity > 100 and price < 50

--30

select * from Employees e join Departments d
on e.departmentid = d.departmentid and (DepartmentName = 'Sales' or DepartmentName = 'Marketing' or salary > 6000)

















 
