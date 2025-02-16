FROM ubuntu:24.04
ARG LOGIN=azureuser
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client curl sudo vim inetutils-ping
RUN usermod -l $LOGIN -d /home/$LOGIN -m ubuntu && groupmod -n $LOGIN ubuntu && adduser $LOGIN sudo
RUN echo "$LOGIN ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/nopasswd
USER $LOGIN
WORKDIR /home/$LOGIN
