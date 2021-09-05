UPDATE lab_mysql.custumers
SET email = 'ppicasso@gmail.com'
WHERE first_name = 'Pablo Picasso'; # Aqui lo mejor seria utilizar la llave principal de la tabla custumers. Pero como sabemos que no hay valores
									# repetidos no pasa nada.

UPDATE lab_mysql.custumers
SET email = 'lincoln@us.gov'
WHERE first_name = 'Abraham Lincoln';

UPDATE lab_mysql.custumers
SET email = 'hello@napoleon.me'
WHERE first_name = 'Napoléon Bonaparte';