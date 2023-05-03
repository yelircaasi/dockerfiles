FROM alpine:edge
RUN apk update \
    && apk add neovim git \
    && mkdir /root/.config/ \
    && mkdir /root/.config/nvim
COPY init.lua /root/.config/nvim/
COPY lua/ /usr/share/lua/5.1/lua
CMD /bin/sh
