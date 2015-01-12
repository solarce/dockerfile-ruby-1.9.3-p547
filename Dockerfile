FROM ubuntu:precise

ENV LANG en_US.UTF-8
RUN locale-gen $LANG

RUN apt-get update && \
    apt-get install curl -y

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 && \
    \curl -sSL https://get.rvm.io | bash -s stable

RUN /usr/local/rvm/bin/rvm install ruby-1.9.3-p547

CMD ["/bin/bash"]
