alias rm="trash"
alias pwdc="pwd|pbcopy"
alias ..="cd .."
alias now="date +%s000"

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

# Open browser with localhost and port
lc() {
  open "http://localhost:${1}"
}

xc() {
  result="$(basename -- "${1}").xlsx"
  mv -- "${1}" $result
  open $result
}
