// query 1
SELECT first_name, last_name
FROM actor
ORDER BY first_name DESC, last_name DESC;

//query 2
SELECT *
FROM actor
WHERE first_name LIKE 'C%'
ORDER BY actor_id ASC
LIMIT 10;

//query 3
SELECT title, rental_rate, rating
FROM film
WHERE (rating = 'G' OR rating = 'R') 
  AND rental_rate BETWEEN 2 AND 5;
  
//query 4
SELECT rating, AVG(rental_duration) AS avg_rental_duration
FROM film
GROUP BY rating;


//query 5
SELECT film.title, film_actor.actor_id, film_actor.film_id
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
WHERE film_actor.actor_id = 15;