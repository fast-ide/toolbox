set -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config

brew install --build-bottle ag \
                            catimg \
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
                            zsh

brew postinstall grc \
                 python@2 \
                 python@3 \
                 node

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
               vtop

# ----------------------------------------------------------------------------
# Install python packages
# ----------------------------------------------------------------------------

pip2 install pynvim
pip3 install pynvim \
             git-plus
