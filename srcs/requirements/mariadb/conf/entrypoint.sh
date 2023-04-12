#!/bin/sh
set -e

if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysqld --initialize-insecure
    chown -R mysql:mysql /var/lib/mysql
fi

exec "$@"