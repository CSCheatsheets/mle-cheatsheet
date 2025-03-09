# Config - Shell

## Shell Configuration

Useful configurations for `zsh`.

```conf
# File System Shortcut
alias l="ls -lash"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias ~="cd ~"
alias @="cd ~"
alias -="cd -"

# Config File Shortcut

## Zsh Config
alias vz="vim ~/.zshrc"
alias cz="cat ~/.zshrc"
alias sz="source ~/.zshrc"

## Bash Config
alias vb="vim ~/.bashrc"
alias cb="cat ~/.bashrc"
alias sb="source ~/.bashrc"

## SSH Config
alias vs="vim ~/.ssh/config"
alias cs="cat ~/.ssh/config"

## AWS Config
alias va="vim ~/.aws/config"
alias ca="cat ~/.aws/config"

# Environment Activation Shortcut
alias d="deactivate"

# Console Shortcut
alias c="clear"

# Editor Shortcut
alias e=emacs

# Amazon Brazil Shortcut
alias bb="brazil-build"
alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'
```
