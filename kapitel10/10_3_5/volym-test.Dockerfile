FROM debian:11-slim
RUN mkdir /en-volym
RUN echo "Hejsan" > /en-volym/minfil.txt
VOLUME /en-volym
CMD ["/bin/cat", "/en-volym/minfil.txt"]
