create database [Custtomer_DB] on primary
(name = 'Customer_DBX', filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\customer_DB.mdf')
log on
(name='Customer_DB_log',filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\customer_DB_log.ldf')
collate SQL_Latin1_General_CP1_CI_AS

ALTER DATABASE Customer_DB MODIFY NAME = CUST_DB

USE CUST_DB
EXEC sp_changedbowner 'sa'

USE CUST_DB;
alter database CUST_DB set auto_shrink on

create database [salesDB] on primary
(name='salesDB',filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\salesDB.mdf',size=3072KB,maxsize=unlimited,filegrowth=1024KB),
filegroup[MyFileGroup]
(name='salesDB_FG', filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\salesDB_FB.ndf',size=3072KB,maxsize=unlimited,filegrowth=1024KB)
log on 
(name='salesDB_log',filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\salesDB_log.ldf',size=2048KB,maxsize=2048KB,filegrowth=10%)
collate SQL_latin1_General_CP1_CI_AS


use cust_DB
alter database cust_DB
add filegroup FG_ReadOnly


use cust_DB
alter database cust_DB
add file(name=cust_DB1,filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\cust_DB1.ndf')
to filegroup FG_readOnly ALTER DATABASE cust_DB
modify filegroup FG_readOnly Default


create database adventureWorks_dbss100 on
(name=AdventureWorks2019,filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorks_data_100.ss')
as snapshot of adventureWorks2019;
go