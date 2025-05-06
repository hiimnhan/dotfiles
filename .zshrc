export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --no-user --group-directories-first  --time-style long-iso'
alias la='eza -la --icons --no-user --group-directories-first  --time-style long-iso'
alias lg='lazygit'

alias yd='yarn dev'
alias ya='yarn add'
alias yga='yarn global add'
# git alias

source ~/.nvm/nvm.sh
source <(fzf --zsh)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/miniforge3/bin"
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"
export WEZTERM_CONFIG_FILE="$HOME/.config/wezterm/wezterm.lua"

. "$HOME/.local/bin/env"
alias python=/usr/local/bin/python3

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nhanncv/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nhanncv/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/nhanncv/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nhanncv/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/nhanncv/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
#
julia() {
  julia_bin=${JULIA_DEPOT_PATH:-~/.julia}/environments/repl/bin/julia
  if [[ -f "${julia_bin}" ]]; then
    "${julia_bin}" "$@"
  else
    command julia "$@"
  fi
}
