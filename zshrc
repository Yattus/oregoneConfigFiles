# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# ORDER
SPACESHIP_PROMPT_ORDER=(
  # time
  # user
  # host
  battery
  dir
  git
  pyenv
  venv
  # hg
  # node
  # ruby
  # elixir
  # xcode
  # swift
  # golang
  # php
  # rust
  # julia
  package
  docker
  # aws
  # conda
  # dotnet
  # ember
  # kubecontext
  # exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)

# PROMPT
SPACESHIP_CHAR_SYMBOL="➜ "
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_PROMPT_DEFAULT_PREFIX="via "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

# TIME
SPACESHIP_TIME_SHOW=false
# SPACESHIP_TIME_PREFIX="at "
# SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_TIME_FORMAT=false
# SPACESHIP_TIME_12HR=false
# SPACESHIP_TIME_COLOR="yellow"

# EXECUTION TIME
# SPACESHIP_EXEC_TIME_SHOW=true
# SPACESHIP_EXEC_TIME_PREFIX="took "
# SPACESHIP_EXEC_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_EXEC_TIME_COLOR="yellow"
# SPACESHIP_EXEC_TIME_THRESHOLD=5000
# SPACESHIP_EXEC_TIME_MS=false

# USER
# SPACESHIP_USER_SHOW=true
# SPACESHIP_USER_PREFIX="with "
# SPACESHIP_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_USER_COLOR="yellow"
# SPACESHIP_USER_COLOR_ROOT="red"

# HOST
# SPACESHIP_HOST_SHOW=true
# SPACESHIP_HOST_PREFIX="at "
# SPACESHIP_HOST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_HOST_COLOR="green"

# DIR
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_COLOR="cyan"

# GIT
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX="on "
SPACESHIP_GIT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_GIT_SYMBOL=" "
# GIT BRANCH
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_BRANCH_PREFIX="$SPACESHIP_GIT_SYMBOL"
SPACESHIP_GIT_BRANCH_SUFFIX=""
SPACESHIP_GIT_BRANCH_COLOR="magenta"
# GIT STATUS
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_STATUS_PREFIX=" ["
SPACESHIP_GIT_STATUS_SUFFIX="]"
SPACESHIP_GIT_STATUS_COLOR="red"
SPACESHIP_GIT_STATUS_UNTRACKED="?"
SPACESHIP_GIT_STATUS_ADDED="+"
SPACESHIP_GIT_STATUS_MODIFIED="!"
SPACESHIP_GIT_STATUS_RENAMED="»"
SPACESHIP_GIT_STATUS_DELETED="✘"
SPACESHIP_GIT_STATUS_STASHED="$"
SPACESHIP_GIT_STATUS_UNMERGED="="
SPACESHIP_GIT_STATUS_AHEAD="⇡"
SPACESHIP_GIT_STATUS_BEHIND="⇣"
SPACESHIP_GIT_STATUS_DIVERGED="⇕"

# HG
# SPACESHIP_HG_SHOW=true
# SPACESHIP_HG_PREFIX="on "
# SPACESHIP_HG_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_HG_SYMBOL="☿ "
# HG BRANCH
# SPACESHIP_HG_BRANCH_SHOW=true
# SPACESHIP_HG_BRANCH_PREFIX="$SPACESHIP_HG_SYMBOL"
# SPACESHIP_HG_BRANCH_SUFFIX=""
# SPACESHIP_HG_BRANCH_COLOR="magenta"
# HG STATUS
# SPACESHIP_HG_STATUS_SHOW=true
# SPACESHIP_HG_STATUS_PREFIX="["
# SPACESHIP_HG_STATUS_SUFFIX="]"
# SPACESHIP_HG_STATUS_COLOR="red"
# SPACESHIP_HG_STATUS_UNTRACKED="?"
# SPACESHIP_HG_STATUS_ADDED="+"
# SPACESHIP_HG_STATUS_MODIFIED="!"
# SPACESHIP_HG_STATUS_DELETED="✘"

# PACKAGE
SPACESHIP_PACKAGE_SHOW=true
SPACESHIP_PACKAGE_PREFIX="is "
SPACESHIP_PACKAGE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_PACKAGE_SYMBOL="📦 "
SPACESHIP_PACKAGE_COLOR="red"

# NODE
# SPACESHIP_NODE_SHOW=true
# SPACESHIP_NODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_NODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_NODE_SYMBOL="⬢ "
# SPACESHIP_NODE_DEFAULT_VERSION=""
# SPACESHIP_NODE_COLOR="green"

# RUBY
# SPACESHIP_RUBY_SHOW=true
# SPACESHIP_RUBY_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_RUBY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_RUBY_SYMBOL="💎 "
# SPACESHIP_RUBY_COLOR="red"

# ELIXIR
# SPACESHIP_ELIXIR_SHOW=true
# SPACESHIP_ELIXIR_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_ELIXIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_ELIXIR_SYMBOL="💧 "
# SPACESHIP_ELIXIR_DEFAULT_VERSION=""
# SPACESHIP_ELIXIR_COLOR="magenta"

# XCODE
# SPACESHIP_XCODE_SHOW_LOCAL=true
# SPACESHIP_XCODE_SHOW_GLOBAL=false
# SPACESHIP_XCODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_XCODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_XCODE_SYMBOL="🛠 "
# SPACESHIP_XCODE_COLOR="blue"

# SWIFT
# SPACESHIP_SWIFT_SHOW_LOCAL=true
# SPACESHIP_SWIFT_SHOW_GLOBAL=false
# SPACESHIP_SWIFT_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_SWIFT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_SWIFT_SYMBOL="🐦 "
# SPACESHIP_SWIFT_COLOR="yellow"

# GOLANG
# SPACESHIP_GOLANG_SHOW=true
# SPACESHIP_GOLANG_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_GOLANG_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_GOLANG_SYMBOL="🐹 "
# SPACESHIP_GOLANG_COLOR="cyan"

# PHP
# SPACESHIP_PHP_SHOW=true
# SPACESHIP_PHP_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_PHP_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_PHP_SYMBOL="🐘 "
# SPACESHIP_PHP_COLOR="blue"

# RUST
# SPACESHIP_RUST_SHOW=true
# SPACESHIP_RUST_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_RUST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_RUST_SYMBOL="𝗥 "
# SPACESHIP_RUST_COLOR="red"

# JULIA
# SPACESHIP_JULIA_SHOW=true
# SPACESHIP_JULIA_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_JULIA_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_JULIA_SYMBOL="ஃ "
# SPACESHIP_JULIA_COLOR="green"

# DOCKER
SPACESHIP_DOCKER_SHOW=true
SPACESHIP_DOCKER_PREFIX="on "
SPACESHIP_DOCKER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_DOCKER_SYMBOL="🐳 "
SPACESHIP_DOCKER_COLOR="cyan"

# Amazon Web Services (AWS)
# SPACESHIP_AWS_SHOW=true
# SPACESHIP_AWS_PREFIX="using "
# SPACESHIP_AWS_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_AWS_SYMBOL="☁️ "
# SPACESHIP_AWS_COLOR="208"

# PYENV
SPACESHIP_PYENV_SHOW=true
SPACESHIP_PYENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
SPACESHIP_PYENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_PYENV_SYMBOL="🐍"
SPACESHIP_PYENV_COLOR="green"

# VENV
SPACESHIP_VENV_SHOW=true
SPACESHIP_VENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
SPACESHIP_VENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VENV_COLOR="blue"

# CONDA
# SPACESHIP_CONDA_SHOW=true
# SPACESHIP_CONDA_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_CONDA_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_CONDA_SYMBOL="🅒 "
# SPACESHIP_CONDA_COLOR="blue"

# DOTNET
# SPACESHIP_DOTNET_SHOW=true
# SPACESHIP_DOTNET_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_DOTNET_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_SYMBOL_DOTNET=".NET "
# SPACESHIP_DOTNET_COLOR="128"

# EMBER
# SPACESHIP_EMBER_SHOW=true
# SPACESHIP_EMBER_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
# SPACESHIP_EMBER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_EMBER_SYMBOL="🐹 "
# SPACESHIP_EMBER_COLOR="210"

# KUBECONTEXT
# SPACESHIP_KUBECONTEXT_SHOW=true
# SPACESHIP_KUBECONTEXT_PREFIX="at "
# SPACESHIP_KUBECONTEXT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
# SPACESHIP_KUBECONTEXT_SYMBOL="☸️ "
# SPACESHIP_KUBECONTEXT_COLOR="cyan"

# BATTERY
SPACESHIP_BATTERY_SHOW='always'
# SPACESHIP_BATTERY_ALWAYS_SHOW=false
SPACESHIP_BATTERY_PREFIX=""
SPACESHIP_BATTERY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_BATTERY_SYMBOL_CHARGING="⇡"
SPACESHIP_BATTERY_SYMBOL_DISCHARGING="⇣"
SPACESHIP_BATTERY_SYMBOL_FULL="•"
SPACESHIP_BATTERY_THRESHOLD=10

# VI_MODE
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_PREFIX=""
SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VI_MODE_INSERT="[I]"
SPACESHIP_VI_MODE_NORMAL="[N]"
SPACESHIP_VI_MODE_COLOR="yellow"

# JOBS
SPACESHIP_JOBS_SHOW="true"
SPACESHIP_JOBS_PREFIX=""
SPACESHIP_JOBS_SUFFIX=" "
SPACESHIP_SYMBOL_JOBS="✦"
SPACESHIP_JOBS_COLOR="blue"

# EXIT CODE
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_PREFIX="("
SPACESHIP_EXIT_CODE_SUFFIX=") "
SPACESHIP_EXIT_SYMBOL_CODE="✘ "
SPACESHIP_EXIT_CODE_COLOR="red"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git tmux docker django vi-mode vim-interaction venv
  pyenv python celery heroku postgres zsh-completions
  zsh-syntax-highlighting zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias c='clear'
alias e='exit'
alias s='cd ..'
alias i='sudo apt-get install'
alias ai='sudo aptitude install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias t='tmux -2'
alias enva='. env/bin/activate'
alias envd='deactivate'
alias ds='./manage.py runserver'
alias dm='./manage.py migrate'
alias dM='./manage.py makemigrations'
alias di='./manage.py shell'

# Alias for git command

# For zsh-completions
autoload -U compinit && compinit

# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
# export PATH=/usr/pgsql-10/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended --border"
export FZF_DEFAULT_COMMAND="fzf --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
