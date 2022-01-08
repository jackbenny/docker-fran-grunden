FROM debian:11-slim
RUN apt-get update && apt-get -y install \
    cowsay \
    && apt-get clean
CMD ["CMD och ENTRYPOINT arbetar tillsammans"]
ENTRYPOINT ["/usr/games/cowsay"]
