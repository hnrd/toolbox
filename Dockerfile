FROM alpine

RUN apk add --no-cache \
  coreutils \
  curl \
  git \
  openssh \
  vim \
  zsh
ENV LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8
ADD zshrc /root/.zshrc
CMD zsh
