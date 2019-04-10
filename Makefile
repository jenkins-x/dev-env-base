SHELL := /bin/bash
DOCKER := DOCKER_BUILDKIT=0 docker
DOCKERFILE := Dockerfile

all: build

build: build-go-alpine build-go-stretch

build-go-alpine:
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-alpine \
			--file Dockerfile.go-alpine .

build-go-stretch:
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-stretch \
			--file Dockerfile.go-stretch .

.PHONY: build


