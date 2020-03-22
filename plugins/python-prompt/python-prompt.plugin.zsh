function python_prompt_info(){
    [[ -n ${PIPENV_ACTIVE} || -f Pipfile || -d .venv || -n *.py(#qN^/) ]] || return

    local python_version=$(python -V 2>&1 | cut -f 2 -d ' ')

    echo -n "${ZSH_THEME_PYTHON_PROMPT_PREFIX}"
    echo -n "${python_version}"
    if [[ "${PIPENV_ACTIVE}" == 1 ]]; then
        echo -n "@venv"
    fi
    echo "${ZSH_THEME_PYTHON_PROMPT_SUFFIX}"
}
