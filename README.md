# CloudBees Jenkins Operation Center Docker image

This image is based on [Jenkins Official Docker image](https://registry.hub.docker.com/_/jenkins/) but runs CloudBees Jenkins Operation Center.

# Building

    docker build --build-arg VERSION=1.642.1.1 --build-arg SHA=d4ba483067011025c578bd88ca805e303d7ce18a .

# Updating

Run `USER=jdoe PASSWORD=passwd ./update.sh NEW_VERSION`
where `USER` and `PASSWORD` are your Maven repository credentials.

Will update the version and sha in the Dockerfile and push to github.
The Dockerhub will build and tag with `cjoc-$NEW_VERSION` the image.
