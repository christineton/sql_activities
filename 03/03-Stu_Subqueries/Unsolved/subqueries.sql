SELECT title, film_id
FROM film
WHERE title = 'Early Home';


SELECT *
FROM inventory
WHERE film_id = 268;

SELECT i.inventory_id, i.film_id, i.store_id
FROM inventory i
JOIN film f
ON (i.film_id = f.film_id)
WHERE f.title = 'Early Home';

SELECT *
FROM inventory
WHERE film_id IN
(
 SELECT film_id
 FROM film
 WHERE title = 'Early Home'
);
