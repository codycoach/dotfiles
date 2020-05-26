source ${DOTFILES_DIR}/env.sh

for file in ${DOTFILES_DIR}/profile/module/*.sh;
	do source $file
done

re() {
    source ${DOTFILES_DIR}/profile/main.sh
    cp ${DOTFILES_DIR}/config/.vimrc ~/
    cp -r ${DOTFILES_DIR}/config/.vim ~/
}
