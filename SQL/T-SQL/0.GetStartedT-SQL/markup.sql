 SELECT Name, 
    ListPrice,
    StandardCost,
    ListPrice - StandardCost AS Markup
 FROM SalesLT.Product;