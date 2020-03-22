function node_prompt_info() {
    [[ -f package.json || -d node_modules || -n *.js(#qN^/) ]] || return

    local node_version=$(nvm current 2>/dev/null)

    echo -n "${ZSH_THEME_NODE_PROMPT_PREFIX}"
    echo -n "${node_version:1}"
    echo "${ZSH_THEME_NODE_PROMPT_SUFFIX}"
}