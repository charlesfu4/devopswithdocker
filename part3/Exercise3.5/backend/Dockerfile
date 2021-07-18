FROM golang:alpine 

EXPOSE 8080 

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN go build && \
    adduser -D appuser
    
USER appuser

CMD ["./server"]
