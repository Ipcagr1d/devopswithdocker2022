# using alpine to install golang
FROM alpine:3.15.0 as build-stage

WORKDIR /usr/src/app

# copy current files in folder
COPY . .

# download golang, remove if go laready exist, delete tar.gz archive then cleanup unecessary dependency 
RUN apk add --no-cache go gcc libc-dev \
    && env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o server \
    && apk del go gcc libc-dev

# using scratch
FROM scratch

# copy built executable
COPY --from=build-stage /usr/src/app/server /

# expose port
EXPOSE 8080

# run
ENTRYPOINT [ "/server" ]