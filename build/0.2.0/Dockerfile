FROM golang:1.15.6

ARG APP_ENV="single"
ENV APP_ENV="${build_mode}"

WORKDIR /app

COPY ./build/0.2.0/scripts/build.sh ./

RUN chmod +x ./build.sh

VOLUME /plugins

CMD ["/app/build.sh"]
