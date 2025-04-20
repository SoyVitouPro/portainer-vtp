build:
	docker compose --env-file .env up -d --build

up:
	docker compose --env-file .env up -d

down:
	docker compose down -v

logs:
	docker compose logs -f

clean:
	docker rm -f $$(docker ps -aq) || true
	docker rmi -f $$(docker images -q) || true
	docker volume prune -f
	docker network prune -f

open:
	open http://localhost:8888