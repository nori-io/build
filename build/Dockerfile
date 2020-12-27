FROM golang:1.15.6

WORKDIR /app
COPY ./build/scripts/build.sh ./
RUN chmod +x ./build.sh

VOLUME /src

CMD ["/app/build.sh"]