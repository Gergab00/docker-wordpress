-- Creación de la base de datos y usuario para el sitio 1
CREATE DATABASE wordpress_db_site1;
CREATE USER 'wordpress_user_site1'@'%' IDENTIFIED BY 'wordpress_password_site1';
GRANT ALL PRIVILEGES ON wordpress_db_site1.* TO 'wordpress_user_site1'@'%';

-- Creación de la base de datos y usuario para el sitio 2
CREATE DATABASE wordpress_db_site2;
CREATE USER 'wordpress_user_site2'@'%' IDENTIFIED BY 'wordpress_password_site2';
GRANT ALL PRIVILEGES ON wordpress_db_site2.* TO 'wordpress_user_site2'@'%';

-- Creación de la base de datos y usuario para el multisitio
CREATE DATABASE wordpress_db_multisite;
CREATE USER 'wordpress_user_multisite'@'%' IDENTIFIED BY 'wordpress_password_multisite';
GRANT ALL PRIVILEGES ON wordpress_db_multisite.* TO 'wordpress_user_multisite'@'%';

FLUSH PRIVILEGES;
