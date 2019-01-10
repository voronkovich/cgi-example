FROM ubuntu

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y apache2 &&\
    a2enmod alias cgi &&\
    a2enconf serve-cgi-bin.conf
ADD 000-default.conf /etc/apache2/sites-available/
ADD env.cgi /usr/lib/cgi-bin/

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]
