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

--## Medium Questions (20)

--1
select CHAR(65)

--2
select LTRIM('  Johnny Depp  ')
select RTRIM('  Johnny Depp  ')

--3
select CHARINDEX('sql', 'Learn sql basics')

--4
select CONCAT_WS(',','SQL', 'SERVER')

--5
SELECT STUFF('test', 1,4, 'Students')

--6
select SQUARE(7)

--7
select LEFT('International', 7)

--8
select RIGHT('Databasic', 2)

--9
select Patindex('%n%', 'Learn SQL')

--10
select DATEDIFF(day, '2025-01-01', '2025-02-03' )

--11
select MONTH('2025-02-03' )


--12
select datepart(month, '2025-02-03' )

--13
select GETDATE()
Select Convert(Time, GetDate())

--14
select SYSDATETIME()

--15


--16
select GETDATE()
select GETUTCDATE()

--17
select ABS(-15)

--18
select CEILING(4.75)

--19
select CURRENT_TIMESTAMP

--20
select DATENAME(DAY, '2025-02-03')

--## Difficult Questions (20)
--1
select reverse(replace(('sql server'), ' ', ''))

--2
select city from hr.employees
select STRING_AGG(city, ',') from hr.employees

--3
select 
 case
 when(CHARINDEX(('sql'),'server sql' )  +  CHARINDEX(('server'),'server sql' )) > CHARINDEX(('sql'),'server sql' ) then 'true'
 else 'false'
 end as qw

 --4
 select POWER(5, 3)

 --5
 select value from string_split('apple;orange;banana', ';')

 --6
 select TRIM(' sql ')

 --7
 select CURRENT_TIMESTAMP
 select DATEDIFF(HOUR, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)

 --8
 select DATEPART(MONTH,'2023-05-01' ) - DATEPART(MONTH, '2025-02-03' )

 --9
 select REVERSE('Learn SQL Server' )
 select REVERSE('SQL')
 select CHARINDEX(REVERSE('SQL'), REVERSE('Learn SQL Server' ))

 --10
 select value from string_split('apple,orange,banana', ',')

--11
select DATEDIFF(DAY, '2025-01-01' , GETDATE())

--12
select LEFT('Data science', 4)

--13
select ceiling(SQRT(225))

--14
select CONCAT_WS('|', 'sql', 'server')

--15
select PATINDEX('%[1-9]%', 'abc123xyz')

--16
select CHARINDEX('sql', 'sql server sql', CHARINDEX('sql', 'sql server sql') + 1)

--17
select DATEPART(year, current_timestamp)

--18
select DATEADD(DAY, -100, GETDATE()) 

--19
select DATENAME(WEEKDAY, '2025-02-03')

--20
select POWER(56, 2) as result

