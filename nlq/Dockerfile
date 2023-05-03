FROM pycuda:10

ENV TZ=Europe/Kiev

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG PYVERSION

RUN apt update && apt install -y dotnet-sdk-6.0

RUN apt install gnupg ca-certificates && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list && apt update && \
    apt install -y mono-devel

RUN PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv init --path)" && \
    PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv init -)" && \
    PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv virtualenv-init -)" && \
    PATH="$HOME/.pyenv/bin:$PATH" pyenv shell $PYVERSION && pyenv activate pg && \
    pip install git+https://github.com/yelircaasi/pytorch-ner && poetry config virtualenvs.in-project true && mkdir -p /root/nlq

RUN PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv init --path)" && \
    PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv init -)" && \
    PATH="$HOME/.pyenv/bin:$PATH" eval "$(pyenv virtualenv-init -)" && \
    PATH="$HOME/.pyenv/bin:$PATH" pyenv shell $PYVERSION && pip install poetry && \
    poetry config virtualenvs.in-project true

WORKDIR /root/nlq

