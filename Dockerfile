FROM fedora:25

RUN dnf install -y git vim flatpak

RUN useradd --create-home --shell '/bin/bash' --disabled-password flatpak
USER flatpak
WORKDIR /home/flatpak

ENTRYPOINT ["/bin/bash"]
