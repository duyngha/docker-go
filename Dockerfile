# Choose whatever you want, version >= 1.16
ARG GO_VERSION=1.20

FROM golang:${GO_VERSION}

WORKDIR /app

ARG AIR_VERSION=v1.50.0
RUN go install github.com/cosmtrek/air@${AIR_VERSION}

COPY ./app/go.mod ./
RUN go mod download

# CMD ["air", "-c", ".air.toml"]
CMD ["air"]
