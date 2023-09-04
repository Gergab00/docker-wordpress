# Ambiente de Desarrollo WordPress con Docker

Este repositorio contiene un ambiente de desarrollo completo para WordPress utilizando Docker. Puedes clonar este repositorio y utilizar los scripts proporcionados para crear las carpetas necesarias y limpiar el ambiente.

## Requisitos

- Docker instalado en tu sistema.
- Docker Compose instalado en tu sistema.
- Git instalado (opcional para clonar el repositorio).

## Instrucciones

1. Clona este repositorio en tu máquina local (opcional si descargas el ZIP directamente).

2. Modifica el archivo `docker-compose.yml` para ajustar las configuraciones según tus necesidades.

3. Modifica el archivo `wp-config.php` para ajustar las configuraciones según tus necesidades, este archivo esta en la carpeta `config`.

4. Ejecuta el script `build.sh` para crear las carpetas necesarias y construir las imágenes de Docker:

    ```bash
    ./build.sh
    ```

4. Accede a WordPress en tu navegador usando las siguientes URL:

   - Primer sitio: http://172.18.0.3

7. Utiliza las siguientes credenciales para acceder a phpMyAdmin:

   - URL: http://172.18.0.4
   - Usuario: root
   - Contraseña: root_password

Nota: Puedes cambiar las direcciones IP de los sitios modificando el archivo `docker-compose.yml`. Te recomiendo cambiar las contraseñas de phpMyAdmin y de la base de datos en el archivo `docker-compose.yml`.

## Limpieza del Ambiente

Si deseas limpiar completamente el ambiente y dejarlo como nuevo, ejecuta el script `clean.sh`:

```bash
./clean.sh
```
Esto eliminará las carpetas `mysql-data` y `wp-content1`, `wp-themes1`, `wp-plugins1` y detendrá los contenedores de Docker.

## Licencia

Este proyecto está licenciado bajo la Licencia GNU GPL v3.0 - ve el archivo [LICENSE.md](LICENSE.md) para más detalles.

## Autor

- [Gerardo Gabriel González](www.gerardo-gonzalez.dev) - Desarrollador Full Stack

## Contribuciones

Si deseas contribuir a este proyecto, puedes hacerlo enviando un Pull Request.

## Changelog

Ve el archivo [CHANGELOG.md](CHANGELOG.md) para más detalles.