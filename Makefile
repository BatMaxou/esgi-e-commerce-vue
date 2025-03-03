up-dev:
	docker compose -f compose.dev.yaml up -d
.PHONY: up-dev

build-dev:
	docker compose -f compose.dev.yaml build
.PHONY: build-dev

stop-dev:
	docker compose -f compose.dev.yaml down
.PHONY: stop-dev

up-prod:
	docker compose -f compose.prod.yaml up -d
.PHONY: up-prod

stop-prod:
	docker compose -f compose.prod.yaml down
.PHONY: stop-prod

pull-prod:
	docker compose -f compose.prod.yaml pull
.PHONY: pull-prod

push-prod-%:
	@docker tag esgi-e-commerce-vue-$* registry.mbaheb.fr:10104/esgi-e-commerce-vue-$*:latest
	@docker push registry.mbaheb.fr:10104/esgi-e-commerce-vue-$*:latest
.PHONY: push-prod-%

push-prod-all:
	@$(MAKE) push-prod-frontend
	@$(MAKE) push-prod-auth-service
	@$(MAKE) push-prod-product-service
	@$(MAKE) push-prod-order-service
.PHONY: push-prod-all

build-prod:
	docker compose -f compose.prod.yaml build
.PHONY: build-prod
