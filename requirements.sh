set -e
set -x

# ----------------------------------------------------------------------------
# Install brew
# ----------------------------------------------------------------------------

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    ./scripts/linuxbrew/install.sh
    ;;
  darwin*)
    which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # https://stackoverflow.com/posts/21520777/timeline
    brew uninstall npm
    brew uninstall node
    npm uninstall npm -g
    sudo rm -rf /usr/local/lib/node_modules
    sudo rm -rf /usr/local/include/node
    sudo rm -rf /usr/local/lib/node
    ;;
  *)
    echo "unsupported OS"
    ;;
  esac
