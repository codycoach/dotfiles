setup() {
  #  ZSH
  cp ./config/general/zsh/.zshrc ~
  echo "export PROFILE=$PROFILE" >> ~/.zshrc

#  VIM
  cp ./config/general/vim/.vimrc ~/
  cp -r ./config/general/vim/.vim ~/
}

osx_setup() {
  echo "Installing for OSX..."
  export PROFILE="OSX"

#  remove welcome message on terminal
  touch ~/.hushlogin

  source ./installation/brew.sh
  source ./installation/npm.sh
  source ./installation/zsh.sh

  setup
}

ubuntu_setup() {
  echo "Installing for Ubuntu..."
  export PROFILE="Ubuntu"

  source ./installation/ubuntu/software.sh

#  Replace config files
##  Static port, DNS
  sudo cp ./config/ubuntu/00-installer-config.yaml /etc/netplan/
  sudo netplan apply

##  Expose Docker Server
  sudo cp ./config/ubuntu/docker.service /lib/systemd/system/
  sudo systemctl daemon-reload
  sudo systemctl restart docker.service

##  FTP
  sudo cp ./config/ubuntu/vsftpd.conf /etc/
  sudo service vsftpd restart

  setup
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
