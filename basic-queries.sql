-- View all records
SELECT * FROM customers;

-- Select specific columns
SELECT first_name, last_name, email
FROM customers;

-- Filter records
SELECT *
FROM customers
WHERE city = 'London';

-- Sort records
SELECT *
FROM customers
ORDER BY last_name ASC;

-- Count total records
SELECT COUNT(*) AS total_customers
FROM customers;

-- Group records
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

-- Filter grouped results
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 1;
