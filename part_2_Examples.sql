USE mavenmovies;
/*
SELECT distinct
	inventory.inventory_id
FROM inventory
	INNER JOIN rental
		ON inventory.inventory_id = rental.inventory_id

LIMIT 5000
*/

/*
SELECT 
	inventory.inventory_id,
    -- we can write simply, inventory_id also
    inventory.store_id,
    film.title,
    film.description
FROM inventory
	INNER JOIN film
		ON inventory.film_id = film.film_id
        
        LIMIT 5000
*/

/*
SELECT distinct
	inventory.inventory_id as inv_inventoryID,
    rental.inventory_id as ren_inventoryID
FROM inventory
	lEFT JOIN rental
		ON inventory.inventory_id = rental.inventory_id
-- Left join returns any matches plus all records from the left table ie. first 
-- table used. In this case, inventory table
LIMIT 5000
*/

/*
SELECT
	film.title,
    COUNT(film_actor.actor_id) as count_of_actors
FROM film
LEFT JOIN film_actor
     ON film.film_id = film_actor.film_id
GROUP BY film.title
*/
/*
SELECT
	actor.actor_id,
    actor.first_name As actor_first,
    actor.last_name As actor_last,
    actor_award.first_name As award_first,
    actor_award.last_name As award_last,
    actor_award.awards
FROM actor
LEFT JOIN actor_award
-- INNER JOIN actor_award
-- RIGHT JOIN actor_award
	ON actor.actor_id = actor_award.actor_id
ORDER BY actor_id
*/

/*
SELECT
	film.film_id,
    film.title,
    category.name as Category_name
FROM film
	INNER JOIN film_category
		ON film.film_id = film_category.film_id
	INNER JOIN Category
		ON film_category.category_id = category.category_id
ORDER BY film_id
*/

/*
SELECT
	actor.first_name as first_name,
    actor.last_name as last_name,
    film.title As film_title
FROM actor
	INNER JOIN film_actor
		ON actor.actor_id = film_actor.actor_id
	INNER JOIN film
		ON film_actor.film_id = film.film_id
*/

/*
SELECT
	film.film_id,
    film.title,
    film.rating,
    category.name
FROM film
	INNER JOIN film_category
		ON film.film_id = film_category.film_id
	INNER JOIN category
		ON film_category.category_id = category.category_id
WHERE category.name = 'horror'
ORDER BY film_id
*/

/*
SELECT distinct
	film.film_id,
    film.title,
    film.description
FROM film
	INNER JOIN inventory
		ON film.film_id = inventory.film_id
		AND inventory.store_id = 2
        -- WHERE takes more time
*/


SELECT
	'advisor' as type,
    first_name,
    last_name
FROM advisor

UNION

SELECT
	'investor' as type,
    first_name,
    last_name
FROM investor

