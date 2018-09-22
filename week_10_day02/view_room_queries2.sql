linventory-- Write a MySQL statement to query a film title, and the numbers of copies that exist in the inventory for that title. 
-- The results should look like the below. Your challenge is to use a subquery--a query embedded within another query--instead of a join.


CREATE VIEW linventory AS
SELECT title, (SELECT COUNT(*)
	FROM inventory
    WHERE film.film_id = inventory.film_id
    )
AS 'Number of Copies'
FROM film;

