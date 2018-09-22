-- Instructions

-- Use aggregate functions as you run queries to answer the following questions. You will have to search the internet for some of them. Try to use aliases for more informative column headings!

-- What is the average cost to rent a film in the Sakila stores?
-- What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
-- How much would it cost to replace all the films in the database?
-- How much would it cost to replace all the films in each ratings category?
-- How long is the longest movie in the database? The shortest?
-- For customers with id numbers 1 through 4, display the total amount they have paid.


use sakila;

SELECT *
FROM film; 

DESCRIBE film; 

SELECT COUNT(film_id)
FROM film;

-- what is the average cost to rent a film in the sakila stores?
SELECT AVG(rental_rate) AS 'Average Rental Rate'
FROM film;

-- what is the average rental cost of films by rating? On average what is the cheapest rating of films to rent? Most expensive? 
SELECT rating, AVG(rental_rate) AS 'Average Rental Rate'
FROM film
GROUP BY rating;

-- how much would it cost to replace all the films in the database?
SELECT SUM(replacement_cost) AS 'Total replacement cost'
FROM film;

-- How long is the longest movie in the database? The shortest?
SELECT MAX(length)
FROM film;


-- For customers with id numbers 1 through 4, display the total amount they have paid.
SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
HAVING customer_id < 5;

