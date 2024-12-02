export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fino"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls='exa --icons --group-directories-first'
alias ll='exa -l --icons --no-user --group-directories-first  --time-style long-iso'
alias la='exa -la --icons --no-user --group-directories-first  --time-style long-iso'
alias lg='lazygit'

alias yd='yarn dev'
alias ya='yarn add'
alias yga='yarn global add'

alias pd='pnpm run dev'
alias pi='pnpm install'
alias pgi='pnpm install -g'
# git alias

source ~/.nvm/nvm.sh
source <(fzf --zsh)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/Library/PostgreSQL/16/bin:$PATH
export PATH=/usr/local/texlive/2024/bin/universal-darwin:$PATH
export JAVA_HOME="/usr/bin/java"


alias python=/opt/homebrew/bin/python3
