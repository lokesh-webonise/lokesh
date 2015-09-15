FROM ubuntu
MAINTAINER Lokesh Jawane "lokeshjawane@gmail.com"
 
RUN apt-get update && apt-get install -y nginx-full && echo -e "\ndaemon off;" >> /etc/nginx/nginx.conf
 
# Expose ports
EXPOSE 80
EXPOSE 443
 
# Define working directory
WORKDIR /etc/nginx
 
# Define default command
CMD ["nginx"]
