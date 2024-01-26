FROM gcr.io/kaniko-project/executor:debug

WORKDIR /buildDir/SRC

COPY . .

WORKDIR "PROXY Protocol Tester"

CMD ["--ignore-path=/buildDir", \
  "--cache=true", \
  "--cache-run-layers=true", \
  "--cache-copy-layers=true", \
  "--cache-dir=/kaniko/cache", \
  "--cache-repo=host.docker.internal:5000/my-cache-repo", \
  "--cleanup", \
  "--no-push", \
  "--insecure-registry=host.docker.internal:5000", \
  "--context=/buildDir/SRC/PROXY Protocol Tester"]