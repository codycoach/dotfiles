osx_setup() {
  echo "Installing for OSX..."

#  remove welcome message on terminal
  touch ~/.hushlogin

  source ./installation/brew.sh
  source ./installation/npm.sh
  source ./installation/zsh.sh

  cp ./profile/.zshrc ~
}

ubuntu_setup() {
  echo "Installing for Ubuntu..."
}

PS3='Please enter your os: '
options=("OSX" "Ubuntu")
select opt in "${options[@]}"; do
  case $opt in
  "OSX")
    osx_setup
    break
    ;;
  "Ubuntu")
    ubuntu_setup
    break
    ;;
  *) echo "invalid option $REPLY" ;;
  esac
done

echo "export DOTFILES_DIR=$(pwd)" >> env.sh
echo "export DOTFILES_DIR=$(pwd)" >> env.sh
