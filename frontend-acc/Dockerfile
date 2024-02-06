# Frontend Dockerfile
# Use an alpine Node.js runtime as a parent image for building the React app
FROM node:14-alpine as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application files to the container
COPY . .

# Build the React app
RUN npm run build

# Use a lightweight Nginx image to serve the React app
FROM nginx:alpine

# Copy the built app from the builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# remove the ddefult default.conf
RUN rm /etc/nginx/conf.d/default.conf

# copy custem configrd default.conf to container
COPY default.conf /etc/nginx/conf.d/

# Expose the port the app will run on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]