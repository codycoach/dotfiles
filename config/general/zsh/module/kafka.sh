alias kktc="kafka-topics --zookeeper localhost:2181 --create --replication-factor 1 --partitions 2 --topic"

alias kktl="kafka-topics --zookeeper localhost:2181 --list"

alias kktd="kafka-topics --zookeeper localhost:2181 --describe"

alias kkp="kafka-console-producer --broker-list localhost:9092 --topic"
alias kkpk="kafka-console-producer --broker-list localhost:9092 --property parse.key=true --property key.separator=: --topic"

alias kkc="kafka-console-consumer --bootstrap-server localhost:9092 --from-beginning --topic"
alias kkck="kafka-console-consumer --bootstrap-server localhost:9092 --from-beginning --property print.key=true --property key.separator=: --topic"
