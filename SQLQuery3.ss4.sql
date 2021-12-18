USE AdventureWorks2019
SELECT LoginID From HumanResources.Employee
WHERE JobTitle='Design Engineer'
go
CREATE TYPE usertype From varchar(20) NOT NULL
go
DECLARE @Number int;
SET @Number=2+2*(4+(5-3))
SELECT @Number
go
USE AdventureWorks2019
SELECT SalesOrderID, CustomerID,SalesPersonID,TerritoryID,YEAR(OrderDate) AS
CurrentYear,YEAR(OrderDate)+1 AS NextYear
From Sales.SalesOrderHeader
go
IF DATENAME(WEEKDAY,GETDATE()) IN (N'Saturday',N'Sunday')
SELECT 'It is a Weekend';
ELSE
SELECT 'It is a Weekday';
go
use AdventureWorks2019
go
select ProductID
from Production.Product
intersect
select ProductID
from Production.WorkOrder
go
use AdventureWorks2019
select SalesPersonID,YEAR(OrderDate) AS OrderYear from
Sales.SalesOrderHeader
where CustomerID=30084
group by SalesPersonID, YEAR(OrderDate)
having COUNT(*)>1
order by SalesPersonID, OrderYear;