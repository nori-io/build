# Nori Plugin Builder Makefile

DOCKER_IMAGE ?= noriio/builder
DOCKER_TAG ?= 0.2.0

docker-image: ## build noriio/builder docker image
	docker build -f build/0.2.0/Dockerfile -t ${DOCKER_IMAGE}:${DOCKER_TAG} .
.PHONY: docker-image

docker-push: ## push docker image to registry
	docker push ${DOCKER_IMAGE}:${DOCKER_TAG}
.PHONY: docker-push

help: ## run this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help

.DEFAULT_GOAL := help