#!/usr/bin/env bash
# vi: tabstop=2 shiftwidth=2

declare -A _dotfiles=(
 ["wm/sway"]="$HOME/.config/sway"
 ["wm/waybar"]="$HOME/.config/waybar"
 ["wm/mako"]="$HOME/.config/mako"
 ["app/term/foot"]="$HOME/.config/foot"
 ["shell/fish"]="$HOME/.config/fish"
 ["comp/cargo.toml"]="$HOME/.cargo/config.toml"
 ["app/dev/git"]="${HOME}/.config/git"
 ["editor/nvim"]="${HOME}/.config/nvim"
)

_exists() {
	[[ -f $1 ]] || [[ -d $1 ]] || readlink $1 >/dev/null 
}

_install_dotfiles() {
	echo ":: Installing `echo ${!_dotfiles[@]} | wc -w` dotfiles..."
	for dotfile in "${!_dotfiles[@]}"; do
		out=${_dotfiles[$dotfile]}
		printf "  -> Trying to link ${dotfile} to ${out}"

		if ! _exists $out; then
			ln -s `realpath "config/${dotfile}"` $out
			echo " [ OK ]"
		else
			echo " [ IGNORED ]"
		fi
	done
}

_list_configs() {
	for dotfile in "${!_dotfiles[@]}"; do
		out=${_dotfiles[$dotfile]}
		echo "$out will link to $dotfile"
	done
}

case "$1" in
	install-configs) shift && _install_dotfiles "$@" ;;
	list-configs)    shift && _list_configs ;;
	*) echo "$0 - Dotfile manager
  install-configs: install dotfiles
  list-configs:    list configs";;
esac
