source ${DOTFILES_DIR}/env.sh

for file in ${DOTFILES_DIR}/config/zsh/module/*.sh;
	do source $file
done

re() {
    source ${DOTFILES_DIR}/config/zsh/main.sh
    cp ${DOTFILES_DIR}/config/.vimrc ~/
    cp -r ${DOTFILES_DIR}/config/.vim ~/
}
