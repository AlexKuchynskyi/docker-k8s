FROM amazonlinux

RUN yum -y update
RUN yum -y install httpd
RUN yum -y install php

COPY ./index.php /usr/local/apache2/htdocs/index.php

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
