for file in $DOTFILE/module/*.sh;
	do source $file
done

# Command
alias pwdc="pwd;pwd|pbcopy"

# TEST
alias test="func_test"
func_test() {
	echo $1;
	echo ${2};
	echo ${3:-defaultx};
}

# export PATH=~/.npm-global/bin:$PATH

re() {
    cp $DOTFILE/.zshrc ~
    source ~/.zshrc
}
