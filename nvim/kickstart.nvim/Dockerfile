FROM ubuntu:22.04

RUN mkdir ~/.config && mkdir nvim

RUN apt update --yes 

RUN apt-get install python3-dev python3-pip --yes

RUN apt install git ripgrep fzf --yes

RUN apt-get install software-properties-common --yes

RUN add-apt-repository ppa:neovim-ppa/unstable

RUN apt update --yes 

RUN apt install neovim --yes

RUN apt install wget unzip build-essential --yes

COPY ./init.lua /root/.config/nvim/init.lua

RUN nvim --headless "+Lazy! sync" +qa

CMD [ "/bin/sh" ]
