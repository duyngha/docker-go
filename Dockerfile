# Choose whatever you want, version >= 1.16
ARG GO_VERSION

FROM golang:${GO_VERSION}

WORKDIR /app

RUN go install github.com/cosmtrek/air@latest

COPY ./app/go.mod ./app/go.sum ./
RUN go mod download

# CMD ["air", "-c", ".air.toml"]
CMD ["air"]