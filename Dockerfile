FROM ubuntu:22.04
RUN apt-get install nginx
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.60/bin/apache-tomcat-10.1.60.tar.gz 
WORKDIR /opt
RUN tar -xzf apache-tomcat-10.1.60.tar.gz 
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]