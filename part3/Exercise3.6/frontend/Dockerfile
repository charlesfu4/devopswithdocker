FROM node:alpine as build-stage
ENV REACT_APP_BACKEND_URL=http://localhost:8080
WORKDIR /usr/src/app
COPY . .
RUN npm install && \
    npm run build

FROM nginx:alpine
# Set working directory to nginx asset directory
WORKDIR /usr/share/nginx/html
# Remove default nginx static assets
RUN rm -rf ./*
# Copy static assets from builder stage
COPY --from=build-stage /usr/src/app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]