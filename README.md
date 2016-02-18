# CloudBees Jenkins Enterprise Docker image

This image is based on [Jenkins Official Docker image](https://registry.hub.docker.com/_/jenkins/) but runs CloudBees Jenkins Enterprise.

# Updating

Run `USER=jdoe PASSWORD=passwd ./update.sh NEW_VERSION`
where `USER` and `PASSWORD` are your Maven repository credentials.

Will update the version and sha in the Dockerfile and push to github.
The Dockerhub will build and tag with `cje-$NEW_VERSION` the image.
