## 3.2 

### Dockerfile and bash script

To start the container that builds the image and push it to docker hub, input the following commands. The run command needs `-v /var/run/docker.sock:/var/run/docker.sock` to allow the inner container run in a outer container. Also here we give it -i label to keep the STDIN on so the piped password can be fed in.

```shell
docker build -t buildtinyurl .
cat password.txt | docker run -i -v /var/run/docker.sock:/var/run/docker.sock buildtinyurl
```

### Watchtower

The `docker-compose.yml` is with a watchtower container that can be run on other machine(production server). It will monitor every new update of the image that has been pushed to the docker hub. Then, it restarts the container automatically to update the running application.

```shell
docker-composer up
```

### System architecture
