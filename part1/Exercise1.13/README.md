# 1.13:Back-end

- Commands

```shell
git clone https://github.com/docker-hy/material-applications.git
cp Dockerfile material-applications/example-backend/
cd material-applications/example-backend/
docker build . -t backend-project && docker run -p 8080:8080 backend-project
```

- After this, check localhost:8080/ping in your browser

