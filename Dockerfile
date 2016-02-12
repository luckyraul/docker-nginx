FROM mygento/puppet

MAINTAINER Nikita Tarasov <nikita@mygento.ru>

RUN apt-get -qqy install nginx-full

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
