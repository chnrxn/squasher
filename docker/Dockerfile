from oraclelinux:6

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

RUN yum -y install tar docker-io sudo

RUN curl -sL https://github.com/jwilder/docker-squash/releases/download/v0.1.0/docker-squash-linux-amd64-v0.1.0.tar.gz | \
	tar -C /usr/local/bin -xzvf -

RUN yum clean all

ADD scripts/squash.sh /usr/local/bin/squash
ADD scripts/invoke.sh /usr/local/bin/invoke

RUN chmod -R +x /usr/local/bin

CMD cat /usr/local/bin/invoke
