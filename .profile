
 #### Functions ######

 # # Git branch in prompt.
#  parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#  }
#  export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


 ###### Aliases ##########

 alias rebash="source ~/.profile"

 alias -g ding="osascript -e 'display notification \"Done!\" sound name \"glass\"' || osascript -e 'display notification \"Error!\" sound name \"basso\"'"

 #Sublime Shortcuts
 alias sub="open -a 'Sublime Text'"
 alias pubssh="sub ~/.ssh/id_rsa.pub"
 alias sbash="sub ~/.bash_profile"

 #Git aliases
 alias status="git status"
 alias master="git checkout master"
 alias syncm="git checkout master && git fetch && git pull && git checkout -"
 alias smerge="syncm && git merge master"
 alias stmerge="cd /Users/vrajani && . ./smartMerge.sh"
 alias diffname="git diff master --name-only"
 alias diffstats="git diff master --stat"
 alias blist="git branch --list"
 alias newb="git checkout master && git fetch && git pull && git checkout -b "
 alias firstpush="git push --set-upstream origin "
 alias gog="git log  --abbrev-commit --name-status --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
 alias gitDelete="git log --diff-filter=D --summary | grep delete"
 alias gitLogFile="git log --all --full-history -- "
 alias gitCleanBranches="git branch | grep -v "master" | xargs git branch -D"
 alias gitstats="git log --author=vrajani --pretty=format: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2; } END { printf 'added lines: %s, removed lines: %s, total lines: %s\n', add, subs, loc }' -"

 #maven aliases
 alias install="mvn clean install"
 alias verify="mvn clean verify && ding"
 alias verifyd="verify -U"
 alias mdVerify="mvnd clean verify -amd"
 alias mvnSkip="verify -DskipTests"
 alias dtree="mvn dependency:tree"
 alias mvnfast='verify -DskipTests -DskipValidation'
 alias xdtree="mvn dependency:tree -Dincludes=com.x:"
