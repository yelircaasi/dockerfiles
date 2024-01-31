FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04

ENV TZ=Europe/Berlin

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update; apt install --yes curl git neovim build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev \
    libxmlsec1-dev libffi-dev liblzma-dev && apt upgrade --yes

RUN curl https://pyenv.run | bash

RUN printf '\nexport PYENV_ROOT="$HOME/.pyenv"\nexport PATH="$PYENV_ROOT/bin:$PATH"\n\neval "$(pyenv init --path)"\neval "$(pyenv init -)"\neval "$(pyenv virtualenv-init -)"\n' >> ~/.bashrc

ARG PYVERSION

RUN PATH="$HOME/.pyenv/bin:$PATH" pyenv install $PYVERSION

RUN PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv init --path)" && \
    PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv init -)" && \
    PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv virtualenv-init -)" && \
    PATH="$HOME/.pyenv/bin:$PATH" pyenv shell $PYVERSION && pyenv virtualenv $PYVERSION pg && pyenv activate pg && pip install --upgrade pip && pip install poetry && pyenv deactivate

