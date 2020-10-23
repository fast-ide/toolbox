#!/bin/bash -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config
brew update

function install_or_upgrade {

    if brew ls --versions "$1" >/dev/null; then
        brew upgrade $1
    else
        brew install $@
        brew postinstall $1
    fi
}

packages="ag \
          cmake \
          ctags \
          curl \
          fpp \
          fzf \
          git-extras \
          go \
          gotags \
          grc \
          httpie \
          jid \
          jq \
          lf \
          ncdu \
          neovim \
          node \
          nushell \
          python \
          tig \
          tmux \
          tree \
          wtfutil \
          zsh"

brew install llvm $@

for package in $packages
do
  echo $package
  install_or_upgrade ${package} $@
done

brew cleanup

ln -s `brew --prefix`/bin/nvim `brew --prefix`/bin/vim
git clone https://github.com/trapd00r/vimcat
cd vimcat && cp vimcat `brew --prefix`/bin/
cd .. && rm -rf vimcat
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

ln -s python3 `brew --prefix`/bin/python

python -m pip install jedi \
                      git-plus \
                      pynvim
