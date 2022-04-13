UPDATE laboratorio.salespersons
SET store = 'Miami'
WHERE store = 'Mimia';


UPDATE laboratorio.customers
SET email = 'ppicasso@gmail.com'
WHERE email = '-' AND full_name = 'Pablo Picasso';

UPDATE laboratorio.customers
SET email = 'lincoln@us.gov'
WHERE email = '-' AND full_name = 'Abraham Lincoln';

UPDATE laboratorio.customers
SET email = 'hello@napoleon.me'
WHERE email = '-' AND full_name = 'Napoléon Bonaparte';