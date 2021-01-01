FROM debian:buster-slim
RUN mkdir -p /usr/share/man/man1
RUN apt update
RUN apt install -y default-jre
RUN apt install -y bash
RUN apt install -y gettext-base
COPY ./server.jar /minecraft/
COPY ./docker-entrypoint.sh /minecraft/
COPY ./eula.txt /minecraft/
COPY ./server.template.properties /minecraft/
EXPOSE 25565
ENTRYPOINT ["/bin/bash", "/minecraft/docker-entrypoint.sh"]
