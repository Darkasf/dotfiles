# Profile file. Runs on login.
#!/bin/sh

#QT THEME
export QT_STYLE_OVERRIDE=kvantum

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | grep -v "git" |  cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export EDITOR="vim"
export TERMINAL="tilix"
export BROWSER="firefox"
export READER="zathura"
export FILE="nautilus"
export XDG_CONFIG_HOME="$HOME/.config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export HOSTNAME=$(hostname)

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

