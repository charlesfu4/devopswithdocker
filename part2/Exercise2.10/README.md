## 2.10 Solve CORS issue

- Make sure before everthing, stop your local apache2 server with the command below, so the default http port is not occupied.

- The REQUEST_ORIGIN env variable should be set correspondingly.

```shell
sudo /etc/init.d/apache2 stop #optional
docker-compose up
```
