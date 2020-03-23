![ci_dockerfile](https://github.com/fast-ide/bootstrap/workflows/ci_dockerfile/badge.svg?branch=master)

### install
```
make all
```

### brew packages

- ag
- catimg
- ctags
- fpp
- fzf
- git-extras
- grc
- htop
- httpie
- jid
- jq
- ncdu
- neovim
- node
- python@2
- python@3
- tig
- tmux
- vim
- vimpager
- zsh

### npm packages

- diff-so-fancy
- git-recent
- git-stats
- gitmoji-cli
- jscpd
- taskbook
- gtop

### pip packages

- git-plus
- pynvim

## bootstrap deploy

```ShellSession
$ ./scripts/docker_build.sh
$ ./scripts/docker_deploy.sh
```

## troubleshooting

illegal instruction
> You have to use -mno-options for doing it.

https://stackoverflow.com/posts/30729935/timeline

Find which assembly instruction caused an Illegal Instruction error without debugging
https://stackoverflow.com/posts/40223712/timeline
