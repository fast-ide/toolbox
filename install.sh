set -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config

packages="ag \
          curl \
          ctags \
          fpp \
          fzf \
          git-extras \
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
