**Note**

Make sure ENV is set in both Dockerfile and you already build the images first.

**Run the container with open port and detached**

```bash
docker run -d -p 5000:5000 example-frontend14 && docker run -d -p 8080:8080 example-backend14
```

