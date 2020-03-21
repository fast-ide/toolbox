set -ex

# ----------------------------------------------------------------------------
# Install brew packages
# ----------------------------------------------------------------------------

brew config

brew install llvm

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
                 the_silver_searcher \
                 catimg \
                 ctags \
                 fzf \
                 git-extras \
                 httpie \
                 jid \
                 jq \
                 ncdu \
                 neovim \
                 node \
                 python@2 \
                 python@2 \
                 tig \
                 tmux \
                 vim \
                 vimpager \
                 zsh


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
