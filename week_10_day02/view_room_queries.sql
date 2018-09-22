total_salesCREATE VIEW total_sales AS
SELECT title, (SELECT COUNT(*) 
	FROM inventory 
	WHERE film.film_id = inventory.film_id 
	) 
AS 'Number of Copies'
FROM film;
