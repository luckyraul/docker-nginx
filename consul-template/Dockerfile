FROM mygento/nginx:NGINX_PARAM

ENTRYPOINT ["/usr/bin/s6-svscan","/etc/s6"]
CMD []

RUN wget --quiet -O - https://github.com/just-containers/skaware/releases/download/v1.18.1/execline-2.1.5.0-linux-amd64-bin.tar.gz | tar -C / -zxf -

COPY s6 /etc/s6/

ADD Puppetfile /
RUN librarian-puppet install
ADD module.yaml /var/lib/hiera/common.yaml
RUN puppet apply --modulepath=/modules -e "hiera_include('classes')" --debug