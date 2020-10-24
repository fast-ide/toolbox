set -e
set -x

# ----------------------------------------------------------------------------
# Install brew
# ----------------------------------------------------------------------------

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    ./linuxbrew/install.sh
    ;;
  darwin*)
    which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew unlink python@2 || echo "python@2 is already  unlinked"
    # https://stackoverflow.com/posts/21520777/timeline
    brew uninstall npm || echo "npm isn't installed"
    brew uninstall node || echo "node isn't installed"
    brew uninstall gnupg || echo "gnupg isn't installed"
    npm uninstall npm -g || echo "npm packages isn't installed"
    sudo rm -rf /usr/local/lib/node_modules
    sudo rm -rf /usr/local/include/node
    sudo rm -rf /usr/local/lib/node
    ;;
  *)
    echo "unsupported OS"
    ;;
  esac
