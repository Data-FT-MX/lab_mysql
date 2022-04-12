UPDATE car_dealership.sellers
SET store = 'Miami' 
WHERE store = 'Mimia';

UPDATE car_dealership.customers
SET email = 'ppicasso@gmail.com'
WHERE first_name = 'Pablo';

UPDATE car_dealership.customers
SET email = 'lincoln@us.gov'
WHERE first_name = 'Abraham'
LIMIT 1;

UPDATE car_dealership.customers
SET email = 'hello@napoleon.me'
WHERE last_name = 'Bonaparte'
LIMIT 1;
