# Pull ubuntu image
FROM alpine:3.15.0 as build-stage

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
        && rm -rf /var/lib/apk/lists/* 

# Initialize nginx image
FROM nginx:1.19-alpine

# Copy built files to nginx
COPY --from=build-stage /usr/src/app/build/ /usr/share/nginx/html