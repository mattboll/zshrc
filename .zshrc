# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="intheloop"
ZSH_THEME="mattboll"
#ZSH_THEME="liquidprompt"

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
plugins=(git git-extras debian cp colored-man screen autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:$PATH:/usr/local/sbin:/usr/local/bin:/home/mattboll/glassfish3/glassfish/bin:~/bin/play-2.2.1
alias pg='ps aux | grep'
alias mvnskiptest="mvn install -Dmaven.test.skip=true"
alias trunk="cd ~/srmvision/srmvision_trunk/srmvision"
alias tf='tail -F'
alias logglass='tail -F -n 100 /mnt/debiansda/opt/glassfish312/glassfish/domains/domain3/logs/server.log'
alias mysqlsrm='mysql -u srm -psrm srm'
alias mysqltest='mysql -uhudson_srmtest -phudson_srmtest hudson_srmtest'
alias pull='git pull --rebase'
alias cdautodeploy='cd /mnt/debiansda/opt/glassfish312/glassfish/domains/domain3/autodeploy'
alias rmlock='rm /mnt/debiansda/opt/glassfish312/glassfish/domains/domain3/imq/instances/imqbroker/lock'
alias astart='asadmin start-domain'
alias astop='asadmin stop-domain'
alias gm='git mergetool -t vimdiff'
alias ga='git commit -a'
alias kg="kn glass  && rmlock"
alias liquibase="java -jar /home/mattboll/repository/org/liquibase/liquibase-core/2.0.3/liquibase-core-2.0.3.jar"
alias tities="/home/mattboll/teeworlds-hour/teeworlds-0.6.2-source/teeworlds"
alias ack="ack-grep"
alias cp="rsync -P"

function kn {
pg $1|grep -v grep|awk '{print $2}'|xargs kill -9
}


function cleanOrig {
    find . -name '*.orig' -delete
}

#install jdk
# update-alternatives --install /usr/bin/java java /opt/java/bin/java 20000
# update-alternatives --install /usr/bin/javac javac /opt/java/bin/javac 20000
# update-alternatives --install /usr/bin/javah javah /opt/java/bin/javah 20000
# update-alternatives --install /usr/bin/javap javap /opt/java/bin/javap 20000
# update-alternatives --install /usr/bin/jarsigner jarsigner /opt/java/bin/jarsigner 20000
# update-alternatives --install /usr/bin/jps jps /opt/java/bin/jps 20000
#update-alternatives --config java
#update-alternatives --config javac
#update-alternatives --config javap
#update-alternatives --config javah
#update-alternatives --config jarsigner

#drop database srm;
#drop database quartz;
#create database srm;
#create database quartz;
#grant all privileges on srm.* to srm identified by "srm";
#grant all privileges on quartz.* to srm identified by "srm";
#revoke drop on srm.* from srm;
#grant select on quartz.* to srmconsult identified by "srm";
#flush privileges;

#PackBot jenkins build -TAG-MAJOR, VERSION=3.9.2&VERSIONDEV=3.9.2.1&VERSIONMAJEURE=4.0.0&FILM=zonesJPQL&ChangeLog=Changelog OK

#usefull to use ctrl+s in vim
stty stop undef
stty start undef

export MAVEN_OPTS='-javaagent:/home/mattboll/.m2/maven-color-agent-0.3.jar'
export ANDROID_HOME=/home/mattboll/bin/android-sdk-linux/
source ~/zshrc/k/k.sh
