FROM golang:1.15.6

WORKDIR /app

COPY ./build/0.2.0/scripts/build.sh ./

RUN chmod +x ./build.sh

VOLUME /plugin

CMD ["/app/build.sh"]
