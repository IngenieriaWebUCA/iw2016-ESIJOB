#! /bin/bash

echo "Introduzca usuario MySQL:"
read user

echo -n "[MySQL] Introduzca la contraseña de $user de MySQL: "
read CLAVE

echo -n "Creando base de datos..."
if mysql -u root --password="$CLAVE" < esijob.sql; then
  echo "*** Base de datos creada ***"
else
  echo "*** Se ha producido un error al crear la base de datos ***"
fi

echo "Realizando el despliegue de la aplicación... "

mvn clean compile tomcat7:run

