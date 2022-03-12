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
          fd \
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
          pyenv \
          tig \
          tmux \
          tree \
          wtfutil \
          zsh"

brew cleanup

brew doctor || echo "brew doctor warnings"

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

pyenv install 3.9.7
eval "$(pyenv init -)"
pyenv global 3.9.7
pyenv shell 3.9.7

python -m pip install jedi \
                      git-plus \
                      pynvim \
                      asciinema
