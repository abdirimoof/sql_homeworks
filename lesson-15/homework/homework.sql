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
use homework;
with cte1 as
(select Products.ProductID, Products.CategoryID, Products.ProductName, Sales.EmployeeID from Products join Sales 
on Products.ProductID = Sales.ProductID
where Products.ProductName = 'Laptop')
select Employees.FirstName, Employees.LastName from cte1 join Employees
on cte1.EmployeeID = Employees.EmployeeID
select * from Employees


--10 Find the highest-paid employee in each department. (Derived Table)

SELECT e.DepartmentID, e.EmployeeID, e.FirstName, e.LastName, e.Salary
FROM Employees e
WHERE e.Salary = (
    SELECT MAX(Salary)
    FROM Employees e2
	WHERE e2.DepartmentID = e.DepartmentID
	group by e2.DepartmentID
)


--Medium Tasks
--11.Find departments with no employees. (CTE)

with cte as
(select Departments.DepartmentID, Departments.DepartmentName, Employees.DepartmentID as dept from Departments left join Employees
on Departments.DepartmentID = Employees.DepartmentID)
select DepartmentName from cte
where dept is null

--12 Find employees who have made the same total sales as another employee. (CTE)
with cte as
(select EmployeeID, sum(SalesAmount) as totalSales from Sales
group by EmployeeID)
select * from cte c

(select  * from cte c1

group by totalSales
having count(totalSales) > 1)



--1313.Find the total revenue generated per product category. (CTE)
with cte as
(select ProductID, SUM(SalesAmount) as total from Sales
group by ProductID)
select ProductName, total from cte join Products
on cte.ProductID = Products.ProductID

--14 Find the top 3 highest-paid employees per department. (Derived Table)


   SELECT D.DepartmentName AS Department, E.FirstName AS Employee, E.Salary AS Salary 
FROM Employees E INNER JOIN Departments D ON E.DepartmentId = D.DepartmentID 
WHERE (SELECT COUNT(DISTINCT(Salary)) FROM Employees 
       WHERE DepartmentId = E.DepartmentId AND Salary > E.Salary) < 3
ORDER by E.DepartmentId, E.Salary DESC;

--15 15.Find employees who have the highest number of sales transactions. (Derived Table)
select FirstName,max(countt) maxx from (select e.FirstName, countt from Employees e join
(select EmployeeID, count(SalesID) countt from Sales
group by EmployeeID) as dt
on e.EmployeeID = dt.EmployeeID) as dt2
group by FirstName

--16Find employees who sold more than 3 different products. (CTE)
with cte as
(select EmployeeID, COUNT(distinct(ProductID)) as distCount from sales
group by EmployeeID)
select * from cte
where distCount > 3

--17 Find the department with the highest total salary. (Derived Table)
SELECT top 1 DepartmentID, TotalSalary
FROM (
    SELECT DepartmentID, SUM(Salary) AS TotalSalary
    FROM Employees
    GROUP BY DepartmentID
) AS DerivedTable
ORDER BY TotalSalary DESC


--18 Find employees who made sales higher than their department's average sales. (Derived Table)
select dt1.departmentID, avgAmount,s.EmployeeID   from (select * from (select e.DepartmentID, avg(SalesAmount) avgAmount from Sales s JOIN Employees e
ON s.EmployeeID = e.EmployeeID
group by DepartmentID) as dt1 join
(select s.EmployeeID, SalesAmount, DepartmentID from Sales s join Employees e
on s.EmployeeID = e.EmployeeID) as dt2
on dt1.DepartmentID = dt2.DepartmentID) as dt3 join

(select EmployeeID, sum(SalesAmount) sumEmp from sales 
group by EmployeeID)as dt4
on dt3.EmployeeID = dt4.EmployeeID








SELECT 
    E.EmployeeID,
    E.FirstName,
    E.LastName,
    S.SalesAmount,
    DeptAvg.AvgSalesAmount,
    D.DepartmentName
FROM 
    Employees E
JOIN 
    Sales S ON E.EmployeeID = S.EmployeeID
JOIN 
    Departments D ON E.DepartmentID = D.DepartmentID
JOIN 
    (
        SELECT 
            E.DepartmentID,
            AVG(S.SalesAmount) AS AvgSalesAmount
        FROM 
            Employees E
        JOIN 
            Sales S ON E.EmployeeID = S.EmployeeID
        GROUP BY 
            E.DepartmentID
    ) AS DeptAvg ON E.DepartmentID = DeptAvg.DepartmentID
WHERE 
    S.SalesAmount > DeptAvg.AvgSalesAmount;






