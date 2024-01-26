# Purpose
This is a reproducible example of Kaniko ~~failing~~working multistage builds. Kaniko exits with ~~`2024-01-10 17:11:24 error building image: error building stage: failed to get files used from context: failed to get fileinfo for /buildDir/PROXY Protocol Tester.csproj: lstat /buildDir/PROXY Protocol Tester.csproj: no such file or directory`~~ success.

# How to reproduce

## Working example

1. Navigate to `PROXY Protocol Tester` directory
1. Build image `docker build -t dockerbuild:working .` . Logs are at https://gist.github.com/RufusJWB/ebf95c6ff7aa85e487a55167fa3048df
1. Run container `docker run -t dockerbuild:working` . Logs are at https://gist.github.com/RufusJWB/364b87c02e06c6940a750530954828b4

## ~~Failing~~Working example 2

1. Stay in root directory
1. Build image `docker build -t kanikobuild:fail .` . ~~Logs are at https://gist.github.com/RufusJWB/caa2371f5f1cdbdf46b6af593ca08913 ~~
1. Run container `docker run -t kanikobuild:fail` . ~~Logs are at https://gist.github.com/RufusJWB/369d8428103dda76b47b5735de0994d7 ~~