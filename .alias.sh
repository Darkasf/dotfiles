# aliases
alias cl="clear"
cda() {
	cd $1;
	ls --color=auto;
}
alias cd='cda'
cls() {
	clear;
	ls --color=auto;
}
alias v="vim"
alias rm="rm -I"
alias bc="bc -ql"
alias mutt="neomutt"
cdmkdir() {
	mkdir -p "$1";
	cd "$1";
}
alias py="python"
alias nuke="killall -9"
alias sudoe="sudo -e"
alias n="nnn"
alias cfb="vim ~/.config/bspwm/bspwmrc"
alias cfk="vim ~/.config/sxhkd/sxhkdrc"
