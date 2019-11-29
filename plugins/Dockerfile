FROM golang:1.13.4

WORKDIR /app

COPY build ./

RUN chmod +x ./build

VOLUME /plugins

CMD ["./build"]
