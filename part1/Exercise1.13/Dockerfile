FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN test ./...

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["./server"]
