export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
# add git branch in prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\e[35m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[m\] $ "

#alias
alias ls="ls -GFh"
alias ll="ls -lv"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
alias python="python3"

#JAVA 1.8.0_51
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home
export PATH=$JAVA_HOME:$PATH
