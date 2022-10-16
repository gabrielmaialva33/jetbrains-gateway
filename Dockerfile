FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install openssh-server sudo -y

RUN apt install git -y

RUN useradd -rm -d /home/maia -s /bin/bash -g root -G sudo -u 1000 maia

RUN  echo 'maia:maia' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]