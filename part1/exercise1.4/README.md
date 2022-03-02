**Note**

For the smart solution I think it's possible to pull ubuntu image with curl preisntalled, for this exercise I'm gonna go inside the running ubuntu container to install curl

**Run container**
```bash
 docker run -d -it --name curler ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```

**Get inside the container**
```bash
docker exec -it curler bash
```

**Install curl in container**
```bash
apt-get update
apt-get install curl
```

**Run curl to helsinki.fi**
curl helsinki.fi