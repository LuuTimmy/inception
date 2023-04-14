CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER IF NOT EXISTS 'wordpressuser'@'%' IDENTIFIED BY 'your_password';

GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';

FLUSH PRIVILEGES;