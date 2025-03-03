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

build-prod:
	docker compose -f compose.prod.yaml build
.PHONY: build-prod

stop-prod:
	docker compose -f compose.prod.yaml down
.PHONY: stop-prod
