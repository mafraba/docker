# CloudBees Jenkins Enterprise Docker image

This image is based on [Jenkins Official Docker image](https://registry.hub.docker.com/_/jenkins/) but runs CloudBees Jenkins Enterprise.

# Building

Get the war sha from Maven repo at com/cloudbees/jenkins/main/jenkins-enterprise-war/${VERSION}/jenkins-enterprise-war-${VERSION}.war.sha1

    docker build --build-arg VERSION=1.625.16.1 --build-arg SHA=877a3fc0013856795178a7eae4f5357c48d4bf77 .

Build with the usual

    docker build -t jenkins-enterprise .

Tests are written using [bats](https://github.com/sstephenson/bats) under the `tests` dir

    bats tests

Bats can be easily installed with `brew install bats` on OS X
