b64e() {
  echo -n ${1} | base64 | pbcopy
}

b64d() {
  echo -n ${1} | base64 -D | pbcopy
}


alias pwdc="pwd;pwd|pbcopy"

cppc() {
  echo $1 | pbcopy
}
