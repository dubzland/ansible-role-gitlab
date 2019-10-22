FROM jdubz/gitlab-debian-ansible:latest

WORKDIR /usr/src/dubzland-gitlab

RUN mkdir -p /usr/src/dubzland-gitlab

ADD . /usr/src/dubzland-gitlab

ENV ANSIBLE_ROLES_PATH=/usr/src
