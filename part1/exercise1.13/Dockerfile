# Use golang image using tah 1.16
FROM golang:1.16

# Set workdir as below
WORKDIR /usr/src/app

# Copy the contents of the current dir
COPY . .

# Run specifications in github
RUN go build \
	&& go test ./...

# Open port 8080
EXPOSE 8080

# REQUEST_ORIGIN to pass a url through cors check
ENV REQUEST_ORIGIN=https://example.com

# Run the following as params
CMD ["./server"]