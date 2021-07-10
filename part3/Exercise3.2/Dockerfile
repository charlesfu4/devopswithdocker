FROM ubuntu

EXPOSE 3001

WORKDIR /usr/src/app

# Install git
RUN apt-get update
RUN apt-get install -y git

# Install docker
RUN apt-get update
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y docker-ce docker-ce-cli containerd.io
RUN service --status-all
RUN service docker start 

# Copy files into container
COPY . .

RUN chmod +x build.sh

# Set up env variable for username and run the bash script with stdin
ENV DOCKER_USERNAME=charlesfu4

CMD ["./build.sh"]
