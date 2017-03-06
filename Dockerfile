FROM alpine

RUN apk add --no-cache git vim zsh
ADD zshrc /root/.zshrc
