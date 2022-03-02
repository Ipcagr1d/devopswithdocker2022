**Pulls both required images**

```bash
 docker pull devopsdockeruh/simple-web-service:ubuntu
 docker pull devopsdockeruh/simple-web-service:alpine
 ```

 **Run alpine**

 ```bash
 docker run devopsdockeruh/simple-web-service:alpine
 ```

 **Run alpine detached**

```bash
docker run -d -it devopsdockeruh/simple-web-service:alpine
```

**Enter the alpine container then display the secret message**

```sh
 docker exec -it dazzling_archimedes sh
 tail -f ./text.log
```

**Secret message**

```sh
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```