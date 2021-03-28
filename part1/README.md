# Part 1.

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


