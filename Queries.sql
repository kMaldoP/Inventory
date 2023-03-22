CREATE TABLE products(
	id SERIAL,
	name TEXT NOT NULL UNIQUE,
	size TEXT NOT NULL,
	category TEXT NOT NULL,
	retailPrice MONEY,
	distributor TEXT NOT NULL
);




--Queries-------------------------------------------------------------------------

--Slect name and quantity by distributor and category--
SELECT name FROM products
WHERE distributor = '' AND category = '';
--Select name and quantity by distributor--
SELECT name FROM products
WHERE distributor = '';
--Selecting name, RetailPrice and category in ascending order omitting null values
SELECT name, RetailPrice, category FROM products
WHERE retailPrice IS NOT NULL
ORDER BY  category,RetailPrice ASC;
--grouping total items by RetailPrice amount
SELECT COUNT (RetailPrice)
FROM products
WHERE RetailPrice = MONEY('number here')
--Selecting Items by category in ascending order
SELECT name, category, RetailPrice FROM products
ORDER BY category, RetailPrice ASC
--Selecting Items by category and ascenging order ommitting null values
SELECT name, category, RetailPrice FROM products
WHERE RetailPrice IS NOT NULL
ORDER BY category , RetailPrice ASC
--Display all records with RetailPrice null values by id,category,grouped by distributor
SELECT id,name, distributor,category FROM PRODUCTS
WHERE RetailPrice IS NULL
ORDER BY category 

DELETE FROM products: