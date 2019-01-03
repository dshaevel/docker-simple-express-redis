# ========================
# Free Proxy List:
# https://www.us-proxy.org
# ========================

# --------------------
# Docker build command
# --------------------
# docker build -t dshaevel/simple-express-redis --build-arg http_proxy=http://12.239.214.4:8080 .

# ------------------
# Docker run command
# ------------------
# docker run -p 8081:8081 dshaevel/simple-express-redis

# Specify a base image
FROM node:alpine

# Specify a working directory
WORKDIR '/app'

# Install some dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .

# Default command
CMD ["npm", "start"]