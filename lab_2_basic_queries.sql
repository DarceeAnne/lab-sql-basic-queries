### View all tables
SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM category;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM film_text;
SELECT * FROM inventory;
SELECT * FROM language;
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM staff;
SELECT * FROM store;

### Retrieve the following columns from their respective tables:
### 3.1 Titles of all films from the film table
### 3.2 List of languages used in films, with the column aliased as language from the language table
### 3.3 List of first names of all employees from the staff table

SELECT title from film;
SELECT DISTINCT language_id from film;
SELECT first_name from staff;

### Retrieve unique release years.
SELECT DISTINCT release_year from film;

### Counting records for database insights:
### 5.1 Determine the number of stores that the company has.
### 5.2 Determine the number of employees that the company has.
### 5.3 Determine how many films are available for rent and how many have been rented.
### 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(*) from store;
#There are 2 stores.
SELECT count(*) from staff;
#There are 2 staff.
SELECT COUNT(*) from inventory;
#There are 4581 films available for rent (total inventory).
SELECT COUNT(*) from inventory as total_inventory;
SELECT COUNT(*) from  rental;
#There are 16044 records in the rental table... so there are duplicates. 
#There have been 16044 rentals overall.
SELECT COUNT(DISTINCT last_name) from actor;
#There are 121 distinct last names of actors in the database.

### Retrieve the 10 longest films.
SELECT * from film
ORDER BY length DESC
LIMIT 10;

### Use filtering techniques in order to:
### 7.1 Retrieve all actors with the first name "SCARLETT".
### 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
### 7.3 Determine the number of films that include Behind the Scenes content

SELECT * from actor 
WHERE first_name = "SCARLETT";
#There are two actresses named Scarlett.
SELECT * from film
WHERE title LIKE "%ARMAGEDDON%" and length >100;
#There are 4 movies with ARMAGEDDON in the title and that are longer than 100 minutes.
SELECT * from film
WHERE special_features LIKE "%Behind%"



