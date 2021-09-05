DELETE FROM lab_mysql.cars
WHERE car_id = 4;

# Se debe procurar no borrar informacion de una tabla, pero en caso de que lo hagamos el comando DELETE debe ir acompañado de un
# WHERE SIEMPRE!