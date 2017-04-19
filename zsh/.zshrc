# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="dstufft"
ZSH_THEME="krast"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump cp rsync screen tmux history)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# krast dev env
# java
# ----
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home
export JAVA_HOME=$JAVA_8_HOME
#export CLASSPATH=".:$JAVA_HOME/lib/"

# maven
# -----
export M2_HOME=/Applications/IntelliJ\ IDEA.app/Contents/plugins/maven/lib/maven3
#export MAVEN_OPTS="-DsocksProxyHost=vpn02.iladder.win -DsocksProxyPort=110"
alias mvnins="mvn clean install -Dmaven.test.skip=true"
alias mvnsbr="mvn spring-boot:run"

# gradle
# ------
export GRADLE_HOME=/usr/local/Cellar/gradle/3.2.1/libexec

# jdk alias
# ---------
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk7='export JAVA_HOME=$JAVA_7_HOME'
alias jdk6='export JAVA_HOME=$JAVA_6_HOME'

# http proxy
# ----------
alias proxy="export http_proxy=http://krast.cn:23; export https_proxy=http://krast.cn:23"
alias proxylocal="export http_proxy=http://127.0.0.1:9090; export https_proxy=http://127.0.0.1:9090"
alias proxysocks="export http_proxy=socks5://vpn02.iladder.win:25; export https_proxy=socks5://vpn02.iladder.win:25"
alias proxysocks4="export http_proxy=socks5://vpn04.iladder.win:25; export https_proxy=socks5://vpn04.iladder.win:25"
alias unproxy="unset http_proxy;unset https_proxy;"

# krast alias
# -----------
alias kc="tmux new -s krast"
alias kr="tmux attach -t krast"
alias gitconfigwanda="git config --local user.name 'gujunjie' && git config --local user.email gujunjie6@wanda.cn"
alias gm="/Users/krast/OneDrive/workspace/shell/github-ghe-mirror.sh"

# github
# ------
export GITHUB_HOST=github.wanda-group.net
alias git="hub"

# system
# ------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export DISPLAY=:0.0
export PATH=$PATH:$M2_HOME/bin:$GRADLE_HOME/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
