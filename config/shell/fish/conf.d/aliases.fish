alias ls='exa --icons'

if not test -x grc
  alias free='grc free'
end

if not test -x bat
  alias cat='bat --theme=ansi -p'
end

if test -f ~/just/manage-meson
  alias manage-meson="just -f ~/just/manage-meson -d (pwd)"
end
