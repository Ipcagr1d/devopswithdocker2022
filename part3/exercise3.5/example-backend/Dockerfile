# using alpine to install golang
FROM alpine:3.15.0

EXPOSE 8080 

WORKDIR /usr/src/app

# copy current files in folder
COPY . .

# download golang, remove if go laready exist, delete tar.gz archive then cleanup unecessary dependency 
RUN apk add --no-cache go gcc libc-dev \
    && go build \
    && go test ./... \
    && apk del go gcc libc-dev \
    && adduser -D userapp

# set env
ENV REQUEST_ORIGIN=http://localhost:5000

# run as appuser
USER appuser

CMD ["./server"]