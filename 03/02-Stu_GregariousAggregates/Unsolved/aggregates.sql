use sakila; 

SELECT *
FROM film;

DESCRIBE film;

SELECT COUNT(film_id)
FROM film;

SELECT COUNT(film_id) AS 'Total films'
FROM film;
SELECT COUNT(film_id) AS 'Total films'
FROM film;

SELECT rating, COUNT(film_id) AS 'Total films'
FROM film
GROUP BY rating;

SELECT AVG(rental_duration)
FROM film;

SELECT AVG(rental_duration) AS 'Average rental period'
FROM film;

SELECT  rental_duration, AVG(rental_rate) AS 'Average rental rate'
FROM film
GROUP BY rental_duration;

SELECT  rental_duration, AVG(rental_rate) AS 'Average rental rate'
FROM film
GROUP BY rental_duration
WHERE rental_duration < 7;

SELECT  rental_duration, AVG(rental_rate) AS 'Average rental rate'
FROM film
GROUP BY rental_duration
HAVING rental_duration < 7;
