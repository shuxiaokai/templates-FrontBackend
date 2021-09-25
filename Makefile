LOCAL_ADDRESS=127.0.0.1
BACKEND_SERVICE_NAME=backend
FRONTEND_SERVICE_NAME=frontend

run:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs

logs-backend:
	docker-compose logs -ft $(BACKEND_SERVICE_NAME)

logs-frontend:
	docker-compose logs -ft $(FRONTEND_SERVICE_NAME)

browser:
	google-chrome http://$(LOCAL_ADDRESS):5000

build:
	docker-compose up -d --build


# connecting test
.PHONY: test
test:
	@echo "\n>>> to backend"
	curl $(LOCAL_ADDRESS):5000
	@echo "\n\n\n>>> to frontend"
	curl $(LOCAL_ADDRESS):8080
