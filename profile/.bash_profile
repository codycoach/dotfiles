export DOTFILES_DIR="~/Repository/Personal/dotfiles/"

for file in ${DOTFILES_DIR}profile/module/*.sh;
	do source $file
done

re() {
    source ${DOTFILES_DIR}profile/.bash_profile
}
