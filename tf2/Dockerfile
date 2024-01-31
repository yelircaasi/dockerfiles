FROM tensorflow/tensorflow:2.11.0-gpu

ENV TZ=Europe/Berlin

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update; apt install --yes curl git neovim build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev \
    libxmlsec1-dev libffi-dev liblzma-dev && apt upgrade --yes

RUN python -m pip install --upgrade pip && python -m pip install poetry

RUN apt install libcublas-12-3 --yes

