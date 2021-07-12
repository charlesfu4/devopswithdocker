- Commands

```shell
git clone https://github.com/docker-hy/material-applications.git
cp Dockerfile material-applications/example-frontend/
cd material-applications/example-frontend/
docker build . -t frontend-project && docker run -p 5000:5000 frontend-project
```

- After this, check localhost:5000 in your browser
