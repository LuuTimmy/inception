#!/bin/sh

# Configure WordPress using environment variables
wp config create \
    --allow-root \
    --path=/var/www/html/wordpress \
    --dbname="$WORDPRESS_DB_NAME" \
    --dbuser="$WORDPRESS_DB_USER" \
    --dbpass="$WORDPRESS_DB_PASSWORD" \
    --dbhost="$WORDPRESS_DB_HOST" \
    --skip-check \
    --force

# Check if WordPress is already installed
if ! wp core is-installed --allow-root --path=/var/www/html/wordpress; then
    # Install WordPress
    wp core install \
        --allow-root \
        --path=/var/www/html/wordpress \
        --url="$DOMAIN" \
        --title="My WordPress Site" \
        --admin_user="$WORDPRESS_ADMIN_USER" \
        --admin_password="$WORDPRESS_ADMIN_PASSWORD" \
        --admin_email="$WORDPRESS_ADMIN_EMAIL"
fi

# Start PHP-FPM
exec php-fpm7.3 -F --allow-to-run-as-root --nodaemonize
