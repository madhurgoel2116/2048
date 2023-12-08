# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# COPY 
COPY . .

# Install the game dependencies
RUN npm install

# Expose port 8000
EXPOSE 8000

# Install a simple HTTP server
RUN npm install http-server -g

# Start the HTTP server to serve the game
CMD ["http-server", "-p", "8000"]
