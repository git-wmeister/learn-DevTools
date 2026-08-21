SELECT DISTINCT
district
FROM address
ORDER by district ASC;

SELECT COUNT(DISTINCT district)
FROM address;

SELECT rental_date
FROM rental
ORDER BY rental_date DESC
LIMIT 1;

SELECT COUNT(film_id) FROM film;

SELECT last_name FROM customer;
SELECT COUNT(last_name) FROM customer;
SELECT DISTINCT last_name FROM customer;
SELECT COUNT(DISTINCT last_name) FROM customer;