#!/bin/sh
stdbuf -oL cut -d ' ' -f 1 | xargs -L1 /usr/lib/pipewire-acpi-volume/volume.sh
