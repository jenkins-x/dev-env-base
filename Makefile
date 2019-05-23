SHELL := /bin/bash
DOCKER := DOCKER_BUILDKIT=0 docker
DOCKERFILE := Dockerfile

all: build

build: build-go-alpine

build-go-alpine:
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-alpine \
			--file Dockerfile.go-alpine .
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-alpine-zsh \
			--file Dockerfile.go-alpine-zsh .

.PHONY: build


