build:
	docker-compose build

up:
	rm -f tmp/pids/server.pid
	docker-compose up

down:
	docker-compose down

restart:
	make down
	make up
