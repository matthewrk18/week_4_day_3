--Week 4 - Wednesday
--Questions

--1. List all customers who live in Texas (use JOINs)
SELECT first_name, last_name, district
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

--2. Get all payments above $6.99 with the Customer's Full Name
SELECT first_name, last_name, amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

--3. Show all customers names who have made at least 4 payments(use subqueries)
SELECT first_name, last_name, SUM(payment_id)
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id


--4. List all customers that live in Nepal (use the city table)
SELECT first_name, last_name, city
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON address.city_id = city.city_id
WHERE city = 'Nepal';

--5. Which staff member (first/last name) had the most transactions?

--6. Which movie title(s) has been rented the most?

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT first_name, last_name, amount, customer.customer_id
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount IN(
	SELECT amount
	FROM payment
	WHERE amount > 6.99
);

--8. Which employee gave out the most free rentals?