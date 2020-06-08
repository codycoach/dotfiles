# Maven
alias mvnv="mvn -version"
alias mvni="mvn clean install"
alias spbr="mvn spring-boot:run"
alias mvnj="mvn clean compile jar:jar install:install"
alias mvnis="mvni -DskipTests"
mvng() {
	mvn archetype:generate -DgroupId=${1:-com.example} -DartifactId=${2:-demo} -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false
}
alias mvnsonar="./mvnw -Pprod clean verify sonar:sonar -Dsonar.host.url=http://localhost:9001"