-- Content: Select specific columns from a table using the SELECT statement
SELECT Name, ListPrice, StandardCost
FROM SalesLT.Product;

-- Content: Select specific columns from a table using fully qualified table name
SELECT Name, ListPrice, StandardCost
FROM [adventureworks].[SalesLT].[Product]