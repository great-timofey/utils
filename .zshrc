# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=/usr/local/bin/composer:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH
export PATH=/Users/timmy/flutter/bin:$PATH
export ANDROID_HOME=/Users/timmy/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=/Users/timmy/.pyenv:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export GOPATH=$HOME/.ghcup/env
export GOROOT="/usr/local/Cellar/go/1.11.2/libexec"
eval "$(pyenv init -)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/timmy/.oh-my-zsh"

#theme toggle base on system dark mode


if [[ "$(uname -s)" == "Darwin" ]]; then
    sith() {
        val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
        if [[ $val == "Dark" ]]; then
          if [[ $ITERM_PROFILE == "Solarized" ]]; then
            echo -ne "\033]50;SetProfile=Default\a"
            export ITERM_PROFILE="Default"
          fi
        else
          if [[ $ITERM_PROFILE == "Default" ]]; then
            echo -ne "\033]50;SetProfile=Solarized\a"
            export ITERM_PROFILE="Solarized"
          fi
        fi
    }

    sith
fi

val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
if [[ $val == "Dark" ]]; then
  #ZSH_THEME="agnoster"
  ZSH_THEME="elessar"
else
  ZSH_THEME="elessar"
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git zsh-autosuggestion
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
alias npmis="npm i && npm start"
alias npmri="rm -rf ./node_modules && npm i"
alias npmris="rm -rf ./node_modules && npm i && npm start"
alias f="flutter"
alias fa="flutter analyze"
alias "f add"="flutter packages get"
alias reload="adb shell input keyevent 82"
alias emulator-nexus="$ANDROID_HOME/emulator/emulator @Nexus_5X_API_27"
alias rnios="react-native run-ios --simulator='iPhone 6'"
alias rniosx="react-native run-ios --simulator='iPhone X'"
alias rnios5="react-native run-ios --simulator='iPhone 5s'"
alias ctags="`brew --prefix`/bin/ctags"
alias chrome-no-cors="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security"
alias check-history="~/.zsh_history | grep"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/timmy/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/timmy/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/timmy/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/timmy/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

echo "iterm profile:" $ITERM_PROFILE
echo "zsh theme: "$ZSH_THEME
