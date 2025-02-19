--first set of execution

USE [master]
GO

DROP DATABASE IF EXISTS [SEDC]
GO

CREATE DATABASE [SEDC]
GO

USE [SEDC]
GO

DROP TABLE IF EXISTS [dbo].[OrderDetails]
DROP TABLE IF EXISTS [dbo].[Orders]
DROP TABLE IF EXISTS [dbo].[BusinessEntities]
DROP TABLE IF EXISTS [dbo].[Customers]
DROP TABLE IF EXISTS [dbo].[Employees]
DROP TABLE IF EXISTS [dbo].[Products]
GO

-- you can skip PKs in this class and introduce them when learning about constraints

CREATE TABLE Customers (
	[Id] int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(100) NOT NULL,
	[AccountNumber] nvarchar(100) NULL,
	[City] nvarchar(100) NULL,
	[RegionName] nvarchar(100) NULL,
	[CustomerSize] nvarchar(10) NULL,
	[PhoneNumber] nvarchar(20) NULL,
	[IsActive] bit NOT NULL,
CONSTRAINT [PK_Customers] PRIMARY KEY (Id)
)

CREATE TABLE Employees (
	[Id] int IDENTITY(1,1) NOT NULL,
	[FirstName] nvarchar(100) NOT NULL,
	[LastName] nvarchar(100) NOT NULL,
	[DateOfBirth] date NULL, 
	[Gender] nchar(1) NULL, -- 'F' / 'M'
	[HireDate] date NULL,
	[NationalIdNumber] nvarchar(20) NULL
CONSTRAINT [PK_Employees] PRIMARY KEY (Id)
)

CREATE TABLE Products (
	[Id] int IDENTITY(1,1) NOT NULL,
	[Code] nvarchar(50) NULL,
	[Name] nvarchar(100) NULL,
	[Description] nvarchar(max) NULL,
	[Weight] decimal(18, 2) NULL,
	[Price] decimal(18,2) NULL,
	[Cost] decimal(18,2) NULL,
CONSTRAINT [PK_Products] PRIMARY KEY (Id)
)


CREATE TABLE Orders(
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[OrderDate] date NULL,
	[Status] smallint NULL,
	[BusinessEntityId] int NULL,
	[CustomerId] int NULL,
	[EmployeeId] int NULL,
	[TotalPrice] decimal(18,2) NULL,
	[Comment] nvarchar(max) NULL
CONSTRAINT [PK_Orders] PRIMARY KEY (Id)
)

CREATE TABLE OrderDetails(
	[Id] int IDENTITY(1,1) NOT NULL,
	[OrderId] bigint NULL,
	[ProductId] int NULL,
	[Quantity] int NULL,
	[Price] decimal(18,2) NULL,
CONSTRAINT [PK_OrderDetails] PRIMARY KEY (Id)
)

CREATE TABLE BusinessEntities(
	[Id] int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(100) NULL,
	[Region] nvarchar(1000) NULL,
	[Zipcode] nvarchar(10) NULL,
	[Size] nvarchar(10) NULL,
CONSTRAINT [PK_BusinessEntities] PRIMARY KEY (Id)
)
GO

-- second set of execution

-- Business Entity
------------------

delete from dbo.OrderDetails where 1=1;
delete from dbo.[Orders] where 1=1;
delete from dbo.BusinessEntities where 1=1;
delete from dbo.Employees where 1=1;
delete from dbo.Products where 1=1;
delete from dbo.Customers where 1=1;
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Skopje','Skopski','1000','Large')
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Bitola','Bitolski','2000','Large')
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Strumica','Strumicki','987','Medium')
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Kumanovo','Kumanovski','500','Medium')
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Tetovo','Polog','700','Small')
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Stip','Stipski','300','Small')
GO

insert into dbo.BusinessEntities (Name,Region,Zipcode,Size)
values ('Vitalia Ohrid','Ohridski','100','Small')
GO


-- Employee table

declare @FirstName table (FirstName nvarchar(50))
insert into @FirstName values ('Aleksandar'),('Ana'),('Borce'),('Biljana'),('Viktor'),('Valentina'),('Goran'),('Gordana'),('Maja'),('Marko')

declare @LastName table (LastName nvarchar(50))
insert into @LastName values ('Stojanovski'),('Nikolovski'),('Zdravevski'),('Ivanovski'),('Popovski'),('Mitrevski'),('Stoilov'),('Pandev'),('Todorov'),('Trajanov')

insert into dbo.Employees(FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
select f.FirstName, l.LastName,'1980.01.01' as date, case when FirstName in ('Ana','Biljana','Valentina','Gordana','Maja') then 'F' else 'M' end as Gender,'2015.01.01' as HireDate,1 as IdNumber
from @FirstName f
CROSS JOIN @LastName l
GO

update e set DateOfBirth = dateadd(MM,Id,DateOfBirth),  
			 HireDate = dateadd(MM,2*Id,'1990.01.01'), 
			 NationalIdNumber =  id + cast(10000000 * rand(id*10) as int)
from dbo.Employees e
GO


-- Customer
-----------
declare @City table (City nvarchar(100),Region nvarchar(100))
insert into @City
select substring(name,9,100),Region 
from dbo.BusinessEntities
UNION select 'Radovis','Strumicki'
UNION select 'Kocani','Stipski'
UNION select 'Gevgelija','Strumicki'

declare @Market table (name nvarchar(100))
insert into @Market values ('Vero'),('Tinex'),('Ramstor'),('Kam'),('Zito'),('Zegin'),('Eurofarm'),('Makpetrol'),('Lukoil'),('Tobacco')

insert into dbo.Customers (Name, City,RegionName, isActive)
select m.name + N' ' + c.City as Name, c.City as City, case when c.Region = 'Strumicki' then 'Stipski' else c.Region end as Region, 1 as IsActive
from @Market m
CROSS APPLY @City c

update c set AccountNumber = id + cast(233255 * rand(id*7) as int),
CustomerSize = case when id%3 = 0 then 'Small' when id % 3 = 1 then 'Medium' else 'Large' end, 
PhoneNumber = N'070' + Cast(cast(1000000 * rand(id*3) as int) as nvarchar(10))
 from dbo.Customers c

 GO

-- Product
-----------

INSERT INTO dbo.Products (Name)
VALUES('Crunchy'),('Granola'),('Regular/soft'),('Gluten Free'),('Multigrain'),('Take away'),('Cornflakes'),('Cereals'),('Protein Bar'),('Raw bars'),('No Sugar Added'),('Multigrain'),
('Gluten Free'),('Kids Bar'),('Fruit, Nuts & Seeds'),('Protein balls'),('Rice Cakes'),('Mini cereal bites'),('Dried Fruits'),('Crackers'),('Cookies'),('Unrefined sugars'),
('Natural Sweeteners'),('Diabetic'),('Plant-based drinks'),('Smoothie drinks'),('Natural Juices'),('Green Teas'),('Functional Teas'),('Fruit Teas'),('Seeds'),('Oils & Vinegars'),
('Gluten Free Pasta'),('Flours'),('Superfoods'),('Sport Supplements'),('Honey Syrup'),('Sweet Spreads'),('Spices'),('Soups'),('Salty Spreads'),('Soy Pates'),('Soy milks')


update p set Weight = cast(100* id * rand(100+id) as int),
Cost = cast(20 + 10* id * rand(23+id) as int),
Price = 5 + id + cast(20 + 10* id * rand(23+id) as int),
Code = substring(Name,1,3) + cast(id as nvarchar(10)),
Description = Name + ' description'
from dbo.Products p
GO

-- Order
--------
 
 Insert into dbo.[Orders] (OrderDate, Status, BusinessEntityId, CustomerId,EmployeeId,TotalPrice,Comment)
 select '2019.05.01' as OrderDate, 0 as Status, b.Id , c.Id, e.Id, 0 as TotalPrice, N'' as comment
 from dbo.BusinessEntities b
 cross apply dbo.Customers c
 cross apply dbo.Employees e
 where b.Id not in (13,15)
 and c.Id % 10 >3
 and e.Id % 10 <7
 and b.Region = c.RegionName

 update o set OrderDate =  dateadd(DD,-(Id%120),OrderDate)
 from dbo.[Orders] o
 GO

 -- Order details
 INSERT INTO dbo.OrderDetails (OrderId, ProductId,Quantity,Price)
 select o.id,p.Id, 1 + (p.id + o.id) % 13,p.Price
 from [Orders] o
 cross apply Products p 
 where (o.id %2 + o.id %3 )= p.id % 11
 and p.id % 10 not in (3,4)
 and o.id % 10 < 7
 GO

 ; with cte as (
 select o.Id, sum(d.Quantity * d.Price) as TotalPrice
 from dbo.[Orders] o
 inner join dbo.OrderDetails d on o.Id = d.OrderId
 group by o.id 
 )
 update o set TotalPrice = c.TotalPrice
 from dbo.[Orders] o
 inner join cte c on c.Id = o.id

GO


SELECT * FROM dbo.BusinessEntities
SELECT * FROM dbo.Employees
SELECT * FROM dbo.Products
SELECT * FROM dbo.Customers 
SELECT * FROM dbo.[Orders]
SELECT * FROM dbo.[OrderDetails]

--end 
--class code bellow =>

--SQL Comaparison operators
-- = Equal
-- <> Not Equal
-- > Greater
-- < Lesser
-- >= Greater or Equal
-- <= Lesser or Equal
-- LIKE pattern matching
-- BETWEEN between a given range

--WORKSHOP1
--Find all Employees with FirstName = Goran
--Find all Employees with LastName starting With �S�
--Find all Employees with DateOfBirth greater than �01.01.1988�
--Find all Male employees
--Find all employees hired in January/1998
--Find all Employees with LastName starting With �A� hired in January/2019

SELECT * 
FROM Employees
WHERE FirstName = 'Goran'
GO

SELECT *
FROM Employees
WHERE LastName like 'M%'
GO

SELECT *
FROM Employees
WHERE DateOfBirth > '1988.01.01'
GO

SELECT *
FROM Employees
WHERE Gender = 'M'
GO

SELECT *
FROM Employees
WHERE HireDate >= '1998.01.01' and HireDate < '1998.02.01'
GO

SELECT * 
FROM Employees
WHERE HireDate >= '1990.01.01' and HireDate < '1990.05.05'
and LastName like 'S%'
GO

-- SECOND WORKSHOP
--Find all Employees with FirstName = Aleksandar ordered by Last Name
--List all Employees ordered by LastName
--Find all Male employees ordered by HireDate, starting from the last hired

SELECT * 
FROM Employees
WHERE FirstName = 'Aleksandar'
ORDER BY LastName 
GO

SELECT *
FROM Employees
ORDER BY LastName
GO

SELECT *
FROM Employees
WHERE Gender = 'M'
ORDER BY HireDate DESC
GO

-- THIRD WORKSHOP
-- List all BusinessEntity Names and Customer Names in single result set with duplicates
-- List all regions where we have BusinessEntities and Customers in the same time
-- List all regions where some BusinessEntity is based, or some Customer is based. Remove duplicates

SELECT * FROM BusinessEntities
SELECT * FROM Customers

SELECT Name -- => First we select given prop (NAME)
FROM BusinessEntities -- => FROM GIVEN TABLE (BusinessEntities)
UNION ALL -- => WE WANT TO DO UNION, maybe UNION ALL or INTERSECT
SELECT Name -- => Afterwards we select with which prop to do the union
FROM Customers -- => And we select from which table that prop should come
GO

SELECT Region
FROM BusinessEntities
--UNION ALL
--UNION
INTERSECT -- => The correct answer
SELECT RegionName
FROM Customers
GO

SELECT Region
FROM BusinessEntities
UNION
SELECT RegionName
FROM Customers
GO

-- WORKSHOP 4
--Change Products table always to insert value 1 in price column if no price is provided on insert
--Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
--Change Products table to guarantee unique names across the products

SELECT * 
FROM Products

ALTER TABLE Products
ADD CONSTRAINT Price
DEFAULT 1 FOR Price
GO

ALTER TABLE [dbo].[Products] WITH CHECK
ADD CONSTRAINT CHK_Products_Price
CHECK (price<=Cost*2)
GO

-- THIS WONT WORK BECAUSE WE ALREADY HAVE DUPLICATES
ALTER TABLE [dbo].[Products] WITH CHECK
ADD CONSTRAINT UCK_Product_Name UNIQUE (Name)
GO

-- Removing duplicate
update p set Name = 'Gluten Free New'
from Products p
WHERE Name = 'Gluten Free'
and id = 13
GO

--CONSTRAINTS (FOREIGN KEY)

-- adding foreign key constraint
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT [FK_Order_BusinessEntity] FOREIGN KEY(BusinessEntityID)
REFERENCES [dbo].[BusinessEntities] ([ID])
GO

--INSERTING WITH NON EXISTING BusinessENtityId
Insert into Orders (OrderDate, Status, BusinessEntityId, CustomerId,EmployeeId,TotalPrice,Comment)
select '2019.05.01' as OrderDate, 0 as Status, 9999 as BusinessEntityId , 1 as CustomerId , 1 as EmployeeId , 1000 as TotalPrice, N'' as comment
GO

-- DROPPING ALL CONSTRAINTS
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_BusinessEntity];
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Employee];
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customer];
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Order];
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Product];

--ADDING ALL CONSTRAINTS
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders]([Id]);
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Order_BusinessEntity] FOREIGN KEY ([BusinessEntityId]) REFERENCES [dbo].[BusinessEntities]([Id]);
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Order_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees]([Id]);
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers]([Id]);
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products]([Id]);

--END OF CONSTRAINTS (FOREIGN KEY)

--JOINS WORKSHOP 5
--List all possible combinations of Customer names and Product names that can be ordered from specific customer 
--List all Business Entities that have any Order 
--List all Business Entities without orders
--List all Customers without orders (using Right Join and using Left join)

USE [SEDC]
GO

SELECT * FROM dbo.BusinessEntities
SELECT * FROM dbo.Employees
SELECT * FROM dbo.Products
SELECT * FROM dbo.Customers 
SELECT * FROM dbo.[Orders]
SELECT * FROM dbo.[OrderDetails]

SELECT c.Name as CustomerName, p.Name as ProductName
FROM dbo.Customers c
CROSS JOIN dbo.Products p
GO

-- 1st way with full names for tables
SELECT DISTINCT dbo.BusinessEntities.Name
FROM dbo.Orders
INNER JOIN dbo.BusinessEntities ON dbo.BusinessEntities.Id = dbo.Orders.BusinessEntityId
GO

--2nd and better way with custom names for tables
SELECT DISTINCT b.Name
FROM dbo.Orders o
INNER JOIN dbo.BusinessEntities b ON b.Id = o.BusinessEntityId
GO

--1. Getting the name 
SELECT DISTINCT b.NAME
--2. from businessentitites table
FROM dbo.BusinessEntities b
--we are left joining orders table on businessentitiyId  and sort of comparing 
-- column ID in table business entities with column BusinessEntityID from orders Table
LEFT JOIN dbo.Orders o on b.Id = o.BusinessEntityId
--Adding constraint with WHERE, where businessEntity is null
WHERE o.BusinessEntityId IS NULL
GO

SELECT c.*
FROM dbo.Orders o
RIGHT JOIN dbo.Customers c on o.CustomerId = c.Id
WHERE o.CustomerId IS NULL
GO

SELECT c.*
FROM dbo.Customers c
LEFT JOIN dbo.Orders o ON o.CustomerId = c.Id
WHERE o.CustomerId IS NULL
GO









