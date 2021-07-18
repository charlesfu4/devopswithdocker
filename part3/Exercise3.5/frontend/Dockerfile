FROM alpine 

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV LC_ALL=C.UTF-8

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apk add --no-cache nodejs npm && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -D appuser
    
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
