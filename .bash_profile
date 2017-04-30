export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\033[38;5;183m\][\t\[$(tput sgr0)\]\[\033[38;5;189m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
# export PS1="\[\e[1;34m\]\u\[\e[m\]:\[\e[0;36m\]\w\[\e[m\] \[\e[1;33m\]\$\[\e[m\] "
alias dir='ls -la'
alias a='atom'

markdownfun() {
  /Applications/MacDown.app/Contents/MacOS/MacDown $1 &
}
alias markdown=markdownfun

# syntax highlighting in less
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# rust src for racer
RUST_SRC_PATH=/Users/laszlo/Libs/rust/src
export RUST_SRC_PATH
# rust/cargo
CARGO_BIN=/Users/laszlo/.cargo/bin
export CARGO_BIN

# groovy
GROOVY_HOME=/usr/local/opt/groovy/libexec
export GROOVY_HOME

# mongodb
# export PATH="/Users/laszlo/Server/mongodb/bin:$PATH"

# Added by install_latest_perl_osx.pl
[ -r /Users/laszlo/.bashrc ] && source /Users/laszlo/.bashrc

# because the pylint in python 2.7 does not know locale UTF-8, see solution http://stackoverflow.com/questions/15526996/ipython-notebook-locale-error
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# added by Anaconda3 4.2.0 installer
# export PATH="/Users/laszlo/anaconda3/bin:$PATH"

# added by Anaconda2 4.2.0 installer
export PATH="/Users/laszlo/anaconda2/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/laszlo/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/laszlo/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/laszlo/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/laszlo/google-cloud-sdk/completion.bash.inc'
fi

export GIT_PROMPT_ONLY_IN_REPO=1

export GIT_PROMPT_THEME=Solarized_Extravagant
# TruncatedPwd_WindowTitle
# export GIT_PROMPT_THEME=Minimal
export GIT_PROMPT_THEME=Chmike

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
