 SELECT 
    ProductNumber,
    Color,
    Size,
    Color + ', ' + Size AS ProductDetails
 FROM SalesLT.Product;