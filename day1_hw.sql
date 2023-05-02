--1. How many actors are there with the last name 'Wahlberg'?
SELECT actor_id, last_name
FROM actor 
WHERE last_name = 'Wahlberg';
--Answer:2	Wahlberg 95 Wahlberg

--2. How many payments were made between $3.99 and $5.99?
SELECT count(payment_id), amount 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount;
--Answer:
--3424	4.99
--1188	5.99
--7		5.98
--988	3.99

--3. What film does the store have the most of? (search in inventory)
SELECT count(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY count(film_id) DESC;

--4.How many customers have a last name with "William"
SELECT firsts_name, LAST_name
FROM customer
WHERE last_name = 'William';

--Answer 8 is the max of time a film occurs

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, count(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY count(rental_id) desc;
--Anwser: film id 508,15 actors

--6. How many different district names are there?
SELECT DISTINCT first_name, last_name
FROM actor;
--Answer: There are 199 distinct name for the actor table 

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) DESC;

--Answer: film_id 508 has the most actors with 15

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT count(last_name)
FROM customer
WHERE last_name like'%es';

--Answer: There are 21 customers with 'es' at the end of there last names 

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount,count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount;
HAVING count(amount) > 250;
--Answer: 3 
--10. Within the film table, how many rating categories are there? And what rating has the most moive total?
SELECT DISTINCT rating, count(film_id)
FROM film 
GROUP BY rating 
ORDER BY count(film_id) DESC;

--Answer: PG-13	223
NC-17	210
R		195
PG		194
G		178