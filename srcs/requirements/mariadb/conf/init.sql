-- Créer une base de données pour WordPress
CREATE DATABASE IF NOT EXISTS wordpress;

-- Créer un utilisateur pour WordPress avec un mot de passe
CREATE USER IF NOT EXISTS 'wordpressuser'@'%' IDENTIFIED BY 'your_password';

-- Accorder tous les privilèges à l'utilisateur WordPress sur la base de données WordPress
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';

-- Appliquer les privilèges immédiatement
FLUSH PRIVILEGES;