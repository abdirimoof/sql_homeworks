--1
select * from Employees
where salary > (select avg(salary) from Employees);

--2 Find employees who have the same salary as another employee. (CTE)
with cte as
(select * from Employees)
select * from cte join Employees
on cte.Salary = Employees.Salary and cte.EmployeeID != Employees.EmployeeID

--3 Get the number of employees in each department
with cte as
(Select DepartmentID, count(EmployeeID) countt from Employees
group by DepartmentID)
select Departments.DepartmentName ,cte.countt from cte join Departments
on cte.DepartmentID = Departments.DepartmentID


--4 Find employees whose salary is below the average salary. (Derived Table)
select * from Employees
where salary < (select AVG(Salary) from Employees)

--5 .List products that have been sold at least twice. (CTE)
with cte as
(select ProductID, count(SalesID) countt from Sales
group by ProductID)
select * from cte
where countt > 2

--6 Find employees who made a single sale of more than $2000. 
with cte as
(Select * from Sales
where salesAmount > 2000),
cte2 as 
(select EmployeeID ,count(EmployeeID) countt from cte
group by EmployeeID)
select * from cte2
where countt = 1

--7 Retrieve the most expensive product. (Derived Table)
select mAx(maxx) from (Select CategoryID, MAX(Price)  maxx from Products
group by CategoryID) as dt

--8
select EmployeeID, sum(SalesAmount) totalAmount from Sales
group by EmployeeID

--9
select * from Products
select * from Sales
select * from Employees
