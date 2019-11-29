# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from the latest golang base image
FROM golang:1.13.4 as builder

# Add Maintainer Info
LABEL maintainer="nori <info@nori.io>"

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY go.mod go.sum ./


# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed

RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

RUN go build -o bin/nori  ./cmd/nori.go

FROM ubuntu:18.04 

RUN apt-get install

WORKDIR /app/

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/bin/nori .
RUN chmod +x nori
COPY /configs/nori.json /app/configs/nori.json

# Expose port 8080 to the outside world
EXPOSE 8080

# Declare volumes to mount
VOLUME /plugins

# Command to run the executable
CMD ["/app/nori","server", "--config", "/app/configs/nori.json"]
