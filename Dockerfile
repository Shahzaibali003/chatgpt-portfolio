# Use the official Nginx image
FROM nginx:alpine

# Copy website files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 for the web traffic
EXPOSE 80

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]
