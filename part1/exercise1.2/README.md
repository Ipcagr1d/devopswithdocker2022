**Show all containers with size**

```bash
docker ps -as
```

**Show all docker images**

```bash
docker images
```

**Stop running containers**

```bash
docker stop d86
```

**Delete all stopped containers and images**

```bash
docker container prune
docker rmi nginx
```

**Show all docker images and containers**

```bash
docker images
docker ps -a
```