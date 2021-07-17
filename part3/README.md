# Part 3

## 3.1: A deployment pipeline to heroku 

- Link: https://github.com/charlesfu4/Pluss-Interview-task
- config:

```yaml
name: Release DevOps with Docker

on:
  push:
    branches: 
      - main 

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2

    - name: Login to DockerHub
      uses: docker/login-action@v1 
      with:
        username: ${{ secrets.DOCKERHUB_USERNAME }}
        password: ${{ secrets.DOCKERHUB_TOKEN }}
    
    - name: Build and push
      uses: docker/build-push-action@v2
      with:
        push: true
        tags: charlesfu4/tinyurlcharles:latest
```

## 3.2: Building images inside of a container

- See folder Exercise3.2

## 3.3: This exercise is mandatory  

- See folder Exercise3.3

## 3.4: Shrink frontend & backend Dockerfiles  

- See folder Exercise3.4