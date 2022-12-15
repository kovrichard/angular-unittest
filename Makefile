.PHONY: build sh tag push

container=angular-unittest

build:
	docker compose build

sh:
	docker compose run --rm $(container) sh

tag:
	docker image tag $(container) richardkovacs/$(container):$(t)

push:
	docker image push richardkovacs/$(container):$(t)
