## 2.9 Presistence host volumes 

- The docker-compose will start and create host volume in current directory. Follow the commands to prove it.

```shell
docker-compose up
# send some message to the DB

docker-compose down 

# restart the containers again
docker-compose up
# The message is still there

# This time remove the presistance volume
docker-compose down
rm -rf database/

# restart the containers again
docker-compose up
# The message should be disappeared 
```
