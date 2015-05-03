
build:
	docker build -t dduportal/swarm-build -f Dockerfile-builder ./
	docker run dduportal/swarm-build > ./arm-swarm-dist.tgz
	docker build -t dduportal/arm-swarm -f Dockerfile ./

.PHONY: build
