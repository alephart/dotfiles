# Add current git branch function to prompt
# needs bash-completion (see below)
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

#Change OSX command prompt
#export PS1="\u@\h:\w$ "
export PS1="\w\$(__git_ps1 \" (%s)\")$ "

# Common additions to $PATH
# Pretty print path using " echo $PATH | tr : '\012' "
# /usr/local/bin Homebrew links go here
# /usr/local/share/python Python packages installed with pip
# /usr/local/share/npm/bin This is for npm
# /usr/local/opt/ruby/bin This is for Ruby gem's installed binaries
# /usr/local/heroku/bin Used by Heroku Toolbelt

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH
export PATH=/usr/local/bin:/usr/local/mysql/bin:$PATH

# Raise resource limit for Node projects
ulimit -n 1024

# Some common aliases
alias g='git' \
      psg='ps aux | grep' \
      be='bundle exec' \
      bi='bundle install' \
      t='bundle exec rake test' \
      bp='subl ~/.dotfiles/bash_profile' \
      gc='subl ~/.dotfiles/gitconfig' \
      dotfiles='cd ~/.dotfiles && ls' \
      nrw='npm run-script watch' \
      gd='grunt dev' \
      gdf='grunt dev --force' \
      gw='grunt watch' \
      notes='subl ~/notes'

# Bash completion. 'brew install bash-completion'
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Add completion for g alias for git, too
complete -o default -o nospace -F _git g

# Quick 'mark' filesystem navigation, taken from @jeroenjanssens
# TODO: Add tab completion to this!
export MARKPATH=$HOME/.marks
function j {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
    rm -i $MARKPATH/$1
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\ -/g' && echo
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
