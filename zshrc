# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/klause/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# powerlevel9k 配置
POWERLEVEL9K_MODE="nerdfont-complete" # 设置 powerlevel9k 的字体是我们前面下载的
# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history time root_indicator background_jobs ssh dir vcs newline status anaconda) # 将前面居右的几个元素放在左边了
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=() # 右边不放置任何元素（如果你喜欢在右边也可以加）
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true # 在每个提示之前添加换行符

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
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
  git
  extract
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
  kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# proxy
alias mip="curl https://api.myip.com"
alias myip="curl -L tool.lu/ip"
alias proxy="mip && echo '' && export all_proxy=socks5://127.0.0.1:7891 && echo 'to' && mip"
alias unproxy="mip && echo '' && unset all_proxy && echo 'to' && mip"

# aria2
alias aria2="aria2c --conf-path='/Users/klause/.aria2/aria2.conf' -D"
alias ckaria2="ps aux | grep -v grep | grep aria2"

# conda 
alias ac="conda activate"
alias de="conda deactivate"

# mongodb
alias sttmon="brew services restart mongodb-community && ps aux | grep -v grep | grep mongodb"
alias stpmon="brew services stop mongodb-community && ps aux | grep -v grep | grep mongodb"
alias ckmon="ps aux | grep -v grep | grep mongodb"
alias fixmon="mongod --config=/usr/local/etc/mongod.conf --repair && mongod ps aux | grep -v grep | grep mongodb"

# redis
alias ckredis="ps aux | grep -v grep | grep redis"
alias sttredis="brew services restart redis && ps aux | grep -v grep | grep redis"
alias stpredis="brew services stop redis && ps aux | grep -v grep | grep redis"

# mysql
alias ckmysql="ps aux | grep -v grep | grep mysql"

# hexo
alias deploy="hexo clean && hexo g && hexo deploy"
alias debug="hexo clean && hexo g && hexo server"

# open 命令:使用 vscode 打开与使用 sublime text 打开
alias vscode="open -a /Applications/Visual\ Studio\ Code.app"
alias sublime="open -a /Applications/Sublime\ Text.app"

# brew
alias bs="brew services"
alias bst="brew services start"
alias bsp="brew services stop"
alias bres="brew services restart"
#function start() { ps aux | grep -v grep | grep $@ && brew services start $@ && ps aux | grep -v grep | grep $@ ;}
#function stop() { ps aux | grep -v grep | grep $@ && brew services stop $@  && ps aux | grep -v grep | grep $@ ;}
#function restart() { ps aux | grep -v grep | grep $@ && brew services restart $@ && ps aux | grep -v grep | grep $@;}

# https://github.com/skywind3000/asynctasks.vim
alias task="asynctask -f"
# task 绑定到 F5 键
bindkey -s '\e[15~' 'task\n'

# ps
#function check() { ps aux | grep -v grep | grep $@ ;}

# brew install autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# 方法一: 添加conda环境变量
#export PATH=/Users/klause/opt/anaconda3/bin:$PAT
# 方法二: 使用conda自带的初始化代码,从~/.bash_profile拷贝过来的
# <<< conda init <<<
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/klause/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/klause/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/klause/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/klause/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<H

# auto create .gitignore file on current dir: gi pycharm,python >> .gitignore
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

# brew sbin
export PATH="/usr/local/sbin:$PATH"

# mysql
export PATH="/usr/local/mysql/bin:$PATH"

# cnpm 的环境变量
export PATH="/usr/local/opt/node/lib/node_modules/cnpm/bin:$PATH"

# adb 的环境变量
export PATH=$PATH:~/.android-sdk-macosx/platform-tools/

# anyproxy 的环境变量
export PATH="/usr/local/Cellar/node/13.2.0/lib/node_modules/anyproxy/bin:$PATH"

# node
export PATH="/usr/local/Cellar/node/13.2.0/bin:$PATH"

# android sdkmanager
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# appium ANDROID_HOME
export ANDROID_HOME="/usr/local/share/android-sdk"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=$PATH:/Users/klause/Library/Android/sdk/platform-tools/

# find libffi
export LDFLAGS="-L/usr/local/opt/libffi/lib"

# find openblas
export LDFLAGS="-L/usr/local/opt/openblas/lib"
export CPPFLAGS="-I/usr/local/opt/openblas/include"
export PATH=$PATH:/Users/klause/Library/Android/sdk/bundletool/

# Go
export GOPATH=/usr/local/Cellar/go/1.13.5
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Java SDK
#export JDK6_HOME="/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"
#export JDK11_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home"
#export JDK13_HOME="/Library/Java/JavaVirtualMachines/openjdk-13.0.1.jdk/Contents/Home"
#alias jdk6="export JAVA_HOME=$JDK6_HOME"
#alias jdk11="export JAVA_HOME=$JDK11_HOME"
#alias jdk13="export JAVA_HOME=$JDK13_HOME"

# Java 版本管理工具 jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export TERM="xterm-256color"

export PATH="/usr/local/Cellar/redis/5.0.7/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf 环境变量
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd -t d . "
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

fzfp() {
fzf --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500'
alias tt='fzf --preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500'"'"
}


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles



