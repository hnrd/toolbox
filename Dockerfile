FROM alpine

RUN apk add --no-cache \
  curl \
  git \
  openssh \
  vim \
  zsh
ADD zshrc /root/.zshrc
