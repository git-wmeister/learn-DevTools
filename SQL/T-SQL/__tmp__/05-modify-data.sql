/* 
This script is used to modify data in the SalesLT.Customer table.
*/

SELECT * FROM SalesLT.Customer;

--SELECT TABLE_SCHEMA, TABLE_NAME
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'SalesLT'
--  AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

-- SELECT * FROM SalesLT.CallLog;

CREATE TABLE SalesLT.CallLog
(
    CallID int IDENTITY PRIMARY KEY NOT NULL,
    CallTime datetime NOT NULL DEFAULT GETDATE(),
    SalesPerson nvarchar(256) NOT NULL,
    CustomerID int NOT NULL REFERENCES SalesLT.Customer(CustomerID),
    PhoneNumber nvarchar(25) NOT NULL,
    Notes nvarchar(max) NULL
);

SELECT * FROM SalesLT.CallLog;

INSERT INTO SalesLT.CallLog
VALUES
('2015-01-01T12:30:00', 'adventure-works\pamela0', 1, '245-555-0173', 'Returning call re: enquiry about delivery');

INSERT INTO SalesLT.CallLog
VALUES
(DEFAULT, 'adventure-works\david8', 2, '170-555-0127', NULL);

INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\jillian0', 3, '279-555-0130');

INSERT INTO SalesLT.CallLog
 VALUES
 (DATEADD(mi,-2, GETDATE()), 'adventure-works\jillian0', 4, '710-555-0173', NULL),
 (DEFAULT, 'adventure-works\shu0', 5, '828-555-0186', 'Called to arrange deliver of order 10987');

INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber, Notes)
SELECT SalesPerson, CustomerID, Phone, 'Sales promotion call'
FROM SalesLT.Customer
WHERE CompanyName = 'Big-Time Bike Store';


SELECT * FROM SalesLT.Customer
WHERE CompanyName = 'Big-Time Bike Store';

INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\josé1', 10, '150-555-0127');

SELECT SCOPE_IDENTITY() AS LatestIdentityInDB,
       IDENT_CURRENT('SalesLT.CallLog') AS LatestCallID;

SET IDENTITY_INSERT SalesLT.CallLog ON;

INSERT INTO SalesLT.CallLog (CallID, SalesPerson, CustomerID, PhoneNumber)
VALUES
(20, 'adventure-works\josé1', 11, '926-555-0159');

SET IDENTITY_INSERT SalesLT.CallLog OFF;

UPDATE SalesLT.CallLog
SET Notes = 'No notes'
WHERE Notes IS NULL;

UPDATE SalesLT.CallLog
SET SalesPerson = '', PhoneNumber = ''

SELECT * FROM SalesLT.Customer
WHERE CustomerID IN (1, 2, 3, 4, 5, 10, 11, 529, 29784);

UPDATE SalesLT.CallLog
SET SalesPerson = c.SalesPerson, PhoneNumber = c.Phone
FROM SalesLT.Customer AS c
WHERE c.CustomerID = SalesLT.CallLog.CustomerID;

DELETE FROM SalesLT.CallLog
WHERE CallTime < DATEADD(dd, -7, GETDATE());

TRUNCATE TABLE SalesLT.CallLog;

SELECT * FROM SalesLT.CallLog;
