CREATE TABLE products(
	id SERIAL ,
	name TEXT NOT NULL UNIQUE,
    quantity INT,
	size TEXT NOT NULL,
	category TEXT NOT NULL,
	distributor TEXT NOT NULL
);






--Queries-------------------------------------------------------------------------

--Slect name and quantity by ditributor and category--
SELECT name,quantity FROM products
WHERE distributor = '' AND category = '';
--Select name and quantity by distributor--
SELECT name,quantity FROM products
WHERE distributor = '';




DELETE FROM products