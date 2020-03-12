SHELL = /bin/bash

all: install

install:
	./install.sh

docker-build:
	./scripts/docker_build.sh

docker-deploy:
	./scripts/docker_deploy.sh