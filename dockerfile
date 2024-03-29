# Use an official Nginx base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /var/www/html/

# Copy only necessary files from the local machine to the container
COPY . .

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy a custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 to the outside world
EXPOSE 80

