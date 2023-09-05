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
docker stop phpmyadmin wordpress-mysql wordpress-site1 wordpress-site2 wordpress-multisite
docker rm phpmyadmin wordpress-mysql wordpress-site1 wordpress-site2 wordpress-multisite

# Eliminar imágenes específicas
docker rmi phpmyadmin:latest wordpress:latest mysql:latest

# Eliminar redes específicas
docker network rm wordpress-text-env_separate_ip_network

# Eliminar carpetas específicas
rm -rf mysql-data 
rm -rf wp-content-site1 wp-themes-site1 wp-plugins-site1
rm -rf wp-content-site2 wp-themes-site2 wp-plugins-site2
rm -rf wp-content-multisite wp-themes-multisite wp-plugins-multisite

echo "Contenedores, imágenes, redes y volúmenes eliminados con éxito"
