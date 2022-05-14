#UPDATE

UPDATE cars.customers cc
SET cc.Email= 'ppicasso@gmail.com' WHERE ID=1; 

UPDATE cars.customers cc
SET cc.Email= 'lincoln@us.gov' WHERE ID=2;

UPDATE cars.customers cc
SET cc.Email= 'hello@napoleon.me' WHERE ID=3;
  

SELECT Name, Email
FROM cars.customers CC;

# Eliminacion de la fila con VIN REPETIDA

DELETE FROM cars.kars
WHERE ID= 5 -- Se elimino la celda incorrecta pero la intencion es la misma, borrar de acuerdo al ID 
LIMIT 1;

SELECT *
FROM cars.kars;