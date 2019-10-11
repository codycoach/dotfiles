# Docker
alias dk="docker"
alias dki="docker images -a"
alias dkp="docker ps"
alias dkpa="docker ps -a"
alias dks="docker start"
alias dkr="docker restart"
alias dkl="docker logs -f"
dkq() {
	docker stop ${1:-$(dkp -q)}
}
dksh() {
	docker exec -it ${1} /bin/sh;
}
dkba() {
	docker exec -it ${1} /bin/bash;
}
dcp() {
	docker cp . ${1}:/;
}
alias dkcpb="docker-compose build"
alias dkcpu="docker-compose up"
alias td="mvn clean install;docker cp target/*.war tomcat:/usr/local/tomcat/webapps/"
alias jd="mvn clean install;docker cp target/*.war jboss:/usr/local/jboss-eap-7.1/standalone/deployments/"
alias ad="ng build;docker cp dist/. nginx:/usr/share/nginx/html/"