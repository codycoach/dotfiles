# Docker
alias dk="docker"
alias dki="docker images -a"
alias dkp="docker ps"
alias dkpa="docker ps -a"
alias dks="docker start"
alias dkr="docker restart"
alias dkl="docker logs -f"
alias dkc="dk copy"
alias dkv="dk volume"
alias dkvl="dkv ls"

dkvrm() {
  dkv rm ${1:-$(dkvl -q)}
}

dkq() {
	docker stop ${1:-$(dkp -q)}
}

dkqrm() {
  dk rm $(dkq)
}

dksh() {
	docker exec -it ${1} /bin/sh;
}

dkba() {
	docker exec -it --user root ${1} /bin/bash;
}

dkcp() {
	docker cp . ${1}:/;
}
