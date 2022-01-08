FROM debian:11-slim
RUN apt-get update && apt-get install -y cowsay \
	&& apt-get clean
RUN useradd -m -s /bin/bash --user-group kalle
USER kalle
WORKDIR /home/kalle
COPY --chown=kalle:kalle cow-say-alice.sh cow-say-alice.sh
RUN chmod +x cow-say-alice.sh
ADD --chown=kalle:kalle http://jackbenny.se/docs/alice.txt \
    alice.txt
CMD ["/home/kalle/cow-say-alice.sh"]
