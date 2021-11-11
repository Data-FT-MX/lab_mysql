UPDATE lab_mysql.salespersons
SET store = 'Miami'
WHERE store = 'Mimia';

SELECT *
FROM lab_mysql.salespersons;

UPDATE lab_mysql.customers
SET email = 'picasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

SELECT *
FROM lab_mysql.customers;