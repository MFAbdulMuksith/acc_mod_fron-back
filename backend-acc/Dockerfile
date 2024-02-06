# Backend dockerfile
# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . ./

# Copy .env file for environment variables
COPY .env ./

# Expose the port the app runs on
EXPOSE 3001

# Define the command to run on startup
CMD [ "npm", "start"]