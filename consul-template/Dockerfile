FROM mygento/nginx:NGINX_PARAM

ENTRYPOINT ["/init"]
CMD []

RUN wget --quiet -O - https://github.com/just-containers/s6-overlay/releases/download/v1.18.1.3/s6-overlay-amd64.tar.gz | tar -C / -zxf -

ADD root /

ADD Puppetfile /
RUN librarian-puppet install
ADD module.yaml /var/lib/hiera/common.yaml
RUN puppet apply --modulepath=/modules -e "hiera_include('classes')" --debug
