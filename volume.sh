#!/bin/sh
case "$1" in
    button/volumeup)
        wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+
        ;;
    button/volumedown)
        wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-
        ;;
    button/mute)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        ;;
    button/f20)
        wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
        ;;
esac
