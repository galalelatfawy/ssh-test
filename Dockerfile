FROM ubuntu
MAINTAINER galal <galal.elatfawy@gmail.com>
RUN apt-get update && apt-get install  -y openssh-server
RUN mkdir -p /var/run/sshds
ONBUILD ADD sshd_config /etc/ssh/sshd_config
CMD /bin/sshd -D
ENV foobar "hello world"
ENV cls "clear"
ENV test "Hello2"
USER root

WORKDIR /tmp
EXPOSE 2222
