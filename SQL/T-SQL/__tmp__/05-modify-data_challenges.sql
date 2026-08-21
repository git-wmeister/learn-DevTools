
-- Challenge 1: Insert a new product

SELECT * FROM SalesLT.Product
WHERE Name = 'LED Lights';

SELECT SCOPE_IDENTITY() AS LatestIdentityInDB,
       IDENT_CURRENT('SalesLT.Product') AS LatestProductID;

SELECT * FROM SalesLT.Product
WHERE Name = 'LED Lights';

INSERT INTO SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
VALUES
('LED Lights', 'LT-L123', 2.56, 12.99, 37, GETDATE());

SELECT SCOPE_IDENTITY();

SELECT * FROM SalesLT.Product
WHERE ProductID = SCOPE_IDENTITY();

SELECT * FROM SalesLT.Product
WHERE Name = 'LED Lights';

SELECT IDENT_CURRENT('SalesLT.ProductCategory') AS LatestProductCategoryID;
SELECT * FROM SalesLT.ProductCategory;

INSERT INTO SalesLT.ProductCategory (ParentProductCategoryID, Name)
VALUES
(4, 'Bell and Horns');

SELECT IDENT_CURRENT('SalesLT.ProductCategory') AS LatestProductCategoryID;
SELECT * FROM SalesLT.ProductCategory;

SELECT IDENT_CURRENT('SalesLT.ProductCategory') AS LatestProductCategoryID;

INSERT INTO SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
 VALUES
 ('Bicycle Bell', 'BB-RING', 2.47, 4.99, IDENT_CURRENT('SalesLT.ProductCategory'), GETDATE()),
 ('Bicycle Horn', 'BH-PARP', 1.29, 3.75, IDENT_CURRENT('SalesLT.ProductCategory'), GETDATE());

 --SELECT c.Name As Category, p.Name AS Product
 SELECT *
 FROM SalesLT.Product AS p
 JOIN SalesLT.ProductCategory as c
     ON p.ProductCategoryID = c.ProductCategoryID
 WHERE p.ProductCategoryID = IDENT_CURRENT('SalesLT.ProductCategory');


 SELECT IDENT_CURRENT('SalesLT.ProductCategory');

 SELECT * FROM SalesLT.Product;

/*
Challenge 2: Update products

1. Insert a product
*/

UPDATE SalesLT.Product
SET ListPrice = ListPrice * 1.10
WHERE ProductCategoryID = 
    (SELECT ProductCategoryID
     FROM SalesLT.ProductCategory
     WHERE Name = 'Bell and Horns');

SELECT * 
FROM SalesLT.Product
WHERE ProductCategoryID = 
    (SELECT ProductCategoryID
     FROM SalesLT.ProductCategory
     WHERE Name = 'Bell and Horns');

-- 2. Discontinue a product

SELECT * FROM SalesLT.Product
WHERE ProductCategoryID = 37
AND ProductNumber <> 'LT-L123';

UPDATE SalesLT.Product
SET DiscontinuedDate = GETDATE()
WHERE ProductCategoryID = 37
AND ProductNumber <> 'LT-L123';

SELECT * FROM SalesLT.Product
WHERE ProductCategoryID = 37
AND ProductNumber <> 'LT-L123';


-- Challenge 3: Delete products

SELECT * 
FROM SalesLT.Product
WHERE ProductCategoryID = 
    (SELECT ProductCategoryID
     FROM SalesLT.ProductCategory
     WHERE Name = 'Bell and Horns');

DELETE FROM SalesLT.Product
WHERE ProductCategoryID = 
    (SELECT ProductCategoryID
     FROM SalesLT.ProductCategory
     WHERE Name = 'Bell and Horns');

SELECT * 
FROM SalesLT.Product
WHERE ProductCategoryID = 
    (SELECT ProductCategoryID
     FROM SalesLT.ProductCategory
     WHERE Name = 'Bell and Horns');

SELECT *
FROM SalesLT.ProductCategory
WHERE Name = 'Bell and Horns';

DELETE FROM SalesLT.ProductCategory
WHERE Name = 'Bell and Horns';

SELECT *
FROM SalesLT.ProductCategory
WHERE Name = 'Bell and Horns';
