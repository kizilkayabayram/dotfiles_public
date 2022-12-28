#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10
## style-11    style-12    style-13    style-14    style-15

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-8'

## Run
xdotool search --sync --syncsleep 50 --limit 1 --class Rofi keyup --delay 0 Tab key --delay 0 Tab keyup --delay 0 Super_L keydown --delay 0 Super_L&
rofi \
    -show window \
    -theme ${dir}/${theme}.rasi \
    -kb-cancel "Super+Escape,Escape" \
    -kb-accept-entry "!Super-Tab,!Super_L,!Super+Super_L,Return"\
    -kb-row-down "Super+Tab,Super+Down" \
    -kb-row-up "Super+ISO_Left_Tab,Super+Shift+Tab,Super+Up"&
