--This document contains a collection of SQL homework questions divided into three difficulty levels: 
--**Easy**, **Medium**, and **Difficult**.
--## Easy Questions (20)
--1
select  Ascii('A')

--2
select LEN('Hello world')

--3
select REVERSE('OpenAI')

--4
select len(SPACE(5) + 'x')

--5
select LTRIM('   trimmed from the left')

--6
select UPPER('sql')

--7
select LEFT('Database', 3)

--8
select RIGHT('technology', 4)

--9
select SUBSTRING('Programming', 3 , 3)

--10
select CONCAT('Sql',' ','Server')

--11
select REPLACE('apple pie', 'apple', 'orange')

--12
select CHARINDEX('Learn','Learn SQL with LearnSQL')

--13

select PATINDEX('%er', 'Server')

--14
select value from String_split('apple,orange,banana' ,',')

--15
select POWER(2,3)

--16
select SQRT(16)

--17
select GETDATE()
select CURRENT_TIMESTAMP

--18
select GETUTCDATE()

--19
select MONTH('2025-02-03')
select DATENAME(MONTH,('2025-02-03'))

--20
select DATEADD(day,10,'2025-02-03')
