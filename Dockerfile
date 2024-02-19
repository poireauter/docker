FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tightvncserver \
    xfonts-base \
    x11-xserver-utils \
    dbus-x11 \
    openssh-server \
    supervisor \
    firefox \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Configure SSH
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#X11Forwarding no/X11Forwarding yes/' /etc/ssh/sshd_config
RUN sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config
RUN echo "X11DisplayOffset 10" >> /etc/ssh/sshd_config

# Configure VNC
COPY xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup

# Expose SSH and VNC ports
EXPOSE 22
EXPOSE 5901

# Start SSH and supervisord
CMD ["/usr/bin/supervisord"]
