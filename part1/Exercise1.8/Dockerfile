# Start from ubuntu image
FROM ubuntu:18.04

# copy the secret.sh from local to the docker container
COPY secret.sh .

# When building docker, lift the authorization level
RUN chmod +x secret.sh

# When building docker, run the command to install curl 
RUN apt update
RUN apt install -y curl

# When running docker, run the command that executes script in secret.sh
CMD ./secret.sh
