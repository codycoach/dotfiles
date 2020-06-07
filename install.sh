osx_setup() {
  echo "Installing for OSX..."

#  remove welcome message on terminal
  touch ~/.hushlogin

  source ./installation/brew.sh
  source ./installation/npm.sh
  source ./installation/zsh.sh

  echo "export PROFILE=OSX" >> ./config/zsh/module/export.sh
  cp ./config/zsh/.zshrc ~
}

ubuntu_setup() {
  echo "Installing for Ubuntu..."

  source ./installation/ubuntu/software.sh

  echo "export PROFILE=Ubuntu" >> ./config/zsh/module/export.sh
  cp ./config/zsh/.zshrc ~
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
