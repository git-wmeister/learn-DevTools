 -- Commented SELECT statment will not work because of data type missmatch
 /* 
 SELECT ProductID + ': ' + Name AS ProductName
 FROM SalesLT.Product;
*/
-- CAST (ANSI standard) and CONVERT (SQL Server specific) functions can be used to convert 
-- the numeric ProductID column to a varchar value that can be concatenated with other text-based values.
SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS ProductName
FROM SalesLT.Product;

/*Note that the effect of the CAST function is to change the numeric ProductID column into a varchar 
(variable-length character data) value that can be concatenated with other text-based values.

Modify the query to replace the CAST function with a CONVERT function as shown below, and then re-run it:
*/
SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS ProductName
FROM SalesLT.Product; 

/* Note that the results of using CONVERT are the same as for CAST. The CAST function is an ANSI standard 
part of the SQL language that is available in most database systems, while CONVERT is a SQL Server specific function.

Another key difference between the two functions is that CONVERT includes an additional parameter that can 
be useful for formatting date and time values when converting them to text-based data. 
For example, replace the existing query with the following code and run it.
*/
 SELECT SellStartDate,
    CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
    CONVERT(nvarchar(30), SellStartDate, 102) AS ISO8601FormatDate
 FROM SalesLT.Product; 

/*
Replace the existing query with the following code, and run it.
*/
 SELECT Name, Size FROM SalesLT.Product; 

 SELECT Name, CAST(Size AS Integer) AS NumericSize
 FROM SalesLT.Product; 

/*
Note that an error is returned because some Size values are not numeric (for example, some item sizes are indicated as S, M, or L).
Modify the query to use a TRY_CAST function, as shown here.
*/
SELECT Name, TRY_CAST(Size AS Integer) AS NumericSize
FROM SalesLT.Product; 

-- Run the query and note that the numeric Size values are converted successfully to integers, but that non-numeric sizes are returned as NULL.