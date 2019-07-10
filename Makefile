SHELL := /bin/bash
DOCKER := DOCKER_BUILDKIT=1 docker
DOCKERFILE := Dockerfile

all: build

build: build-go-alpine

build-go-alpine:
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-alpine \
			--file Dockerfile.go-alpine .

.PHONY: build


