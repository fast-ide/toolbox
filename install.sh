set -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config

packages="ack \
          curl \
          cmake \
          ctags \
          fpp \
          fzf \
          git-extras \
          go \
          grc \
          httpie \
          jid \
          jq \
          lf \
          ncdu \
          neovim \
          node \
          python@3 \
          tig \
          tmux \
          vim \
          vimpager \
          zsh"

brew uninstall go || echo "go is already uninstalled"
brew uninstall cmake || echo "cmake is already uninstalled"

brew install perl
yes | perl -MCPAN -e 'install Test::Harness'

brew install "$@" ${packages}

brew postinstall ${packages}

brew cleanup
brew uninstall pandoc || echo "pandoc is already uninstalled"
brew uninstall perl

ln -s $HOME/.linuxbrew/bin $HOME/.bin

rm -rf $HOME/.cache

# ----------------------------------------------------------------------------
# Install npm packages
# ----------------------------------------------------------------------------

npm install -g diff-so-fancy \
               git-recent \
               git-stats \
               gtop

# ----------------------------------------------------------------------------
# Install python packages
# ----------------------------------------------------------------------------

pip3 install pynvim \
             git-plus
