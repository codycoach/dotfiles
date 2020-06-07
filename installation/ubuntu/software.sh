sudo apt update -y
sudo apt upgrade -y

# ETC
sudo apt install net-tools -y
sudo apt install openssh-server -y
sudo apt install vsftpd -y
sudo apt install trash-cli -y

# ZSH
sudo apt install zsh -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k

# Docker
sudo apt install docker.io -y
sudo apt install docker-compose -y
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

