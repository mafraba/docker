# CloudBees Jenkins Operations Center Docker image

This image is based on [Jenkins Official Docker image](https://registry.hub.docker.com/_/jenkins/) but runs CloudBees Jenkins Operations Center.

# Building

Get the war sha from Maven repo at com/cloudbees/operations-center/server/operations-center-war/${VERSION}/operations-center-war-${VERSION}.war.sha1

    docker build --build-arg VERSION=1.625.16.1 --build-arg SHA=648bbc0d6020009710f8d6295254750148851f2c .
