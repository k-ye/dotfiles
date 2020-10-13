export PS1="%n@%~$ "

# default="*?_-.[]~=/&;!#$%^(){}<>", remove '/' from it
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export GOPATH=$HOME/go
export GITHUBPATH=$HOME/Github

# Make Ctrl+U clears the line before the current cursor.
# In zsh, Ctrl+U clears the entire line by defualt.
# https://stackoverflow.com/questions/3483604/which-shortcut-in-zsh-does-the-same-as-ctrl-u-in-bash/3483679#3483679
bindkey \^U backward-kill-line

# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# I've seen a few times where the latest Xcode toolchain either had a bad
# performance or was completely broken for Taichi's usage. As a result,
# `xccmd-taichi-stable` will always switch to a known good Xcode + clang toolchain.
#
# Broken log:
# * clang version 12.0.0 (clang-1200.0.32.2) shipped with Xcode 12.0.1 (12A7300)
# has regressed significantly in the STL containers (most noticeably std::vector).
# Pin at Xcode 11.7 with clang-1103.0.32.62.
# * clang version 11.0.3 (clang-1103.0.32.59) shipped with Xcode 11.4 doesn't play well with Taichi LLVM bitcode,
# therefore I have to pin at clang-1100.0.33.17 (shipped in Xcode 11.3.1) when working on Taichi.
alias "xccmd-taichi-stable=sudo xcode-select --switch /Applications/Xcode_11.7.app/Contents/Developer"
alias "xccmdhead=sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer"

eval "$(rbenv init -)"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"

usedepot() {
    export PATH="$GITHUBPATH/depot_tools:$PATH"
}

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
