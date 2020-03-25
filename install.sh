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
          htop \
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
          wget \
          zsh"

brew install "$@" ${packages}

brew postinstall ${packages}

brew cleanup

# ----------------------------------------------------------------------------
# Install npm packages
# ----------------------------------------------------------------------------

npm install -g jscpd \
               gitmoji-cli \
               git-recent \
               git-stats \
               diff-so-fancy \
               taskbook \
               gtop

# ----------------------------------------------------------------------------
# Install python packages
# ----------------------------------------------------------------------------

pip2 install pynvim
pip3 install pynvim \
             git-plus
