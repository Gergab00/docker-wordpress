#!/bin/bash

# Limpiar pantalla
clear

echo "Este script detiene y elimina los contenedores, imágenes, redes y volúmenes creados por el script setup-wordpress.sh"
echo "¿Desea continuar? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Continuando..."
else
    echo "Saliendo..."
    exit 1
fi

echo "Deteniendo y eliminando contenedores, imágenes, redes y volúmenes..."

# Detener y eliminar contenedores específicos
docker stop phpmyadmin wordpress wordpress-mysql
docker rm phpmyadmin wordpress wordpress-mysql

# Eliminar imágenes específicas
docker rmi phpmyadmin:latest wordpress:latest mysql:latest

# Eliminar redes específicas
docker network rm wordpress-text-env_separate_ip_network

# Eliminar volúmenes específicos
docker volume rm wordpress-text-env_mysql-data wordpress-text-env_wp-content-site1 wordpress-text-env_wp-themes-site1 wordpress-text-env_wp-plugins-site1

# Eliminar carpetas específicas
rm -rf mysql-data 
rm -rf wp-content-site1 wp-themes-site1 wp-plugins-site1
# rm -rf wp-content-site2 wp-themes-site2 wp-plugins-site2

echo "Contenedores, imágenes, redes y volúmenes eliminados con éxito"
