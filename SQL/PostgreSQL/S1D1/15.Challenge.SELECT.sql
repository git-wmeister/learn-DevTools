SELECT
first_name,
last_name,
email
FROM customer
ORDER BY last_name DESC, first_name DESC; 
/*
This query selects the first name, last name, and email of customers from the customer table. The results are ordered by last name in descending order,
and if there are multiple customers with the same last name, they are further ordered by first name in descending order.
*/

SELECT
first_name,
last_name,
email
FROM customer
ORDER BY 1 DESC, 2 DESC; 
/*
This query achieves the same result as the previous one, but instead of using column names in the ORDER BY clause, it uses the column positions. 
'1' refers to the first column (first_name) and '2' refers to the second column (last_name). The results are ordered by first name in descending order, 
and if there are multiple customers with the same first name, they are further ordered by last name in descending order.
*/