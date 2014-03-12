parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin/$PATH:/usr/local/bin:/Users/kenleytomlin/.rvm/gems/ruby-2.0.0-p247/bin:/Users/kenleytomlin/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/kenleytomlin/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/kenleytomlin/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/Users/kenleytomlin/.rvm/gems/ruby-2.0.0-p247/bin:/Users/kenleytomlin/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/kenleytomlin/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/kenleytomlin/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/Users/kenleytomlin/.rvm/bin
