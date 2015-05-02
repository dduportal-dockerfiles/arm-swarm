
build:
	docker build -t swarm-build -f Dockerfile-builder ./
	docker run swarm-build > ./arm-swarm-dist.tgz
	docker build -t arm-swarm -f Dockerfile ./

.PHONY: build
