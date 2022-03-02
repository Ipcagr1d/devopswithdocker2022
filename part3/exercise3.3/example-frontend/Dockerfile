# Pull ubuntu image
FROM ubuntu:20.04

# Expose port 5000
EXPOSE 5000

# Set workdir in /usr/src/app
WORKDIR /usr/src/app

# Update repo then install node
RUN apt-get update && apt-get install -y curl \
        && curl -sL https://deb.nodesource.com/setup_16.x | bash \
        && apt-get install -y nodejs

# Copy all files in current directory
COPY . .

# Set connection to backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Run following commands to install and serve page
RUN npm install \
        && npm run build \
        && npm install -g serve

# Add non-root user
RUN useradd -m appuser
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]