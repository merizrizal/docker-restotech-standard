.PHONY: all
all:
	docker build -t apache_server:1.0 ./base
	docker-compose up -d
	
.PHONY: clean
clean:
	docker-compose down -v
	
.PHONY: remove-image
remove-image:
	docker image rm restotech-standard_server:latest
	
.PHONY: rebuild-base-image
rebuild-base-image:
	docker image rm apache_server:1.0
	docker build -t apache_server:1.0 ./base
	docker image rm mariadb:latest
	docker pull mariadb:latest
