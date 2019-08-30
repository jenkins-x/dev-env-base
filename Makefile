SHELL := /bin/bash
DOCKER := DOCKER_BUILDKIT=0 docker

all: build

build:
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-alpine \
			--file Dockerfile.go-alpine \
			--build-arg SHELL="bash" \
			--build-arg SHELL_PACKAGES="bash-completion" .
	$(DOCKER) build --tag gcr.io/jenkinsxio/dev-env-base:go-alpine-zsh \
			--file Dockerfile.go-alpine \
			--build-arg SHELL="zsh" \
			--build-arg SHELL_PACKAGES="zsh-autosuggestions zsh-syntax-highlighting" .
.PHONY: build


