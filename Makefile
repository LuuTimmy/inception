all: build up

build:
	cd srcs && docker-compose build

up:
	cd srcs && docker-compose up -d

down:
	cd srcs && docker-compose down

re: down build up

logs:
	cd srcs && docker-compose logs

.PHONY: all build up down re logs