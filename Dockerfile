FROM debian:bookworm

ARG VNCPASSWORD=debian

RUN apt-get -y update
# Instalamos Mate y Servidor VNC (modo no-interactivo)
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install -f tightvncserver lxde lxdm 


# Almacenamos la clave en fichero para VNC
RUN mkdir /root/.vnc && \
  echo "$VNCPASSWORD"|vncpasswd -f > /root/.vnc/passwd && \
  chmod 0600 /root/.vnc/passwd

# Fichero para servicios y recursos de X-Server
RUN touch /root/.Xresources

# Definimos usuario que mostrará su Escritorio gráfico
ENV USER=root

# Exponemos puerto para VNC
EXPOSE 5901

ENTRYPOINT ["/entrypoint.sh"]
