FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install openssh-server sudo -y

RUN apt install git -y && apt install zsh -y && apt install curl -y && apt install wget -y

RUN apt install build-essential -y && apt install libssl-dev -y && apt install libreadline-dev -y && apt install zlib1g-dev -y && apt install libsqlite3-dev -y && apt install libbz2-dev -y && apt install libffi-dev -y && apt install liblzma-dev -y

RUN apt install nano -y && apt install htop -y && apt install tmux -y && apt install neofetch -y

RUN apt install python3 -y && apt install python3-pip -y && apt install python3-venv -y

RUN useradd -rm -d /home/maia -s /bin/bash -g root -G sudo -u 1000 maia

RUN  echo 'maia:maia' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]