FROM debian:11-slim
RUN apt-get update && apt-get -y install \ 
    cowsay \ 
    procps \ 
    iputils-ping \
    dnsutils \
    curl \
    && apt-get clean
CMD ["/usr/games/cowsay", "Hej alla! Docker fungerar!"]
