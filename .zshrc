export ZSH="/Users/tatu/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(
    git
    zsh-nvm
    pipenv
    node-prompt
    ruby-prompt
    python-prompt
)
source $ZSH/oh-my-zsh.sh

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$PATH:$HOME/bin"
fi

# Node.js, Yarn, nvm
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby, RVM
export PATH="$PATH:$HOME/.rvm/bin"

# Python, Poetry
alias python="python3"
export PATH="$HOME/.poetry/bin:$PATH"

export PATH="$PATH:/Users/tatu/GitHub/Magic/bin"
