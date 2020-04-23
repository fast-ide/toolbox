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

yes | perl -MCPAN -e 'install Test::Harness'

brew install "$@" ${packages}

brew postinstall ${packages}

brew cleanup
brew uninstall go || echo "go is already uninstalled"
brew uninstall pandoc || echo "pandoc is already uninstalled"

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
