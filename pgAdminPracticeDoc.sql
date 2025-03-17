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


--SELECT staff_id, COUNT(amount) 
--FROM payment
--GROUP BY staff_id

--SELECT rating, AVG (replacement_cost)
--FROM film
--GROUP BY rating

--SELECT customer_id, SUM(amount)
--FROM payment
--GROUP BY customer_id
--ORDER BY SUM(amount) DESC
--LIMIT 5

--SELECT customer_id, SUM(amount) FROM payment
--WHERE customer_id NOT IN (184,87,477)
--GROUP BY customer_id
--HAVING SUM(amount) > 100

--# of customers per store
--SELECT store_id, COUNT(customer_id) FROM customer
--GROUP BY store_id
--HAVING COUNT(customer_id) > 300

--SELECT customer_id, COUNT(*)
--FROM payment GROUP BY customer_id
--HAVING COUNT(*) >= 40;

--select customer_id, sum(amount)
--from payment
--where staff_id = 2
--group by customer_id
--having sum(amount) > 100

--select count(amount) as num_transactions
--from payment

--select customer_id, sum(amount) as total_spent
--from payment
--where amount > 2
--group by customer_id
--having sum(amount) > 100


--SELECT *
--FROM (
--    SELECT DISTINCT ON (customer.customer_id) 
--        payment.payment_id, 
--        payment.customer_id, 
--        customer.first_name
--    FROM payment
--    INNER JOIN customer ON payment.customer_id = customer.customer_id
--    ORDER BY customer.customer_id, customer.first_name ASC, payment.payment_id
--) subquery
--ORDER BY first_name;


