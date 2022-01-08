FROM debian:11-slim
RUN apt-get update && apt-get install -y cowsay \
    && apt-get clean
COPY cow-say-alice.sh /cow-say-alice.sh
RUN chmod +x /cow-say-alice.sh
ADD http://jackbenny.se/docs/alice.txt /alice.txt
CMD ["/cow-say-alice.sh"]
