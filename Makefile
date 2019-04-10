SHELL := /bin/bash
DOCKER := DOCKER_BUILDKIT=0 docker
DOCKERFILE := Dockerfile

all: build

build: build-go-alpine

build-go-alpine:
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base \
			--file Dockerfile.go-alpine .

.PHONY: build


