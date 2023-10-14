use mavenmovies;

/*
SELECT 
	first_name,
    last_name,
    email
FROM customer
*/

/*
SELECT DISTINCT
	rental_duration
FROM film
*/

/*
SELECT
	customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
-- WHERE customer_id <= 100
WHERE customer_id BETWEEN 1 AND 100
*/
/*
SELECT
	customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
WHERE customer_id < 101
	AND amount >=5
    AND payment_date > '2006-01-01'
*/

/*
SELECT
	customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
Where amount < 5
	AND customer_id = 42
    OR customer_id = 53
    OR customer_id = 60
    OR customer_id = 73
    -- OR customer_id IN(42,53,60,73)
*/
/*
SELECT
	title,
    special_features
FROM film
WHERE special_features LIKE '%Behind the scenes%'
*/
/*
SELECT DISTINCT
	rental_duration,
	count(film_id) as films_with_this_rentalduration
FROM film
GROUP BY rental_duration
*/

/*
SELECT
	replacement_cost,
    count(film_id) As number_of_film,
    min(rental_rate) As cheapest_rental,
    max(rental_rate) As most_expensive_rental,
    avg(rental_rate) As average_rental
FROM film
GROUP BY replacement_cost
*/

/*
SELECT
	customer_id,
    count(rental_id) as total_rentals
FROM rental
group by customer_id
Having count(rental_id) < 15
*/

/*
SELECT
	title,
    length,
    rental_rate
FROM film
order by length DESC
*/

/*
Select 
	first_name,
    last_name,
    CASE
		When store_id = 1 AND active = 1 Then 'store_1_active'
        When store_id = 1 AND active = 0 Then 'store_1_inactive'
        When store_id = 2 AND active = 1 Then 'store_2_active'
        When store_id = 2 AND active = 0 Then 'store_2_inactive'
		else 'check the logic'
	ENd as StoreID_Status
From customer	
*/

select
	film_id,
    COUNT(case when store_id =1 then inventory_id else null end) as store_1_copies,
    COUNT(case when store_id =2 then inventory_id else null end) as store_2_copies,
    count(inventory_id) as total_copies
from inventory
group by film_id
order by film_id


    
		
    