FROM localhost:5000/my-ubuntu
ENV message "Hello World"
label imagelabel="TestLabel"
RUN apt-get update
RUN ["apt-get","install","-y", "apache2"]
RUN apt-get install -y iputils-ping
WORKDIR "/var/www/html"
EXPOSE 80
CMD service apache2 start
