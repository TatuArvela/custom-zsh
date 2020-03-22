export ZSH="/Users/tatu/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git zsh-nvm virtualenv node-prompt ruby-prompt)
source $ZSH/oh-my-zsh.sh

# Node.js / nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby / RVM
export PATH="$PATH:$HOME/.rvm/bin"

# Python / Pipenv
export PIPENV_IGNORE_VIRTUALENVS=1
export PIPENV_VENV_IN_PROJECT=1
