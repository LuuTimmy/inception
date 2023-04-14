all: build up

build:
	docker-compose -f srcs/docker-compose.yml build

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

re: down build up

logs:
	docker-compose -f srcs/docker-compose.yml logs

.PHONY: all build up down re logs
