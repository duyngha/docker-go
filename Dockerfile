# Choose whatever you want, version >= 1.16
ARG GO_VERSION
ARG AIR_VERSION

FROM golang:${GO_VERSION}

WORKDIR /app

RUN go install github.com/cosmtrek/air@${AIR_VERSION}

COPY ./app/go.mod ./app/go.sum ./
RUN go mod download

# CMD ["air", "-c", ".air.toml"]
CMD ["air"]
