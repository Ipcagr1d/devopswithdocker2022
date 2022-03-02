# Pull ubuntu image
FROM alpine:3.15.0

# Expose port 5000
EXPOSE 5000

# Set workdir in /usr/src/app
WORKDIR /usr/src/app

# Copy all files in current directory
COPY . .

# Update repo then install node, remove curl after getting node to optimize size
RUN apk add --no-cache curl npm \
        && curl -sL https://deb.nodesource.com/setup_16.x \
        && apk add nodejs \
        && apk del curl \
        && npm install \
        && npm run build \
        && npm install -g serve \
        && rm -rf /var/lib/apk/lists/* \
        && adduser -D appuser

# Set connection to backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Run as appuser
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]