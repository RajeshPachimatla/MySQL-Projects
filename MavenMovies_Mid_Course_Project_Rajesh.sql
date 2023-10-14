use mavenmovies;

/*
1.	We will need a list of all staff members, including their first and last names, 
email addresses, and the store identification number where they work. 
*/ 
/*
SELECT 
	staff_id,
    first_name,
    last_name,
    email,
    store_id
from staff
*/

/*
2.	We will need separate counts of inventory items held at each of your two stores. 
*/ 

/*
SELECT 
	store_id,
    count(inventory_id) as total_inventory
FROM inventory
GROUP By
	store_id
*/


/*
3.	We will need a count of active customers for each of your stores. Separately, please. 
*/

/*
SELECT
	store_id,
    count(customer_id) as active_customer
FROM customer
WHERE active =1
GROUP BY store_id
*/


/*
4.	In order to assess the liability of a data breach, we will need you to provide a count 
of all customer email addresses stored in the database. 
*/

/*
SELECT
	count(email) as count_of_email
FROM customer
*/



/*
5.	We are interested in how diverse your film offering is as a means of understanding how likely 
you are to keep customers engaged in the future. Please provide a count of unique film titles 
you have in inventory at each store and then provide a count of the unique categories of films you provide. 
*/
/*
SELECT
	store_id,
    count(distinct film_id) as count_of_inventory
FROM inventory
GROUP BY store_id
*/

/*
SELECT
	count(distinct category_id) as count_of_categories
FROM category
 */   
	






/*
6.	We would like to understand the replacement cost of your films. 
Please provide the replacement cost for the film that is least expensive to replace, 
the most expensive to replace, and the average of all films you carry. ``	
*/

/*
SELECT
	MIN(replacement_cost) as least_expensive,
    MAX(replacement_cost) as most_expensive,
    AVG(replacement_cost) as avg_cost_replacemnt
FROM film
*/

/*
7.	We are interested in having you put payment monitoring systems and maximum payment 
processing restrictions in place in order to minimize the future risk of fraud by your staff. 
Please provide the average payment you process, as well as the maximum payment you have processed.
*/

/*
SELECT
	staff_id,
    avg(amount) as avg_amount_processed,
    max(amount) as max_amount_processed
FROM payment
GROUP BY staff_id
*/


/*
8.	We would like to better understand what your customer base looks like. 
Please provide a list of all customer identification values, with a count of rentals 
they have made all-time, with your highest volume customers at the top of the list.
*/

SELECT
	customer_id,
    count(rental_id) as count_of_rental
FROM rental
GROUP BY customer_id
ORDER BY count(rental_id) DESC;



