# using ubuntu to install golang
FROM ubuntu:20.04

EXPOSE 8080 

WORKDIR /usr/src/app

# setting PATH variable
ENV PATH=$PATH:/usr/local/go/bin

# copy current files in folder
COPY . .

# download golang, remove if go laready exist, delete tar.gz archive then cleanup unecessary dependency 
RUN apt-get update &&  apt-get install -y \
    wget && \
    wget https://dl.google.com/go/go1.16.14.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.14.linux-amd64.tar.gz && \
    rm -rf go1.16.14.linux-amd64.tar.gz && \
    apt-get purge -y --auto-remove wget && \
    rm -rf /var/lib/apt/lists/* && \
    go build && \
    useradd -m appuser && \
    chown -v appuser /usr/src/app

# set env request origin
ENV REQUEST_ORIGIN=http://localhost:5000

# run as appuser
USER appuser

CMD ["./server"]