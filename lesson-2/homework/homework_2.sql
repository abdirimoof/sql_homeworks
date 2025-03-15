-- homework secand day


--easy
--1

---ddl - data definition language
-- create, alter, drop, truncate
----dml - data manipulation language
--insert, delete, update

--2
use homeworkDB

create table Employees(
EmpID int primary key,
Name varchar(50),
Salary decimal(10,2)
)

Select * from Employees

--3
Insert into Employees values
(1, 'Johnny', 30000.50),
(2, 'Depp',15000.9),
(3, 'Jaxon', 25000)

--4
update Employees
set Name = 'Johny'
where EmpID = 1

Select * from Employees

--5
delete from Employees
where EmpID = 2

Select * from Employees

--6
truncate table Employees
Select * from Employees

drop table Employees
Select * from Employees

--7
Select * from Employees

--8
desc Employees
ALTER TABLE Employees
MODIFY name


varchar(100);

--9
---done

--10
--truncate table tablni ichini 
--tozalaydi ln columns lar qoladi

-- Medium level

--11
create database Homeworkdb
use Homeworkdb

create table Department(
DeptId int primary key,
Deptname varchar(30)
)

create table Employee(
EmpId int,
DepId int ,
name varchar(20),
constraint fk_toDep foreign key (DepId) references Department(DeptId)
)
select * from Department
select * from Employee

--12
insert into Department values (1, 'HR'),(2, 'It'),(3, 'Manager'),(4, 'Analyst'),(5,'Engeneer')
insert into Employee values (100, 2, 'Jack'), (101, 5,'Johnny'), (102, 2, 'Depp')

--false
insert into Employee values (103, 7, 'Jastin')

--13
alter table Department
add Salary int

select * from Department
select * from Employee

alter table Department
add constraint higherthan check (Salary > 5000)

-- false value - insert into Department values (6, 'Managment', 1000)
insert into Department values (6, 'Managment', 6000)

--14

truncate table Employee
select * from Employee

--15
--as a general rule, should you use varchar instead of nvarchar, 
--if you won't ever be storing foreign language characters
-- bashqacha tillarda ishlatiladi arab xitoy yapon itagdali

--16

alter table Employee 
alter column EmpId float

--17

Alter table Employee
drop constraint fk_toDep

Alter table Employee
drop column DepId

select * from Employee

--18
--done 
select * from Employee

--19
create table #temptable2(
id int,
name varchar(20)
)
select * from  #temptable2

--20

drop table Department

select * from Department

--Hard-Level Tasks

--21

create table Customers
(
CustID int,
name varchar(20),
age int check (age > 18)
)

select * from Customers
insert into Customers values (1, 'Johnny', 23)

-- false - insert into Customers values (1, 'Johnny', 17)

--22
--23


--24
Select * from Employee
CREATE TABLE Employee_backup as SELECT * FROM Employee

--25

--28
--DELETE CASCADE: When we create a foreign key using this option,
--it deletes the referencing rows in the child table 
--when the referenced row is deleted in the parent table which has a primary key.

--UPDATE CASCADE: When we create a foreign key using UPDATE CASCADE
--the referencing rows are updated in the child table 
--when the referenced row is updated in the parent table which has a primary key

--29
select * from Employee
ALTER TABLE employees
ALTER COLUMN EmpId  IDENTITY(1,1)

--30
create table Example(
id int,
depid int,
name varchar(20),
lastname varchar (20),
 constraint pk primary key (id,depid)

)
alter table Example
add constraint uk unique (name, lastname)
