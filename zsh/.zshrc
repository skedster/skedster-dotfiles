# +----------------------------------------+
# |        _            _     _            |
# |  ___| | _____  __| |___| |_ ___ _ __   |
# | / __| |/ / _ \/ _` / __| __/ _ \ '__|  |
# | \__ \   <  __/ (_| \__ \ ||  __/ |     |
# | |___/_|\_\___|\__,_|___/\__\___|_|     |
# |                                        |
# +----------------------------------------+

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY

for dir in "$HOME/.local/share/flatpak/exports/bin" "/var/lib/flatpak/exports/bin"; do
    if [ -d "$dir" ]; then
        export PATH="$PATH:$dir"
    fi
done

export EDITOR="flatpak run org.neovim.nvim"
export VISUAL="flatpak run org.neovim.nvim"


alias nvim="flatpak run org.neovim.nvim"
alias nv="flatpak run org.neovim.nvim"
alias v="flatpak run org.neovim.nvim"

alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias la="ls -la --color=auto"
alias ll="ls -l --color=auto"
alias grep="grep --color=auto"


autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

bindkey -e


setopt prompt_subst

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b) '

# %m = device name, %n = username, %~ = current path
# %B and %b make the chevron extra bold/thick
PROMPT='%F{green}%m-%n%f %F{cyan}%~%f %F{magenta}${vcs_info_msg_0_}%f%B%F{yellow}❯%f%b '


if command -v nitch >/dev/null 2>&1; then
    nitch
fi

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

bindkey -e

if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
