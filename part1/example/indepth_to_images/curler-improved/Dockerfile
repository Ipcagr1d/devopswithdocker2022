# Start from the ubuntu:20.04
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in thi>WORKDIR /usr/src/app
WORKDIR /usr/src/app

# Copy the curler.sh file from this location to /usr/src/app/ creating /usr/src/app/c>COPY curler.sh .
COPY curler-improved.sh .

# Execute a command with `/bin/sh -c` prefix. Install prerequisite
RUN chmod +x curler-improved.sh
RUN apt-get update && apt-get install -y \
curl

# When running docker run do
ENTRYPOINT [ "./curler-improved.sh" ]
