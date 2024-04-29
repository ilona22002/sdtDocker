# Use the official Nginx base image
FROM nginx:alpine
RUN apk --no-cache add curl

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the HTML files to the container
RUN curl https://raw.githubusercontent.com/ilona22002/sdtDocker/main/www/index.html -O

# Start Nginx web server
CMD ["nginx", "-g", "daemon off;"]

# to build go to files and type docker build . -t docker-nginx-demo-with-curl 
# to run the image type docker run -d -p 89:80 docker-nginx-demo-with-curl 
# after running type in your browser: localhost:89, you should see the page
