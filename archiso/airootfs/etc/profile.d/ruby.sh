# Ruby Gems
export GEM_DIR="$(/usr/bin/ruby -e 'print Gem.dir')"
export GEM_HOME="$(/usr/bin/ruby -e 'print Gem.user_dir')"
export GEM_PATH="$(/usr/bin/ruby -e 'print Gem.path.join(":")')"
PATH="$GEM_HOME/bin:$GEM_DIR/bin:$PATH"
