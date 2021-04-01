## 1.11:Spring

- Commands

```shell
git clone https://github.com/docker-hy/material-applications.git
cp Dockerfile material-applications/spring-example-project/
cd material-applications/spring-example-project/
docker build . -t spring-project && docker run -p 8080:8080 spring-project
```

- After this, check localhost:8080 in your browser
