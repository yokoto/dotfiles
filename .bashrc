export BASH_SILENCE_DEPRECATION_WARNING=1

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Override PS1 with git-prompt / git-completion.
# Setup:
# 1. mkdir ~/.git
# 2. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git/git-completion.bash
# 3. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git/git-prompt.sh
GIT_DIR='/Users/toshihiro-yokota/.git'
if [ -f ${GIT_DIR}/git-completion.bash ]; then
  source ${GIT_DIR}/git-completion.bash
fi
if [ -f ${GIT_DIR}/git-prompt.sh ]; then
  source ${GIT_DIR}/git-prompt.sh
fi
PS1='\[\033[01;30m\]\u@\h\[\033[00m\]:\[\033[36m\]\w\[\033[00;35m\]$(__git_ps1)\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# Manually added alias
alias be='bundle exec'
alias bi='bundle install'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gcm='git commit'
alias gcmm='git commit -m'
alias gcmam='git commit --amend -m'
alias gcp='git cherry-pick'
alias gf='git fetch'
alias gl='git log'
alias glo='git log --oneline'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gpsoh='git push origin HEAD'
alias gfo='git fetch origin'
alias grs='git reset --soft'
alias grh='git reset --hard'
alias gss='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gsw='git switch'
alias gswc='git switch -C'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dcd='docker compose down'
alias dp='docker ps'
alias dpa='docker ps -a'
