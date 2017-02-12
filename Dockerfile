FROM fedora:25

RUN dnf install -y git vim flatpak

RUN useradd --create-home --shell '/bin/bash' --gecos '' --disabled-password flatpak
USER flatpak
WORKDIR /home/flatpak
