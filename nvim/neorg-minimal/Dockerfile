FROM alpine:edge

RUN apk update \
    && apk add neovim git \
    && mkdir /root/.config/ \
    && mkdir /root/.config/nvim \
    && touch /root/.config/nvim/init.lua

CMD /bin/sh