FROM ubuntu:14.04

MAINTAINER cookiter zqu244@qq.com



RUN \
	sudo apt-get install -y git-core && \
	apt-get install -y openssh-client openssh-server  &&\
	wget -c http://soft.vpser.net/lnmp/lnmp1.2-full.tar.gz &&  \
	tar zxf lnmp1.2-full.tar.gz &&  \
	cd lnmp1.2-full && \
	./install.sh lnmp \

# private expose
EXPOSE 3306
EXPOSE 80	


