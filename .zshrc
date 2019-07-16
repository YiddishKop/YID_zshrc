# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/yiddi/.oh-my-zsh
  export SCALA_HOME=/usr/local/share/scala-2.12.6
  export SPARK_HOME=/usr/local/share/spark
  export SBT_HOME=/usr/local/share/sbt
  export HADOOP_HOME=/usr/local/hadoop
  export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
  export ANACONDA_HOME=/home/yiddi/anaconda3
  export ZOOKEEPER_HOME=/usr/local/zookeeper
  export HBASE_HOME=/usr/local/hadoop/hbase
  export JAVA_HOME=/usr/lib/jvm/java-8-oracle

  
  export PATH=$HBASE_HOME/bin:$HOME/bin:$SBT_HOME/bin:$ANACONDA_HOME/bin:$SPARK_HOME/bin:$SPARK_HOME/sbin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$SCALA_HOME/bin:$PATH
  

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  github
)

source $ZSH/oh-my-zsh.sh

# User configuration

xmodmap ~/.Xmodmap

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# yiddi: for expressvpn
alias exphk4="expressvpn connect \"hk4\""
alias exphk5="expressvpn connect \"hk5\""
alias exphk1="expressvpn connect \"hk1\""
alias expjp1="expressvpn connect \"jpto1\""
alias expjp2="expressvpn connect \"jpto2\""
alias exps="expressvpn connect \"smart\""
alias expusla4="expressvpn connect \"usla4\""
alias expusla5="expressvpn connect \"usla5\""
alias expsg="expressvpn connect \"sgju\""
alias exptw="expressvpn connect \"tw\""
alias expuk1="expressvpn connect \"ukel\""
alias expuk2="expressvpn connect \"ukwe\""
alias expls="expressvpn list"
alias expd="expressvpn disconnect"
alias expr="expressvpn refresh"

# yiddi: elicpse
alias eclp="/home/yiddi/eclipse/jee-2018-093/eclipse/eclipse"

# yiddi: emacs
alias emc="emacsclient --create-frame --no-wait"
alias ems="LC_CTYPE=zh_CN.UTF-8 emacs --daemon"
alias emss="emacs -q -l ~/scimax/init.el"


# yiddi: for key remapping in ubuntu
alias xxx="xmodmap ~/.Xmodmap"

# yiddi: some middy
alias sdi="sudo dpkg -i"
alias sai="sudo apt install"
alias vmz="sudo vim ~/.zshrc"
alias ssz="source ~/.zshrc"

# yiddi: ping
alias pgg="ping google.com"

# yiddi: active the python env tensorflow
alias sat="source activate tensorflow"
alias sdt="source deactivate tensorflow"

# yiddi: redshift for removing blue ray of displayer 
alias rdf="redshift"

# yiddi: jupyter notebook
alias jnb="jupyter notebook"

# yiddi: for kaggle
alias kgc="kg config -g -u yiddishkop@gmail.com -p yl7130201 -c"
alias kgd="kg download"

#
# yiddi: add to support prezto
# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"


# yiddi: the commmand to update conda
#####################################
# conda related commands: from here #
#####################################

#For Windows users# Note: <> denotes changes to be made

#Create a conda environment
#conda create --name <environment-name> python=<version:2.7/3.5>

#To create a requirements.txt file:
#conda list #Gives you list of packages used for the environment

#conda list -e > requirements.txt #Save all the info about packages to your folder

#To export environment file
#activate <environment-name>
#conda env export > <environment-name>.yml

#For other person to use the environment
#conda env create -f <environment-name>.yml

