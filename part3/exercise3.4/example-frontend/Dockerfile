# Pull ubuntu image
FROM ubuntu:20.04

# Expose port 5000
EXPOSE 5000

# Set workdir in /usr/src/app
WORKDIR /usr/src/app

# Copy all files in current directory
COPY . .

# Update repo then install node, remove curl after getting node to optimize size
RUN apt-get update && apt-get install -y curl \
        && curl -sL https://deb.nodesource.com/setup_16.x | bash \
        && apt-get install -y nodejs \
        && apt-get purge -y --auto-remove curl \
        && rm -rf /var/lib/apt/lists/* \
        && npm install \
        && npm run build \
        && npm install -g serve \
        && useradd -m appuser

# Set connection to backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Run as appuser
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]