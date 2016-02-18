FROM mygento/puppet

MAINTAINER nikita@mygento.ru

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
