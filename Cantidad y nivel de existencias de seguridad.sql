USE AdventureWorks2019
GO

--Se requiere saber la cantidad y nivel de existencias de seguridad de cada producto

SELECT ppi.ProductID, ppi.Quantity AS Cantidad, pp.Name AS Producto, pp.SafetyStockLevel AS Nivel_stock_seguridad
FROM Production.ProductInventory ppi
INNER JOIN Production.Product pp
ON ppi.ProductID = pp.ProductID