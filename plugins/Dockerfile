FROM golang:1.13.4

ARG APP_ENV="single"
ENV APP_ENV="${build_mode}"

WORKDIR /app

COPY build ./

RUN chmod +x ./build

VOLUME /plugins

CMD ["./build"]
