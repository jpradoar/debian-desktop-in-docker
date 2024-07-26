#!/bin/bash
# Tamaño de Ventana a mostrar (se escalará)
# 1280x800, 1024x768, 980x650, etc
ANCHO=980
ALTO=650
GEOMETRIA=$ANCHO"x"$ALTO
# VNC server en Display 1 (:1)
/usr/bin/vncserver :1 -geometry $GEOMETRIA -depth 24

# Lanzamos una BASH para esperar comandos y evitar cerrar el contenedor
/bin/bash
