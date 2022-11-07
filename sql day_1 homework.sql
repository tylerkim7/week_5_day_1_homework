-- Question 1
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';


-- Question 2
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- Question 3
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Question 4
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'William';

--Question 5
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

-- Question 6
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Question 8
SELECT COUNT(last_name), store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

-- Question 9
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

-- Question 10
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;