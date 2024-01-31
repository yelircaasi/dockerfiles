FROM pybuntu:11

RUN apt install nix --yes

RUN if [ -e /root/.nix-profile/etc/profile.d/nix.sh ]; then . /root/.nix-profile/etc/profile.d/nix.sh; fi

RUN nix-channel --add https://nixos.org/channels/nixpkgs-unstable && nix-channel --update

RUN nix-env -iA nixpkgs.firefox

RUN echo "if [ -e /root/.nix-profile/etc/profile.d/nix.sh ]; then . /root/.nix-profile/etc/profile.d/nix.sh; fi " >> /root/.bashrc

