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

-- Filter by more than one condition
SELECT *
FROM customers
WHERE city = 'London' AND last_name = 'Smith';

-- Find records using OR
SELECT *
FROM customers
WHERE city = 'London' OR city = 'Birmingham';

-- Find records with missing values
SELECT *
FROM customers
WHERE email IS NULL;

-- Find records within a list
SELECT *
FROM customers
WHERE city IN ('London', 'Manchester', 'Birmingham');

-- Find records between two values
SELECT *
FROM customers
WHERE customer_id BETWEEN 1 AND 5;

-- Search for text patterns
SELECT *
FROM customers
WHERE email LIKE '%gmail.com';

-- Count customers by city and sort highest first
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;

-- Average example using a numeric column
SELECT AVG(age) AS average_age
FROM customers;

-- Filter grouped results
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 1;
