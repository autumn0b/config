# n | name of the user
# m | host name
# 1~ | cwd, tilde is displayed for /home/<user>
#	Red name
PS1="[%F{#ebbcba}%B%n%b%f %1~] "



# ====================
# Aliases and Keybinds
# ====================

# Arch
alias paci="sudo pacman -S"    # [i]nstall
alias pacr="sudo pacman -Rns"  # [r]emove
alias pacs="pacman -Sp --print-format %r/%n"     # [s]earch
alias pacsl="pacman -Q"                          # [s]earch [l]ocal
alias paco="pacman -Sp --print-format '%n : %O'" # [o]ptional dependencies


# Gentoo
alias nflag="sudo -E nvim /etc/portage/package.use/flags"
alias nmask="sudo -E nvim /etc/portage/package.accept_keywords/accept_words"
alias nlicense="sudo -E nvim /etc/portage/package.license"


# NixOS
alias nixc="sudo -E nvim /etc/nixos/configuration.nix"
alias cnix="nvim $HOME/.config/nix/nix.conf"
alias nixs="nix search nixpkgs"
alias nr="sudo nixos-rebuild switch"
alias nru="sudo nixos-rebuild switch --upgrade"
alias usr-pkgs="nixos-option users.users.autumn.packages | grep"
alias sys-pkgs="nixos-option environment.systemPackages | grep"


# Hyprland
alias hyprq="hyprctl dispatch exit"
alias hyprs="start-hyprland"


# Sysytem
alias sleep="systemctl suspend"
alias restart="systemctl reboot"
alias sfonts="fc-list : family | grep"
alias lfonts="fc-list : family"


# Programs
alias grep="grep --color --ignore-case"
alias mpv90="mpv --vf=rotate=90"
alias ff="fastfetch"

y() {
	yazi $1
}

# @nvim
#   [s]udo [nv]im
alias snv='sudo -E nvim'
nv() {
	if [[ -z "$1" ]]; then
		nvim "$(fd . $HOME | fzf)"
	else
		nvim $1
	fi
}

# @search
# [s]earch : action , (optional) base search path
s() {
	if [[ -z "$2" ]]; then
		2="$HOME"
	elif [[ "$2" = conf ]]; then
		2="$HOME/.config/"
	fi

	DIR="$(fd . $2 | fzf)"
	if [[ -n $DIR ]]; then
		$1 $DIR
	fi
}


# Configs
alias keydc="sudo -E nvim /etc/keyd/default.conf"
alias wpac="sudo -E nvim /etc/wpa_supplicant/wpa_supplicant.conf"
alias zshc="nvim $HOME/.zshrc"

alias footc="nvim $HOME/.config/foot/foot.ini"
alias ghostc="nvim $HOME/.config/ghostty/config"
alias nvimc="nvim $HOME/.config/nvim/init.lua"

alias hyprc="nvim $HOME/.config/hypr/hyprland.conf"
alias bgc="nvim $HOME/.config/hypr/hyprpaper.conf"
alias waybarc="nvim $HOME/.config/waybar/style.css"
alias rofic="nvim $HOME/.config/rofi/config.rasi"


# Directories
alias notes="nvim $HOME/sync/notes/"
alias notepad="nvim ~/sync/notes/notepad.txt"
alias code="nvim $HOME/sync/code/"
alias pkgs="nvim $HOME/sync/linux_config/scripts/packages.md"


# Scripts
#   copies all config files to a central location and pushes to github
alias savec="~/sync/linux_config/scripts/save.sh"
#   download files from github using curl
alias loadc="~/sync/linux_config/scripts/load.sh"


# =========

export EDITOR=nvim
export VISUAL=nvim

# Keybinds
bindkey "^[[3~" delete-char


# History in cache dir:
HISTSIZE=4096
SAVEHIST=4096
HISTFILE=~/.cache/zsh/history/


# Basic tab completion:
# autoload -U compinit
# zstyle ":completion:*" menu select
# zmodload zsh/complist
# compinit
# #	Include hidden files.
# _comp_options+=(globdots)


# Vim Keybinds
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different modes
function zle-keymap-select
{
	if [[ ${KEYMAP} == vicmd ]] ||
	   [[ $1 = "block" ]]; then
		echo -ne "\e[1 q"
	elif [[ ${KEYMAP} == main ]] ||
	     [[ ${KEYMAP} == viins ]] ||
	     [[ ${KEYMAP} == '' ]] ||
	     [[ $1 = "beam" ]]; then
		echo -ne "\e[5 q"
	fi
}

zle -N zle-keymap-select
zle-line-init()
{
	# Initiate `vi insert` as keymap.
	# (can be removed if `bindkey -V` has been set elsewhere)
	zle -K viins
	echo -ne "\e[5 q"
}

zle -N zle-line-init
# Use beam cursor on startup.
echo -ne "\e[5 q"
# Use beam cursor for each new prompt.
preexec() { echo -ne "\e[5 q" ;}
