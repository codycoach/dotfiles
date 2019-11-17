gat() {
  baseDir=$(pwd);
  docker run -it --rm -v "$baseDir"/src/test/gatling/conf:/opt/gatling/conf \
      -v "$baseDir"/src/test/gatling/user-files:/opt/gatling/user-files \
      -v "$baseDir"/src/test/gatling/results:/opt/gatling/results \
      denvazh/gatling;
}
