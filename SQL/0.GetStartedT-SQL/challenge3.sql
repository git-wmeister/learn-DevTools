-- Retrieve customer contact details
-- 0. Preparetion
SELECT TOP (5) * FROM SalesLT.Customer
SELECT TOP (5) FirstName, MiddleName, LastName FROM SalesLT.Customer

-- 1. Retrieve customer contact names with middle names if known
SELECT FirstName + ' ' + COALESCE(MiddleName, LastName) + ' ' + 
    CASE
         WHEN MiddleName IS NULL THEN ''
         ELSE LastName
     END AS CutomerName 
FROM SalesLT.Customer
-- Original Solution
SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName AS CutomerName
FROM SalesLT.Customer

-- 2. Retrieve primary contact details

-- 3. Retrieve shipping status