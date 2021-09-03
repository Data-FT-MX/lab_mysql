/* 
- Crear Tablas
- Añadir datos a una tabla
-Eliminar datos de una tabla (esto no lo hagan en la vida real)
-Actualizar datos
 */
 
 
 # Queremos extraer cuántas veces han sido rentadas nuestras
 # peliculas
 
 CREATE TABLE sakila.count_rent_films
 SELECT fi.film_id, re.rental_id, fi.title, COUNT(re.rental_id)
 FROM sakila.film fi # Siempre colocar primero de donde vengo y después a donnde voy
 INNER JOIN sakila.inventory inv ON fi.film_id = inv.film_id
 LEFT JOIN sakila.rental re ON inv.inventory_id = re.inventory_id
 GROUP BY fi.title, re.rental_id;
 
-- --------------------------------------

DROP TABLE sakila.count_rent_films;

-- --------------------------------------

DELETE FROM sakila.count_rent_films;

-- --------------------------------------

CREATE TABLE sakila.count_rent_films
SELECT fi.film_id, re.rental_id, fi.title, COUNT(re.rental_id)
FROM sakila.film fi # Siempre colocar primero de donde vengo y después a donnde voy
INNER JOIN sakila.inventory inv ON fi.film_id = inv.film_id
LEFT JOIN sakila.rental re ON inv.inventory_id = re.inventory_id
GROUP BY fi.title;

-- ----------------------------------------

# Vamos a querer una tabla con info básica del cliente


SELECT cus.first_name, cus.last_name, cus.email, co.country, ci.city, ad.address
FROM sakila.customer cus
LEFT JOIN sakila.address ad ON cus.address_id = ad.address_id
LEFT JOIN sakila.city ci ON ad.city_id = ci.city_id
LEFT JOIN sakila.country co ON ci.country_id = co.country_id
ORDER BY co.country DESC;

CREATE TABLE sakila.customer_info
SELECT cus.first_name, cus.last_name, cus.email, co.country, ci.city, ad.address
FROM sakila.customer cus
LEFT JOIN sakila.address ad ON cus.address_id = ad.address_id
LEFT JOIN sakila.city ci ON ad.city_id = ci.city_id
LEFT JOIN sakila.country co ON ci.country_id = co.country_id
ORDER BY co.country DESC;

-- ---------------------------------------------
EXPLAIN 
SELECT cus.first_name, cus.last_name, cus.email, co.country, ci.city, ad.address
FROM sakila.customer cus
LEFT JOIN sakila.address ad ON cus.address_id = ad.address_id
LEFT JOIN sakila.city ci ON ad.city_id = ci.city_id
LEFT JOIN sakila.country co ON ci.country_id = co.country_id
ORDER BY co.country DESC;

-- -----------------------------------------
DROP TABLE sakila.customer_info;
-- -----------------------------------

CREATE TABLE sakila.customer_info
SELECT DISTINCT(cus.customer_id), 
date_format(cus.create_date, '%Y-%m') as 'Fecha de registro',
cus.first_name, cus.last_name, cus.email, co.country, ci.city, ad.address
FROM sakila.customer cus
LEFT JOIN sakila.address ad ON cus.address_id = ad.address_id
LEFT JOIN sakila.city ci ON ad.city_id = ci.city_id
LEFT JOIN sakila.country co ON ci.country_id = co.country_id
ORDER BY co.country DESC;

-- --------------------------------------

SELECT *
FROM sakila.customer_info;

-- --------------------------------------

SELECT COUNT(DISTINCT country)
FROM sakila.customer_info;

-- ------------------------------------

# DELETE DEBE USARSE CON WHERE
DELETE FROM sakila.customer_info
WHERE country IN ('Chile', 'Madagascar', 'Brunei', 'Yemen', 
'Yugoslavia');

# RGEXP | LIKE

-- ------------------------------------

SELECT *
FROM sakila.customer_info
WHERE country = 'Yemen';

-- ----------------------------------------

UPDATE sakila.customer_info
SET country  = 'UK'
WHERE country = 'United Kingdom';

-- -----------------------------------------

SELECT *
FROM sakila.customer_info
WHERE country = 'UK';

---------------------------------------------

INSERT INTO sakila.customer_info
VALUES (31415, '2021-09', 'Luis', 'Ponz', 'luis.ponce@ironhack.com', 
'Mexico', 'CDMX', 'Aniceto Ortega 821');

SELECT *
FROM sakila.customer_info
WHERE country = 'MEXICO'
AND first_name = 'Luis';