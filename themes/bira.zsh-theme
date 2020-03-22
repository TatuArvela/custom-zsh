local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[green]%}%n@%m %{$reset_color%}'
    local user_symbol='$'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'
local nvm_node='$(node_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_python='$(python_prompt_info)'

ZSH_THEME_RVM_PROMPT_OPTIONS="v g"

PROMPT="╭─${user_host}${current_dir}${git_branch}${nvm_node}${rvm_ruby}${venv_python}
╰─%B${user_symbol}%b "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_NODE_PROMPT_PREFIX="%{$fg[blue]%}‹"
ZSH_THEME_NODE_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_PYTHON_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_PYTHON_PROMPT_SUFFIX="› %{$reset_color%}"
