set -e
set -x

# ----------------------------------------------------------------------------
# Install brew requirements
# ----------------------------------------------------------------------------

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    which apt && ./scripts/linuxbrew/debian/requirements.sh
    which yum && ./scripts/linuxbrew/redhat/requirements.sh
    ;;
  darwin*)
    ;;
  *)
    echo "unsupported OS"
    ;;
  esac
