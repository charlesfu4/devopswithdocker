FROM ubuntu

EXPOSE 8080 

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

ENV DEBIAN_FRONTEND=noninteractive

ENV PATH=$PATH:/usr/local/go/bin

COPY . .

RUN apt-get update &&  apt-get install -y \
    wget && \
    wget https://dl.google.com/go/go1.16.5.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz && \
    rm -rf go1.16.5.linux-amd64.tar.gz && \
    apt-get purge -y --auto-remove wget && \
    rm -rf /var/lib/apt/lists/* && \
    go build && \
    useradd -m appuser && \
    chown -v appuser /usr/src/app
    
USER appuser

CMD ["./server"]
