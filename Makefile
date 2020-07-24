all: docker-push

.PHONY: docker-build
docker-build:
	docker build -t cbarraco/icecc-scheduler:latest .

.PHONY: docker-push
docker-push: docker-build
	docker push cbarraco/icecc-scheduler:latest
