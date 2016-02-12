FROM mygento/puppet

MAINTAINER Nikita Tarasov <nikita@mygento.ru>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install nginx-full

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
