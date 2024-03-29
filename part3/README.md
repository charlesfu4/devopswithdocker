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

## 3.5: Shrink frontend & backend Dockerfiles by changing FROM

- See folder Exercise3.5

## 3.6: Shrink frontend & backend Dockerfiles by multi-stage 

- See folder Exercise3.6

## 3.7: Optimizing security and size

- See folder Exercise3.7

## 3.8: Kubernetes 
![Kubernates](https://user-images.githubusercontent.com/14807898/126503492-8963ad97-86d3-4ff4-b2b6-05734468bf0f.png)
