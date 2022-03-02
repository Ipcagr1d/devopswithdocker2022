**Clone the backend with git clone, USE ONLY the example-backend directory**
```bash
git clone https://github.com/docker-hy/material-applications.git
```

**Build the container from Dockerfile**

```bash
docker build . -t example-backend && docker run -p 8080:8080 example-backend
```