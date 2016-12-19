# common aliases
alias l='ls -la'
alias md='mkdir'

# Show git branch in bash prompt
function git_branch {
    echo "$(git branch 2>/dev/null | sed -e '/^*/!d' -e 's/^* \(.*\)/ (\1)/')"
}

# configure the prompt
# ≈export PS1='\[\033[0;32m\]\h \[\033[01;34m\]\W \$ \[\033[00m\]'

# modified
export PS1="\[\e[01;32m\]\h \[\e[01;34m\]\W\
\`if [ -n \"\$(git status -s -uno 2>/dev/null)\" ]; then
echo -n \[\e[31m\]; else echo -n \[\e[34m\]; fi;
git_branch\` \
$\[\e[0m\] "

# Original version from Denis
#export PS1="\[\e[32m\][\u@\[\e[34m\]\h \[\e[33m\]\W\
#\`if [ -n \"\$(git status -s 2>/dev/null)\" ]; then
#echo -n \[\e[31m\]; else echo -n \[\e[34m\]; fi;
#git_branch\`\
#\[\e[32m\]]$\[\e[0m\] "

export EDITOR=nano
export BOOST_ROOT=$HOME/src/libs/boost_1_61_0
