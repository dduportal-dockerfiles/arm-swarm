FROM dduportal/rpi-alpine
MAINTAINER Damien DUPORTAL <damien.duportal@gmail.com>

COPY ./arm-swarm-dist.tgz /

# From https://github.com/docker/swarm/blob/master/Dockerfile 

RUN tar xzf /arm-swarm-dist.tgz \
	&& mv /arm-swarm-dist/swarm /bin/ \
	&& mv /arm-swarm-dist/ui / \
	&& rm -rf /arm-swarm-dist* \
	&& chmod a+x /bin/*

ENV SWARM_HOST :2375
EXPOSE 2375

VOLUME $HOME/.swarm

ENTRYPOINT ["swarm"]
CMD ["--help"]
