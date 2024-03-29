# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mattboll"
#ZSH_THEME="clear"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras git-flow debian cp colored-man-pages screen z zsh-syntax-highlighting sudo buffalo)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:$PATH:/usr/local/sbin:/usr/local/bin:~/bin/play-2.2.1
alias pg='ps aux | grep'
alias mvnskiptest="mvn install -Dmaven.test.skip=true"
alias tf='tail -F'
alias pull='git pull --rebase'
alias gm='git mergetool -t vimdiff'
alias ga='git commit -a'
alias cp="rsync -P"
alias ls="ls --color -h"
alias tmux="tmux -2"
alias fd=fdfind
alias o=xdg-open
alias gpr=$'git rp && git branch -vv | grep ": disparue]"|  grep -v "\*" | awk \'{ print $1; }\'| xargs -r git branch -d'
alias python='python3'

function kn {
pg $1|grep -v grep|awk '{print $2}'|xargs kill -9
}


function cleanOrig {
    find . -name '*.orig' -delete
}

zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

export LESS='-sCmqPm--Less--(?eEND:%pb\%.)'


NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

unset PREFIX
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function smallNoise {
for i in {0..11}
do
sudo cpufreq-set -c $i -g powersave -u 2500000
done
}

function highcpu {
  echo $*
  echo xx
  echo $@
for i in {0..11}
do
sudo cpufreq-set -c $i -g performance -u 4400000
done
}

eval $(thefuck --alias)
export PATH="$HOME/.yarn/bin:$PATH"
#export PATH="$HOME/.jenv/bin:$HOME/.yarn/bin:$PATH"
#eval "$(jenv init -)"


export KUBECONFIG=~/.kube/config:~/.kube/ovhconfig

# kubectl config set-context --current --namespace=alex

# export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

# export PATH=~/bin:$PATH:/usr/local/sbin:/usr/local/bin:$HOME/.cargo/bin:$GOROOT/bin:$GOROOT:$GOPATH:$GOBIN:~/.local/bin
export PATH=~/bin:$PATH:/usr/local/sbin:/usr/local/bin:$HOME/.cargo/bin:$GOPATH:$GOBIN:~/.local/bin

export GO111MODULE=on


export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/"
#unset XDG_DATA_DIRS

source ~/.zsh/completion/scalingo_complete.zsh

export ANDROID_HOME=/home/mbollot/Android/Sdk
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
