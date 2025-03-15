--SELECT * FROM payment
--SELECT * FROM customer 
--WHERE first_name ILIKE 'J%' AND last_name ILIKE 'S%'
--WHERE first_name ILIKE '_her%' --AND last_name ILIKE 'S%'
--WHERE first_name ILIKE 'A%' AND last_name NOT LIKE 'B%'
--ORDER BY last_name

--SELECT COUNT(amount) FROM payment
--WHERE amount > 5;

--SELECT COUNT(*) FROM actor
--WHERE first_name LIKE 'P%'

--SELECT COUNT(DISTINCT(district))
--FROM address;

--SELECT DISTINCT(district)
--FROM address;

--SELECT COUNT(*) FROM film
--WHERE rating = 'R'
--AND replacement_cost BETWEEN 5 and 15;

--SELECT ROUND(AVG(replacement_cost), 2)
--FROM film
--SELECT ROUND(MIN(replacement_cost), 2)
--FROM film;

--SELECT ROUND(MAX(replacement_cost), 2), MIN(replacement_cost)
--FROM film;

--SELECT customer_id FROM payment
--GROUP BY customer_id
--ORDER BY COUNT(amount) DESC
--ORDER BY SUM(amount) DESC

--select customer_id, staff_id, sum(amount) from payment
--group by staff_id, customer_id


SELECT staff_id, COUNT(amount) 
FROM payment
GROUP BY staff_id
