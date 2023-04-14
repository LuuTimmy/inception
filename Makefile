all: build up

dir:
	mkdir -p /home/tluu/data/wordpress_file
	mkdir -p /home/tluu/data/mariadb_file

build: dir
	docker-compose -f srcs/docker-compose.yml build

up: dir
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

re: down build up

logs:
	docker-compose -f srcs/docker-compose.yml logs

.PHONY: all build up down re logs
