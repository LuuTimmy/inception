CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER IF NOT EXISTS 'asibille'@'%' IDENTIFIED BY '1';

GRANT ALL PRIVILEGES ON wordpress.* TO 'asibille'@'%';

FLUSH PRIVILEGES;