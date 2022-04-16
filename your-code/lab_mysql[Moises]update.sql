UPDATE lab_mysql.salespersons
SET store = 'Miami'
WHERE store = 'Mimia';

SELECT * FROM lab_mysql.salespersons;

UPDATE lab_mysql.customers
SET email = 'ppicasso@gmail.com'
WHERE nombre LIKE 'Pablo Picasso';

UPDATE lab_mysql.customers
SET email = 'lincoln@us.gov'
WHERE nombre LIKE 'Abraham Lincoln';

UPDATE lab_mysql.customers
SET email = 'hello@napoleon.me'
WHERE nombre LIKE 'Napoléon Bonaparte';