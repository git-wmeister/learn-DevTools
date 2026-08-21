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
 SELECT CustomerID, EmailAddress, Phone 
 FROM SalesLT.Customer;

/* does not work as intended, because no Pohne value is returned but only EmailAddress
 without EmailAddress 
 SELECT CustomerID, ISNULL(EmailAddress, Phone) AS PrimaryContact   
*/
 SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
 FROM SalesLT.Customer;

-- 3. Retrieve shipping status
 SELECT SalesOrderID, OrderDate,
     CASE
         WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
         ELSE 'Shipped'
     END AS ShippingStatus
 FROM SalesLT.SalesOrderHeader;