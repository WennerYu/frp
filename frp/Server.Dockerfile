FROM centos:7
WORKDIR /root/frp
ADD ./* ./
RUN chmod +x frps
CMD ./frps -c ./frps.ini
