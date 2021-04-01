FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN test ./...

RUN export REQUEST_ORIGIN=localhost:5000

CMD ["./server"]
