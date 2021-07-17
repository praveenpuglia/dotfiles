export HISTCONTROL=ignoreboth:erasedups

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export SYSTEM_VERSION_COMPAT=1
export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH=/usr/local/miniconda3/bin:"$PATH"
export NVM_DIR="$HOME/.nvm"
export BAT_THEME="Dracula"
export HOMEBREW_AUTO_UPDATE_SECS=86400
#export GPG_TTY=`tty`
fpath+=~/zsh-functions
# MongoDB 
export PATH="/usr/local/opt/mongodb-community@4.0/bin:$PATH"

# Voicezen Related path variables
export VZ="$HOME/code/voicezen"
export VZ_NOTEBOOKS="$HOME/code/voicezen/notebooks"
# Pure Config
#PURE_PROMPT_SYMBOL='✄'
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files OB
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# OBDISABLE_UNTRACKED_FILES_DIRTY="true"

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
# source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh
## Initialize fnm completions
plugins=(git git-extras z zsh-syntax-highlighting zsh-autosuggestions)

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
export EDITOR='micro'
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

function tata_kill () {
	kill -9 $(lsof -t -i tcp:29200) 
	kill -9 $(lsof -t -i tcp:28000)
}
alias c="pygmentize -O style=vs -f console256 -g"
alias zc="micro ~/.zshrc"
alias zs="source ~/.zshrc"
alias ls="exa"
alias la="exa --icons -la"
alias nuke="rm -rf node_modules"
alias boom="find . -name "node_modules" -exec rm -rf '{}' +"
alias landfill='java -Dserver.port=9010 -jar ~/code/voicezen/repos/platform/landfill/build/libs/landfill-1.0.0-SNAPSHOT-boot.jar'
alias tarc='GZIP=-9 tar -cf'

# git additional 
alias gdl="git delete-branch"
alias gci="git cz"

# Utilities
alias auto="autossh -M 0 -fNT"
alias ip="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias k="fkill -v"
alias tkill=tata_kill
alias tata="ssh -fNT -L 28000:localhost:8000 prod.tsky && ssh -fNT -L 29200:localhost:9200 prod.tsky"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export HOST="localhost"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
#source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
export PATH=/Users/praveen/.fnm:$PATH
eval "`fnm env`"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

