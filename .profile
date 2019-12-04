# Profile file. Runs on login.
#!/bin/sh

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | grep -v "git" |  cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="brave"
export READER="zathura"
export FILE="nnn"
export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"
export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

# Switch escape and caps if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
#disable dpms

#disable natural scrolling
id=`xinput list | grep Touchpad | grep -o 'id=..' | grep -o '[0-9]*'`
prop=`xinput list-props "$id" | grep -o 'Natural Scrolling Enabled (...)' | grep -o '[0-9]*'`
xinput set-prop "$id" "$prop" 1

#set refresh rate
xrandr --output DVI-D-0 --mode 1920x1080 --rate 144
