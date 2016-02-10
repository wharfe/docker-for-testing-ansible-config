FROM ubuntu:14.04

MAINTAINER wharfe https://github.com/wharfe/docker-for-testing-ansible-config

RUN sudo apt-get -y update && sudo apt-get -y install software-properties-common
RUN sudo apt-add-repository ppa:ansible/ansible
RUN sudo apt-get -y update && sudo apt-get install -y ansible
CMD ["ansible", "--version"]
