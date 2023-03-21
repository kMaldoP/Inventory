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
--Selecting name, modprice and category in ascending order
SELECT name, halfcost, category FROM products
ORDER BY halfcost ASC;
--grouping total items by halfcost amount
SELECT COUNT (halfcost)
FROM products
WHERE halfcost = MONEY('number here')
--Selecting Items by category in ascending order
SELECT name, category, halfcost FROM products
ORDER BY category, Halfcost ASC
--Selecting Items by category and ascenging order ommitting null values
SELECT name, category, halfcost FROM products
WHERE halfcost IS NOT NULL
ORDER BY category , Halfcost ASC
--Display all records with halfcost null values by id,category,grouped by distributor
SELECT id,name, distributor,category FROM PRODUCTS
WHERE halfcost IS NULL
ORDER BY category 

DELETE FROM products: