FROM alpine

RUN apk add --no-cache \
  bash \
  coreutils \
  curl \
  git \
  gnupg \
  make \
  openssh \
  socat \
  tree \
  vim \
  zsh
ENV LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8
ADD zshrc /root/.zshrc
CMD zsh
