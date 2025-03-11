-- homework first day

create database homeworkDB
use homeworkDB

create table Students (
StudentId int,
FullName varchar(50),
Age int,
GPA decimal(3,2)
)

Select * from Students

Alter table Students
add Email varchar(50)

sp_rename 'students.Fullname', 'Name', 'column' 

Alter table Students
drop column Age

truncate table Students

select @@SERVERNAME AS [SERVER NAME]

select GETDATE() as [current date and time]

select * from Students

