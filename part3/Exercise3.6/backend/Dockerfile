FROM golang:alpine AS build-env
WORKDIR /usr/src/app
COPY . .
RUN go build -o goapp

    
FROM alpine
RUN apk add --no-cache ca-certificates 
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN=http://localhost:5000
COPY --from=build-env /usr/src/app/goapp /usr/src/app

RUN adduser -D appuser
USER appuser
EXPOSE 8080 
ENTRYPOINT ./goapp