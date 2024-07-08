FROM httpd:2.4

# Copy the index.html file into the container
COPY index.html /usr/local/apache2/htdocs/

# Expose the port
EXPOSE 80

# Run the command to start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]
