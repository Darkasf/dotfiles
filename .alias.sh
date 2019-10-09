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
alias cfi="vim ~/.config/i3/config"
cdmkdir() {
	mkdir -p "$1";
	cd "$1";
}
alias cmkdir="cdmkdir"
alias py="python"
alias nuke="killall -9"
alias sudoe="sudo -e"