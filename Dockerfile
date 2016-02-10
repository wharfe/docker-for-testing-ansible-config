FROM ubuntu:14.04

MAINTAINER wharfe https://github.com/wharfe/docker-for-testing-ansible-config

RUN sudo apt-get update && sudo apt-get install software-properties-common
RUN sudo apt-add-repository ppa:ansible/ansible
RUN sudo apt-get update && sudo apt-get install ansible
CMD ["ansible", "--version"]
