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

-- INTERMEDIATE -> ADVANCED SQL PRACTICE
-- Get total payment amount per customer, sorted highest to lowest
-- SELECT customer_id, SUM(amount) AS total_paid
-- FROM payment
-- GROUP BY customer_id
-- ORDER BY total_paid DESC;

-- Get customers who have made more than 50 payments
-- SELECT customer_id, COUNT(*) AS total_transactions
-- FROM payment
-- GROUP BY customer_id
-- HAVING COUNT(*) > 50;

-- Find average payment amount per staff member
-- SELECT staff_id, ROUND(AVG(amount), 2) AS avg_payment
-- FROM payment
-- GROUP BY staff_id;

-- Count customers with first names starting with 'A' and last names not starting with 'B'
-- SELECT COUNT(*)
-- FROM customer
-- WHERE first_name ILIKE 'A%' AND last_name NOT ILIKE 'B%';

-- List top 5 customers who spent the most, excluding certain customer IDs
-- SELECT customer_id, SUM(amount) AS total_spent
-- FROM payment
-- WHERE customer_id NOT IN (87, 184, 477)
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100
-- ORDER BY total_spent DESC
-- LIMIT 5;

-- Count how many unique districts exist in the address table
-- SELECT COUNT(DISTINCT district) AS unique_districts
-- FROM address;

-- Return min, max, and average replacement costs from the film table
-- SELECT 
--   ROUND(MIN(replacement_cost), 2) AS min_cost,
--   ROUND(MAX(replacement_cost), 2) AS max_cost,
--   ROUND(AVG(replacement_cost), 2) AS avg_cost
-- FROM film;

-- Show number of customers per store (only where there are more than 300 customers)
-- SELECT store_id, COUNT(customer_id) AS customer_count
-- FROM customer
-- GROUP BY store_id
-- HAVING COUNT(customer_id) > 300;

-- Count how many R-rated films have a replacement cost between 5 and 15
-- SELECT COUNT(*) AS num_r_films
-- FROM film
-- WHERE rating = 'R'
--   AND replacement_cost BETWEEN 5 AND 15;

-- Get top 3 most common last names of customers
-- SELECT last_name, COUNT(*) AS occurrences
-- FROM customer
-- GROUP BY last_name
-- ORDER BY occurrences DESC
-- LIMIT 3;

-- Total revenue per staff member, sorted by most revenue
-- SELECT staff_id, SUM(amount) AS total_revenue
-- FROM payment
-- GROUP BY staff_id
-- ORDER BY total_revenue DESC;

-- Count how many transactions were made for payments above $5
-- SELECT COUNT(*) AS transactions_over_5
-- FROM payment
-- WHERE amount > 5;

-- Get all customers with more than 40 payments and total spend above $100
-- SELECT customer_id, COUNT(*) AS num_payments, SUM(amount) AS total_spent
-- FROM payment
-- GROUP BY customer_id
-- HAVING COUNT(*) > 40 AND SUM(amount) > 100;

-- Advanced: Get latest payment per customer using DISTINCT ON
-- SELECT *
-- FROM (
--   SELECT DISTINCT ON (p.customer_id) 
--     p.payment_id, 
--     p.customer_id, 
--     c.first_name, 
--     p.payment_date, 
--     p.amount
--   FROM payment p
--   INNER JOIN customer c ON p.customer_id = c.customer_id
--   ORDER BY p.customer_id, p.payment_date DESC
-- ) latest_payments
-- ORDER BY latest_payments.payment_date DESC;



