FROM ubuntu

EXPOSE 3001

WORKDIR /usr/src/app

# Install curl
RUN apt update
RUN apt install -y curl

# Install node, found from the internet
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install -y nodejs

# Copy files into container
COPY . .

# Install package dependencies
WORKDIR /usr/src/app/client 
RUN npm install

# Start the build process
WORKDIR /usr/src/app/server 
RUN npm install
ENV PORT=3001
RUN npm run build:ui

# Serve the app
CMD ["npm", "start"]
