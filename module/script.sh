alias rm="trash"
alias pwdc="pwd|pbcopy"

# mkdir and copy
mc() {
	mkdir $1 && cd $1
}

# base 64 encryption
b64e() {
  echo -n "${1}" | base64 | pbcopy
}

# base 64 decryption
b64d() {
  echo -n "${1}" | base64 -D | pbcopy
}
