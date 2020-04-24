set -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config

function install_or_upgrade {

    if brew ls --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade $@
        brew postinstall $1
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install $@
    fi
}

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
          ncdu \
          neovim \
          node \
          python@3 \
          tig \
          tmux \
          zsh"
          # lf \
          # tree \

if ! [ -x "$(command -v perl)" ]; then
  install_or_upgrade perl
fi
yes | perl -MCPAN -e 'install Test::Harness'

for package in $packages
do
  echo $package
  install_or_upgrade ${package} $@
done

brew cleanup
brew uninstall perl || echo "perl is uninstalled"

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

pip3 install pynvim \
             git-plus
