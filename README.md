![ci_dockerfile](https://github.com/fast-ide/bootstrap/workflows/ci_dockerfile/badge.svg?branch=master)

### install
```
make all
```

### packages

- ag
- cmake
- ctags
- fpp
- fzf
- go
- gotags
- htop
- httpie
- jid
- llvm
- jq
- lf
- ncdu
- neovim
- node
- python
- tig
- tmux
- wtfutil
- zsh

```
# example of manual building for ubuntu 20.04
docker build -t fastide/toolbox-ubuntu:20.04 --build-arg OS_FAMILY=ubuntu --build-arg OS_VERSION=20.04 .
```
