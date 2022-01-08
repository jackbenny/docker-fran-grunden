FROM debian:11-slim
RUN useradd -m -s /bin/bash --user-group kalle
COPY --chown=kalle:kalle skript.sh /skript.sh
RUN chmod +x /skript.sh
USER kalle
CMD ["/skript.sh"]
