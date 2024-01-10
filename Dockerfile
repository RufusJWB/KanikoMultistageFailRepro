FROM gcr.io/kaniko-project/executor:debug

WORKDIR /buildDir/SRC

COPY . .

WORKDIR "PROXY Protocol Tester"

CMD ["--verbosity=debug", "--ignore-path=/buildDir", "--context=/buildDir", "--single-snapshot", "--cache=false", "--dockerfile=/buildDir/SRC/PROXY Protocol Tester/Dockerfile", "--no-push"]