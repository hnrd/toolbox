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
RUN git clone https://git.zx2c4.com/password-store && \
  cd password-store && \
  make install && cd .. && \
  rm -rf password-store
RUN addgroup user -g 1000 && \
  adduser user -G user -u 1000 -D
ENV LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8
WORKDIR /root
ADD zshrc /root/.zshrc
CMD zsh
