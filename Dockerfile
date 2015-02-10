FROM centos:6
MAINTAINER Christopher Najewicz <chief@beefdisciple.com>

RUN yum -y install rpmdevtools git glibc-static which tar
RUN yum -q -y groupinstall "Development Tools"

VOLUME /artifacts

CMD git clone https://github.com/imeyer/runit-rpm runit-rpm && \
	cd ./runit-rpm && \
	./build.sh && \
	cp -R /root/rpmbuild/RPMS/x86_64 /artifacts
