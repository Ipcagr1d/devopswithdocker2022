# Use golang image using tag 1.16
FROM golang:1.16

# Expose port 8080
EXPOSE 8080

# Add non-root user
RUN useradd -m appuser
USER appuser

# Set workdir as below
WORKDIR /usr/src/app

# Copy the contents of the current dir
COPY . .

# Run specifications in github
RUN go build \
        && go test ./...

# REQUEST_ORIGIN to pass a url through cors check
ENV REQUEST_ORIGIN=http://localhost:5000

# Run the following as params
CMD ["./server"]
