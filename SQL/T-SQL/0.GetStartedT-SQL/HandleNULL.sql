-- Modify the query to use a TRY_CAST function, as shown here.
SELECT Name, TRY_CAST(Size AS Integer) AS NumericSize
FROM SalesLT.Product; 
-- Run the query and note that the numeric Size values are converted successfully to integers, but that non-numeric sizes are returned as NULL.

/* Handle NULL values
We’ve seen some examples of queries that return NULL values. NULL is generally used to denote a value that is unknown. Note that this is not the same as saying the value is none - that would imply that you know that the value is zero or an empty string!

Modify the existing query as shown here:
*/
 SELECT Name, ISNULL(TRY_CAST(Size AS Integer),0) AS NumericSize
 FROM SalesLT.Product;

/*
Run the query and view the results. Note that the ISNULL function replaces NULL values with the specified value, so in this case, sizes that are not numeric (and therefore can’t be converted to integers) are returned as 0.

In this example, the ISNULL function is applied to the output of the inner TRY_CAST function, but you can also use it to deal with NULL values in the source table.

Replace the query with the following code to handle NULL values for Color and Size values in the source table:
*/
 SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails
 FROM SalesLT.Product;

/* 
The ISNULL function replaces NULL values with a specified literal value. Sometimes, you may want to achieve the opposite result by replacing an explicit value with NULL. To do this, you can use the NULLIF function.

Try the following query, which replaces the Color value “Multi” to NULL.
*/
 -- compare the results of the two queries
 SELECT Name, Color
 FROM SalesLT.Product;

 SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
 FROM SalesLT.Product;

/* 
In some scenarios, you might want to compare multiple columns and find the first one that isn’t NULL. For example, suppose you want to track the status of a product’s availability based on the dates recorded when it was first offered for sale or removed from sale. A product that is currently available will have a SellStartDate, but the SellEndDate value will be NULL. When a product is no longer sold, a date is entered in its SellEndDate column. To find the first non-NULL column, you can use the COALESCE function.

Use the following query to find the first non-NULL date for product selling status.
*/
-- COALESCE means in German "zusammenfassen" or "vereinigen"
 SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated
 FROM SalesLT.Product;
 
/* 
The previous query returns the last date on which the product selling status was updated, but doesn’t actually tell us the sales status itself. To determine that, we’ll need to check the dates to see if the SellEndDate is NULL. To do this, you can use a CASE expression in the SELECT clause to check for NULL SellEndDate values. The CASE expression has two variants: a simple CASE that evaluates a specific column or value, or a searched CASE that evaluates one or more expressions.

In this example, our CASE expression must determine if the SellEndDate column is NULL. Typically, when you are trying to check the value of a column you can use the = operator; for example the predicate SellEndDate = ‘01/01/2005’ returns True if the SellEndDate value is 01/01/2005, and False otherwise. However, when dealing with NULL values, the default behavior may not be what you expect. Remember that NULL actually means unknown, so using the = operator to compare two unknown values always results in a value of NULL - semantically, it’s impossible to know if one unknown value is the same as another. To check to see if a value is NULL, you must use the IS NULL predicate; and conversely to check that a value is not NULL you can use the IS NOT NULL predicate.

Run the following query, which includes searched CASE that uses an IS NULL expression to check for NULL SellEndDate values.
*/
 SELECT Name,
     CASE
         WHEN SellEndDate IS NULL THEN 'Currently for sale'
         ELSE 'No longer available'
     END AS SalesStatus
 FROM SalesLT.Product;

/* 
The previous query used a searched CASE expression, which begins with a CASE keyword, and includes one or more WHEN…THEN expressions with the values and predicates to be checked. An ELSE expression provides a value to use if none of the WHEN conditions are matched, and the END keyword denotes the end of the CASE expression, which is aliased to a column name for the result using an AS expression.

In some queries, it’s more appropriate to use a simple CASE expression that applies multiple WHERE…THEN predictes to the same value.

Run the following query to see an example of a simple CASE expression that produced different results depending on the Size column value.
*/
 SELECT Name,
     CASE Size
         WHEN 'S' THEN 'Small'
         WHEN 'M' THEN 'Medium'
         WHEN 'L' THEN 'Large'
         WHEN 'XL' THEN 'Extra-Large'
         ELSE ISNULL(Size, 'n/a')
     END AS ProductSize
 FROM SalesLT.Product;

/* 
Review the query results and note that the ProductSize column contains the text-based description of the size for S, M, L, and XL sizes; the measurement value for numeric sizes, and n/a for any other sizes values.