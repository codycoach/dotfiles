gat() {
  baseDir=$(pwd);
  docker run -it --rm -v "$baseDir"/src/test/gatling/conf:/opt/gatling/conf \
      -v "$baseDir"/src/test/gatling/user-files:/opt/gatling/user-files \
      -v "$baseDir"/src/test/gatling/results:/opt/gatling/results \
      denvazh/gatling;
}

alias gatlc="~/Downloads/gatling-charts-highcharts-bundle-3.5.0/bin/gatling.sh -rf ./src/test/gatling/results -sf ./src/test/gatling/user-files/simulations"
