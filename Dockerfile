FROM ubuntu
RUN apt-get update && apt-get install -y tzdata
RUN apt-get install apache2 -y
ADD index.html /var/www/html
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
ENV name ajeeshsight
