FROM selenium/standalone-chrome
MAINTAINER nicetry@example.com

# Let's start with some basic stuff.
RUN sudo apt-get update && sudo apt-get install -y \
apt-transport-https \
curl \
lxc \
libxtables11 \
curl git htop man vim screen \
python python-dev python-pip python-virtualenv \
nodejs npm

# Install Docker from Docker Inc. repositories.
RUN sudo curl -sSL https://get.docker.com/ | sh

RUN sudo ln -s `which nodejs` /usr/bin/node
RUN sudo pip install awscli
