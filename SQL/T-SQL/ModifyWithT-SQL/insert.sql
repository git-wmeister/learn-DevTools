-- Comment 1
/* Exercise 1: Insert a single row into the Employees table 
The details of table creation are beyond the scope of this module. However, it is often useful to see what columns are in a table. 
The easiest way is to just execute a SELECT statement on the table without returning any rows. By using a WHERE condition that can never be TRUE, 
no rows can be returned.

SELECT * FROM Sales.Promotion
WHERE 1 = 0;

This statement will show you all the columns and their names, but won't show the data types or any properties, such as whether NULLs are allowed, or if there is a default values specified. An example of the output from the query might look like this:
*/
SELECT * FROM SalesLT.Product
WHERE 1 = 0;