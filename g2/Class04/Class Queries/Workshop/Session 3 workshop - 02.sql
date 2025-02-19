-- REQUIREMENT 02

-- Calculate the total amount per BusinessEntity on all orders in the system and filter only total orders greater then 635558
SELECT b.Name as BusinessEntityName, SUM(TotalPrice) as Total
FROM dbo.[Order] o
join dbo.BusinessEntity b on o.BusinessEntityId = b.Id
GROUP BY b.name
HAVING SUM(TotalPrice) > 635558.00
GO


-- Calculate the total amount per BusinessEntity on all orders in the system 
-- from Customers with ID < 20 
-- and filter only total orders less then 100000
SELECT b.Name as BusinessEntityName, SUM(TotalPrice) as Total
FROM dbo.[Order] o
join dbo.BusinessEntity b on o.BusinessEntityId = b.Id
WHERE CustomerId < 20
GROUP BY b.Name
HAVING SUM(TotalPrice) < 100000


-- Find the Maximal Order amount, and the Average Order amount per BusinessEntity on all orders in the system. 
-- Filter only records where Total order amount is more then 4x bigger then average
--List all BusinessEntity names next to the other details
SELECT b.Name as BusinessEntity, MAX(TotalPrice) as Total, AVG(TotalPrice) as Average
FROM dbo.[Order] o
join dbo.BusinessEntity b on o.BusinessEntityId = b.Id
GROUP BY b.Name
HAVING  MAX(TotalPrice) > 4*AVG(TotalPrice)
GO


