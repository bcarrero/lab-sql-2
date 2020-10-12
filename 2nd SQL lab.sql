-- Instructions:
--  Select all the actors with the first name ‘Scarlett’.
USE sakila;
SELECT * FROM actor 
WHERE first_name = 'Scarlett';
-- Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor 
WHERE last_name = 'Johansson';
--  How many films (movies) are available for rent?
SELECT count(*) from inventory;
-- How many films have been rented?
SELECT count(rental_id) from rental;
-- What is the shortest and longest rental period?
SELECT max(rental_duration), min(rental_duration) from film;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT * from film WHERE length = max(length);
SELECT * 
FROM film WHERE length IN 
( SELECT MAX(length)
  FROM film
);
-- What's the average movie duration?
SELECT avg(length) 
FROM film;
-- What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(FLOOR(avg(length)/60),'h ',MOD(avg(length),60),'m')
FROM film;
-- How many movies longer than 3 hours?
SELECT * from film WHERE length >= 180;
-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- SELECT * FROM staff;
SELECT LOWER(first_name), UPPER(last_name), email FROM staff;
-- What's the length of the longest film title?
SELECT *, max(length) from film WHERE length;

