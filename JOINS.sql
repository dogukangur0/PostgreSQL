--  AS 
-- SELECT column_name AS new_name FROM table
-- SELECT SUM(column) AS new_name FROM table
SELECT customer_id FROM payment;
SELECT amount AS rental_price FROM payment;
SELECT SUM(amount) AS net_revenue FROM payment;
SELECT customer_id, SUM(amount) AS total_spent FROM payment GROUP BY customer_id HAVING SUM(amount) > 100;
-- HAVING total_spent > 100 = hata ! takma adlar en sonda atanır ve filtrelemede kullanılmaz.


-- INNER JOIN
-- SELECT * FROM tableA INNER JOIN tableB ON tableA.column_match = tableB.column_match
SELECT customer.customer_id, payment_id, email FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id;

-- FULL OUTER JOIN
SELECT * FROM customer FULL OUTER JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL OR payment.payment_id IS NULL;

-- LEFT OUTER JOIN
SELECT film.film_id, title, inventory_id, store_id FROM film LEFT OUTER JOIN inventory ON film.film_id = inventory.film_id
WHERE inventory.film_id IS NULL;

-- UNION Birleştirilen sorguların döndürdüğü sütun sayısı ve veri türleri uyumlu olmalıdır.

-- JOIN EXERCISE

SELECT district, email FROM address INNER JOIN customer ON address.address_id = customer.address_id
WHERE district = 'California';


SELECT title, first_name, last_name FROM film INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';





