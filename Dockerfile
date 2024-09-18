# Use the official Nginx image
FROM nginx:alpine

# Copy custom Nginx config to override default settings
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 for the web traffic
EXPOSE 80

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]
