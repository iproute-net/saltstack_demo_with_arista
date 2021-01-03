FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade && apt-get install sudo python3-pip build-essential libssl-dev libffi-dev python3-dev tree net-tools wget git vim curl tcpdump iputils-ping -y
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN pip3 install --upgrade pyOpenSSL
RUN pip3 install napalm netmiko napalm-logs
RUN wget -O - https://repo.saltstack.com/py3/ubuntu/18.04/amd64/archive/3002.2/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/archive/3002.2 bionic main >> /etc/apt/sources.list.d/saltstack.list
RUN apt-get update
RUN mkdir -p /srv/salt mkdir -p /srv/salt/templates mkdir -p /srv/salt/states mkdir -p /srv/salt/eos mkdir -p /srv/salt/_modules mkdir -p /srv/pillar mkdir -p /srv/runners
RUN apt-get install salt-master salt-minion -y
WORKDIR /srv