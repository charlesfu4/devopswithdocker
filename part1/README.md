# Part 1

## 1.1: Getting started

- Start 3 containers from image that does not automatically exit, such as nginx, detached.

```shell
docker container run -dit bash
docker container run -d nginx
docker container run -d httpd
```

- Stop 2 of the containers leaving 1 up.

```shell
docker container stop 3e7 
docker container stop b1c 
```

- Result

```shell
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                        PORTS     NAMES
3e720271b733   bash      "docker-entrypoint.s…"   3 minutes ago    Exited (137) 46 seconds ago             competent_kepler
b1ce3227aad3   httpd     "httpd-foreground"       10 minutes ago   Exited (0) 39 seconds ago               eloquent_mayer
dd83ce03a13e   nginx     "/docker-entrypoint.…"   13 minutes ago   Up 13 minutes                 80/tcp    ecstatic_curie
```

## 1.2: Clean up

- Clean up the containers

```shell
docker container stop dd8
docker container prune
```

- Clean up the images 
    
```shell
docker image prune -a
```

- Result
    
```shell
(base) -bash-3.2$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

```shell
(base) -bash-3.2$ docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

## 1.3: Secret message

- Commands

```shell
docker run -d --rm -it --name secretMessage devopsdockeruh/simple-web-service:ubuntu
docker exec -it secretMessage bash
tail -f ./text.log
```

- Secret Message

```shell
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## 1.4: Missing dependencies

- Command

```shell
docker run -it --name missdep ubuntu sh -c 'apt update; apt install -y curl; echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```
## 1.5: Sizes of images

- Image size comparison

```shell
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   13 days ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   13 days ago   15.7MB
```

- Go in alpine and check secret message

```shell
docker run -d -it devopsdockeruh/simple-web-service:alpine
docker exec -it c8e sh
tail -f ./text.log
```

## 1.6: Hello Docker Hub

- Command

```shell
 docker run -it devopsdockeruh/pull_exercise
```

- Secret message

```shell
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

## 1.7: Two line Dockerfile

- See folder Exercise1.7

## 1.8: Image for script

- See folder Exercise1.8

## 1.9: Volumes

- Commands

```shell
touch text.log
docker run -d -v $(pwd)/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
```
