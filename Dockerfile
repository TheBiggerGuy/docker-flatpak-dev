FROM fedora:25

RUN dnf install -y git vim flatpak flatpak-builder

RUN useradd --create-home --shell '/bin/bash' flatpak
USER flatpak
WORKDIR /home/flatpak

ENTRYPOINT ["/bin/bash"]
