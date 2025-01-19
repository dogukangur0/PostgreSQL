-- SUBQUERY
SELECT ROUND(AVG(rental_rate),2) FROM film;

SELECT * FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT * FROM inventory;
SELECT * FROM rental;

SELECT inventory.film_id FROM rental 
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT film_id, title FROM film WHERE film_id IN (SELECT inventory.film_id FROM rental 
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30') ORDER BY film_id;

SELECT first_name, last_name FROM customer AS c
WHERE EXISTS (SELECT * FROM payment AS p WHERE p.customer_id = c.customer_id AND amount > 11);

-- SELF-JOIN
SELECT f1.title, f2.title, f1.length FROM film AS f1 
INNER JOIN film AS f2 ON f1.film_id != f2.film_id AND f1.length = f2.length;


