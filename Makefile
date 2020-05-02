install:
	docker volume create --name=influxdb-storage
	docker volume create --name=chronograf-storage
	docker volume create --name=grafana-storage
	docker volume create --name=unifi-storage

start: install
	docker-compose up --build --force-recreate -d
	make logs

stop:
	docker-compose down --remove-orphans

logs:
	docker-compose logs -f $(log)
