FROM debian:buster-slim
COPY ./binaries/ /starbound/
COPY ./docker-entrypoint.sh /
RUN apt install bash
EXPOSE 21025
ENTRYPOINT ["/bin/bash", "/docker-entrypoint.sh"]