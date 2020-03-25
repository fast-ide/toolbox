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
          ncdu \
          neovim \
          node \
          python@2 \
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

rm -rf $HOME/.cache

# ----------------------------------------------------------------------------
# Install npm packages
# ----------------------------------------------------------------------------

npm install -g git-recent \
               git-stats \
               gtop

# ----------------------------------------------------------------------------
# Install python packages
# ----------------------------------------------------------------------------

pip2 install pynvim
pip3 install pynvim \
             git-plus
