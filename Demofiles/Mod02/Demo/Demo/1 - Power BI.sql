-- Demonstration 1 - Power BI


-- Copy and paste the following query into the Power BI Desktop connection to the AdventureWorks SQL Database.

SELECT TOP 10 s.ProductID, p.Name AS ProductName, SUM(LineTotal) AS TotalSales
FROM SalesLT.SalesOrderDetail AS s
INNER JOIN SalesLT.Product AS p
ON	s.ProductID = p.ProductID
GROUP BY s.ProductID, p.Name
ORDER BY 3 DESC

