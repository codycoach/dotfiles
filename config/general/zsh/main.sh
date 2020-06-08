for file in ${DOTFILES_DIR}/config/general/zsh/module/*.sh;
	do source $file
done

re() {
#  ZSH
  cp ${DOTFILES_DIR}/config/general/zsh/.zshrc ~
  echo "export PROFILE=$PROFILE" >> ~/.zshrc
  source ~/.zshrc
  source ${DOTFILES_DIR}/config/general/zsh/main.sh

#  VIM
  cp ${DOTFILES_DIR}/config/general/vim/.vimrc ~/
  cp -r ${DOTFILES_DIR}/config/general/vim/.vim ~/
}
