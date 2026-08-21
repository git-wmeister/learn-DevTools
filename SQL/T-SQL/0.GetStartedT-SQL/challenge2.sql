--0. Preparation
SELECT TOP(5) * FROM SalesLT.SalesOrderHeader

--1. Retrieve a list of customer companies
SELECT CONVERT(varchar(5), CustomerID) + ': ' + CompanyName AS CompanyDetails FROM SalesLT.Customer
-- Original Solution
SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer

--2. Retrieve a list of sales order revisions
SELECT 
	PurchaseOrderNumber + ' (' + CONVERT(nvarchar(5), RevisionNumber) + ')'  AS PurchaseDetails,
	CONVERT(nvarchar(10), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader
-- Original Solution
SELECT
	PurchaseOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
	CONVERT(nvarchar(10), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader
