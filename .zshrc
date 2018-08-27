### Antigen

source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
  git
  bundler
  heroku
  postgres
  brew
  rbenv
  zsh_reload
  osx
  z
EOBUNDLES
antigen bundle Tarrasch/zsh-autoenv
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle ross-hunter/zsh-open-pr
antigen theme robbyrussell
antigen apply

### Alias

alias slime='subl'
alias ls='ls -FahG'
alias kgit='git'
alias dcu='docker-compose up'

### ENV managers

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

### The Rest

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# if which thefuck > /dev/null; then eval "$(thefuck --alias)"; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
