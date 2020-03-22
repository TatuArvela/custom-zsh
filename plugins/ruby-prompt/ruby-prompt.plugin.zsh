function ruby_prompt_info() {
    [[ -f Gemfile || -f Rakefile || -n *.rb(#qN^/) ]] || return

    echo $(rvm_prompt_info || rbenv_prompt_info || chruby_prompt_info)
}