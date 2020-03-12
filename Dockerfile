FROM danielguerra/ubuntu-xrdp:18.04

ADD guacd/install.sh /tmp/guacd.sh
RUN /tmp/guacd.sh
ADD guacd/guacd.conf /etc/supervisor/conf.d/guacd.conf
EXPOSE 4822