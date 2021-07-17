FROM ubuntu

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -y nodejs && apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m appuser && \
    chown -v appuser /usr/src/app
    
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
