FROM fedora:25

RUN dnf -y update && \
    dnf -y install sudo git vim flatpak flatpak-builder && \
    dnf -y clean all

RUN useradd --create-home --shell '/bin/bash' flatpak
USER flatpak
WORKDIR /home/flatpak

ENTRYPOINT ["/bin/bash"]
