build:
	docker-compose build

up:
	rm -f tmp/pids/server.pid
	docker-compose up
