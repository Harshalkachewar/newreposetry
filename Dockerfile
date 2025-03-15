FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx index.html
RUN rm -rf index.html

# Create a simple index.html using echo
RUN echo '<!DOCTYPE html>\n<html>\n<head>\n<title>My Nginx Page</title>\n</head>\n<body>\n<h1>Welcome to Nginx in Docker!1234</h1>\n<p>by harshal kachewar.</p>\n</body>\n</html>' > index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
