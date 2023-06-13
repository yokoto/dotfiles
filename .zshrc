# Override PS1 with git-prompt / git-completion.
# 1. mkdir ~/.git
# 2. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git/.git-prompt.sh
# 3. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git/git-completion.bash
# 4. curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.git/_git
GIT_DIR='/Users/toshihiro-yokota/.git'
if [ -f ${GIT_DIR}/git-prompt.sh ]; then
  source ${GIT_DIR}/git-prompt.sh
fi
if [ -f ${GIT_DIR}/git-completion.bash ] && [ -f ${GIT_DIR}/_git ]; then
  fpath=(${GIT_DIR} $fpath)
  zstyle ':completion:*:*:git:*' script ${GIT_DIR}/git-completion.bash
  autoload -Uz compinit && compinit
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
# `precmd` executed before each prompt.
precmd() {
  setopt PROMPT_SUBST; PS1="%F{white}%n@mbp%f:%F{cyan}%~%F{magenta}$(__git_ps1 "(%s)") %f$ "
}
# Manually added alias
alias be='bundle exec'
alias bi='bunlde install'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gcmm='git commit -m'
alias gcmam='git commit --amend -m'
alias gcp='git cherry-pick'
alias gf='git fetch'
alias glo='git log --oneline'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gpsoh='git push origin HEAD'
alias grs='git reset --soft'
alias grh='git reset --hard'
alias gss='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gsw='git switch'
alias gswc='git switch -C'
